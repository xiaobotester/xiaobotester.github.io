---
title: 2026年6月17日-行业日报-ChatGPT份额首破50-Playwright-1.61-WebAuthn-SpaceX-600亿收购Cursor
cover: /images/20260617-comprehensive-daily-cover.png
date: 2026-06-17 09:30:00
categories:
  - AI+科技
tags:
  - 行业日报
  - AI
  - 科技
  - IT行业
  - 软件测试
  - 金融
---

# 综合日报 | 2026-06-17

![行业日报封面](/images/20260617-comprehensive-daily-cover.png)

> **摘要**：ChatGPT 市场份额首次跌破 50%（Gemini 27.7%、Claude 10.3% 追赶），Anthropic 企业份额反超 OpenAI；SpaceX 以 600 亿美元股票收购 AI 编程公司 Cursor，创 AI 工具并购纪录；软件测试领域 Playwright 1.61 发布 WebAuthn passkeys 支持、Selenium 4.45 今日发布、pytest 9.1.0 引入破坏性变更，微软 6 月补丁日修复创纪录 206 个漏洞；阿里发布首个具身大模型 Qwen-Robot 系列，谷歌 Android 17 正式版上线；2026 陆家嘴论坛今日开幕，AI 支付密集落地（支付宝"阿宝"、银联、京东、微信支付集体入局）。

---

## 今日速览

| 方向 | 今日重点 | 影响 |
|---|---|---|
| 软件测试 | Playwright 1.61 WebAuthn passkeys；Selenium 4.45 五语言同发；微软补丁日 206 漏洞创纪录；Google Vertex AI SDK "Pickle in the Middle" 漏洞 | 测试框架认证/存储能力升级，安全补丁与 AI SDK 供应链风险并行 |
| AI 与模型 | ChatGPT 份额首破 50%；SpaceX 600 亿收购 Cursor；阿里 Qwen-Robot 具身三连发；GLM-5.2 编码超 GPT-5.5 | AI 市场格局重塑，具身智能与 AI 工具并购成焦点 |
| 科技行业 | Android 17 + Wear OS 7 发布；高通 Snapdragon Reality Elite XR 芯片；SSD 零售市场几近消失 | 移动 OS 迭代与 XR 硬件升温，存储供应链紧张加剧 |
| IT 职场 | AI 裁员潮加速（日均 974 人）；阿里 QoderWork 上线"意识"功能；美团"觅游"Agent 社区公测 | AI 驱动的组织变革从裁员进入工具赋能新阶段 |
| 金融领域 | 2026 陆家嘴论坛开幕；AI 支付密集落地；发改委推进"六张网"含算力网；美联储沃什首秀在即 | 金融改革信号明确，AI 支付成金融科技新风口 |

---

## 一、软件测试

### 1.1 工具平台更新

**Playwright 1.61 发布：原生 WebAuthn passkeys 支持、Web Storage API 全面升级**

微软于 6 月 15 日发布 Playwright v1.61.0，本次更新的核心亮点：

- **WebAuthn passkeys**：新增 `Credentials` 虚拟认证器，通过 `browserContext.credentials` 让测试注册 passkey 并响应 `navigator.credentials.create()/get()`，无需真实硬件密钥，所有浏览器通用。这意味着测试团队可以在 CI 流水线中自动化测试 passkey 登录流程，不再依赖物理安全密钥
- **Web Storage API**：新增 `page.localStorage` 和 `page.sessionStorage`，可直接读写页面存储，简化需要操作 localStorage/sessionStorage 的测试场景
- **网络增强**：`apiResponse.securityDetails()` 和 `apiResponse.serverAddr()` 新增，便于安全测试中检查 TLS 证书和服务器信息
- **录屏改进**：`connectOverCDP()` 新增 `artifactsDir` 选项；`screencast.showActions()` 新增 `cursor` 选项
- **测试运行器**：`testOptions.video` 支持与 `trace` 相同的模式（`'on-all-retries'`, `'retain-on-first-failure'` 等）

对测试从业者的实际影响：WebAuthn passkeys 支持解决了无密码认证测试的长期痛点。随着 passkey 在各大平台（Apple、Google、Microsoft）的快速普及，测试团队此前只能依赖 mock 或手动测试，现在可以在 CI 中完全自动化。建议关注 `browserContext.credentials` 的 API 稳定性，在下一个 sprint 中试点集成。

