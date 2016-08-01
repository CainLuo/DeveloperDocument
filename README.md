# <p align="center">玩转iOS开发：开发文档</p>

###目录
- [作者感言](#作者感言)
- [简介](#简介)
- [第三方工具](#第三方工具)
  - [《CocoaPods》安装以及使用](#《CocoaPods》安装以及使用)
  - [界面调试工具《Reveal》](#界面调试工具《Reveal》)
- [设计模式](#设计模式)
  - [单例模式](#单例模式)
  - [代理模式](#代理模式)
- [UI库](#UI库)
  - [CALToolBarListView](#CALToolBarListView)
- [功能库](#功能库)
  - [使用《AVFoundation》实现扫码](#使用《AVFoundation》实现扫码)
  - [《使用自定义UIActivity进行内容分享》](#《使用自定义UIActivity进行内容分享》)
  - [iOS 8新特性《Today Extension》](#iOS 8新特性《Today Extension》)
  - [iOS 8新特性《Share Extension》](#iOS 8新特性《Share Extension》)
  - [打包静态库](#打包静态库)
    - [脚本版本](#脚本版本)
    - [非脚本版本](#非脚本版本)
- [开源项目](#开源项目)
  - [MiLink直播](#MiLink直播)

---
###作者感言
> 之所以写这些文档, 除了分享自己的心得, 其实还有一个就是为了给自己写笔记, 记录自己研究过的东西, 一开始是非常的不习惯, 各种蛋疼, 不知道从哪里开始入手, 但后来慢慢的, 就着手了, 越写越顺, 姿势也长了, 感谢努力过的自己.
>
> 最后:
>
> 如果你有更好的建议或者对这些文章有不满的地方, 请联系我, 我会参考你们的意见再进行修改, 联系我时, 请备注**`iOSDeveloperDocument`** 如果觉得好的话, 希望大家也可以打赏一下~嘻嘻~祝大家学习愉快~谢谢~

<p align="right">Cain(罗家辉)</p>

<p align="right">zhebushimengfei@qq.com: 联系方式</p>

<p align="right">350116542: 腾讯QQ</p>

---
# <p align="center">第三方工具</p>

### 《CocoaPods》安装以及使用

[CocoaPods安装以及使用说明](https://github.com/CainRun/DeveloperDocument/blob/master/%E7%8E%A9%E8%BD%ACiOS%E5%BC%80%E5%8F%91%EF%BC%9A%E3%80%8ACocoaPods%E3%80%8B%E5%AE%89%E8%A3%85%E5%8F%8A%E4%BD%BF%E7%94%A8%E6%95%99%E7%A8%8B/%E7%8E%A9%E8%BD%ACiOS%E5%BC%80%E5%8F%91%EF%BC%9A%E3%80%8ACocoaPods%E3%80%8B%E5%AE%89%E8%A3%85%E5%8F%8A%E4%BD%BF%E7%94%A8%E6%95%99%E7%A8%8B.md)

---

### 界面调试工具《Reveal》

[界面调试工具《Reveal》说明](https://github.com/CainRun/DeveloperDocument/blob/master/%E7%8E%A9%E8%BD%ACiOS%E5%BC%80%E5%8F%91%EF%BC%9A%E7%95%8C%E9%9D%A2%E8%B0%83%E8%AF%95%E5%B7%A5%E5%85%B7%E3%80%8AReveal%E3%80%8B/%E7%8E%A9%E8%BD%ACiOS%E5%BC%80%E5%8F%91%EF%BC%9A%E7%95%8C%E9%9D%A2%E8%B0%83%E8%AF%95%E5%B7%A5%E5%85%B7%E3%80%8AReveal%E3%80%8B.md)

---
# <p align="center">设计模式</p>
###单例模式

[单例模式说明文档](https://github.com/CainRun/DesignPattern/blob/master/SingletonPattern/SingletonPattern%E8%AF%B4%E6%98%8E/%E7%8E%A9%E8%BD%ACiOS%E5%BC%80%E5%8F%91%EF%BC%9A%E3%80%8AiOS%E8%AE%BE%E8%AE%A1%E6%A8%A1%E5%BC%8F%20%E2%80%94%20%E5%8D%95%E4%BE%8B%E6%A8%A1%E5%BC%8F%E3%80%8B.md)

[单例模式工程地址](https://github.com/CainRun/DesignPattern/tree/master/SingletonPattern/SingletonPattern%E5%B7%A5%E7%A8%8B%E6%96%87%E4%BB%B6)

---
### 代理模式

[代理模式说明文档](https://github.com/CainRun/DesignPattern/blob/master/ProxyPattern/ProxyPattern%E8%AF%B4%E6%98%8E/%E7%8E%A9%E8%BD%ACiOS%E5%BC%80%E5%8F%91%EF%BC%9A%E3%80%8AiOS%E8%AE%BE%E8%AE%A1%E6%A8%A1%E5%BC%8F%20%E2%80%94%20%E4%BB%A3%E7%90%86%E6%A8%A1%E5%BC%8F%E3%80%8B.md)

[代理模式工程地址](https://github.com/CainRun/DesignPattern/tree/master/ProxyPattern/ProxyPattern%E5%B7%A5%E7%A8%8B%E6%96%87%E4%BB%B6)

---

# <p align="center">UI库</p>

### CALToolBarListView

[CALToolBarListView工程文件](https://github.com/CainRun/CALToolBarView)

[CALToolBarListView说明文档](https://github.com/CainRun/CALToolBarView/blob/master/README.md)

---

# <p align="center">功能库</p>

### 使用《AVFoundation》实现扫码

[使用AVFoundation实现扫码工程](https://github.com/CainRun/CALScanQRCode)

[使用AVFoundation实现扫码说明](https://github.com/CainRun/CALScanQRCode/blob/master/README.md)

---
###《使用自定义UIActivity进行内容分享》

[《使用自定义UIActivity进行内容分享》工程](https://github.com/CainRun/ActivityControllerDemo/tree/master/UIActivityViewControllerDemo)

[《使用自定义UIActivity进行内容分享》文档](https://github.com/CainRun/ActivityControllerDemo/blob/master/README.md)

---
### iOS 8新特性《Today Extension》

[iOS 8新特性《Today Extension》非Storyboard工程](https://github.com/CainRun/TodayExtensionExample/tree/master/TodayExtension-Code)

[iOS 8新特性《Today Extension》Storyboard工程](https://github.com/CainRun/TodayExtensionExample/tree/master/TodayExtension-Storyboard)

[iOS 8新特性《Today Extension》说明](https://github.com/CainRun/TodayExtensionExample/blob/master/README.md)

---
### iOS 8新特性《Share Extension》

[iOS 8新特性《Share Extension》纯文本工程](https://github.com/CainRun/ShareExtensionDemo/tree/master/ShareExtension%E7%BA%AF%E6%96%87%E5%AD%97)

[iOS 8新特性《Share Extension》图片+文本工程](https://github.com/CainRun/ShareExtensionDemo/tree/master/ShareExtension%E5%9B%BE%E7%89%87%2B%E6%96%87%E5%AD%97)

[iOS 8新特性《Share Extension》说明](https://github.com/CainRun/ShareExtensionDemo/blob/master/README.md)
---
## <p align="center">打包静态库</p>

### 脚本版本

[Aggregate工程地址](https://github.com/CainRun/CreateGeneralFramework/tree/master/AggregateFramework)

[Aggregate版本说明](https://github.com/CainRun/CreateGeneralFramework/blob/master/AggregateFramework/AggregateFramework%E8%AF%B4%E6%98%8E.md)

---
### 非脚本版本

[非Aggregate工程地址](https://github.com/CainRun/CreateGeneralFramework/tree/master/NotAggregateFramework)

[非Aggregate版本说明](https://github.com/CainRun/CreateGeneralFramework/blob/master/NotAggregateFramework/NotAggregateFramework%E8%AF%B4%E6%98%8E.md)

---

# <p align="center">开源项目</p>

### MiLink直播

[MiLink直播工程文件](https://github.com/CainRun/MiLink/tree/master/MiLink)

