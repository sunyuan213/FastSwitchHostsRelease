# 欢迎使用 FastSwitchHosts

**FastSwitchHosts是一个快速切换host的工具软件**

FastSwitchHosts是一个快速切换host的工具软件，并且集合了Fillder的插件。基于.netframework4.0开发。

- FastSwitchHosts在切换host时，会检查改变了哪些host，把对应ip的tcp连接断开，以达到秒切的效果。

- 在开启了Fiddler之后打开FastSwitchHosts，会在Fiddler中安装FastSwitchHosts的插件。之所以会添加Fiddler的插件，是因为Fillder开启后，在切换host的时候，需要隔一段时间，新的host才会生效。

- Fiddler的插件会监控系统的host文件，host一改变，就会清除Fiddler的dns缓存，重新加载系统host文件。

[点击下载安装包](https://github.com/sunyuan213/FastSwitchHostsRelease/releases/download/V1.0.0.6/FastSwitchHosts_setup.exe)

[.netframework4.0在线安装](https://www.microsoft.com/zh-CN/download/confirmation.aspx?id=17851)
