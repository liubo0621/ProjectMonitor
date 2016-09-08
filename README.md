# ProjectMonitor #

### 一、背景及意义 ###

随着系统却来却多，任务又多种多样，系统发生异常或崩溃的时间点是不可预测的。人工监控和管理这些系统即麻烦又不及时，并且不能给客户一个可视化的数据来显示这些系统的运转情况。那么一款可以监控和管理这些系统的软件就必不可少了，我们把这款软件称作*ProjectMonitor*。

### 二、系统需求 ###

本系统分为服务端和客户端，其具体的需求如下：

**服务端**

1. 能够实时接收并显示所管辖的各机器的状态
2. 在数据库连接时，可以定时将信息汇报至数据库表
3. 在无数据库连接时，可以自行记录各节点上报状态，以日志文件的形式
4. 可以接收数据库下发的命令，并传至目标节点（命令包括重启机器、启动\重启指定程序、停止\启动指定程序进行的指定任务）
6. 日志记录功能，记录收发信息

**客户端** 

1. 收到重启服务器命令时重启服务器，开机自动运行客户端
1. 监控守护程序，守护各程序启动、超时重启、崩溃等。并将动作实时汇报服务端
3. 向指定的被监控程序下发命令（包括任务停止、任务重启、允许的最大线程数）
4. 获取当前监控程序正在执行的任务信息（包括任务名，任务id）
4. 收集程序信息（包括程序名、线程数、CPU所占百分比、所占内存、已运行时间、已做完任务数）
6. 收集所在服务器硬件基本信息（包括服务器IP，MAC地址、系统、CPU型号、内存、硬盘大小、硬盘剩余大小）
7. 将收集的所有信息汇报定时至指定服务端
9. 日志记录功能，记录收发的命令以及被监控程序的状态

### 三、应用程序需求 ###

为了配合该系统的使用，对应用程序的需求如下：

1. 循环读取客户端下发的命令文件
2. 根据命令做出对应的反应，命令包括（停止任务、重启任务、线程数量限制）
4. 执行任务前写出文件，写出信息包括（时间、应用程序名、是否奔溃、线程id、线程数、任务id、任务名、任务时长、已处理任务数）

具体如下：

1. 配置读取文件时间间隔,文件读取和写入路径。如：
	<pre>
	process.read_file_time    = 1   #单位为秒
	process.status_file    	  = D:\\xxx\\xxx\\status_file.txt  #写出文件路径
	client.command_file       = D:\\xxx\\xxx\\command_file.txt #命令文件路径
	</pre>
2. 循环读取客户端下发的命令文件，文件路径为`client.command_file`所配置的路径，时间间隔为配置文件中读取文件时间。
3. 根据命令做出对应的反应，命令格式如下：
	<pre>
    TASK:STOP taskId,threadId   #停止任务              参数为任务id 和 线程id
	TASK:START taskId           #开始任务              参数为任务id
	TASK:CRASH taskId           #置任务状态为异常       参数为任务id
	THRead:MAX:NUM threadNum    #允许开启的线程最大数    参数为线程数
	</pre>
4. 执行任务前写出文件，文件路径为`process.status_file`所配置的路径，写出的信息格式为：
	<pre>
	# 不同的信息用逗号分割，整个信息用< >括起来
	write_file_time=2016-09-08 12:32:64   # yyyy-MM-dd HH：mm:ss
    process_name=xxx
    crash=true                            # true||false  是否崩溃
	thread_id=1
    thread_num=10
	task_id=5
    task_name=xxx
    task_length=12                        # 单位为s
	task_done_num=20
	</pre> 

例如：
`<write_file_time=2016-09-08 12:32:64,process_name=xxx,crash=true,thread_id=1,thread_num=10,task_id=5,task_name=xxx,task_length=12,task_done_num=20>`

### 四、系统设计 ###

