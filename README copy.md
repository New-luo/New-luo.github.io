<div align="center">

# 循光而归 ✨

> 独属程序员的浪漫 — 基于 [Hexo](https://hexo.io/) + [Anzhiyu](https://github.com/anzhiyu-c/hexo-theme-anzhiyu) 主题的个人博客

[![Hexo](https://img.shields.io/badge/Hexo-7.3.0-blue?style=flat-square&logo=hexo)](https://hexo.io/)
[![Theme](https://img.shields.io/badge/Theme-Anzhiyu-e57399?style=flat-square)](https://github.com/anzhiyu-c/hexo-theme-anzhiyu)
[![License](https://img.shields.io/badge/License-MIT-green?style=flat-square)](./LICENSE)

</div>

## 🌐 在线地址

**[www.newluo.top](https://www.newluo.top)**

## 📸 预览

博客采用 Anzhiyu 主题，拥有丰富的页面和交互效果：

- 🏠 **首页** — 个性化首页，支持随机封面图
- 📝 **文章** — 分类 / 标签 / 归档 / 统计
- 💬 **留言板** — 信封风格评论区
- 🎵 **音乐馆** — 在线音乐播放
- 📺 **追番页** — B站追番/追剧/游戏列表
- 🖼️ **相册集** — 个人图集展示
- 🔗 **友链** — 友人帐 + 朋友圈
- 📖 **闲言碎语** — 随笔短句
- 🎲 **随便逛逛** — 随机跳转文章
- 🛠️ **工具页** — 常用工具集合
- ❄️ **小空调** — 趣味互动页面

## 🚀 快速开始

### 环境要求

- [Node.js](https://nodejs.org/) >= 12.x
- [Git](https://git-scm.com/)

### 安装与运行

```bash
# 克隆仓库
git clone https://github.com/New-luo/New-luo.github.io.git
cd New-luo.github.io

# 安装依赖
npm install

# 启动本地开发服务器
npm run server
# 访问 http://localhost:4000

# 清理缓存
npm run clean

# 生成静态文件
npm run build

# 部署到 GitHub Pages
npm run deploy
```

## 📁 目录结构

```
.
├── _config.yml              # Hexo 主配置
├── _config.anzhiyu.yml      # Anzhiyu 主题配置
├── package.json             # 项目依赖
├── scaffolds/               # 模板脚手架
├── source/                  # 源文件目录
│   ├── _posts/              # 博客文章
│   ├── _data/               # 数据文件 (友链、装备等)
│   ├── about/               # 关于页面
│   ├── album/               # 相册
│   ├── comments/            # 留言板
│   ├── essay/               # 闲言碎语
│   ├── link/                # 友人帐
│   ├── music/               # 音乐馆
│   ├── bangumis/            # 追番
│   └── ...
├── themes/
│   └── anzhiyu/             # Anzhiyu 主题
└── public/                  # 生成的静态文件 (构建产出)
```

## 🎨 主题特性

| 特性 | 说明 |
|------|------|
| 🌓 深色模式 | 支持亮色/暗色主题切换 |
| 📱 响应式设计 | 完美适配移动端 |
| 🔍 全文搜索 | 集成本地搜索 |
| 🎨 代码高亮 | 多种高亮主题，支持行号、复制 |
| 💬 评论系统 | 信封风格评论区 |
| 🤖 AI 摘要 | 自动生成文章 AI 摘要 |
| 🎭 Live2D | 看板娘模型展示 |
| 📊 统计图表 | 文章统计可视化 |

## 🔌 插件

| 插件 | 用途 |
|------|------|
| [hexo-bilibili-bangumi](https://github.com/HCLonely/hexo-bilibili-bangumi) | B站追番/追剧/游戏列表 |
| [hexo-butterfly-envelope](https://github.com/anzhiyu-c/hexo-butterfly-envelope) | 信封风格留言板 |
| [hexo-helper-live2d](https://github.com/EYHN/hexo-helper-live2d) | Live2D 看板娘 |
| [hexo-wordcount](https://github.com/willin/hexo-wordcount) | 文章字数统计 |
| [hexo-generator-search](https://github.com/wzpan/hexo-generator-search) | 本地搜索 |
| [hexo-deployer-git](https://github.com/hexojs/hexo-deployer-git) | Git 部署 |
| [hexo-ai-summary-liushen](https://github.com/willow-god/hexo-ai-summary) | AI 文章摘要 |

## 📝 写作

```bash
# 创建新文章
hexo new "文章标题"

# 创建新页面
hexo new page "页面名称"
```

文章使用 Markdown 格式编写，存放在 `source/_posts/` 目录下。支持的 Front Matter 字段包括：

```yaml
---
title: 文章标题
top_img: 顶部大图 URL
cover: 封面图 URL
categories: [分类1, 分类2]
tags: [标签1, 标签2]
---
```

## 🚢 部署

本博客通过 GitHub Actions 自动部署到 GitHub Pages，push 到 `master` 分支即可触发自动构建和部署。

也可手动部署：

```bash
hexo clean && hexo g && hexo d
```

## 👤 作者

**拾光**

- 博客：[www.newluo.top](https://www.newluo.top)
- GitHub：[@New-luo](https://github.com/New-luo)
- CSDN：[m0_72176646](https://blog.csdn.net/m0_72176646?type=blog)

## 📄 许可

本项目代码采用 [MIT License](LICENSE) 许可。博客文章内容未经授权请勿转载。
