# 让应用程序适应国际化需求 #

> GNOME 之所以优秀，其中一个原因就是拥有完善的国际化 （internationalization，缩写为i18n） 支持。所谓国际化支持，是指在设计应用程序时不依赖于特定的语言，而是根据不同的用户环境设置进行自动适应。具有国际化的应用程序，在不需要修改代码的情况下，运行于设置了不同语言和地区的系统环境，会有相应不同的输出形式。通过支持国际化，我们的程序可以适应全世界不同地区和使用不同语言的用户的需求。

本章所讲的内容，对于那些面向于非美国地区用户的应用程序来说非常重要。因为在默认的情况下，GNOME 及其项目中所有的应用程序都使用英语作为界面语言，使用美国的日期、时间、数字及货币格式。当我们要面向美国以外的市场时，不得不考虑当地用户的阅读、书写习惯。所以请大家一定要重视这一章的内容。

本章内容包含了如下的知识点：
- Locale 介绍
- 构建 i18n 的基础架构
- 翻译 UI 文本
- 本地化流程

好，让我们开始吧！

## 理解 locale
GNOME 使用可移植操作系统接口（POSIX, Portable Operating System Interface）的 locale 系统来实现 i18n 支持。所谓 locale，是指包含了一系列与地区和语言相关的使用习惯集合。例如日期时间格式、货币符号、计量单位、文字顺序、地址书写格式等。

依据标准，我们使用代码来标记和识别每一个不同的 locale。格式如下：

````
语言[_区域][.字符编码][@修饰码]
````
其中“语言”部分的双字母代码（推荐小写）在 ISO-639 中有详细定义。“区域”部分的双字母代码（推荐大写）可以在 ISO-3166 中找到。“字符编码”，即文本在系统中的编码方式。如 UTF-8、GBK等。“修饰码”，指的是书写方式代码，例如同样是中文 (zh) 的语言环境下，其书写方式包含简体中文 (hans) 和繁体中文 (hant)，书写方式代码在 ISO-15924 中定义。此格式中，中括号以内都是可以省略的项。

为了帮助理解，我们来看两个例子：
- ac_ID.UTF-8@Jaw 表示印度尼西亚（ID）的阿齐语（ac），使用亚维语书写方式（Jaw），采用 UTF-8 编码格式。
- zh_TW.BIG5 表示台湾（TW）的中文（zh），采用 Big5 编码格式。

系统中不同的参数可以配置成不同的 locale。例如我们可以设置桌面应用程序使用 en_US，但是日期时间格式使用 zh_CN，货币用 de_DE。当然，大多数情况下没有必要设置得很复杂，而且为了避免混淆，GNOME 所能提供的设置项也很有限。

Locale 的配置在用户登录到桌面时开始生效。如果在安装的时候没有设置，通常来说系统会默认使用 C locale （也就是 POSIX locale）。POSIX 是一个国际化的标准，由 IEEE 颁布，其目的是使操作系统之间相互兼容。此标准中就包含了 POSIX locale， 用来作为基础 locale 以便进行扩展。

上面的流程图展示了应用程序是如何使用 locale 的。左侧是程序中的数据，其中包含了“源码字符串”，“翻译字符串”和 “locale 数据”。“源码字符串”是源代码中需要在界面上显示的文本信息，例如标签、菜单选项、图片标题、按钮文字等等。“翻译字符串”是针对上面“源码字符串”的不同 locale 版本的翻译。 “Locale 数据” 就是我们前面提到的不同语言和区域设置集合，包括格式（比如日期时间）和文本信息（比如星期几的显示方式）。程序开始运行时，左侧的三种数据会由中间的 API 进行处理，将源码字符串替换为当前 locale 对应的翻译字符串，并依据 locale 数据对日期时间等进行适当转换。这样用户看到的就是图中右侧实际显示的界面。对应用程序来说，很可能缺少当前环境下的翻译字符串和 locale 数据，此时程序会显示原始的未经翻译的源码字符串。

值得一提的是，通过以上步骤，可以得到对应当前环境的程序界面，但是界面是否能够正常显示，还取决于另外一个因素，就是字体。如果缺少可以显示相应翻译字符串的字体，界面文本的显示也会出问题。当然关于字体并不在本章要讨论的范围之内。
