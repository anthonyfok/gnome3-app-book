# 安装GNOME 3 及其SDK #

> GNOME 3 是自GNOME项目1999年发布以来，最新也是最强大的版本。GNOME 3 在之前版本的基础上为桌面环境的用户体验带来了突破性变化，搭载了更加流畅的用户界面和动画特效，它完美诠释了现代的计算机通过使用 GNOME Shell 将会为新的用户体验（UX）带来如何飞跃性的变化。当然，对那些传统用户体验来说，依旧保持了 Classic Mode (传统模式)以兼容硬件配置不支持的情况。

**GNOME**因其简约质朴的风格被大家所熟知，目前已被大量的流行 Linux 发行版选为它们的默认的桌面环境。GNOME 也是**第一个拥有大量用户界面指南的自由软件**，同时还能保持安全性、可用性以及用户友好。

GNOME 带来的巨大变革，整个架构也因此有了深远的变化，使其成为了世界上最先进也是最具实用性的自由桌面。与此同时，它通过引进大量的先进技术到系统中，最大化利用硬件的同时让用户在使用计算机时享受最美好的体验。

在我们正式开始前，还是需要安装一下 GNOME 桌面以及其开发环境到我们的电脑中。当然作为初学者，我们将会演示在一些主流的 Linux 发行版下的操作。特别的，本章我们将会涉及到这样一些话题：

- 系统要求

- 本书当中涉及的基本的 GNOME 3 体系结构

- 安装 GNOME 3 及其 SDK 在不同的 Linux 发行版中。

好了，让我们开始吧！

## 系统需求

GNOME 3 提供了两种不同的**用户体验**（UX，User Experience）以应对两种不同的硬件环境—— **GNOME Shell** 以及 **GNOME Panel / Classic Mode**。这两种不同的 UX 有不同的需求，不过最基本的需要：

- 800MHz CPU （至少1GHZ以达到比较好的性能）
- 512MB内存（至少1GB内存可以达到最佳性能）
- 至少 2GB 的硬盘空间（如果你想安装更多应用就需要更大的空间）

### GNOME Shell

这是 GNOME 3 中最新增加的组件，提供了炫酷的用户体验。此 UX 需要你安装的显卡支持 OpenGL 可用的 3D 加速。当然目前大多数显卡厂商比如 Intel、ATI 和 Nvidia 都可以很好的运行[^videoCard]。

[^videoCard]: 目前的一个可能的难点是显卡驱动不支持，不过大多数情况都比较容易解决，如果碰上无法运行的情况可以反馈到 GNOME 官方的邮件列表中。——编者注

然而，即便你已经很清楚的知道显卡可以支持 OpenGL，还需要确认你已经安装并启用了合适的显卡驱动程序，否则系统也不会运行你使用这个 UX。

----
> 你可以通过**h-node页面**检查显卡是否兼容 GNOME Shell：<http://www.h-node.org/videocards/catalogue/en>，同时检查是否有3D加速。

### GNOME Panel/GNOME Classic Mode

{>>这是传统的GNOME桌面形式，提供了比较基础和较少的吸引人的用户体验。系统将会反馈到此 UX 中，当其无法启动 OpenGL 的时候。这个模式与老版本的 GNOME 非常相似，但是其用户界面已经修改了很多以配合 GNOME Shell 的用户界面，比如主 UI 就已经完全不同，但其锁屏界面与之前还是挺相似的。<<}

当然幸运的是，本书当中绝大部分内容都不涉及太多的 GNOME Shell 的深度应用，因此我们完全可以非常安全的运行在 GNOME Panel / GNOME Classic Mode 下面，对学习本书的内容并不会产生什么影响。

### 开发需求

作为我们进行软件开发来说，我们需要更多的计算机资源、内存啊、CPU啊，以及更多的存储空间。以下是一些比较好的系统需求，可以让你的开发过程轻松一些：

- 多核 2GHz CPU
- 4GB 内存
- 500GB的硬盘空间，最好是SSD

![VitrualBox 中对显卡 3D 加速的设定][1-1]

[1-1]: ./img/1-1.png width=300px

好消息是我们可以在虚拟机上非常简单的开发 GNOME 3 应用程序，在虚拟机上安装不同的 Linux 发行版，我们可以切换各个虚拟机并跟踪各种问题，以使我们开发的 GNOME 3 应用程序可以在各个发行版都能流畅运行。使用 GNOME Shell 的话，你需要确保你已经在虚拟机程序中启用了 3D 加速选项。

比如在 **VirtualBox** 中，我们可以打开虚拟机的 **设置** 对话框，点击 **显示** 选项卡，并勾选 **启用 3D 加速**。记住，如果你的宿主机没有相应的 3D 加速功能，这个选项是不能启用的。

## GNOME 3 桌面的主要架构

当我们谈到 GNOME 3 的时候，很多人只认为是 GNOME Shell，这是不对的。GNOME Shell 只是整个 GNOME 桌面架构中的一个组成部分，甚至我们可以替换掉它（比如可以用 GNOME Panel / GNOME Classic Mode）或者干脆移除。

