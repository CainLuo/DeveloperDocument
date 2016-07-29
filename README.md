# <p align="center">玩转iOS开发：开发文档</p>

###目录
- [作者感言](#作者感言)
- [简介](#简介)
- [打包静态库](#打包静态库)
  - [脚本版本](#脚本版本)
  - [非脚本版本](#非脚本版本)
- [《CocoaPods》安装以及使用](#《CocoaPods》安装以及使用)
- [界面调试工具《Reveal》](#界面调试工具《Reveal》)
- [iOS 8新特性《Today Extension》工程](#iOS 8新特性《Today Extension》工程)
- [《使用系统自带的UIActivityViewController和UIActivity进行内容分享》](#《使用系统自带的UIActivityViewController和UIActivity进行内容分享》)
- [设计模式](#设计模式)
  - [单例模式](#单例模式)
  - [代理模式](#代理模式)
- [UI库](#UI库)
  - [CALToolBarListView](#CALToolBarListView)
- [功能库](#功能库)
  - [使用《AVFoundation》实现扫码](#使用《AVFoundation》实现扫码)
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
# <p align="center">打包静态库</p>

### 脚本版本

[Aggregate工程地址](https://github.com/CainRun/CreateGeneralFramework/tree/master/AggregateFramework)

[Aggregate版本说明](https://github.com/CainRun/CreateGeneralFramework/blob/master/AggregateFramework/AggregateFramework%E8%AF%B4%E6%98%8E.md)

---
### 非脚本版本

[非Aggregate工程地址](https://github.com/CainRun/CreateGeneralFramework/tree/master/NotAggregateFramework)

[非Aggregate版本说明](https://github.com/CainRun/CreateGeneralFramework/blob/master/NotAggregateFramework/NotAggregateFramework%E8%AF%B4%E6%98%8E.md)

---
# <p align="center">《CocoaPods》安装以及使用</p>

[CocoaPods安装以及使用说明](https://github.com/CainRun/iOSDeveloperDocument/blob/master/%E7%8E%A9%E8%BD%ACiOS%E5%BC%80%E5%8F%91%EF%BC%9A%E3%80%8ACocoaPods%E3%80%8B%E5%AE%89%E8%A3%85%E5%8F%8A%E4%BD%BF%E7%94%A8%E6%95%99%E7%A8%8B/%E7%8E%A9%E8%BD%ACiOS%E5%BC%80%E5%8F%91%EF%BC%9A%E3%80%8ACocoaPods%E3%80%8B%E5%AE%89%E8%A3%85%E5%8F%8A%E4%BD%BF%E7%94%A8%E6%95%99%E7%A8%8B/%E7%8E%A9%E8%BD%ACiOS%E5%BC%80%E5%8F%91%EF%BC%9A%E3%80%8ACocoaPods%E3%80%8B%E5%AE%89%E8%A3%85%E5%8F%8A%E4%BD%BF%E7%94%A8%E6%95%99%E7%A8%8B.md)

---
# <p align="center">界面调试工具《Reveal》</p>

[界面调试工具《Reveal》说明](https://github.com/CainRun/iOSDeveloperDocument/blob/master/%E7%8E%A9%E8%BD%ACiOS%E5%BC%80%E5%8F%91%EF%BC%9A%E7%95%8C%E9%9D%A2%E8%B0%83%E8%AF%95%E5%B7%A5%E5%85%B7%E3%80%8AReveal%E3%80%8B/%E7%8E%A9%E8%BD%ACiOS%E5%BC%80%E5%8F%91%EF%BC%9A%E7%95%8C%E9%9D%A2%E8%B0%83%E8%AF%95%E5%B7%A5%E5%85%B7%E3%80%8AReveal%E3%80%8B/%E7%8E%A9%E8%BD%ACiOS%E5%BC%80%E5%8F%91%EF%BC%9A%E7%95%8C%E9%9D%A2%E8%B0%83%E8%AF%95%E5%B7%A5%E5%85%B7%E3%80%8AReveal%E3%80%8B.md)

---
# <p align="center">iOS 8新特性《Today Extension》</p>

[iOS 8新特性《Today Extension》工程](https://github.com/CainRun/TodayExtensionExample)

[iOS 8新特性《Today Extension》说明](https://github.com/CainRun/iOSDeveloperDocument/blob/master/%E7%8E%A9%E8%BD%ACiOS%E5%BC%80%E5%8F%91%EF%BC%9AiOS%208%20%E6%96%B0%E7%89%B9%E6%80%A7%E3%80%8AToday%20Extension%E3%80%8B/%E7%8E%A9%E8%BD%ACiOS%EF%BC%9AiOS%208%20%E6%96%B0%E7%89%B9%E6%80%A7%E3%80%8AToday%20Extension%E3%80%8B/%E7%8E%A9%E8%BD%ACiOS%EF%BC%9AiOS%208%20%E6%96%B0%E7%89%B9%E6%80%A7%E3%80%8AToday%20Extension%E3%80%8B.md)

---
# <p align="center">《使用系统自带的UIActivityViewController和UIActivity进行内容分享》</p>

[《使用系统自带的UIActivityViewController和UIActivity进行内容分享》工程](https://github.com/CainRun/ActivityControllerDemo)

[《使用系统自带的UIActivityViewController和UIActivity进行内容分享》文档](https://github.com/CainRun/iOSDeveloperDocument/blob/master/%E7%8E%A9%E8%BD%ACiOS%E5%BC%80%E5%8F%91%EF%BC%9A%E3%80%8A%E4%BD%BF%E7%94%A8%E7%B3%BB%E7%BB%9F%E8%87%AA%E5%B8%A6%E7%9A%84UIActivityViewController%E5%92%8CUIActivity%E8%BF%9B%E8%A1%8C%E5%86%85%E5%AE%B9%E5%88%86%E4%BA%AB%E3%80%8B/%E7%8E%A9%E8%BD%ACiOS%E5%BC%80%E5%8F%91%EF%BC%9A%E3%80%8A%E4%BD%BF%E7%94%A8%E7%B3%BB%E7%BB%9F%E8%87%AA%E5%B8%A6%E7%9A%84UIActivityViewController%E5%92%8CUIActivity%E8%BF%9B%E8%A1%8C%E5%86%85%E5%AE%B9%E5%88%86%E4%BA%AB%E3%80%8B/%E7%8E%A9%E8%BD%ACiOS%E5%BC%80%E5%8F%91%EF%BC%9A%E3%80%8A%E4%BD%BF%E7%94%A8%E7%B3%BB%E7%BB%9F%E8%87%AA%E5%B8%A6%E7%9A%84UIActivityViewController%E5%92%8CUIActivity%E8%BF%9B%E8%A1%8C%E5%86%85%E5%AE%B9%E5%88%86%E4%BA%AB%E3%80%8B.md)

---
# <p align="center">设计模式</p>
###单例模式

[单例模式说明文档](https://github.com/CainRun/iOSDeveloperDocument/blob/master/%E7%8E%A9%E8%BD%ACiOS%E5%BC%80%E5%8F%91%EF%BC%9A%E3%80%8AiOS%E8%AE%BE%E8%AE%A1%E6%A8%A1%E5%BC%8F%20%E2%80%94%20%E5%8D%95%E4%BE%8B%E6%A8%A1%E5%BC%8F%E3%80%8B/%E7%8E%A9%E8%BD%ACiOS%E5%BC%80%E5%8F%91%EF%BC%9A%E3%80%8AiOS%E8%AE%BE%E8%AE%A1%E6%A8%A1%E5%BC%8F%20%E2%80%94%20%E5%8D%95%E4%BE%8B%E6%A8%A1%E5%BC%8F%E3%80%8B.md)

[单例模式工程地址](https://github.com/CainRun/DesignPattern/tree/master/SingletonPattern/SingletonPattern)

---
### 代理模式

[代理模式说明文档](https://github.com/CainRun/DesignPattern/blob/master/ProxyPattern/ProxyPattern%E8%AF%B4%E6%98%8E/%E7%8E%A9%E8%BD%ACiOS%E5%BC%80%E5%8F%91%EF%BC%9A%E3%80%8AiOS%E8%AE%BE%E8%AE%A1%E6%A8%A1%E5%BC%8F%20%E2%80%94%20%E4%BB%A3%E7%90%86%E6%A8%A1%E5%BC%8F%E3%80%8B.md)

[代理模式工程地址](https://github.com/CainRun/DesignPattern/tree/master/ProxyPattern/ProxyPattern%E5%B7%A5%E7%A8%8B%E6%96%87%E4%BB%B6)

---

# <p align="center">UI库</p>

## CALToolBarListView

[CALToolBarListView工程文件](https://github.com/CainRun/CALToolBarView)

[CALToolBarListView说明文档](https://github.com/CainRun/CALToolBarView/blob/master/README.md)

---

# <p align="center">功能库</p>

## 使用《AVFoundation》实现扫码

[使用AVFoundation实现扫码工程](https://github.com/CainRun/CALScanQRCode)

[使用AVFoundation实现扫码说明](https://github.com/CainRun/iOSDeveloperDocument/blob/master/%E7%8E%A9%E8%BD%ACiOS%E5%BC%80%E5%8F%91%EF%BC%9A%E4%BD%BF%E7%94%A8AVFoundation%E5%AE%9E%E7%8E%B0%E6%89%AB%E7%A0%81%20/%E7%8E%A9%E8%BD%ACiOS%E5%BC%80%E5%8F%91%EF%BC%9A%E4%BD%BF%E7%94%A8AVFoundation%E5%AE%9E%E7%8E%B0%E6%89%AB%E7%A0%81/iOS%E5%AD%A6%E4%B9%A0%EF%BC%9A%E4%BD%BF%E7%94%A8AVFoundation%E5%AE%9E%E7%8E%B0%E6%89%AB%E7%A0%81.md)

---

# <p align="center">开源项目</p>

## MiLink直播

[MiLink直播工程文件](https://github.com/CainRun/MiLink/tree/master/MiLink)