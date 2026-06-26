# Learning Note Template

Use this template for `CODEBASE_LEARNING.md`. Write the document in Chinese by default unless the user explicitly asks for English. Keep exact code identifiers, paths, commands, API names, and quoted source text in their original language.

```markdown
# 代码仓学习笔记

## 1. 项目概览

**这个项目做什么：**

**项目类型：**

**主要语言和框架：**

**如何运行或检查：**

**建议优先阅读路径：**
1.
2.
3.

## 2. 学习关注点

**用户指定重点模块或功能：**

**用户指定重点理解内容：**

**本指南如何围绕这些重点组织：**

## 3. 高价值地图

| 区域 | 路径 | 为什么重要 | 优先级 |
| --- | --- | --- | --- |
|  |  |  | 高 |

## 4. 仓库结构

解释重要的顶层目录，跳过低价值的生成目录、依赖目录或构建产物。

## 5. 主要入口

列出应用、CLI、worker、训练、推理、测试、部署等入口。

## 6. 核心流程走读

### 流程：[名称]

**输入或触发：**

**代码路径：**
1.
2.
3.

**输出或副作用：**

**关键文件：**

## 7. 后端相关笔记

相关时保留本节。覆盖路由、服务、持久化、后台任务、外部集成、配置、鉴权和部署。

## 8. AI 相关笔记

相关时保留本节。覆盖数据流、prompt、模型调用、embedding、检索、训练或微调、推理、评测和服务化。

## 9. 测试和质量信号

说明测试目录、覆盖内容、可发现的运行方式，以及对学习重要的测试缺口。

## 10. 学习路线

### 阶段 1：建立整体认识

### 阶段 2：跟踪一条真实流程

### 阶段 3：做一个小的安全改动

### 阶段 4：阅读测试和运维相关代码

### 阶段 5：深入一个子系统

## 11. 练习任务

1. 小型阅读任务：
2. 小型代码改动：
3. 测试或调试任务：
4. 更深入的扩展任务：

## 12. 未解问题

只列出本轮阅读无法从代码中确认的问题。

## 13. 下一步阅读目标

1.
2.
3.
```

Guidelines:

- Prefer specific paths over generic prose.
- Keep the first page useful to a newcomer.
- Mark uncertain interpretations as uncertain.
- If no run command is safe or obvious, say so instead of inventing one.
