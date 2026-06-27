---
title: 2026年6月26日-行业日报-OpenAI首款AI芯片英伟达股东大会豆包收费上线
cover: /AI行业日报/images/20260626-industry-daily-cover.png
date: 2026-06-26 09:00:00
categories:
  - AI行业日报
tags:
  - OpenAI芯片
  - 英伟达股东大会
  - 豆包收费
  - 宇树机器人降价
  - 高通收购Modular
---

# 2026年6月26日-行业日报-OpenAI首款AI芯片英伟达股东大会豆包收费上线

![封面图](/AI行业日报/images/20260626-industry-daily-cover.png)

> **摘要**: 今日焦点：OpenAI发布首款自研AI推理芯片"Jalapeno"，九个月完成流片刷新行业纪录；英伟达股东大会黄仁勋宣告智能体时代到来；字节跳动豆包正式上线专业版收费；高通39亿美元收购Modular全面进军AI数据中心。

## 一、软件测试与质量保障

### 行业动态

6月25-26日未见软件测试领域重大工具更新或漏洞通报。近期测试工具迭代集中于AI辅助用例生成、自动化框架升级等方向，AI编程工具生态快速成熟值得关注：

- **Claude Code v2.1.193 发布**：新增 autoMode.classifyAllShell 设置（自动将 shell 命令分类为可执行或仅查看）、实时文件路径自动补全、空闲后台 shell 命令自动内存压力回收等功能，对开发者日常编码效率有直接提升
- **GitHub Copilot Agentic Harness 跨模型评估**：GitHub 官方发布 agentic harness 在20+模型间的性能与效率基准评测，为 AI 辅助编码工具选型提供了统一对比标准
- **Codex 在 ChatGPT 移动端正式可用**：OpenAI 宣布 Codex 智能体在 ChatGPT 移动应用中开放使用，新增一对一设备配对、通知、目标管理、文件预览等功能，意味着 AI 编程能力正从桌面端向移动端延伸

### 技术趋势

2026年测试工具选型核心问题已超越"Selenium还是Playwright"，更关键的是用例能否快速创建、页面变化后能否低成本维护、失败后能否快速定位。AI辅助测试用例生成和质量数据分析能力成为测试工程师必备技能。同时，AI 编程工具的普及正在改变开发与测试的协作模式——当代码生成越来越自动化后，测试重心正从功能验证转向系统可靠性验证和边界场景覆盖。

