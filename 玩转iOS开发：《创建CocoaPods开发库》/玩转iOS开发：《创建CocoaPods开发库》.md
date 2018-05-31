# 玩转iOS开发《创建CocoaPods开发库》

[TOC]

想了想, 发现自己好久都没有写新的文章了, 还有一些朋友跑过来说我的掘金好久没更新了, 其实不是的, 我一直在维护并更新[玩转iOS开发：自己造的轮子《CLUIKit》](https://juejin.im/post/5a97743b5188255efc5f8df5)和[玩转iOS开发：自己造的轮子《CLFoundation》](https://juejin.im/post/5a9648f251882543de215dc3), 只是没有文章的更新日期, 这个没法看到我更新文章而已, 希望掘金考虑考虑加上个更新时间~~



## 请他喝杯星爸爸
如果您觉得挺赞的话, 可以我喝杯星爸爸, 谢谢啦~

![支付宝](https://raw.githubusercontent.com/CainRun/PayProject/master/WeChatPay-Objective-C/Images/支付宝QRC.jpg)


这段时间除了忙着做项目之外, 还有一件事就是制作`CocoaPods`库, 这个东西虽然好用, 不研究还好, 一研究就会发现, 真的是.....


![真让人头大](https://raw.githubusercontent.com/CainLuo/DeveloperDocument/master/玩转iOS开发：《创建CocoaPods开发库》/biaoqing1.jpg)

搞了一两天, 搜了`N`多个百度和谷歌, 也咨询了很多大佬, 终于捣鼓出来了, 下面就直接上文章, 不那么多废话了.



## 创建podspec文件

使用终端找到需要创建`CocoaPods`开发库的文件夹

```vim
cd Project文件夹
```

![1](https://raw.githubusercontent.com/CainLuo/DeveloperDocument/master/玩转iOS开发：《创建CocoaPods开发库》/1.gif)



找到对应的路径后, 再输入创建`podspec`文件的命令

```vim
pod spec create 库名
```

![2](https://raw.githubusercontent.com/CainLuo/DeveloperDocument/master/玩转iOS开发：《创建CocoaPods开发库》/2.png)



## 编辑podspec文件

打开`库名.podspec`文件之后, 我们会看到很多对应的注释, 按照个人喜欢, 选择删掉或者不删掉, 这里为了演示选择删掉全部注释.



![3](https://raw.githubusercontent.com/CainLuo/DeveloperDocument/master/玩转iOS开发：《创建CocoaPods开发库》/3.png)



这里解释一下各个参数:

* **name:** 库名, 必选
* **version:** 版本号, 必选
* **summary:** 库的概要
* **description:** 库的描述, 可选
* **homepage:** 库的首页, 可选
* **license:** 开源协议, 如有开源协议必选
* **author:** 作者, 必选, 详情看文章后面的介绍
* **platform:** 设置最低支持的系统版本号, 可选
* **source:** 资源地址, 必选
* **source_files:** 资源文件, 必选
* **exclude_files:** 排除文件, 可选
* **requires_arc:** 是否是ARC, 可选
* **frameworks:** 需要关联的系统Frameworks
* **dependency:** 需要关联的第三方库

更详细的可以到[CocoaPods网站](https://cocoapods.org)去查询



这里我们举个例子, [CLUIKit.podspec](#https://github.com/CainLuo/CLUIKit/blob/master/CLUIKit.podspec)的写法, 这里只依赖了三个库, [MJRefresh](https://github.com/CoderMJLee/MJRefresh), [CLFoundation](https://github.com/CainLuo/CLFoundation)和[Masonry](https://github.com/SnapKit/Masonry).

![4](https://raw.githubusercontent.com/CainLuo/DeveloperDocument/master/玩转iOS开发：《创建CocoaPods开发库》/4.png)



上面这种写法比较适合单一的库, 比如[MJRefresh](https://github.com/CoderMJLee/MJRefresh), [CLFoundation](https://github.com/CainLuo/CLFoundation)和[Masonry](https://github.com/SnapKit/Masonry)这类型的, 但如果我们需要拆分出几个子模块让开发者去选择, 这里有两种方案:

* 开启多一个`Git`仓库, 分开来存储
* 通过编写`podspec`文件的技巧拆分.

这里我们推荐第二种方案.



## 编写podspec文件进阶

这里我们可以找到最经典的案例就是[AFNetworking.podspec](https://github.com/AFNetworking/AFNetworking/blob/master/AFNetworking.podspec), 如果这个库全都是我们自己写的, 那么可以参照着来写:

![5](https://raw.githubusercontent.com/CainLuo/DeveloperDocument/master/玩转iOS开发：《创建CocoaPods开发库》/5.png)

![6](https://raw.githubusercontent.com/CainLuo/DeveloperDocument/master/玩转iOS开发：《创建CocoaPods开发库》/6.png)



但如果我们是要依赖于第三方的库或者是`Framework`, 那这里可能就不适合了, 比如[CLMapKit.podspec](https://github.com/CainLuo/CLMapKit/blob/master/CLMapKit.podspec), 这里依赖了`GoogleMaps`, 并且未来可能还会兼容其他的地图库, 那么我们就必须拆分成`N`个子模块, 并且要针对来编写:

![7](https://raw.githubusercontent.com/CainLuo/DeveloperDocument/master/玩转iOS开发：《创建CocoaPods开发库》/7.png)



* **subspec: **子模块的标签, 名字可自定义
* **static_framework:** 静态库标签, 表示我们依赖的`Framework`是静态的.



这里需要注意一点的就是**source_files**这个标签, 在`GoogleMap`这个子模块里, 我们的写法要根据我们的文件层级来编写, 比如[CLMapKit](https://github.com/CainLuo/CLMapKit)这个库的`GoogleMap`模块, 它的层级就是`CLMapKit/GoogleMap/CLGoogleMapViewController`, 最后才到要共享的文件, 所以我们在这里要写成图上锁显示的那样.



并且针对`GoogleMap`这个`subspec`写上所依赖的库:

* **dependency:** GoogleMaps



如果我们这个库里面需要`.Bundle`文件, 那我们就需要加一个Resource标签:

* **resource:** Classese/BundleName.bundle



## 验证podspec文件

当我们写好了`podspec`文件之后, 我们就需要在本地验证一下:

```vim
pod spec lint
```

![8](https://raw.githubusercontent.com/CainLuo/DeveloperDocument/master/玩转iOS开发：《创建CocoaPods开发库》/8.png)



这个时候我们没有看到有任何的`error`信息, 就已经`ok`了, 如果我们不想要警告的话, 可以带上`--allow-warnings`这个关键词.



## 发布第三方库

经过上面我们的编写, 以及验证`podspec`文件之后, 我们就可以准备发布我们的库了, 这里我们只讲解如何发布开源的库, 私有的暂时不去研究先.



### 创建公共的`Git`仓库

首先我们需要去创建一个`Git`仓库, 大多数老铁选择的是`GitHub`, 怎么创建, 怎么`clone`, 这里就不解释了, 我们把代码上传上`GitHub`之后会有一个酱紫的界面:

![9](https://raw.githubusercontent.com/CainLuo/DeveloperDocument/master/玩转iOS开发：《创建CocoaPods开发库》/9.png)

所有代码文件及`podspec`文件上传了之后, 我们就继续下一步.



### 创建Git Tag

之前我们解释过在`podspec`有一个标签叫做`version`, 这个标签是用来标注`pod`库的版本号, 这个版本号是不能重叠的, 这里建议大家这个`version`版本号和`Git Tag`保持一致就好了.



在创建`Git Tag`之前, 我们首先要去到我们`Clone`下来的文件夹内, 然后利用命令创建, 创建`Git Tag`的命令:

```vim
git tag 版本号
```



创建完成后, 我们需要把这个`Git Tag`推到`GitHub`上, 这个时候我们需要用到`Push`命令:

```vim
git push origin --tags
```



>  **切记, 在创建`Git Tag`之前一定要把所有操作都完成后再进行, 否则会造成`Git Tag`于内容不同步 .**



### 删除Git Tag

如果我们需要删掉本地的`Git Tag`的话, 我们可以使用删除命令:

```vim
git tag -d 版本号
```



如果我们是需要删除远程仓库里的`Git Tag`的话, 我们可以使用远程删除命令:

```vim
git push origin --delete 版本号
```



这样子我们就可以删除掉远程仓库的`Git Tag`了.



### 查询Git Tag

如果我们需要查询已有的本地`Git Tag`, 那么我们可以使用查询命令:

```vim
git tag
```

![10](https://raw.githubusercontent.com/CainLuo/DeveloperDocument/master/玩转iOS开发：《创建CocoaPods开发库》/10.png)



如果我们是需要查询远程仓库的话, 我们可以使用查询指定的分支去查看:

```vim
git show origin
```

![11](https://raw.githubusercontent.com/CainLuo/DeveloperDocument/master/玩转iOS开发：《创建CocoaPods开发库》/11.png)

> **暂时没找到如何查看远程仓库`Tag`的命令, 只能用上面的方式了.**



### 注册CocoaPods

发布前的最后一个操作就是注册`CocoaPods`, 我们可以使用下面的命令去注册:

```vim
pod trunk register 邮箱 '昵称'
```

![12](https://raw.githubusercontent.com/CainLuo/DeveloperDocument/master/玩转iOS开发：《创建CocoaPods开发库》/12.png)



做完这个操作只有, 你的邮箱会收到一封邮件, 我们打开了那个链接之后, 如果网站显示了一张图, 上面写着`You can go back to your terminal new.`, 那我们就可以继续下一步操作, 发布我们的`CocoaPods`库了.

![13](https://raw.githubusercontent.com/CainLuo/DeveloperDocument/master/玩转iOS开发：《创建CocoaPods开发库》/13.png)



### 发布CocoaPods

回到我们的库首目录(就是有.podspec文件的那个目录), 然后使用`Trunk`命令:

```vim
pod trunk push
```



如果我们在验证的时候发现了有几个`Warnings`的话, 那我们就需要加上一个关键词:

```vim
pod trunk push --allow-warnings
```



如果我们还想看到详细信息的话, 我们还可以加上另一个关键词:

```vim
pod trunk push --allow-warnings --verbose
```



如果我们在检测时发现了图中的错误:

![14](https://raw.githubusercontent.com/CainLuo/DeveloperDocument/master/玩转iOS开发：《创建CocoaPods开发库》/14.png)

那我们就需要加上另一个关键词:

```vim
pod trunk push --allow-warnings --use-libraries
```



最后我们输入完所有命令, 看到了图中所示, 那就说明了我们的库发推送成功了:

![15](https://raw.githubusercontent.com/CainLuo/DeveloperDocument/master/玩转iOS开发：《创建CocoaPods开发库》/15.png)



## 查找已发送的库

当我们推送完库之后直接去`pod search ProjectName`, `CocoaPods`会提示找不到, 原因是因为本地的`CocoaPods search_index.json`文件没有更新到, 这个时候我们可以手动删除该文件, 再重新去搜索, 就可以搜索到了.

![17](https://raw.githubusercontent.com/CainLuo/DeveloperDocument/master/玩转iOS开发：《创建CocoaPods开发库》/17.png)

文件路径一般是在:`/Users/您的用户名/Library/Caches/CocoaPods/ `



**PS: 删掉再次搜索, 需要一段时间, 请耐心等待.**



## 补充

关于更多的`CocoaPods`的标签可以到[CocoaPods Guides](https://guides.cocoapods.org)里查询到, 如果是遇到一些`bug`可以到[GitHub CocoPods](https://github.com/CocoaPods/CocoaPods)留下你的`Issues`.


## 疑问
在研究`CocoaPods`的时候, 我有一个疑问, 怎么创建一个`podspec`文件, 去关联不同的第三方库, 并且不会引起他们之间的冲突, 比`如高德2D地图`和`高德3D地图`就会引起`Framework`的冲突.

并且可以在这个大的`podspec`里可以自由的选择`高德2D地图`和`高德3D地图`导入到工程里, 不知道是`CocoaPods`不支持, 还是我还没研究透, 如果可以的话, 希望老铁们给我解惑解惑.