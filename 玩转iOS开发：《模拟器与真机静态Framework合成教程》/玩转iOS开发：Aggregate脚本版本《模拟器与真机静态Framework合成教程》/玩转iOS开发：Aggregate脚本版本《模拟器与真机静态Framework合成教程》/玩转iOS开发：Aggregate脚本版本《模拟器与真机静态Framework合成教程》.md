#<center>玩转iOS开发：Aggregate脚本版本《模拟器与真机静态Framework合成教程》</center>

[TOC]

---
### 简介

> 之前我写了一个关于非**`Aggregate`**版本的[《模拟器与真机静态Framework合成教程》](http://www.jianshu.com/p/305c62fa9e2b), 但那个实在是太麻烦的, 所以我又出墙翻了一些歪果仁写的博客, 果然是世上无难事只怕有心人, 终于被我找到合适的**`Shell`**脚本了

###作者感言
> 为了写这篇文章, 我翻查了许多资料, 都没有找到详细点的可参考资料, 外国的文章就不用说了, 光是看鸡肠就头晕了, 所以我自己总结了一些经验, 整理了一番, 决定分享出来, 希望大家喜欢

> 最后:
> 如果你有更好的建议或者对这篇文章有不满的地方, 请联系我, 我会参考你们的意见再进行修改, 联系我时, 请备注**`Aggregate-Framework`** 如果觉得好的话, 希望大家也可以打赏一下~嘻嘻~祝大家学习愉快~谢谢~
>

<p align="right">Cain(罗家辉)</p>
<p align="right">zhebushimengfei@qq.com: 联系方式</p>
<p align="right">350116542: 腾讯QQ</p>

---
### 创建Framework工程

> 新建一个Workpace文件

![0 | center | 1080x0](./0.png)

> 新建Cocoa Touch Framework工程
![1 | center | 1080x0](./1.png)
![2 | center | 1080x0](./2.png)
![3 | center | 1080x0](./3.png)
![4 | center | 1080x0](./4.png)


---
### 添加测试类

> 添加一个测试类**`TestTwoClass`**
![5 | center | 1080x0](./5.png)


---
### 配置Framework工程
![6 | center | 1080x0](./6.png)
![7 | center | 1080x0](./7.png)
![8 | center | 1080x0](./8.png)
![9 | center | 1080x0](./9.png)
![10 | center | 1080x0](./10.png)
![11 | center | 1080x0](./11.png)
![12 | center | 1080x0](./12.png)

---
### 分别生成真机与模拟器的Framework包

![13 | center | 1080x0](./13.png)
![14 | center | 1080x0](./14.png)


---
### 创建Aggregate

![15 | center | 1080x0](./15.png)
![16 | center | 1080x0](./16.png)
![17 | center | 1080x0](./17.png)

---
### 配置Aggregate

![18 | center | 1080x0](./18.png)

> 打开**`Run Script`**之后, 输入以下的脚本, 就可以自动合成通用的**`Framework`**库了
> 
> **PS: 脚本是我在`Google`上搜到的, 详细是谁写的, 我也不清楚, 很感谢这个作者提供的脚本**

```
if [ "${ACTION}" = "build" ]
then
INSTALL_DIR=${SRCROOT}/Products/${PROJECT_NAME}.framework

DEVICE_DIR=${BUILD_ROOT}/${CONFIGURATION}-iphoneos/${PROJECT_NAME}.framework

SIMULATOR_DIR=${BUILD_ROOT}/${CONFIGURATION}-iphonesimulator/${PROJECT_NAME}.framework


if [ -d "${INSTALL_DIR}" ]
then
rm -rf "${INSTALL_DIR}"
fi

mkdir -p "${INSTALL_DIR}"

cp -R "${DEVICE_DIR}/" "${INSTALL_DIR}/"
#ditto "${DEVICE_DIR}/Headers" "${INSTALL_DIR}/Headers"

lipo -create "${DEVICE_DIR}/${PROJECT_NAME}" "${SIMULATOR_DIR}/${PROJECT_NAME}" -output "${INSTALL_DIR}/${PROJECT_NAME}"

#open "${DEVICE_DIR}"
#open "${SRCROOT}/Products"
fi
```

![19 | center | 1080x0](./19.png)
![20 | center | 1080x0](./20.png)
![21 | center | 1080x0](./21.png)

> 这里逮到一个错误, 不要慌, 因为我们之前是用**`Release`**模式的, 只要把**`Aggregate`**切换到**`Release`**模式, 再运行就可以了

![22 | center | 1080x0](./22.png)
![23 | center | 1080x0](./23.png)
![24 | center | 1080x0](./24.png)

---
### 检测Framework包

![25 | center | 1080x0](./25.png)
![26 | center | 1080x0](./26.png)
![27 | center | 1080x0](./27.png)

---
### 测试Framework包

> 测试的方法和**[《模拟器与真机静态Framework合成教程》](http://www.jianshu.com/p/305c62fa9e2b)**这里面的测试方法一样, 这样就不多做解释了

> 但是这里还有一点需要注意一些, 由于我们刚刚在打包的时候, 是把**`TestTwoClass.h`**是丢到**`Private`**里面去的, 哪怕我们已经把头文件丢到**`TestTwo.h`**中, 然后再引用**`TestTwo.h`**, 依旧是没办法去调用**`TestTwoClass`**内部的任何东西, 怎么办呢?
> 
> 我们只要去改改导入的头文件就可以了, 比如:

![28 | center | 1080x0](./28.png)

---
### 工程地址

GitHub地址: https://github.com/CainRun/CreateGeneralFramework

---
### 结束语

> 好啦, 教程到这里就结束了, 谢谢大家的耐心观看
