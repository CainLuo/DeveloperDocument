# <center>玩转iOS：iOS 8 新特性《Today Extension》</center>


[TOC]

## <center>作者感言</center>

> 这次的**`Today Extension`**预研，让我觉得自己还有很多的不足，因为还有很多东西都没有去仔细的去研究，以后接下来会继续再接再厉。

> **<font color=purple>最后:</font>**
> **<font color=purple>如果你有更好的建议或者对这篇文章有不满的地方, 请联系我, 我会参考你们的意见再进行修改, 联系我时, 请备注`Today Extension`, 祝大家学习愉快~谢谢~</font>**

<p align="right">Cain(罗家辉)</p>
<p align="right">zhebushimengfei@qq.com: 联系方式</p>
<p align="right">350116542: 腾讯QQ</p>

---
##1.简介
> **`Today Extension`**是在**`iOS 8`**之后所推出来的重大更新之一，在此之前， 或许有人看过部分**`App`**就已经实现过这些功能，但那种实现方式是并不是系统所提供的，所以在性能方面需要打个问号。

---
##2.创建Today Extension
> 开始创建

![0 | center | 1080x0](./0.png)

> 选择**`Today Extension`**

![1 | center | 1080x0](./1.png)

> 激活**`Today Extension`**

![2 | center | 1080x0](./2.png)


##3.使用Storyboard实现Today Extension
> 在创建好**`Today Extension`**时，**`Xcode`**会自动创建一个对应的**`MainInterface.storyboard`**文件，并且与**`Today Extension`**的**`Controller`**关联，打开**`MainInterface.storyboard`**, 我们会看到有一个内容为**`Hello World`**的**`UILabel`**，废话少说现在我们来看看运行效果。

![9 | center | 1080x0](./9.png)

> 选择你需要关联启动的App

![10 | center | 1080x0](./10.png)

![11 | center | 360x0](./11.png)

> 不要怀疑，就是这么简单的，**`Today Extension`**就这么出来了。

---
##4.打开数据共享服务
> 不过，骚年郎们别着急，只是展示个**`Hello World`**而已，别高兴得太早，接下来我们讲重头戏，也就是应用**`App`**与**`Today Extension`**的数据交互，在此之前， 我们需要打开两个服务。

> 首先是主程序里的

![3 | center | 1080x0](./3.png)

![4 | center | 1080x0](./4.png)

![5 | center | 1080x0](./5.png)

![6 | center | 1080x0](./6.png)

> 再者呢，就是**`Today Extension`**里的

![7 | center | 1080x0](./7.png)

![8 | center | 1080x0](./8.png)

> 昨晚这两个操作之后，我们会看到多出来的两个**`证书`**。
> 
> PS：<font color=red>**这个证书是收费的， 如果没有去申请，一个账号可以免费测试10个证书，主应用1个，Today Extension插件1个，也就是说一个应用需要两个。**</font>

![12 | center | 1080x0](./12.png)

---
##5.删掉Storyboard
> 接下来之前，我们要把**`MainInterface.storyboard`**给干掉，毕竟代码才是王道（个人观点，不喜勿喷）如果喜欢用**`Storyboard`**的朋友，也有一个Storyboard版本的，后面再补上，废话就不多说了，上教程。

> 找到**`TodayI Extension`**中的**`Info.plist`**文件，看到这小样就在这，先留着先

![13 | center | 1080x0](./13.png)


> 手动添加**`NSExtensionPrincipalClass`**字段 并设为**`TodayViewController`**（这个**`Controller`**你可以自己指定，我这里为了方便，就直接拿**`Xcode`**生成的）

![14 | center | 1080x0](./14.png)

> 现在我们可以把**`storyboard`**这小样给删掉了

![15 | center | 1080x0](./15.png)

> 再运行，你就会看到整个**`Today Extension`**是空的了，只有一个空图标和一个标题。

![16 | center | 360x0](./16.png)

##6.代码实现
> 主应用中，我们需要设置一下**`NSUserDefault`**

```objectivec
- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSUserDefaults *userDefault = [[NSUserDefaults alloc] initWithSuiteName:@"group.todayExtensionCodeExample"];
    [userDefault setObject:@"tips" forKey:@"group.todayExtensionCodeExample.tips"];
}

```