事实上，GNOME 的概念远大于 GNOME Shell。它提供了应用程序的一套基础架构，这样应用程序就可以和系统通信、渲染文字、播放动画效果、获取数据等等。在开始开发以前，我们最好理解一下 GNOME 的主要架构，同样也可以帮助我们知道哪些需要安装。让我们先从一下这个 GNOME 架构框图开始：

![GNOME 架构框图][gnome-diagram]

[gnome-diagram]: ./img/1-2.png width=200px

从此架构框图我们就可以看出，GNOME Shell是应用程序的基础，同时又在 GNOME 平台架构之上。本书将会涉及主要的平台架构并在一定程度上触及一些上层内容（应用程序层和桌面层）。

-----
> 有关 GNOME 平台更多深层相关的内容可以参考 GNOME 开发者网站，<http://developer.gnome.org>。

-----

下面就具体来介绍一下 GNOME 平台的各个组件，特别是本书中将会涉及到的内容：

- **核心库**：这是 GNOME 架构中最底层的接口，主要包括了：
	* **GObject**：这是 GNOME 的对象系统。主要是 GNOME 中用 C 语言实现了一些面向对象的方法。
	* **GLib**：此通用库主要包括了 GNOME 架构都会用到的一些内容。
	* **GIO**：这是一个虚拟文件系统库，提供了文件访问、存储卷以及抽象化的驱动程序。
- **用户界面库**：此工具集用来构建图形应用程序，并且包括了：
	* **GTK+**：也就是历史上著名的 **GIMP Toolkit**[^gtk+]，这是 GNOME 中默认用来构建图形应用程序的工具集。它提供了一系列小部件和工具。
	* **Cairo**：此库帮助绘制 Canava 组件。主要用它来创建新的小部件（Widgets）或者对已经存在的小部件进行扩展开发。
	* **Pango**：此库主要用来进行文本渲染。
	* **ATK**：这是用来开发无障碍访问（Accesibility，A11y）的工具。它为一些特殊用户在使用 GNOME 的时候提供一些不同的帮助。比如针对有视力障碍者提供屏幕放大和文字朗读等。
	* **Clutter**：此工具用来创建具有大量且平滑动画特效的应用程序。需要 OpenGL 支持。
	* **Webkit**：这是 Web 工具集。它提供了全功能的并可兼容 HTML5 文档的渲染引擎。
- **多媒体库**：提供了播放和校验多媒体文件的功能，包括了：
	* **GStreamer**：一个强大的多媒体库
- **数据存储**：提供了一些数据访问相关的库：
	* **Evolution Data Storage (EDS)**： 主要包括了 **libebook** 以及 **libecal**，并提供了接口，用以访问 Evolution 管理的通讯簿以及日历。

[^gtk+]: 最初是GIMP的专用开发库（GIMP Toolkit），后来发展为类Unix系统下开发图形界面的应用程序的主流开发工具之一。GTK+是自由软件，并且是GNU计划的一部分。GTK+的许可协议是LGPL。GTK+使用C语言开发，但是其设计者使用面向对象技术。首个稳定版于1998年4月14日推出。——摘自维基百科。

本书中我们也需要用一些工具，主要有：

- **Seed**：这是 GNOME 世界中的 JavaScript 集成。我们将会用 Seed 来开发我们的应用程序脚本。当我们安装 GNOME Shell 的时候会自动安装好 Seed, 因此一会我们不会特意介绍如何安装。
- **vala**：这是一个新兴的面向对象编程语言，主要用于开发 GNOME 应用程序。
- **Anjuta**：这是 GNOME 下的一个集成开发环境。
- **Glade**：这是一个 GTK+ 的图形界面设计工具。
- **Gtranslator**：这是一个用来翻译应用程序用户界面到本地语言的工具。
- **Devhelp**：这是一个文档引用查询工具，真的可以很方便的帮助我们开发。

-----
> 注意。这些工具的包名并不是标准的，因此你会发现实际安装的时候会与以上略有不同。不用担心，相关章节都会有涉及。

-----

## GNOME 及其 SDK

我们将会安装 GNOME 及其**软件开发套件（SDK，Software Development Kit）**到你最喜欢的 Linux 发行版上，会涉及一些主流发行版。我们不会讲每种发行版的安装过程，因此希望你已经拥有并在使用。我们只是安装一些额外的包以获得 GNOME 及其 SDK。

你可以直接跳过其他发行版的安装过程，只关注你喜欢的即可。如果你用的发行版并没有列出来，也不用担心，只需要找找相近的发行版，并用搜索工具搜索一下包名试试。现在我们就要开始安装了，该是动手实践的时刻了。

----

### 实践环节 —— 在 Fedora 20 中安装 GNOME 及其 SDK

Fedora 20默认搭载 GNOME，因此我们主要集中在安装 SDK。要想在 Fedora 上安装软件包，只需要打开 **添加/移除软件** 工具。

