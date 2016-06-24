#<center>玩转iOS开发：非脚本版本《模拟器与真机静态Framework合成教程》</center>

[TOC]

---
### 简介

> 在我们做**`iOS开发中`**, 有时候我们会自己动手写一些库, 方便自己去调用, 但是我们又不想这个库的内部实现代码被别人知道, 这个时候我们就需要把这个库打包成**`Framework`**或者是**`lib.a`**文件, 这里我们只做**`Framework`**的打包教程, **`lib.a`**的打包方式和**`Framework`**趋同差异, 如果有需要, 后面我再补上.

###作者感言
> 为了写这篇文章, 我翻查了许多资料, 都没有找到详细点的可参考资料, 外国的文章就不用说了, 光是看鸡肠就头晕了, 所以我自己总结了一些经验, 整理了一番, 决定分享出来, 希望大家喜欢

> 最后:
> 如果你有更好的建议或者对这篇文章有不满的地方, 请联系我, 我会参考你们的意见再进行修改, 联系我时, 请备注**`Framework`** 如果觉得好的话, 希望大家也可以打赏一下~嘻嘻~祝大家学习愉快~谢谢~
>

<p align="right">Cain(罗家辉)</p>
<p align="right">zhebushimengfei@qq.com: 联系方式</p>
<p align="right">350116542: 腾讯QQ</p>

---
### 创建Framework工程
> 在开始合成之前, 我们肯定是需要创建一个生成**`Framework`**的工程, 这里推荐用**`WorkSpace`**来创建, 因为可以方便我们去测试**`Framework`**库.

![1 | center | 1080x0](./1.png)

> 添加新的工程
![2 | center | 1080x0](./2.png)

> 选择创建**`Cocoa Touch Framework`**
![3 | center | 1080x0](./3.png)

>给**`Framework`**命名, 喜欢啥名字, 自己看着办呗, 我个人的习惯就是, 这个是什么库, 我就命名是啥
![4 | center | 1080x0](./4.png)

> 创建完之后, 我们会看到**`Framework`**里有一个头文件, 头文件里有一堆不明所以的代码, 这个时候我们不需要管, 直接干掉它
![5 | center | 1080x0](./5.png)

> 这样子, 我们就创建**`Framework`**完毕了, 下面让我们来创建一个测试类.

---
### 添加测试类

> 给这个测试类, 添加一个类方法
![6 | cneter | 1080x0](./6.png)
![7 | cneter | 1080x0](./7.png)

> 添加完测试类之后, 下面让我们来配置一下整个**`Framework`**工程, 让它同时支持模拟器和真机.

---
### 配置Framework工程

> Xcode默认是会把Framework变成Debug模式, 这时候我们需要去改成Release模式
![8 | cneter | 1080x0](./8.png)
![9 | cneter | 1080x0](./9.png)

> 然后我们去配置项目工程, 首先我们来添加一个模拟器的支持
![10 | cneter | 1080x0](./10.png)

> 修改Framework最低支持iOS的版本, 我这里最低支持的是iOS7
![11 | cneter | 1080x0](./11.png)

> 把默认的动态库, 切换成静态库
![12 | cneter | 1080x0](./12.png)

> 配置需要暴露的**`.h`**文件
![13 | cneter | 1080x0](./13.png)
![14 | cneter | 1080x0](./14.png)
![15 | cneter | 1080x0](./15.png)

> 最后, 我们在**`Test.h`**中导入**`TestClass.h`**, 当然, 我们也不需要这么做, 因为我们已经在配置中暴露了**`TestClass.h`**文件, 所以不需要引用也是可以的
![16 | cneter | 1080x0](./16.png)

> 这个时候, 我们先来测试一下能不能生成**`Framework`**库
![17 | cneter | 1080x0](./17.png)
![18 | cneter | 1080x0](./18.png)
![19 | cneter | 1080x0](./19.png)

> 最终测试, 是成功生成**`Framework`**库的, 但这个是模拟器库, 如果你需要支持真机的话, 那么只要切换运行的选项就好了
![20 | center | 1080x0](./20.png)

> 这时候我们再去查看文件夹, 就会有两个**`Framework`**文件夹了
![21 | center | 1080x0](./21.png)

---
### 检测Framework

> 虽然我们把**`Framework`**都打包好了, 但是我们需要检测一下是否符合我们的需求, 这是我们要打开**`Terminal`**, 并且输入命令.
```
lipo -info (Framework二进制文件地址)
```

![22 | center | 1080x0](./22.png)

> 检测真机Framework包
![23 | center | 1080x0](./23.png)

> 检测模拟器Framework包
![24 | center | 1080x0](./24.png)

---
### 合成真机与模拟器通用的Framework包

> 前面做了那么多的事情, 就为了现在这一步, 就是将模拟器与真机两个Framework包合成一个通用的Framework包, 由于我这里没有通用的Shell脚本, 只能用最笨的办法合成两个包了, 下面让我们一起来看看.

> 打开终端输入合成命令
```
lipo -create (真机Framework路径) (模拟器Framework路径) -output (真机/模拟器路径)
```

![25 | center | 1080x0](./25.png)
![26 | center | 1080x0](./26.png)
![27 | center | 1080x0](./27.png)
![28 | center | 1080x0](./28.png)
![29 | center | 1080x0](./29.png)

> 检测合成后的通用Framework, 只有看到**`armv7 arm64 i386 x86_64`**这四个同时存在, 才真正的合成成功
![30 | center | 1080x0](./30.png)

![31 | center | 1080x0](./31.png)

---
### 注意!!!!!
> 这里有一个注意事项, 有时候用**`lipo`**合成会报一个错误(我这里没有发现)

```
crun: error: active developer path (“/Applications/Xcode 2.app/Contents/Developer”) does not exist, use xcode-select --switch path/to/Xcode.app to specify the Xcode that you wish to use for command line developer tools (or see man xcode-select)
```

> 这时候不要慌, 只要再输入下面的命令, 输入电脑密码后, 然后再次运行合成**`Framework`**的命令, 就可以合成了

```
sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer
```

---
### 测试Framework
> 既然我们那么辛苦的合成了一个通用的**`Framework`**, 不用用, 怎么对得起我们的付出呢? 再次回到**`Workspace`**, 新建一个测试工程.

![32 | center | 1080x0](./32.png)

![33 | center | 1080x0](./33.png)

> 注意, 创建测试工程的时候, 不要新建到**`Framework`**的工程内
![34 | center | 1080x0](./34.png)

![35 | center | 1080x0](./35.png)

![36 | center | 1080x0](./36.png)

> 模拟器测试
![37 | center | 1080x0](./37.png)

![38 | center | 1080x0](./38.png)

> 真机测试
![39 | center | 1080x0](./39.png)

![40 | center | 1080x0](./40.png)

---
### 工程地址

GitHub地址: https://github.com/CainRun/CreateGeneralFramework

---
### 结束语
> 其实我这个方法比较麻烦一些, 毕竟我还没找到怎么用脚本去合成一个的方法, 如果找到这样子方法的朋友希望可以告知一声, 感激不尽~~~
> 好啦, 教程到这里就结束了, 谢谢大家的耐心观看
