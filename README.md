# xiaobotester's Blog

基于 Hexo + GitHub Pages 搭建的个人技术博客，分享 AI、科技、软件测试与 IT 行业的最新资讯和技术文章。

🌐 **博客地址**：[https://xiaobotester.github.io](https://xiaobotester.github.io)

---

## 技术栈

| 组件 | 说明 |
|------|------|
| 框架 | [Hexo 8.x](https://hexo.io/) |
| 主题 | [hexo-theme-redefine](https://github.com/EvanNotFound/hexo-theme-redefine) v2.9 |
| 部署 | GitHub Actions → GitHub Pages |
| 语言 | 中文 (zh-CN) |

## 博客分类

| 分类 | 内容方向 |
|------|----------|
| AI+科技 | AI 大模型、芯片、科技产业动态日报 |
| IT行业 | 互联网大厂、云计算、人才市场、行业趋势 |
| 测试领域 | 软件测试、AI 测试、自动化测试、质量保障 |
| 技术分享 | 技术实践、工具推荐、经验总结 |

## 项目结构

```
my-blog/
├── source/
│   └── _posts/              # 文章源文件 (Markdown)
│       ├── AI+科技/         # AI 与科技类文章
│       ├── IT行业/          # IT 行业类文章
│       ├── 测试领域/        # 测试领域类文章
│       └── 技术分享/        # 技术分享类文章
├── themes/                  # 主题文件
├── _config.yml              # Hexo 主配置
├── _config.redefine.yml     # Redefine 主题配置
├── package.json             # 项目依赖
├── deploy-blog.bat          # Windows 一键部署脚本
└── .github/workflows/
    └── deploy.yml           # GitHub Actions 自动部署
```

## 快速开始

### 环境要求

- Node.js >= 18
- npm >= 8

### 本地开发

```bash
# 安装依赖
npm install

# 启动本地预览服务
npx hexo server

# 浏览器访问 http://localhost:4000
```

### 创建新文章

```bash
npx hexo new "文章标题"
```

然后将生成的 `.md` 文件移动到 `source/_posts/` 下对应分类文件夹中。

### 构建与部署

```bash
# 清理缓存并重新生成
npx hexo clean && npx hexo generate

# 方式一：手动推送触发 GitHub Actions 自动部署
git add -A
git commit -m "Update blog"
git push

# 方式二：Windows 一键部署（自动 commit + push）
deploy-blog.bat
```

## 部署流程

本项目使用 GitHub Actions 实现自动化部署：

1. 推送代码到 `main` 分支
2. GitHub Actions 自动触发构建 (`npx hexo generate`)
3. 构建产物发布到 `gh-pages` 分支
4. GitHub Pages 自动更新网站

## 文章命名规范

文章按分类存放在各自文件夹中，文件名与文章标题关键词保持一致，格式为：

```
source/_posts/<分类>/文章标题关键词.md
```

示例：
- `source/_posts/AI+科技/AI科技日报-2026-06-09.md`
- `source/_posts/测试领域/测试领域日报-2026-06-10.md`

## 主要功能

- 📂 分类与标签系统
- 🔍 本地全文搜索
- 🌙 暗色模式（默认）
- 📋 一键复制文章（富文本 / Markdown）
- 📱 响应式设计
- ⚡ 代码高亮
- 🏠 首页侧边栏 + 轮播字幕

## License

本博客内容版权归作者所有，技术框架遵循各自开源协议。