1. 点击屏幕左上角的**活动**按钮。
2. 点击**显示应用程序**按钮。
3. 点击**软件**按钮（或者在搜索栏里输入“软件”）。
4. 将会显示如下的画面：

![][1-3]

[1-3]: ./img/1-3-fedora20.png width=350px

#### 刚刚发生了什么？

**软件** 这个工具把 Fedora 20 里的软件包数据库列了出来，这样我们就可以浏览和选择要安装的软件包了。SDK 一般是放在所谓的开发包中的。在 Fedora 里面，开发包的包名是以 `-devel` 结尾的，而实际上的库则是在包名没有 `-devel` 的软件包里面的，当安装 `devel` 软件包的时候，也会把同名的库一并安装。比如 GLib 在 `glib2` 包内，其开发包则是 `glib2-devel`，无论 `glib2-devel` 何时安装，`glib2` 都会自动安装。

----

> 开发包里一般包含一些头文件以及其他一些文件，这些文件只在做相应的开发工作时才会用到，平时使用软件的时候并不需要的。

----

在软件包安装之前，我们需要搜索一下，先在搜索栏输入包名，比如 `glib2-devel` 然后


| 子系统           | 包名称                                        |
| ---------------- | --------------------------------------------- |
| 核心库           | `glib2-devel (GIO 和 GObject 已经包括在此包里)` |
| 用户界面         | `gtk3-devel  `                                  |
|                  | `gtk3-devel-docs `                              |
|                  | `cairo-devel `                                  |
|                  |` pango-devel`                                   |
|                  | `atk-devel   `                                  |
|                  | `clutter-devel `                                |
|                  | `clutter-doc  `                                 |
|                  | `webkitgtk3-devel`                              |
|                  | `webkitgtk3-doc`                                |
| 多媒体库         | `gstreamer-devel`                               |
|                  | `gstreamer-devel-docs `                         |
| 数据存储         | `evolution-data-server-devel`                   |
|                  | `evolution-data-server-doc`                     |
| 工具和基础开发包 | `vala  `                                        |
|                  | `vala-doc`                                      |
|                  | `vala-tools`                                    |
|                  | `anjuta `                                       |
|                  | `glade （不要与 glade3 弄混）`                  |
|                  | `glade-libs `                                   |
|                  | `gtranslator`                                   |
|                  | `devhelp`                                       |
[Fedora 20下 GNOME 3 SDK 主要软件包列表]


| 子系统           | 包名称                                        |
| ---------------- | --------------------------------------------- |
| 核心库           | `glib2-devel (GIO 和 GObject 已经包括在此包里)` |
| 用户界面         | `gtk3-devel`                                    |
|                  | `gtk3-devel-docs`                               |
|                  |` libseed-gtk3-devel`                            |
|                  | `cairo-devel `                                  |
|                  |` pango-devel`                                   |
|                  | `atk-devel  `                                   |
|                  | `clutter-devel`                                 |
|                  | `clutter-doc`                                   |
|                  | `libwebkitgtk3-devel `                          |
| 多媒体库         | `gstreamer-0_10-devel `                         |
|                  |` gstreamer-0_10-docs`                           |
|                  | `gstreamer-0_10-fluendo-mp3`                    |
| 数据存储         | `evolution-data-server-devel`                   |
|                  | `evolution-data-server-doc`                     |
| 工具和基础开发包 | `vala`                                          |
|                  | `anjuta`                                        |
|                  | `glade （不要与 glade3 弄混）`                  |
|                  | `gtranslator`                                   |
|                  | `devhelp`                                       |
[OpenSUSE 13.1 下 GNOME 3 SDK 主要软件包列表]


| 子系统           | 包名称                                           |
| ---------------- | ------------------------------------------------ |
| 核心库           | `libglib2.0-dev (GIO 和 GObject 已经包括在此包里)` |
|                  | `libglib2.0-doc`                                   |
| 用户界面         | `libgtk-3-dev`                                     |
|                  | `libgtk-3-doc`                                     |
|                  | `libcairo2-dev`                                    |
|                  | `libcairo2-doc`                                    |
|                  | `libpango1.0-dev `                                 |
|                  | `libpango1.0-doc`                                  |
|                  | `libatk1.0-dev`                                    |
|                  | `libatk1.0-doc`                                    |
|                  | `libclutter-1.0-dev`                               |
|                  | `libclutter-1.0-doc`                               |
|                  | `libwebkitgtk-3.0-dev`                             |
|                  | `libwebkitgtk-3.0-doc`                             |
| 多媒体库         | `libgstreamer0.10-dev `                            |
| 数据存储         | `libecal1.2-dev`                                   |
| 工具和基础开发包 | `valac-0.16`                                       |
|                  | `anjuta`                                           |
|                  | `glade`                                            |
|                  | `gtranslator`                                      |
|                  | `devhelp`                                          |
[Debian Testing 下 GNOME 3 SDK 主要软件包列表]