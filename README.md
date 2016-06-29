# 玩转iOS开发：开发文档

###目录
- [作者感言](#作者感言)
- [简介](#简介)
- [打包静态库](#打包静态库)
  - [脚本版本](#脚本版本)
  - [非脚本版本](#非脚本版本)
- [使用《AVFoundation》实现扫码](#使用《AVFoundation》实现扫码)
- [《CocoaPods》安装以及使用](#《CocoaPods》安装以及使用)
- [界面调试工具《Reveal》](#界面调试工具《Reveal》)
- [iOS 8新特性《Today Extension》工程](#iOS 8新特性《Today Extension》工程)
- [《使用系统自带的UIActivityViewController和UIActivity进行内容分享》](#《使用系统自带的UIActivityViewController和UIActivity进行内容分享》)

---

###作者感言
> 为了写这篇文章, 我翻查了许多资料, 都没有找到详细点的可参考资料, 外国的文章就不用说了, 光是看鸡肠就头晕了, 所以我自己总结了一些经验, 整理了一番, 决定分享出来, 希望大家喜欢
>
> 最后:
>
> 如果你有更好的建议或者对这篇文章有不满的地方, 请联系我, 我会参考你们的意见再进行修改, 联系我时, 请备注**`Framework`** 如果觉得好的话, 希望大家也可以打赏一下~嘻嘻~祝大家学习愉快~谢谢~

<p align="right">Cain(罗家辉)</p>
<p align="right">zhebushimengfei@qq.com: 联系方式</p>
<p align="right">350116542: 腾讯QQ</p>
---

### 简介

> 在我们平常做**`iOS`**开发的时候, 经常会看到一些**`.a`**文件或者是**`.framework`**后缀的文件, 而我们又是没办法去看到里面具体的实现, 这个时候我们就会很好奇, 这个到底是怎么封装的呢? 我们自己是否也能封装呢?
>
> 答案肯定是可以的, 下面这里有分两个版本, 一个是非脚本, 一个是用**`Aggregate`**脚本, 脚本虽好用, 我个人认为还是要自己手动去合一下是最好的, 毕竟遇到了坑, 你才会成长.

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

# <p align="center">使用《AVFoundation》实现扫码</p>

[使用AVFoundation实现扫码工程](https://github.com/CainRun/CALScanQRCode)

[使用AVFoundation实现扫码说明](https://github.com/CainRun/iOSDeveloperDocument/blob/master/%E7%8E%A9%E8%BD%ACiOS%E5%BC%80%E5%8F%91%EF%BC%9A%E4%BD%BF%E7%94%A8AVFoundation%E5%AE%9E%E7%8E%B0%E6%89%AB%E7%A0%81%20/%E7%8E%A9%E8%BD%ACiOS%E5%BC%80%E5%8F%91%EF%BC%9A%E4%BD%BF%E7%94%A8AVFoundation%E5%AE%9E%E7%8E%B0%E6%89%AB%E7%A0%81/iOS%E5%AD%A6%E4%B9%A0%EF%BC%9A%E4%BD%BF%E7%94%A8AVFoundation%E5%AE%9E%E7%8E%B0%E6%89%AB%E7%A0%81.md)

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
