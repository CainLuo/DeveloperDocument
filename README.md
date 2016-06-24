# 玩转iOS开发：开发文档

###目录
- [作者感言](#作者感言)
- [简介](#简介)
- [打包静态库](#打包静态库)
  - [脚本版本](#脚本版本)
  - [非脚本版本](#非脚本版本)
- [使用系统自带库实现扫码](#使用系统自带库实现扫码)

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

# <p align="center">使用系统自带库实现扫码</p>

[使用AVFoundation实现扫码工程](https://github.com/CainRun/CALScanQRCode)

[使用AVFoundation实现扫码说明](https://github.com/CainRun/iOSDeveloperDocument/blob/master/%E7%8E%A9%E8%BD%ACiOS%E5%BC%80%E5%8F%91%EF%BC%9A%E4%BD%BF%E7%94%A8AVFoundation%E5%AE%9E%E7%8E%B0%E6%89%AB%E7%A0%81%20/%E7%8E%A9%E8%BD%ACiOS%E5%BC%80%E5%8F%91%EF%BC%9A%E4%BD%BF%E7%94%A8AVFoundation%E5%AE%9E%E7%8E%B0%E6%89%AB%E7%A0%81/iOS%E5%AD%A6%E4%B9%A0%EF%BC%9A%E4%BD%BF%E7%94%A8AVFoundation%E5%AE%9E%E7%8E%B0%E6%89%AB%E7%A0%81.md)