本系统的服务端从数据库读取命令，下发给指定的客户端，客户端控制对应的应用程序。为了降低客户端和应用程序间的耦合度，`客户端和应用程序之间采用文件的方式传递信息`。并且客户端可将采集的信息报告给服务端，服务端上传到数据库。`服务端与客户端采用TCP\IP`的通讯方式。其系统架构图如图3.1

![系统架构图](http://i.imgur.com/3BoeoZc.png)
<center>**图3.1**</center>

**服务端设计**

***服务端配置文件设计***

service_config.properties
	
	service.port        = 6666             #默认为6666
	log_path            = D:\\xxx\\xxx\\logs\\ #日志目录
	search_command_time = 5                #单位为秒 

***服务端各模块设计***
  
> 能够实时接收并显示所管辖的各机器的状态

监听客户端的连接请求，每收到一个请求，则创建一个对应的线程，然后监听数据，显示功能暂定。

> 在数据库连接时，可以定时将信息汇报至数据库表

将收到的数据解析，传到数据库中。
 
> 在无数据库连接时，可以自行记录各节点上报状态，以日志文件形式

在数据库连接异常或者上传数据异常时，将所收到的数据写入文件。文件以日期命名，（如2016-09-08.txt）。

> 可以接收数据库下发的命令，并传至目标节点

各线程内每隔指定的时间扫描一遍数据库（可通过客户端的ip和端口号作为筛选条件），则将命令下发到客户端。（命令包括重启机器、启动\重启指定程序、停止\启动指定程序进行的指定任务等）

命令定义如下：

	SERver:RESTART              #重启服务器
	PROcess:RESTART				#重启程序
	PROcess:START				#启动程序
	TASK:STOP taskId,threadId   #停止任务    参数为任务id 和 线程id
	TASK:START taskId           #开始任务    参数为任务id
	
> 日志记录

采用log4j，将服务端所收发的命令写到日志。格式如下：

	rec  - command   # 收到的命令
	send - command   # 发送的命令


**客户端设计**

***客户端配置文件设计***

在客户端的配置文件中配置服务端的IP和端口，配置文件路径含文件名，读取文件时间间隔（可参考应用程序配置文件）。如：

client_config.properties
	
	service.ip              = xxx.xxx.xxx.xxx             #服务端IP
	service.port            = port #默认为6666             #服务端端口号
    client.read_file_time   = 5                           #单位为秒 一般等于应用程序写文件的时间

    # 一个客户端可能管理多个应用程序,采用下面这种形式配置
    process.num             = 2

    process1.execute_file    = D:\\xxx\\xxx\\example.exe      #应用程序执行文件
    process1.status_file     = D:\\xxx\\xxx\\status_file.txt  #应用程序写出的文件
    client1.command_file     = D:\\xxx\\xxx\\command_file.txt #命令文件 客户端->应用程序

    process2.execute_file    = D:\\xxx\\xxx\\example.exe      #应用程序执行文件
    process2.status_file     = D:\\xxx\\xxx\\status_file.txt  #应用程序写出的文件
    client2.command_file     = D:\\xxx\\xxx\\command_file.txt #命令文件 客户端->应用程序
	
***客户端各模块设计***

> 收到重启服务器命令时重启服务器，开机自动运行客户端

1. 重启
    <pre>
    shutdown -r -f -t 0
    </pre>

2. 开机自动运行客户端
  
TODO

> 监控守护程序，守护各程序启动、超时重启、崩溃等。并将动作实时汇报服务端

监听服务端命令，并且执行对应的功能。  

1. 启动程序
	<pre>
	//使用Desktop启动应用程序    
	public static void startProgram(String programPath) throws IOException {  
	    log.info("启动应用程序：" + programPath);  
	    if (StringUtils.isNotBlank(programPath)) {  
	        try {  
	            Desktop.getDesktop().open(new File(programPath));  
	        } catch (Exception e) {  
	            e.printStackTrace();  
	            log.error("应用程序：" + programPath + "不存在！");  
	        }  
	    }  
	}  
	</pre>

2. 超时重启

	每隔一段时间扫描一次应用程序写出的文件，文件路径为`process.status_file`,若crash字段为false，则分别计算当前时间与各线程最后写文件的时间差，若时间差大于client读文件时间 + 2 （可能会有延时），则发送停止该线程命令，然后重启线程，(采用`覆盖`的方式写文件）。每读一次文件，读完后将文件删除。（删除是为了清理已读完的数据，优化性能，不过可能报异常，因为应用程序可能正在写文件，这里需捕获异常）。  
命令如下：
	<pre>
	TASK:STOP taskId,threadId   #停止任务      参数为任务id 和 线程id
	TASK:START taskId           #开始任务      参数为任务id
	</pre>

3. 崩溃

	若应用程序写出的文件里面crash信息为true，则立即向应用程序发送导致crash的taskId，然后调用1，重启程序。
	<pre>
	TASK:CRASH taskId           #导致崩溃的任务 参数为任务id
	</pre>

> 向指定的被监控程序下发命令（包括任务停止、任务重启、允许的最大线程数）

    THRead:MAX:NUM threadNum    #允许开启的线程最大数  参数为线程数
	TASK:STOP taskId,threadId   #停止任务      参数为任务id 和 线程id
	TASK:START taskId           #开始任务      参数为任务id

> 收集任务信息（任务名、任务id、线程id），程序信息（程序名、线程数、已运行时间、已做完任务数、）

每隔指定时间内扫描一遍应用程序写出的文件，将信息传到服务端。程序已运行时间为当前时间与应用程序第一次写文件的时间差。


> 收集被监控程序CPU所占百分比、所占内存

TODO

> 收集所在服务器硬件基本信息（包括服务器IP，MAC地址、系统、CPU型号、内存、硬盘大小、硬盘剩余大小）

采用`Sigar`来收集

> 将收集的所有信息汇报定时至指定服务端

读完文件后将信息汇报到服务端
	

> 日志记录功能，记录收发的命令以及被监控程序的状态

采用log4j，将客户端所收发的命令以及扫描到的应用程序信息写到日志。格式如下：

	rec  - command   # 收到的命令
	send - command   # 发送的命令
	read - msg       # 读到的信息

### 五、数据库设计 ###

数据库采用mysql，数据库名为`ProjectMonitor`,表信息如下：

应用程序信息表 TableName: `project_msg`

| 字段名              | 数据类型| 长度 | 说明       | 描述 |
|:-------------------|:-------|:----|:----------|:----|
| pk_pro_id  | int    |      | 非空，自增 | 主键 |
| pro_name         | varchar    |  20    | 非空      | 应用程序名|
| pro_thread_num  | int    |     | 可空   |  线程数 |
| pro_cpu_rate | varchar | 10 | 可空 | CPU所占百分比 |
| pro_physical_memory | varchar | 20 | 可空 | 所占内存 |
| pro_run_time| int | | 可空 | 已运行时长 单位s |
| pro_task_done_num | int | | 非空 | 已做完任务数 |
| for_ser_id | int | | 非空 | 服务器id|

客户端信息表 TableName: `clinet_msg`

| 字段名              | 数据类型| 长度 | 说明       | 描述 |
|:-------------------|:-------|:----|:----------|:----|
| pk_cli_id  | int    |      | 非空，自增 | 主键 |
| cli_port | varchar | 6 |非空 | 客户端socket端口 |
| cli_log_path | varchar | 20 | 可空 | 客户端日志目录 |
| for_pro_id |  int    |      | 非空 | 所管理的应用程序id |

应用程序线程信息表 TableName: `thread_msg`

| 字段名              | 数据类型| 长度 | 说明       | 描述 |
|:-------------------|:-------|:----|:----------|:----|
| pk_thr_id | int | | 非空，自增 | 主键 |
| thr_id | int | | 非空 |  应用程序线程id |
| thr_task_id | int | | 非空 | 任务id |
| thr_task_name| varchar | 20|可空  |任务名|
| for_pro_id  | int    |      | 非空 | 项目id |
| for_ser_id | int | | 非空 | 服务器id|

服务器信息表 TableName: `server_msg`

| 字段名              | 数据类型| 长度 | 说明       | 描述 |
|:-------------------|:-------|:----|:----------|:----|
| pk_ser_id | int | | 非空，自增 | 主键|
| ser_ip | varchar | 16 |非空 | 服务器IP|
| ser_mac| varchar | 30 | 可空 | 服务器mac地址|
| ser_system| varchar | 20 | 可空 | 服务器系统 |
| ser_memory| int | | 可空 | 服务器总内存 单位k|
| ser_memory_used| int | | 可空 | 服务器已用内存 单位k|
| ser_memory_free| int | | 可空 | 服务器剩余内存 单位k|
| ser_swap| int | | 可空 | 交换区总量 单位k|
| ser_swap_used| int | | 可空 | 当前交换区使用量 单位k|
| ser_swap_free| int | | 可空 | 当前交换区剩余量  单位k

CPU信息表 TableName: `cpu_msg`

| 字段名              | 数据类型| 长度 | 说明       | 描述 |
|:-------------------|:-------|:----|:----------|:----|
| pk_cpu_id| int | | 非空，自增 | 主键|
| cpu_mhz | int | | 非空 | CPU总容量 单位MHZ|
| cpu_vendor| varchar | 20 | 可空 | CPU的卖主 如Intel|
| cpu_model | varchar | 20 | 非空| CPU型号|
| cpu_chache_size| int | | 可空 | 缓冲存储器数量|
| cpu_user| double| | 可空 | 用户使用率|
| cpu_system| double| | 可空 | 系统使用率|
| cpu_wait|double| | 可空 | 等待|
| cpu_idle|double| | 可空 | 空闲|
| for_server_id| int | | 非空 | 服务器id |

硬盘信息表 TableName: `physical_memory_msg`


| 字段名              | 数据类型| 长度 | 说明       | 描述 |
|:-------------------|:-------|:----|:----------|:----|
| pk_phy_id | int | | 非空，自增 | 主键|
| phy_name | varchar | 10 | 非空 | 硬盘名 |
| phy_sys_type_name| varchar| 20 | 可空 | 文件系统类型，比如FAT32、NTFS|
| phy_type_name | varchar| 20 | 可空 | 文件系统类型名,本地硬盘、光驱、网络文件系统等|
| phy_memory| int |  | 可空 | 硬盘总大小 单位k|
| phy_memory_free| int|| 可空 | 硬盘剩余大小 单位k|
| phy_memory_used| int | | 可空| 硬盘已用大小单位k |
| phy_memory_avail| int | | 可空| 硬盘可用大小单位k |
| phy_use_percent | double| | 可空 |资源的利用率|
| for_server_id| int | | 非空 | 服务器id |


命令信息表 TableName: `command_msg`

| 字段名              | 数据类型| 长度 | 说明       | 描述 |
|:-------------------|:-------|:----|:----------|:----|
|pk_com_id | int | | 非空，自增 | 主键 |
|command | varchar | 20 | 非空 | 命令 |
|ser_ip | varchar | 16 |非空 | 服务器IP|
|client_port | varchar |6| 非空 | 客户端socket端口 |
|status | int | | 非空 | 状态 |

字典表 TableName: `dict`

| 字段名              | 数据类型| 长度 | 说明       | 描述 |
|:-------------------|:-------|:----|:----------|:----|
| pk_dict_id | int | | 非空，自增 | 主键 |
| status | int | | 非空 | 状态 |
| describe | varchar | 20 | 非空 | 状态描述 |
