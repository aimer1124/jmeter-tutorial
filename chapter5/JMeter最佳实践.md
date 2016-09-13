# [JMeter](http://jmeter.apache.org/)最佳实践

## 官方最佳实践

- [JMeter](http://jmeter.apache.org/)官方给出了15条最佳实践，原文地址: [best-practices](http://jmeter.apache.org/usermanual/best-practices.html)，有兴趣的朋友可以自行去查看
- 针对官方的最佳实践，精要总结

  - 坚持使用最新版本，当前最新版本为[3.0](http://jmeter.apache.org/download_jmeter.cgi)
  - 使用一台机器并发时，不要将`并发数`设置过大
  - 利用`HTTP(S) Test Script Recorder`进行请求录制，提高脚本的维护效率
  - 将测试过程中所使用的`变量`进行统一管理，便于后期的维护
  - 真实测试过程中，最好使用`非GUI`模式进行测试
  - `BeanShell`可以作为一个服务，用于快速调试
  - 尽量编写**少**的测试，将测试`通用化`
  - 最好不要使用过时的方法

## [WorkBench](http://jmeter.apache.org/usermanual/component_reference.html#WorkBench)使用

[WorkBench](http://jmeter.apache.org/usermanual/component_reference.html#WorkBench)是[JMeter](http://jmeter.apache.org/)官方提供的一个用于`临时`存放一些数据。如: 复制请求及`部分元素`的应用。保存`测试计划`时，[WorkBench](http://jmeter.apache.org/usermanual/component_reference.html#WorkBench)是不会被保存的，除非你手动选择保存。

上面说了[WorkBench](http://jmeter.apache.org/usermanual/component_reference.html#WorkBench)的功能，是不是感觉这东西没有啥用，**But**，[JMeter](http://jmeter.apache.org/)将一些特殊的元素应用于[WorkBench](http://jmeter.apache.org/usermanual/component_reference.html#WorkBench)中。如:

- [HTTP(S) Test Script Recorder](http://jmeter.apache.org/usermanual/component_reference.html): 用于**录制**请求，如果要使用`Recorder Controller`，`一定`要有这个元素的配制
- [HTTP Mirror Server](http://jmeter.apache.org/usermanual/component_reference.html#HTTP_Mirror_Server): 微型镜像服务
- [Property Display](http://jmeter.apache.org/usermanual/component_reference.html#Property_Display): 属性值的显示
