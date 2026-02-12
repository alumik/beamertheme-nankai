# beamertheme-nankai：南开大学 Beamer 主题

![version 1.0.2](https://img.shields.io/badge/version-1.0.2-blue)
![license-LPPL-1.3c](https://img.shields.io/github/license/alumik/nkthesis)

> [!TIP]
> 如果您觉得本主题好用，请点一个免费的 Star ⭐，让更多的人看到本项目，谢谢！

beamertheme-nankai 是一款专为南开大学师生设计的 LaTeX Beamer 主题。
本主题旨在提供一个符合南开大学视觉风格的、专业且美观的幻灯片模版，适用于学术报告、学位论文答辩以及日常教学演示。

本主题的主要特点包括：

- 采用南开校色（青莲紫）作为主色调。
- 内置基于 TikZ 矢量绘制的南开大学校标，支持高清缩放。
- 提供可选的侧边栏导航模式，便于听众实时掌握报告进度。
- 页面顶部与底部采用渐变色块设计，增加视觉层次感。

📦[Release](https://github.com/alumik/beamertheme-nankai/releases/latest) 中可下载最新版本的主题包文件、示例文件和使用说明：

- `beamerthemeNankai.sty`：导出完毕的主题包主文件，可直接使用。
- `beamercolorthemeNankai.sty`：导出完毕的颜色主题文件，可随主文件一同使用，也可单独使用，以搭配其他 Beamer 主题。
- `beamerouterthemeNankai.sty`：导出完毕的外观主题文件，可随主文件一同使用，也可单独使用，以搭配其他 Beamer 主题。
- `sample.pdf`：由 `sample.tex` 生成的示例幻灯片。
- `beamerthemeNankai.pdf`：由 `beamerthemeNankai.dtx` 生成的 PDF 文件，包含详细的使用说明。

如果发现了代码 BUG，格式错误等问题，请创建 🎯[Issue](https://github.com/alumik/beamertheme-nankai/issues)。

如果想咨询使用方法，提出改进建议等，请到 💬[Discussions](https://github.com/alumik/beamertheme-nankai/discussions) 中创建新的讨论。

## 01 简明教程

### 1.1 下载并安装 `beamertheme-nankai`

1. 将本主题所有文件克隆/下载到本地。
2. 获取 `beamerthemeNankai.sty`、`beamercolorthemeNankai.sty` 以及 `beamerouterthemeNankai.sty` 三个文件。
    以下两种方法可任选**其一**：
    - 方法一：从 [Release](https://github.com/alumik/beamertheme-nankai/releases/latest) 中下载最新版本的上述三个文件，放入幻灯片文件夹中。
    - 方法二：从 `beamerthemeNankai.dtx` 文件中提取上述三个文件。

      ```
      l3build unpack
      ```

      该命令会在 `build/unpacked` 目录下生成所需的文件。可将这些文件拷贝到幻灯片文件夹中。
3. 本主题名为 `Nankai`，按照正常 Beamer 幻灯片编写流程引用主题并开发幻灯片即可。

### 1.2 可选步骤：编译示例文件

本主题已经提供了 `latexmkrc` 配置文件，使用 `latexmk` 命令编译时会自动调用 XeLaTeX。

    ```
    latexmk sample.tex
    ```

本主题支持 pdfLaTeX、XeLaTeX 和 LuaLaTeX 等多种编译方式，用户可根据需要自行调整 `latexmkrc` 文件中的编译引擎。

### 1.3 可选步骤：构建说明文档

如果你想构建本主题的说明文档，可以参照以下步骤：

1. 将本仓库所有文件克隆/下载到本地。
2. 确保本地有 `zhmakeindex` 可执行文件。
   可以从[这里](https://github.com/leo-liu/zhmakeindex/releases/latest)下载，并放置于幻灯片文件夹或系统 `Path` 环境变量中。
3. 在幻灯片文件夹下执行

    ```
    l3build doc
    ```

    即可在目录下生成 `beamerthemeNankai.pdf` 与 `sample.pdf` 文件，即主题的说明文档与示例文档。

## 02 详细使用说明

### 2.1 加载主题

在 LaTeX 文档导言区使用：

```latex
\documentclass{ctexbeamer}
\usetheme{Nankai}
```

### 2.2 主题选项

**`hidesidebar`** - 默认情况下，本主题会在左侧显示导航侧边栏。当该选项存在时，侧边栏将被隐藏，正文区域将向左扩展以覆盖原侧边栏空间。该选项适用于内容较多、需要更大展示面积的幻灯片。

```latex
\usetheme[hidesidebar]{Nankai}
```

### 2.3 字体设置

本主题默认将 `\kaishu`（楷体）应用到页面标题。建议配合 `ctex` 宏包或 `ctexbeamer` 文档类使用，以获得最佳的中文字体显示效果。

### 2.4 颜色主题

本主题定义了以下颜色变量：

- **NankaiMain**: `#711a5f`（南开青莲紫）

### 2.5 示例代码

```latex
\documentclass{ctexbeamer}
\usetheme{Nankai}

\title{南开大学 Beamer 主题展示}
\author{作者姓名}
\institute{学院}
\date{\to
\begin{document}

\begin{frame}
    \titlepage
\end{frame}

\begin{frame}{目录}
    \tableofcontents
\end{frame}

\section{第一部分}
\subsection{小节标题}
\begin{frame}{页面标题}{这里是副标题}
    \begin{itemize}
        \item 南开大学公能校训：允公允能，日新月异。
        \item 这是一个列表项。
    \end{itemize}
    \begin{block}{定理}
        这是一个带背景色的区块。
    \end{block}
\end{frame}

\end{document}
```

> [!WARNING]
> ⚠️ 由于侧边栏和标题栏使用了 TikZ 的 `remember picture, overlay` 选项，初次编译后可能需要运行 **2-3 次** LaTeX 编译以确保元素位置对齐准确。
