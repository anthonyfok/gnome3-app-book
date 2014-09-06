# 写在前面 #

本书是第一本全方位介绍GNOME3 应用开发的书籍，自从 GNOME 基金会在 2011 年发布GNOME3 以来，还没有如此基础和详尽介绍 GNOME3 应用程序开发的教程。

这本小册子浓缩了 GNOME 3 应用开发的主要内容，从 GNOME 的基础架构、GNOME Shell 桌面环境以及 GNOME 3 SDK 在时下流行的 Linux 发行版下的安装和搭建讲起，浅显易懂，逐阶深入，适合初学者，同时又兼顾现时流行趋向，有丰富的网络、多媒体和基于 HTML5 的应用开发例程，深入浅出，层层递进讲解，初学者并不会像其他书那样被大量代码吓倒。本书的一大特色是以开源软件和开源社区精神为内涵，以社区开发规范和开源软件开发规范为准绳，同时又兼顾工程化和质量体系要求；本书的形式特色是每章和每个例子后面都附有思考问题，让学习者可在引人入胜的问题中进一步深入自学，是开源爱好者和Linux 应用开发不可多得的基础教程。

本书使用 Vala 和 JavaScritp 来开发 GNOME 3 的应用程序，非常适合普通开发者。将会引导你一步步在 GNOME 3 上构建 GTK+、Clutter 和 HTML5 的应用程序。本书也覆盖了很多 GNOME 3 的独有之处，比如数据访问、多媒体支持、网络以及文件系统，同时也很好的满足了软件工程的要求，比如本地化和测试。

>**关于 GNOME **
> 即 GNU 网络对象模型环境 (The GNU Network Object Model Environment)，GNU 计划的一部分，开放源码运动的一个重要组成部分。其目标是基于自由软件，为 Unix 及类 Unix 系统构造一个功能完善、操作简单以及界面友好的桌面环境。它是 GNU 计划的正式桌面。GNOME 以及 GNOME 基金会的官方网站是：<http://www.gnome.org>   ——摘自维基百科。

![GNOME基金会的LOGO][image0] 

[image0]: ./img/gnome.png "GNOME基金会" width=180px


## 分章节介绍 ##

- **第一章：安装 GNOME 3 及其 SDK**

  简单介绍了 GNOME3 的桌面环境和 SDK 的情况，并在 Fedora/OpenSUSE/Ubuntu/Debian 这些主流 Linux 发行版下进行安装和测试。

- **第二章 基本开发环境介绍**

  讲述了 Anjuta IDE 的使用和设置编程环境。

- **第三章 编程语言**

  通过浅显易懂的方式向读者讲述了使用命令行 JavaScript 编译器的基础知识。如数据类型、循环、数组、面向对象编程、多态、操作系统信号等。

- **第四章 GNOME 核心库**

  讲述 GNOME 核心库的知识，为后面的学习进一步打下基础。

- **第五章 构建用户界面（GUI）**

  通过 GTK+和 Clutter 组件构建基本的用户界面，脱离命令行开发，做出更有创造力的应用程序。

- **第六章 GNOME 的界面小组件（Widgets）**

  讲述如何开发界面小组件，并对其进行编程。

- **第七章 GNOME 多媒体应用程序开发**

  开发 GNOME 下的多媒体应用程序，多媒体应用程序的特点和开发技巧。

- **第八章 数据对象**

  这一章讨论 GNOME 数据对象（DATA），将会学到如何实用树形显示小组件和 EDS 服务存储数据。

- **第九章 用 GNOME 创建 HTML5 应用程序**

  众所周知，HTML5 将是未来大势所趋，因此桌面环境与 HTML5 的结合势必会对桌面开发增加更多的可能，这一章是本书的特色，也是近几年所擅长之处。

- **第十章 与 GNOME 桌面集成**

  这一章讲到如何与 GNOME 桌面集成起来，利用系统资源，比如 D-bus 来优化应用程序开发。

- **第十一章 应用程序的国际化与本地化**

  如何让应用程序支持国际化和多语言，以利开源社区贡献者可以简单的进行界面翻译和本地化推广。

- **第十二章 品质控制**

  这是本书的一大亮点，讲述如何开发单元测试，标准的测试流程和测试所需的工作方式。

- **第十三章 激动人心的应用案例**

  本章以两个主要的大型应用程序案例（Web 浏览器以及微博客户端）讲述如何进行互联网应用程序开发，同时将前面学习到的知识加以综合利用。


## 需要的前期准备 ##