**参考来源**:
- [Claude Code v2.1.193 Release Notes](https://github.com/anthropics/claude-code/releases/tag/v2.1.193)
- [GitHub Copilot Agentic Harness 评测](https://github.blog/ai-and-ml/github-copilot/evaluating-performance-and-efficiency-of-the-github-copilot-agentic-harness-across-models-and-tasks)
- [Codex in ChatGPT Mobile App](https://x.com/OpenAIDevs/status/2070254532911882707)
- [测试深度洞察 ｜ 2026年6月：测试工具迭代背后的行业信号](https://blog.csdn.net/kft1314/article/details/161726706)

## 二、AI与模型厂商

### OpenAI发布首款自研AI推理芯片"Jalapeno"

北京时间2026年6月25日，OpenAI正式对外发布其首款自研AI推理芯片Jalapeno（哈拉贝诺辣椒），由OpenAI与半导体巨头博通（Broadcom）联合开发，专为大语言模型推理场景设计。

#### 核心亮点

- **九个月完成流片**：从初始设计到制造流片仅用9个月，号称"高性能先进半导体领域有史以来最快的ASIC开发周期"，传统高性能芯片设计周期通常需2-3年
- **AI辅助造芯**：ChatGPT在芯片设计过程中发挥辅助作用，加速工程迭代与验证
- **专注推理而非训练**：推理是每日数亿用户持续产生的成本大头，若压降30%-50%推理成本可节省天文数字
- **性能表现**：博通CEO陈福阳表示，Jalapeño每瓦性能明显优于当前最先进同类产品，性能可与英伟达Blackwell系列及谷歌TPU相媲美
- **部署计划**：预计2026年底前完成部署，定位为"多代计算平台的第一步"

#### 战略意义

OpenAI宣言："我们正在设计芯片架构、内核、内存系统、网络、调度、部署系统乃至产品体验——贯穿整个技术栈，每一层都可以围绕同一个目标优化：让我们的模型对用户更快、更稳定、更实惠。"这是科技巨头自研算力基础设施浪潮的最新一笔。

**参考来源**: [OpenAI发布首款自研AI芯片"Jalapeno"](https://www.weste.net/2026/06-25/OpenAI-Jalapeno.html)

### 英伟达股东大会：黄仁勋宣告智能体时代

北京时间6月25日凌晨，英伟达举行年度股东大会，CEO黄仁勋释放多个重磅信号：

- **智能体时代正式到来**：将本轮计算范式转变定性为60年来最大的行业重置
- **AI投资回报"已有答案"**：明确回应市场关切，消除投资者对AI投入产出比的疑虑
- **Vera Rubin架构全面量产**：新一代架构已进入量产阶段
- **"物理AI"是下一波增长浪潮**：机器人、汽车和工厂将成为现实世界中的智能体
- **全新CPU架构**：专为智能体设计的CPU架构正式发布
- **AI基建周期长达数十年**：发出长期乐观信号，暗示当前仍处早期阶段

**参考来源**:
- [英伟达股东会摘要：黄仁勋豪言AI投资回报率的问题"已有答案"](https://www.163.com/dy/article/L08L59480550WHYR.html)
- [黄仁勋股东大会最新发声：本轮AI基建周期长达数十年](https://www.36kr.com/p/3868382658958597)

### 字节跳动豆包正式上线专业版收费

6月24日，字节跳动旗下AI应用豆包正式推出豆包专业版，基于最新豆包2.1系列大模型（智能体模型），面向办公开发、数据分析、专业设计等场景。

#### 付费方案

| 档位 | 月费 | 说明 |
|------|------|------|
| 标准版 | 68元/月（连续包月） | 基础AI助手功能 |
| 加强版 | 200元/月 | 更多高级功能 |
| 高级版 | 500元/月 | 全量功能解锁 |

年付最高5088元。免费版基础功能保持不变。豆包2.1为智能体模型，在项目规划、文件处理、工具调用等多步操作能力上有所提升。

#### 行业意义

有行业分析师认为，国内头部通用大模型已跳出单纯靠免费模式获客的阶段，行业或将进入"免费普惠+付费增值"双轨商业化深水区。

**参考来源**: [豆包专业版正式发布：月费68元起，面向生产力场景的AI收费战开打](https://news.qq.com/rain/a/20260624A07BB000)

### Ornith-1.0 开源模型家族发布

6月26日，Ornith-1.0 开源模型家族正式发布，专注 Agentic Coding（智能体编程）场景，覆盖9B到397B全参数规模。在 SWE-Bench 等基准测试中达到开源顶尖水平，基于 gemma4 和 qwen3.5 后训练，采用强化学习联合优化，全系列 MIT 开源协议。这标志着开源社区在 AI 编程智能体领域持续缩小与闭源模型的差距。

**参考来源**: [Ornith-1.0 开源模型家族发布](https://x.com/berryxia/status/2070167806700908957)

## 三、科技行业

### 高通全面进军AI数据中心

6月24日，高通在纽约投资者日发布数据中心AI芯片战略：

- **Dragonfly产品家族**：发布面向AI数据中心的Dragonfly C1000 CPU，基于定制Oryon核心，250+核心、5GHz+频率，每瓦性能比现有服务器CPU竞品基准高两倍以上
- **微软Azure部署HBC芯片**：微软将采用高通全新高带宽计算芯片架构
- **Meta签多代CPU大单**：与Meta达成覆盖多个产品世代的战略合作协议
- **收购Modular**：以约39亿美元全股票交易收购AI软件初创公司Modular，补齐软件生态短板，直接挑战英伟达CUDA生态系统
- **数据中心预计2027财年带来数十亿美元收入**

受消息影响，高通盘后大涨超13%。

**参考来源**:
- [高通全面进军AI数据中心](https://news.qq.com/rain/a/20260625A01FZY00)
- [高通投资者日：一颗CPU、一项内存技术、一个400亿美元目标](https://www.36kr.com/p/3868422554916100)
- [对标英伟达！高通携全新CPU和大手笔收购入局AI算力](https://finance.sina.com.cn/tech/roll/2026-06-25/doc-inieqwta2550562.shtml)

### 人形机器人集体降价

宇树科技6月24日宣布旗下双足人形机器人Unitree R1官方售价由3.99万元下调至2.99万元起，并即日起开放现货销售。R1重25千克，配备26个高精度关节，支持语音与图像多模态大模型交互。

#### 2026年人形机器人降价全景

| 品牌型号 | 价格 |
|----------|------|
| 宇树R1 | 2.99万元起 |
| 宇树G1 | 8.5万元起 |
| 优必选 | 12.8万元起 |
| 松延动力Bumi | 9998元 |

降价旨在降低开发者和教育机构准入门槛，推动人形机器人普及应用。R1此前荣登美国《时代周刊》2025年度最佳发明。

**参考来源**: [2026年人形机器人降价事件](https://baike.baidu.com/item/2026%E5%B9%B4%E4%BA%BA%E5%BD%A2%E6%9C%BA%E5%99%A8%E4%BA%BA%E9%99%85%E4%BB%B7%E4%BA%8B%E4%BB%B6/67905064)

### 美光科技财报炸裂，芯片股暴涨

美光科技公布2026财年Q3财报：营收同比增长约346%至414.6亿美元，调整后EPS同比增长超12倍至25.11美元，毛利率84.9%，均超预期。盘后一度大涨超16%。

受此刺激，6月25日日韩股市芯片股暴涨，韩国KOSPI 200期货上涨5%后触发熔断。SK海力士宣布计划募资约294.3亿美元在纳斯达克发行ADR。

**参考来源**: CSDN 2026年6月25日科技热点新闻汇总

### IBM 首度推出亚纳米级芯片技术

IBM发布全球首款亚纳米级芯片技术，采用0.7nm节点与三维纳米堆叠架构，指甲盖大小芯片集成近1000亿个晶体管，性能提升50%，能效提升70%。这一突破标志着芯片制程工艺进入全新的物理尺度。

**参考来源**: [IBM Debuts World's First Sub-1 Nanometer Chip Technology](https://newsroom.ibm.com/2026-06-25-ibm-debuts-worlds-first-sub-1-nanometer-chip-technology)

### 达沃斯论坛："All in AI"引爆全球关注

6月23日至25日，2026年夏季达沃斯论坛在大连举办，以"规模化创新"为主题。90多个国家和地区1700余名嘉宾齐聚，人工智能相关专项论坛超过10场，涉及AI融合议题场次超过30场，场场爆满。

核心看点：
- 全球市场关注焦点从纯技术理论转向**经过市场验证的可商业化AI落地方案**
- "中国方案"受各方关注——依托完备制造业供应链，中国走出"AI+硬件"差异化路线，在具身智能实际应用方面获国际认可
- 外资持续加码中国AI产业：2025年科技研究和技术服务领域新设外资企业1.4万家、同比增长27.2%
- 头部科技企业本年度AI资本开支达到千亿美元级别，但产业落地速度远跟不上技术迭代节奏成为全行业共同难题

**参考来源**: ["All in AI"引爆达沃斯，全球资本青睐中国方案](https://news.qq.com/rain/a/20260625A09IGW00)

### 其他科技动态

- **Runway Agent 2.0 发布**：帮助营销人员创建、测试和优化广告视频及营销活动，支持品牌营销、绩效营销、社交媒体营销等多种场景
- **Midjourney V8.2 预览上线**：新增 --preview 参数提前体验V8.2美学与个性化效果，草稿模式支持 --sref random 探索风格空间速度提升24倍
- **链博会首设人工智能专区**：原"数字科技链"升级为"数智科技链"，集聚中外AI领军企业
- **五部门联合启动工业5G独立专网试点**：工信部等五部门通过机制创新支持5G深度赋能关键行业
- **国产稀释制冷机首台下线**：科大国盾量子完成工程化开发，为千比特可纠错超导量子计算机奠定基础
- **上海企业实现量子计算硬件突破**：璇相科技成功研制全球首款百万级原子光镊阵列超表面芯片

## 四、IT职场

### DeepSeek发布招聘信息：七大类岗位全面扩张

6月25日晚，DeepSeek在官方公众号发布招聘信息，包含七大类岗位：全栈开发/算法、AI核心系统研发、运维、产品部门、模型数据策略产品经理/工程师、深度学习研究员、职能部门。与此前市场传言的裁员潮形成鲜明对比，显示出AI核心企业在人才争夺上的分化态势。

### 2026科技业裁员与招聘并存

截至5月底，2026年全球科技行业裁员人数突破10万，其中甲骨文披露12个月内裁减21,000名员工（降幅13%），明确将部分岗位削减归因于AI。但另一方面，AI核心企业如DeepSeek、字节跳动、商汤等仍在大幅扩张AI研发和相关岗位。就业市场呈现"AI人才紧缺、传统岗位萎缩"的结构性分化。

**参考来源**:
- [DeepSeek发布招聘信息](https://so.html5.qq.com/page/real/search_news?docid=70000021_5066a3d4e0270752)
- [2026年科技业大裁员:AI成为企业缩减人力的首要理由](https://so.html5.qq.com/page/real/search_news?docid=70000021_4016a3a5c1860652)

### OpenAI内部报告：智能体Codex如何改变工作方式

OpenAI观察到其智能体产品 Codex 已取代 ChatGPT 成为内部主要工作工具，各部门输出token中 Codex 占比从不足10%飙升至99.8%。非开发者用户增长迅猛，这意味着AI智能体正在从程序员专用工具向普通职场生产力工具泛化。对测试工程师而言，这也意味着AI辅助测试、自动化脚本生成等能力的门槛将持续降低。

**参考来源**: [How Agents Are Transforming Work - OpenAI](https://openai.com/index/how-agents-are-transforming-work)

## 五、金融领域

### 央行6月25日开展5000亿元MLF操作

继6月24日预告后，央行于6月25日按公告开展5000亿元、期限1年的MLF操作。其中3000亿为到期续作，净投放2000亿元，为连续两个月加量续作。

#### 操作节奏：从缩量到加量

- 4月：净回笼2000亿（缩量续作）
- 5月：净投放1000亿（加量续作）
- 6月：净投放2000亿（加量翻倍）

央行正有步骤地把中期流动性垫厚，为下半年可能的降息预留空间。

### LPR连续14个月持平

2026年6月22日，最新一期LPR公布：1年期3.0%，5年期以上3.5%，已连续14个月不变。考虑到MLF利率尚未调整，短期内LPR下调概率较低，但6月MLF加量为后续降息打开了操作空间。

### AI经济规模持续扩大

根据 ExponentialView 发布的《State of the AI Economy》报告，过去12个月全球AI产业实际营收达1100亿美元，年化运行率超过1750亿美元，增速约为移动互联网普及浪潮的3倍。AI经济正从概念炒作进入实质贡献阶段。

**参考来源**:
- [央行明天放麻辣粉5000亿：降息信号来了？](https://baijiahao.baidu.com/s?id=1868909943283113531)
- [State of the AI Economy Report](https://x.com/rohanpaul_ai/status/2070288396644491317)

## 今日速览

| 领域 | 重点事件 |
|------|----------|
| AI芯片 | OpenAI发布首款自研AI推理芯片Jalapeno，9个月流片 |
| 英伟达 | 黄仁勋宣告智能体时代，Vera Rubin架构量产，AI ROI"已有答案" |
| AI应用 | 字节跳动豆包专业版上线，月费68元起开启收费时代 |
| 开源模型 | Ornith-1.0开源家族发布，9B-397B全覆盖，MIT协议 |
| 机器人 | 宇树R1降价至2.99万元起，人形机器人集体降价潮 |
| 芯片 | 高通39亿美元收购Modular，全面进军AI数据中心 |
| 存储 | 美光Q3业绩炸裂，营收同比增346%，日韩芯片股暴涨触发熔断 |
| 制程 | IBM首发0.7nm亚纳米级芯片，近千亿晶体管集成 |
| 达沃斯 | "All in AI"引爆夏季达沃斯，聚焦AI规模化落地 |
| 测试工具 | Claude Code v2.1.193 / Codex移动端 / Copilot Agentic Harness 更新 |
| 金融 | 央行MLF净投放2000亿，LPR连续14个月持平，AI经济年化1750亿美元 |
| IT职场 | DeepSeek逆势扩招七大类岗位，科技业裁员招聘两极分化 |

## 参考来源

1. [OpenAI发布首款自研AI芯片"Jalapeno"](https://www.weste.net/2026/06-25/OpenAI-Jalapeno.html)
2. [英伟达股东会摘要：黄仁勋豪言AI投资回报率的问题"已有答案"](https://www.163.com/dy/article/L08L59480550WHYR.html)
3. [黄仁勋股东大会最新发声：本轮AI基建周期长达数十年](https://www.36kr.com/p/3868382658958597)
4. [豆包专业版正式发布：月费68元起，面向生产力场景的AI收费战开打](https://news.qq.com/rain/a/20260624A07BB000)
5. [高通全面进军AI数据中心](https://news.qq.com/rain/a/20260625A01FZY00)
6. [高通投资者日：一颗CPU、一项内存技术、一个400亿美元目标](https://www.36kr.com/p/3868422554916100)
7. [2026年6月25日科技热点新闻-CSDN博客](https://blog.csdn.net/BluerCat/article/details/162294517)
8. [2026年人形机器人降价事件](https://baike.baidu.com/item/2026%E5%B9%B4%E4%BA%BA%E5%BD%A2%E6%9C%BA%E5%99%A8%E4%BA%BA%E9%99%85%E4%BB%B7%E4%BA%8B%E4%BB%B6/67905064)
9. [央行明天放麻辣粉5000亿：降息信号来了？](https://baijiahao.baidu.com/s?id=1868909943283113531)
10. ["All in AI"引爆达沃斯，全球资本青睐中国方案](https://news.qq.com/rain/a/20260625A09IGW00)
11. [Claude Code v2.1.193 Release Notes](https://github.com/anthropics/claude-code/releases/tag/v2.1.193)
12. [Ornith-1.0 开源模型家族发布](https://x.com/berryxia/status/2070167806700908957)
13. [IBM Sub-1 Nanometer Chip Technology](https://newsroom.ibm.com/2026-06-25-ibm-debuts-worlds-first-sub-1-nanometer-chip-technology)
14. [Runway Agent 2.0](https://runwayml.com/news/introducing-agent-2)
15. [How Agents Are Transforming Work - OpenAI](https://openai.com/index/how-agents-are-transforming-work)
16. [State of the AI Economy Report](https://x.com/rohanpaul_ai/status/2070288396644491317)
17. [DeepSeek发布招聘信息](https://so.html5.qq.com/page/real/search_news?docid=70000021_5066a3d4e0270752)
18. [GitHub Copilot Agentic Harness 评测](https://github.blog/ai-and-ml/github-copilot/evaluating-performance-and-efficiency-of-the-github-copilot-agentic-harness-across-models-and-tasks)
