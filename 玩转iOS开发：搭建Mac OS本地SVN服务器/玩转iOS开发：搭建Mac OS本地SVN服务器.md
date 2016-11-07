# 玩转iOS开发：搭建Mac OS本地SVN服务器

---
### 创建SVN服务器
> 首先我们要创建一个**SVN**服务器存放夹, 这里我的地址是如下:

```vim
    sudo svnadmin create /Users/imac/Documents/svn/MyCode
```

![1](https://raw.githubusercontent.com/CainRun/DeveloperDocument/master/%E7%8E%A9%E8%BD%ACiOS%E5%BC%80%E5%8F%91%EF%BC%9A%E6%90%AD%E5%BB%BAMac%20OS%E6%9C%AC%E5%9C%B0SVN%E6%9C%8D%E5%8A%A1%E5%99%A8/1.png)

---
### 配置SVNServe.conf文件
> 创建完之后, 就需要配置一下**SVN**, 我这里比较习惯使用**Vim**.
> 在我机子上的目录是如下: 

```vim
sudo vim /Users/imac/Documents/svn/MyCode/conf/svnserve.conf 
```

> 输入完之后, 需要开放几个参数, 一定要把他们前面的**#**号和**空格**都删掉.
>
> * anon-access = none(默认为read, 修改改成none)
> * auth-access = write
> * password-db = passwd
> * authz-db = authz

![2](https://raw.githubusercontent.com/CainRun/DeveloperDocument/master/%E7%8E%A9%E8%BD%ACiOS%E5%BC%80%E5%8F%91%EF%BC%9A%E6%90%AD%E5%BB%BAMac%20OS%E6%9C%AC%E5%9C%B0SVN%E6%9C%8D%E5%8A%A1%E5%99%A8/2.png)

---
### 配置Passwd文件
> 配置完**svnserve.conf**文件之后, 就继续来配置**passwd**文件:

```vim
    sudo vim /Users/imac/Documents/svn/MyCode/conf/passwd 
```
> 这里我们只需要添加一个用户名和密码就可以了, 毕竟就只有自己在用而已.

```vim
    admin=123456
```

![3](https://raw.githubusercontent.com/CainRun/DeveloperDocument/master/%E7%8E%A9%E8%BD%ACiOS%E5%BC%80%E5%8F%91%EF%BC%9A%E6%90%AD%E5%BB%BAMac%20OS%E6%9C%AC%E5%9C%B0SVN%E6%9C%8D%E5%8A%A1%E5%99%A8/3.png)

---
### 配置Authz文件
> 配置完前面两个文件, 下面这个文件配置完就搞定了

```vim
    sudo vim /Users/imac/Documents/svn/MyCode/conf/authz
```

```vim
[groups]

admins=admin

[/]
@admins=rw
```

![4](https://raw.githubusercontent.com/CainRun/DeveloperDocument/master/%E7%8E%A9%E8%BD%ACiOS%E5%BC%80%E5%8F%91%EF%BC%9A%E6%90%AD%E5%BB%BAMac%20OS%E6%9C%AC%E5%9C%B0SVN%E6%9C%8D%E5%8A%A1%E5%99%A8/4.png)

---
### 启动SVN服务器
> 配置了那么多, 最重要的重头戏来了, 就是启动我们的**SVN**服务器

```vim
    svnserve -d -r /Users/imac/svn/MyCode
```

> 如果输入之后, 终端一点提示都没有, 那就代表**SVN**服务器已经启动成功了.

---
### 关闭SVN服务器
> 有启动, 当然也有关闭

```vim
    sudo killall svnserve
```
> 或者是打开活动监视器搜索之后在咔擦掉

![5](https://raw.githubusercontent.com/CainRun/DeveloperDocument/master/%E7%8E%A9%E8%BD%ACiOS%E5%BC%80%E5%8F%91%EF%BC%9A%E6%90%AD%E5%BB%BAMac%20OS%E6%9C%AC%E5%9C%B0SVN%E6%9C%8D%E5%8A%A1%E5%99%A8/5.png)

---
### 首次导入工程文件到SVN服务器
> **SVN**服务器弄好了, 现在就是要导入工程文件到服务器去了

```vim
    svn import /Users/imac/Documents/AFNetworking svn://localhost/MyCode --username=admin --password=123456 -m "初始化导入"
```

> 这里解释一下这条命令是啥意思:
> * **/Users/imac/Documents/AFNetworking**这一段指的是需要导入的工程文件.
> * **svn://localhost/MyCode**指的是把工程文件上传到**MyCode**这个目录下.
> * **--username=admin --password=123456**指的是校验用户名和密码.
> * **-m "初始化导入"**指的是提交的信息.

---
### 从SVN服务器下载工程文件到本地
> 上传工程我们已经知道了, 那下载工程我们也来说一说.

```vim
    svn checkout svn://localhost/mycode --username=admin --password=123456 /Users/imac/Documents/code
```

> 这里就不解释了和上面那条命令意思差不多.

---
### 二次提交代码到服务器
> 二次提交是有一个前提的, 那就是你首先需要在**SVN**服务器上下载代码到本地, 然后再去修改这一份代码, 才能够二次提交.
> <dr/>
> 首先我们得去到工程目录:

```vim
    cd /Users/imac/Documents/code
```
> 然后再输入命令:

```vim
    svn commit -m "修改部分代码"
```

> 这样子就可以把**/Users/imac/Documents/code**这个目录下所有修改过的代码都提交到服务器
> <dr/>
> 这些都是基于[终端操作](http://blog.csdn.net/langzi7758521/article/details/51646598)的情况来说的, 我这里推荐使用**<font color=red>Cornerstone</font>**, 更加的简单方便, 至于哪里有免费版, 大概可以去百度搜一搜, 一堆一堆的~~

---
### 权限错误
> 如果你在导入工程时候出现**E000013**的错误, 如下:

```vim
svn: E000013: Can't open file '/Users/xxx/Documents/svn/XXX/db/txn-current-lock': Permission denied
```
> 这个错误一般来说就是你的**svn**文件夹权限没开放, 只要进入到你的**SVN**目录下, 输入下面的命令就可以解决这个问题了.
> 我这边的目录是**/Users/imac/Documents/svn/MyCode**

![6](https://raw.githubusercontent.com/CainRun/DeveloperDocument/master/%E7%8E%A9%E8%BD%ACiOS%E5%BC%80%E5%8F%91%EF%BC%9A%E6%90%AD%E5%BB%BAMac%20OS%E6%9C%AC%E5%9C%B0SVN%E6%9C%8D%E5%8A%A1%E5%99%A8/6.png)

```vim
    /*MyCode就是你创建SVN服务器的文件夹*/
    sudo chown -R $(id -u):$(id -g) MyCode
    chmod -R u+w MyCode
```
