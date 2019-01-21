# 命令行执行JMeter

使用[JMeter](http://jmeter.apache.org/)在进行性能测试时，**强烈推荐** 使用命令行**无GUI**模式。

## 常用命令参数

参数名 | 用法
--- | ---------------------------------------------------
-n  | 指明使用无GUI模式**运行**[JMeter](http://jmeter.apache.org/)
-t  | 指定需要执行的测试计划源`文件名`
-l  | 输出结果为`JTL`格式的文件名
-j  | 运行日志文件名
-r  | 使用`remote_hosts`中定义的`远程机器`来运行测试
-R  | 从命令行中指定`远程机器`来运行测试
-g  | 指定生成`CSV`文件的结果报告存放位置
-e  | 在测试结束后生成报告
-o  | 在测试结束后生成测试报告的`文件夹`，文件夹必须`存在或为空`。
-H  | 代理的**IP**
-P  | 代理**端口**

- 应用

  - `jmeter -t test.jmx`: 打开JMeter的**GUI**客户端，**同时** 打开`test.jmx`文件
  
  - `jmeter -n -t test.jmx`: 使用**非GUI**模式，**直接** 进行测试。日志输出:

  - `jmeter -n -t test.jmx -l test.jtl`: 使用**非GUI**模式，并将测试结果保存至`test.jtl`文件中

  - `jmeter -n -r -t test.jmx`: 使用`remote_hosts`中配制的服务来执行`test.jmx`

  - `jmeter -n -R123.123.123.123,host1 -t test.jmx`: 在`123.123.123.123`和`host1`中运行测试`test.jmx`

  - `jmeter -n -t test.jmx -l log.jtl -H my.proxy.server -P 8000`: 使用`my.proxy.server`的端口号`8000`来执行测试`test.jmx`，交将结果保存至`log.jtl`文件

## 帮助

### `jmeter -h`: 显示使用说明

```
_    ____   _    ____ _   _ _____       _ __  __ _____ _____ _____ ____
/ \  |  _ \ / \  / ___| | | | ____|     | |  \/  | ____|_   _| ____|  _ \
/ _ \ | |_) / _ \| |   | |_| |  _|    _  | | |\/| |  _|   | | |  _| | |_) |
/ ___ \|  __/ ___ \ |___|  _  | |___  | |_| | |  | | |___  | | | |___|  _ <
/_/   \_\_| /_/   \_\____|_| |_|_____|  \___/|_|  |_|_____| |_| |_____|_| \_\ 3.0 r1743807

Copyright (c) 1999-2016 The Apache Software Foundation


To list all command line options, open a command prompt and type:

jmeter.bat(Windows)/jmeter.sh(Linux) -?

--------------------------------------------------

To run Apache JMeter in GUI mode, open a command prompt and type:

jmeter.bat(Windows)/jmeter.sh(Linux) [-p property-file]

--------------------------------------------------

To run Apache JMeter in NON_GUI mode:
Open a command prompt (or Unix shell) and type:

jmeter.bat(Windows)/jmeter.sh(Linux) -n -t test-file [-p property-file] [-l log-file]

--------------------------------------------------

To run Apache JMeter in NON_GUI mode and generate a report at end :
Open a command prompt (or Unix shell) and type:

jmeter.bat(Windows)/jmeter.sh(Linux) -n -t test-file [-p property-file] [-l log-file] -e -o [Path to output folder]

--------------------------------------------------
To generate a Report from existing CSV file:
Open a command prompt (or Unix shell) and type:

jmeter.bat(Windows)/jmeter.sh(Linux) -g [log-file] -o [path to output folder (empty or not existing)]

--------------------------------------------------

To tell Apache JMeter to use a proxy server:
Open a command prompt and type:

jmeter.bat(Windows)/jmeter.sh(Linux) -H [your.proxy.server] -P [your proxy server port]

---------------------------------------------------

To run Apache JMeter in server mode:
Open a command prompt and type:

jmeter-server.bat(Windows)/jmeter-server(Linux)

---------------------------------------------------
```

### `jmeter -?`: 所有参数说明集合

```
--?
  print command line options and exit
-h, --help
  print usage information and exit
-v, --version
  print the version information and exit
-p, --propfile <argument>
  the jmeter property file to use
-q, --addprop <argument>
  additional JMeter property file(s)
-t, --testfile <argument>
  the jmeter test(.jmx) file to run
-l, --logfile <argument>
  the file to log samples to
-j, --jmeterlogfile <argument>
  jmeter run log file (jmeter.log)
-n, --nongui
  run JMeter in nongui mode
-s, --server
  run the JMeter server
-H, --proxyHost <argument>
  Set a proxy server for JMeter to use
-P, --proxyPort <argument>
  Set proxy server port for JMeter to use
-N, --nonProxyHosts <argument>
  Set nonproxy host list (e.g. *.apache.org|localhost)
-u, --username <argument>
  Set username for proxy server that JMeter is to use
-a, --password <argument>
  Set password for proxy server that JMeter is to use
-J, --jmeterproperty <argument>=<value>
  Define additional JMeter properties
-G, --globalproperty <argument>=<value>
  Define Global properties (sent to servers)
  e.g. -Gport=123
   or -Gglobal.properties
-D, --systemproperty <argument>=<value>
  Define additional system properties
-S, --systemPropertyFile <argument>
  additional system property file(s)
-L, --loglevel <argument>=<value>
  [category=]level e.g. jorphan=INFO or jmeter.util=DEBUG
-r, --runremote
  Start remote servers (as defined in remote_hosts)
-R, --remotestart <argument>
  Start these remote servers (overrides remote_hosts)
-d, --homedir <argument>
  the jmeter home directory to use
-X, --remoteexit
  Exit the remote servers at end of test (non-GUI)
-g, --reportonly <argument>
  generate report dashboard only, from a test results file
-e, --reportatendofloadtests
  generate report dashboard after load test
-o, --reportoutputfolder <argument>
  output folder for report dashboard
```