阅读本书需要一些基本的面向对象编程的基础。若能有 Vala 或者 Javascript 的经验将会更加有帮助。同时，为了更好地阅读和实践书里的内容，你需要安装最新版的Linux发行版，比如Fedora、OpenSUSE、Ubuntu或其他Debian发行版均可。

当然，若没有面向对象编程基础也是可以阅读的，本书浅显易懂，对具有其他编程基础的人也将不会有太多难度。

## 本书的目标读者 ##

本书适合那些希望以 GNOME 3 作为目标平台的软件开发者。同时本书对那些希望创建跨平台应用程序开发者，特别是 GNOME 3 这种横跨Linux、OS X和Windows多平台系统的库。 

## 本书的一些约定 ##

本书当中会有一些格式约定。一些常见的约定，列举如下：

### 实践环节

1. **第一步**
2. **第二步**
3. **第三步**

每一步一般也需要一些解释，所以常常会跟着这种：

-----


#### 刚才发生了什么


这将会解释刚才究竟发生了什么情况。当然你也会看到本书其他的一些辅助信息：

-----


#### 小测试


这将会是一个多选题，将会帮助你更好地理解一些学到的知识。

-----


#### 大胆实践

一个非常强的实践机会用来帮助你来实践刚刚所学的知识。你会发现不同的信息，其字体也会有相应的变化。比如：

文字中的代码会印刷成类似这样：“可通过修改 `configure.ac` 文件来包含 WebKitGTK+ 库到此项目中。”

代码块将会标示成下面这样：

````JavaScript
using GLib;
using Gtk;
using WebKit;
public class Main : WebView
{
    public Main ()
    {
        load_html_string("<h1>Hello</h1>","/");
        // 代吗注释
    }
    /* 更多注释
     * 一些注释
     */
    static int main (string[] args)
    {
        Gtk.init (ref args);
        varwebView = new Main ();
        var window = new Gtk.Window();
        window.add(webView);
        window.show_all ();
        Gtk.main ();
        return 0;
    }
}
````

任何命令行的输入输出将会表示成：

````
	LANGUAGE=id LC_ALL=id_ID.utf8 src/hello-i18n
````

**新的概念**和**重要的词语**将会加粗提示。任何屏幕提示或者菜单选项或者对话框等，将会显示成这样：“点击**继续**，完成对 **GTranslator** 的设置并通过其菜单打开 `id.po` 文件。”

----
> ⚠ 警告或者重要提示将以缩进的方式显示。☢ ☠

----
> ✔ 一些小窍门也将如此显示



## 致谢

本书基于 Mohammad Anwari （默罕默德 · 安瓦里）[^original-writer]于2012年编写的《GNOME 3 Application Development Beginner's Guide》，并在原书基础上大量增加新的代码实例和大量的本地化内容，丰富和加强了原书的架构，更适合中国程序员阅读，同时降低了入门难度。

同时还要特别鸣谢 Larrycaiyu，本书的[源代码](https://github.com/tonghuix/gnome3-app-book/)就是基于其 [sdcamp](https://github.com/larrycai/sdcamp) 项目。通过MultiMarkdown和Latex（xelatex）将书写中文技术书籍变得非常简单，同时 Larrycaiyu 将其与Git结合，并结合GitHub的社交编程功能，使得多人协作编写技术书籍更加易如反掌！

本书的编写得到了北京GNOME用户组大量志愿者的热心参与，其中：

- **佟辉** 完成本书源文件架构的初始化，并编译了第一章“安装 GNOME 3 及其 SDK”。

希望各位朋友在阅读本书的同时，能够积极投身到自由软件和开源软件的大潮中。随时关注北京 GNOME 用户组的网站，参加北京 GNOME 用户组的活动，进而贡献到 GNOME 全球社区中来。

![][bjgug]

[bjgug]: ./img/bjgug "北京 GNOME 用户组" width=180px

**北京 GNOME 用户组 网站：** <http://www.bjgug.org>

**北京 GNOME 用户组 微博：** <http://weibo.com/bjgug>

[^original-writer]: Mohammad Anwari （默罕默德 · 安瓦里），他是 GNOME 基金会成员，印度尼西亚著名的软件开发者,有 13 年的软件开发经验，在印尼生活期间创办了印尼最大的软件公司,积极参与 Linux 内核和 GNOME 相关应用软件的社区开发，有非常丰富的开发经验。后移居芬兰加入 Nokia 公司软件开发部，参与 QT 应用程序的开发。近几年回到印尼,专注于开发印尼的 Linux 发行版 BlackOn ,并积极研发基于 GNOME Shell 桌面环境的菜单环境，在 2013 年 GNOME.Asia 亚洲峰会上展示，并获得与会人员的一致认可。