> 来源：[GitHub Release: Playwright v1.61.0](https://github.com/microsoft/playwright/releases/tag/v1.61.0)

---

**Selenium 4.45.0 今日发布：Java/Python/DotNet/Ruby/JavaScript 五语言同步更新**

Selenium 团队于 6 月 17 日发布 v4.45.0，涵盖 40+ 个 PR（#17427 至 #17520），包括功能增强、Bug 修复和依赖更新。主要贡献者包括 @titusfortner、@AutomatedTester、@shs96c、@nvborisenko、@aguspe。详细 changelog 按组件分别提供。

> 来源：[GitHub Release: Selenium 4.45.0](https://github.com/SeleniumHQ/selenium/releases/tag/selenium-4.45.0)

---

**pytest 9.1.0 发布：引入破坏性变更与多项弃用警告**

pytest 于 6 月 13 日发布 9.1.0 版本，需要注意的关键变化：

- **破坏性变更**：使用 `--doctest-modules` 时，autouse fixtures（session/module/package 级别）可能执行两次，可能导致 fixture 副作用翻倍
- **弃用警告**：类作用域 fixture 定义为实例方法（不加 `@staticmethod`）将弃用；teardown 期间调用 `request.getfixturevalue()` 请求未请求过的 fixture 将弃用，pytest 10 中将报错；`parametrize` 中使用非 `collections.abc.Sequence` 可迭代对象将弃用

迁移建议：团队若计划升级至 pytest 10，应提前排查上述弃用项。`--doctest-modules` 双重执行问题可能导致数据库连接或外部资源初始化重复，建议在 CI 中添加 fixture 执行计数断言。

> 来源：[GitHub Release: pytest 9.1.0](https://github.com/pytest-dev/pytest/releases/tag/9.1.0)

---

### 1.2 安全漏洞情报

**微软 6 月补丁日：206 个漏洞创历史纪录，含 3 个 Zero-Day**

微软 6 月补丁日修复 206 个漏洞，创历史新高。其中 39 个 Critical、167 个 Important，另有 3 个公开披露的 zero-day（CVE-2026-45586、CVE-2026-49160、CVE-2026-50507）。关键高危漏洞包括：

- **CVE-2026-45657**（CVSS 9.8）：Windows Kernel use-after-free，可通过网络流量远程代码执行
- **CVE-2026-47291**（CVSS 9.8）：HTTP.sys 整数溢出，远程代码执行
- **CVE-2026-44815**（CVSS 9.8）：Windows DHCP Client 栈缓冲区溢出，无需认证即可远程代码执行
- **CVE-2026-45585**：BitLocker 绕过（PoC "YellowKey" 已公开）
- **CVE-2026-49160**：HTTP.sys DoS（HTTP2 Bomb 攻击，45 秒耗尽 64GB RAM）

测试团队实操建议：HTTP.sys 漏洞（CVE-2026-47291 和 CVE-2026-49160）影响所有 Windows Server 上的 Web 服务，应在补丁验证后立即纳入回归测试。DHCP Client 漏洞（CVE-2026-44815）影响测试网络中的 DHCP 服务，建议检查测试环境是否暴露了 DHCP 端口。

> 来源：[The Hacker News: Microsoft Patches Record 206 Flaws](https://thehackernews.com/2026/06/microsoft-patches-record-206-flaws.html)

---

**Google Vertex AI SDK "Pickle in the Middle" 漏洞：攻击者可劫持 ML 模型上传并执行代码**

Palo Alto Networks Unit 42 于 6 月 16 日披露 Google Cloud Vertex AI SDK for Python 存在漏洞，命名为 "Pickle in the Middle"。攻击者无需访问受害者项目，仅需自己的 GCP 项目和受害者的项目 ID（通常公开），即可劫持 ML 模型上传并在 Google 服务基础设施中执行代码。漏洞根源在于 SDK 选择临时 Cloud Storage bucket 的方式可预测（`project-vertex-staging-region`），且不验证 bucket 所有权。

**修复方案**：升级到 SDK 1.148.0 或更高版本。目前未见野外利用。

对测试团队的启示：AI 模型供应链安全测试应纳入 CI/CD 流程。建议检查团队使用的 AI SDK 是否存在类似的 bucket 所有权验证缺失问题，并在 API 安全测试中新增 ML 模型上传路径的权限验证测试项。

> 来源：[The Hacker News: Google Vertex AI SDK Flaw](https://thehackernews.com/2026/06/google-vertex-ai-sdk-flaw-let.html)

---

**Agentjacking 攻击：AI 编程 Agent 被诱导执行恶意代码，2388 个组织暴露**

Tenet Security 于 6 月 12 日披露新攻击类别 "Agentjacking"：攻击者通过伪造 Sentry 错误事件，利用 Sentry MCP 服务器将恶意指令传递给 AI 编程 Agent（Claude Code、Cursor 等）。攻击者只需目标的 Sentry DSN（公开的写入凭证），即可窃取环境变量、Git 凭证、私有仓库 URL。测试中 85% 成功率，2388 个组织暴露了可注入的 DSN。

Sentry 承认问题但称"技术上不可防御"，已激活全局内容过滤器。Sentry Python SDK 2.63.0（今日发布）包含相关修复。

> 来源：[The Hacker News: Agentjacking Attack](https://thehackernews.com/2026/06/agentjacking-attack-tricks-ai-coding.html) | [GitHub Release: Sentry Python SDK 2.63.0](https://github.com/getsentry/sentry-python/releases/tag/2.63.0)

---

## 二、AI 与模型厂商

### 2.1 市场格局

**ChatGPT 市场份额首次跌破 50%：Gemini 27.7%、Claude 10.3% 持续追赶**

据 Sensor Tower《2026 年 AI 状态报告》，ChatGPT 市场份额自 1 月以来持续下滑，5 月降至 46.4%，首次跌破 50%。Gemini 以 27.7% 位居第二（月活 6.62 亿），Claude 以 10.3% 位居第三（月活 2.45 亿）。ChatGPT 仍有超 11 亿月活用户领先。Claude 付费转化率达 13%，领先行业。

2026 上半年 AI 应用下载量预计近 23 亿次，用户支出超 42 亿美元（去年同期 18.3 亿）。

> 来源：[TechCrunch: ChatGPT's Market Share Slips Below 50%](https://techcrunch.com/2026/06/16/chatgpts-market-share-slips-below-50-for-first-time/)

---

**Anthropic 企业 AI 份额反超 OpenAI：被封禁反而助推企业采用**

特朗普政府要求 Anthropic 禁止非美国人（包括其员工）访问 Mythos 5 和 Fable 5 模型，Anthropic 被迫从市场撤下最新模型。然而 Ramp 数据显示，Anthropic 5 月企业 AI 订阅份额升至 41%，首次超越 OpenAI 的 39.5%。Anthropic 此前完成 650 亿美元融资，估值 9650 亿美元，已秘密提交 IPO 申请，并实现首个盈利季度。分析认为"模型被标为危险"反而提升了企业采用意愿。Opus 4.8 已于 5 月底发布。

> 来源：[TechCrunch: Anthropic's Latest Feud May Actually Help It](https://techcrunch.com/2026/06/16/anthropics-latest-feud-with-the-trump-admin-may-actually-help-it-sales-data-suggests/)

---

### 2.2 重大并购

**SpaceX 以 600 亿美元股票收购 Cursor：AI 编程工具史上最大并购**

SpaceX 于 6 月 16 日宣布以 600 亿美元股票收购 AI 编程创业公司 Cursor（原名 Anysphere），预计 Q3 完成。Cursor 此前正计划从 a16z、Thrive、英伟达融资 20 亿美元（估值 500 亿）。SpaceX IPO 后股价从 135 美元飙至 200 美元以上，市值增约 1 万亿美元，总市值达 2.6 万亿美元（一度超越亚马逊）。xAI 此前已招募 Cursor 两名高级工程负责人并出租数据中心。SpaceX 向投资者展示的 TAM 约 28 万亿美元，其中 AI 相关占 26 万亿。

> 来源：[TechCrunch: SpaceX to Acquire Cursor for $60B](https://techcrunch.com/2026/06/16/spacex-to-acquire-cursor-for-60b-in-stock-days-after-blockbuster-ipo/) | [36氪](https://36kr.com/p/3855869611856899)

---

### 2.3 产品发布与模型更新

**阿里发布首个具身大模型 Qwen-Robot 系列：VLA 操作 + VLN 导航 + 世界模型三连发**

阿里巴巴于 6 月 16 日发布千问具身智能大模型 Qwen-Robot 系列，包含三款模型：

- **Qwen-RobotManip**（VLA 操作模型）：在 38000+ 小时语料上预训练，仅用开源数据，在 RoboChallenge 真机测评中两个版本包揽前二
- **Qwen-RobotNav**（VLN 移动模型）：统一语言导航、目标搜索、自动驾驶等五大任务
- **Qwen-RobotWorld**（世界模型）：推理和模拟物理世界状态

已搭载宇树 Go2 四足机器人完成寻物导航测试。

> 来源：[量子位: 阿里发布首个具身大模型 Qwen-Robot 系列](https://www.qbitai.com/2026/06/435873.html)

---

**智谱 GLM-5.2 开源模型：编码基准超越 GPT-5.5，成本仅 1/6**

智谱 AI（Z.ai）发布开源权重模型 GLM-5.2，在多个长程编码基准测试中超越 GPT-5.5，成本仅为后者的 1/6。该模型允许企业在自有基础设施上部署前沿级 AI，消除供应商锁定。

> 来源：[VentureBeat: Z.ai's GLM-5.2 Beats GPT-5.5](https://venturebeat.com/category/ai)

---

**微博 VibeThinker-3B 引发基准争议：30 亿参数声称匹敌旗舰模型**

新浪微博 9 人研究团队在 arXiv 发布 14 页技术报告，声称仅 30 亿参数的 VibeThinker-3B 模型在推理性能上可匹敌或超越 Google DeepMind、OpenAI、Anthropic 和 DeepSeek 的旗舰系统（参数量大数百倍），引发 AI 社区对基准测试有效性的新一轮争论。

> 来源：[VentureBeat: Why Weibo's VibeThinker-3B Has the AI World Arguing](https://venturebeat.com/category/ai)

---

### 2.4 融资动态

**DeepSeek 融资细节曝光：梁文锋保控制权，改写科创企业融资剧本**

DeepSeek 融资细节曝光，梁文锋通过精明的设计在融资中保住了控制权，被评价为"改写了科创企业融资的剧本"。

> 来源：[36氪: 曝 DeepSeek 融资细节](https://36kr.com/p/3855773631976456)

---

**MiniMax 股价两周暴跌 53%：解禁前泡沫破裂，两年巨亏 160 亿元**

MiniMax 上市不到一个月即面临解禁，但股价两周暴跌 53%，两年巨亏 160 亿元。

> 来源：[36氪: MiniMax 的泡沫却先破了](https://36kr.com/p/3855844043668356)

---

## 三、科技行业

### 3.1 操作系统与平台

**Google 发布 Android 17 + Wear OS 7：Lyria 3 音乐生成、Gemini Omni 视频编辑、多任务 Bubble Bar**

Google 于 6 月 16 日发布 Android 17 正式版（首发 Pixel 设备）及 Wear OS 7。核心更新：

- **AI 功能**：音乐生成模型 Lyria 3（文本/图像生成音乐）、多模态 Gemini Omni（视频编辑）、AudioLM 语音翻译（Pixel 10a）
- **多任务**：新增 Bubble Bar 多任务 UI、折叠屏游戏模式
- **Wear OS 7**：续航提升 10%，将引入 Gemini Intelligence 个性化小部件功能

> 来源：[TechCrunch: Android 17 Launches](https://techcrunch.com/2026/06/16/android-17-launches-with-new-multitasking-tools-as-google-expands-gemini-features/)

---

### 3.2 芯片与硬件

**高通发布 Snapdragon Reality Elite XR 芯片：更强智能眼镜即将到来**

高通发布 Snapdragon Reality Elite 芯片，将首先搭载于 Xreal Project Aura Android XR 眼镜，今秋上市。该芯片暗示更强智能眼镜产品即将到来，XR 硬件生态进入新阶段。

> 来源：[The Verge: Qualcomm's Latest Chip Hints at More Powerful Smart Glasses](https://www.theverge.com/gadgets/950229/qualcomm-snapdragon-reality-elite-xr-smart-glasses-wearables)

---

**微软 Surface Laptop 8 / Surface Pro 12 搭载 Snapdragon X2 芯片**

微软 Surface Laptop 8 和 Surface Pro 12 现搭载高通 Snapdragon X2 芯片，ARM PC 生态进一步扩展。

> 来源：[The Verge: Surface Laptop 8 and Pro 12 with Snapdragon X2](https://www.theverge.com/tech/950146/microsoft-surface-laptop-8-surface-pro-12-snapdragon-x2-specs-price)

---

### 3.3 供应链

**SSD 零售市场几近消失：NAND 内存短缺加剧，2027 年或更恶化**

Silicon Motion 副总裁表示，NAND 内存短缺迫使 PC 厂商向第三方模组厂采购 SSD，零售 SSD 市场几近消失。供应商预计 2027 年情况将进一步恶化。

> 来源：[The Verge: The Retail SSD Market Has Almost Disappeared](https://www.theverge.com/tech)

---

### 3.4 前沿科技

**宇树机器人将挑战登顶珠穆朗玛峰**

宇树科技宣布其机器人将挑战登顶珠穆朗玛峰，标志着人形/四足机器人极端环境适应能力进入新里程碑。

> 来源：[量子位: 宇树机器人要登珠峰了](https://www.qbitai.com/2026/06/435817.html)

---

**2026 智源大会开幕：推动 AI、物理世界和生命科学"三体互动"**

2026 智源大会开幕，主题为推动 AI、物理世界和生命科学的"三体互动"。天工 AI 在会上公布 Matrix-Game 3.5 世界模型最新技术突破。

> 来源：[量子位: 2026 智源大会开幕](https://www.qbitai.com/2026/06/435394.html)

---

## 四、IT 职场

### 4.1 行业动态

**AI 裁员潮加速：2026 年至今 363 起裁员影响近 15 万人，日均 974 人**

据 TechCrunch 报道，2026 年至今科技行业已发生 363 起裁员，影响近 15 万人，日均裁员 974 人，速度较去年加快 44%。上月裁员近 4 万人，创两年来单月新高。AI 已连续三个月成为各行业裁员最常被引用的原因。但知名 VC Marc Andreessen 称 AI 只是"银弹借口"，认为大公司普遍超员 25%-75%。

> 来源：[TechCrunch: The AI Layoff Wave Is Becoming a Powder Keg](https://techcrunch.com/2026/06/15/the-ai-layoff-wave-is-becoming-a-powder-keg/)

---

**Rivian 发布 R2 后数日裁员数百人：2022 年以来第五次裁员**

Rivian 在发布 R2 SUV 后数日裁员数百人（不到 2% 员工），系公司 2022 年以来第五次裁员，仍在寻求首次盈利。

> 来源：[The Verge: Rivian Lays Off Hundreds of Employees](https://www.theverge.com/tech) | [TechCrunch](https://techcrunch.com/)

---

**Robinhood 裁员 10% 归因 AI，分析认为缺乏说服力**

Robinhood 裁员 10% 并在内部备忘录中将原因归咎于 AI，但分析认为此说法缺乏说服力。

> 来源：[TechCrunch: Robinhood's Note on 10% Layoffs](https://techcrunch.com/2026/06/16/robinhoods-note-on-10-layoffs-shows-blaming-ai-isnt-cutting-it/)

---

### 4.2 工具与平台

**阿里云 QoderWork 上线"意识"功能；美团"觅游"Agent 社区开放公测**

阿里云桌面 AI 助理 QoderWork 上线"意识"功能，集成记忆、反思、技能进化三个模块，可主动整理冗余信息并将高频任务沉淀为可复用技能。同时，美团基础研发平台 AI 原生团队孵化的首个"Agent 社区"觅游于 6 月 15 日面向全量用户开放公测，支持关联 OpenClaw、Codex、Claude Code、Hermes 等主流 AI 智能体。

> 来源：[36氪: 阿里云 QoderWork 上线"意识"功能](https://36kr.com/p/3856525981275138)

---

**微软评估采用开源模型降低 AI 智能体运行成本**

微软正在评估采用开源 AI 模型来降低智能体运行成本，反映 AI 巨头开始精打细算"经济账"。Databricks 同日推出通用 AI 智能体，押注企业级 AI 应用市场。

> 来源：[财联社](https://www.cls.cn/)

---

## 五、金融领域

### 5.1 监管与政策

**2026 陆家嘴论坛今日开幕：八场全体大会聚焦全球金融治理与资本市场改革**

2026 陆家嘴论坛于今日（6 月 17 日）在上海正式开幕，论坛持续至 6 月 18 日，主题为"全球治理倡议下的金融发展与合作：新愿景、新挑战和新机遇"。由国家金融监督管理总局局长丁向群与上海市市长龚正担任共同轮值主席，70 余名中外嘉宾出席。

八场全体大会议题涵盖：全球金融治理改革、资本市场建设、沪港金融协同、科技金融、普惠金融、可持续金融等。按惯例，人民银行、国家金融监督管理总局、证监会主要负责人均将在论坛期间发表主题演讲。去年论坛期间证监会推出深化科创板改革"1+6"政策措施。

> 来源：[财联社: 2026 陆家嘴论坛今日开幕](https://www.cls.cn/) | [新浪财经](https://finance.sina.com.cn/jjxw/2026-06-17/doc-inicsezc3994517.shtml)

---

### 5.2 金融科技

**AI 支付密集落地：支付宝"阿宝"史上最大改版、银联/京东/微信支付集体入局**

国内支付巨头集体进入"对话即交易"时代：

- **支付宝**：6 月 16 日正式推出 AI 版支付宝"阿宝"，为支付宝史上最大改版，Token Pay 首接 MiniMax M3 大模型
- **银联商务**：同日推出 AI 支付产品
- **京东**：6 月 11 日发布智能体自主支付协议（A2P2）
- **微信支付**：正小范围测试 AI 支付能力，"AI 专属卡"最快本周内上线

AI 时代支付入口从"陈列式"转向"对话式"，平台意在抢占下一代交互入口话语权。这也标志着国内首个面向 MaaS 的支付解决方案投入规模化应用。

> 来源：[36氪: 巨头密集落地 AI 支付产品](https://36kr.com/p/3855849150764291) | [财联社](https://www.cls.cn/)

---

### 5.3 宏观政策

**国家发改委推进"六张网"建设：含算力网，万亿级投资周期开启**

国家发改委主任郑栅洁 6 月 16 日主持召开民营企业座谈会，围绕"六张网"建设（水网、新型电网、算力网、新一代通信网、城市地下管网、物流网）听取意见。郑栅洁表示，"六张网"建设兼顾传统基础设施补短板与新型基础设施布局，将统筹用好政府资金和新型政策性金融工具，推进基础设施竞争性领域向经营主体公平开放。

财联社早报指出，我国算力网建设已开启万亿级投资周期，DeepSeek 首轮融资或将落地。

> 来源：[财联社: 发改委推进"六张网"建设](https://www.cls.cn/)

---

### 5.4 国际金融

**美联储新主席沃什"首秀"倒计时：调查预计 2027 年前不降息**

美联储新任主席沃什即将迎来"首秀"，调查预计美联储 2027 年前不会降息，其沟通机制改革获支持。沃什可能打破 14 年惯例，市场关注其首次公开表态的政策方向。

> 来源：[财联社: 沃什"首秀"倒计时](https://www.cls.cn/)

---

### 5.5 金融机构

**中央结算公司拟将做市商结算服务费降至 7.5 折；5 月商业银行增持债券 1.7 万亿**

债市方面，中央结算公司拟将做市商结算服务费降至 7.5 折，降低做市成本。5 月商业银行增持各类债券超过 1.7 万亿元，反映银行体系流动性配置需求强劲。

> 来源：[财联社](https://www.cls.cn/)

---

*本日报内容覆盖 2026 年 6 月 16 日至 6 月 17 日（北京时间）。所有事件均来自可查证的一手来源，关键数据已交叉验证。*
