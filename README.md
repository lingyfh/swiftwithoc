# swiftwithoc
swift invoke objective-c

[Demo 源码地址](https://github.com/lingyfh/swiftwithoc.git)

* 新建立一个Single View Application

![language 选择swift](http://img.blog.csdn.net/20160123134822646)

* 在Xcode默认生成的ViewController.swift上增加一行日志输出
![增加日志输入](http://img.blog.csdn.net/20160123135319341)

* 此项目基础上，新建一个oc 类，并实现它
![新建立一个OC类](http://img.blog.csdn.net/20160123135539484)

* 此时Xcode会提示建立一个项目与之对应的Bridging Header文件，也就是通常所说的swift与oc的桥接文件（注意并不是每新建立一个OC都要建立桥接文件）。
![提示建立bridging header文件](http://img.blog.csdn.net/20160123135839394)

![新建立三个文件，一个OC头文件，一个OC实现文件，一个Bridging Header文件](http://img.blog.csdn.net/20160123140112975)

* 在OC中定义一个打印日志的方法，并实现它
    \- (void)printLog:(NSString *)log {
        NSLog(@"%@", log);
    }

* 此时在swift中不能直接调用NSPrintLog类，Bridging Header需要引入此NSPrintLog头文件
> #import "NSPrintLog.h"

* 最终调用显示效果
![最终效果](http://img.blog.csdn.net/20160123141532274)

**最后Bridging Header 是在什么地方起的作用呢？**
* Xcode 自动生成的Bridging Header将会自动配置在Build Settings中
![Bridging Header文件配置](http://img.blog.csdn.net/20160123141748530)

**所以如果swift调用OC失败，请检查Bridging Header是否正常配置**