> 现在我们进入**`TodayViewController`**开始写代码了

```objectivec
interface TodayViewController () <NCWidgetProviding>

@property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) UILabel *tipsLabel;

@end

@implementation TodayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /**
     *  设置Today Extension的Size
     *
     *  @param 0   Today Extension的宽度是不可变的，所以这里随便给个0就好了
     *  @param 150 高度是可控制的，这里我给了一个固定值150
     *
     *  @return CGSize
     */
    self.preferredContentSize = CGSizeMake(0, 150);
    
    /**
     *  初始化一个UIView，且设置它的属性
     */
    self.contentView = [[UIView alloc] initWithFrame:CGRectMake(0,
                                                                0,
                                                                self.view.frame.size.width,
                                                                self.view.frame.size.height)];
    self.contentView.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.contentView];

    /**
     *  初始化一个Label，并且设置它的属性
     *
     */
    self.tipsLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 50, self.view.frame.size.width, 30)];
    
    self.tipsLabel.text            = @"这是一个测试代码";
    self.tipsLabel.numberOfLines   = 0;
    self.tipsLabel.textColor       = [UIColor blackColor];
    self.tipsLabel.backgroundColor = [UIColor redColor];

    [self.view addSubview:self.tipsLabel];
    
    /**
     *  获取主应用传过来的数据
     */
    NSUserDefaults *userDefault = [[NSUserDefaults alloc] initWithSuiteName:@"group.todayExtensionCodeExample"];
    
    NSString *nickName = [userDefault objectForKey:@"group.todayExtensionCodeExample.tips"];
    
    if (nickName) {
        
        NSString *message = @"今天XX又给你准备了很多惊喜哦，快去看看吧！";
        
        self.tipsLabel.text = [NSString stringWithFormat:@"%@,%@", nickName, message];
    }
}

/**
 *  该方法是用来设置Today Extension的偏移，默认会像左偏移
 *
 *  @param defaultMarginInsets UIEdgeInsets
 *
 *  @return UIEdgeInsets
 */
- (UIEdgeInsets)widgetMarginInsetsForProposedMarginInsets:(UIEdgeInsets)defaultMarginInsets {
    
    return UIEdgeInsetsZero;
}

/**
 *  该方法是用来刷新Today Extension数据的
 *
 *  @param completionHandler
 */
- (void)widgetPerformUpdateWithCompletionHandler:(void (^)(NCUpdateResult))completionHandler {
    // Perform any setup necessary in order to update the view.
    
    // If an error is encountered, use NCUpdateResultFailed
    // If there's no update required, use NCUpdateResultNoData
    // If there's an update, use NCUpdateResultNewData

    completionHandler(NCUpdateResultNewData);
}

@end
```

---
##7.从Today Extension跳转至App

> 首先，我们需要添加**`Identifier`**，以及**`URL Schemes`**。

> <font color=purple>**PS：这里的**`Identifier`**和**`URL Schemes`**是你自己定义的，不能与其他**`Application`**的**`Identifier`**、**`URL Schemes`**相同，否则会造成冲突。**</font>

![ 17 | center | 1080x0](./17.png)

![18 | center | 1080x0](./18.png)

> 然后呢，我们去到主应用的**`AppDelegate.m`**文件中添加方法

![19 | center | 1080x0](./19.png)


> 最后，我们去到**`TodayViewController`**里补上对应的方法就好了

![20 | center | 1080x0](./20.png)

![21 | center | 1080x0](./21.png)


---
##8.最终效果
![21 | center | 360x0](./22.png)


---
##9.注意点

<font color=purple>**PS：在保证代码正确的前提下，如果遇到**`Today Extension`**无法加载数据，或者其他异常，可以把**`Application`**删掉，插件也删掉，**`Clear`**一下**`Project`**，在运行即可。**</font>

---
## 10.补上几篇文章

[iOS8Extension之Today插件](http://www.jianshu.com/p/ab268a1ae000)

[WWDC 2014 Session笔记 - iOS 通知中心扩展制作入门](https://onevcat.com/2014/08/notification-today-widget/)

[如何用纯代码构建一个Widget(today extension)](http://adad184.com/2014/10/29/how-to-setup-today-extension-programmatically/)

