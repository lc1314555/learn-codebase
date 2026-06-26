# Learn Codebase

`learn-codebase` is a Codex skill for studying unfamiliar code repositories and writing focused learning notes.

它适合在你想快速理解一个项目、梳理模块关系、追踪核心流程、生成学习笔记时使用。默认会在目标项目根目录生成或更新 `CODEBASE_LEARNING.md`。

## What It Does

- Asks what modules and topics you want to focus on before deep reading.
- Inspects the repository structure, dependencies, entry points, tests, and important source files.
- Traces real workflows through the code instead of only summarizing the README.
- Gives extra attention to backend and AI/ML repositories.
- Writes a Chinese learning guide by default, unless English is explicitly requested.
- Produces a practical reading path, key file map, workflow explanation, and follow-up exercises.

## Install

Clone this repository into your Codex skills directory:

```bash
mkdir -p ~/.codex/skills
git clone https://github.com/lc1314555/learn-codebase.git ~/.codex/skills/learn-codebase
```

If you already have the skill installed, update it with:

```bash
cd ~/.codex/skills/learn-codebase
git pull
```

Restart Codex or start a new session so the skill metadata is loaded.

## Usage

Ask Codex to study a repository:

```text
学习这个代码仓库：/path/to/repo
```

Or explicitly use the skill:

```text
Use $learn-codebase to study /path/to/repo and write CODEBASE_LEARNING.md.
```

The skill will ask two focus questions before doing deep analysis:

1. Which modules, directories, files, or features should I focus on?
2. Which aspects do you most want to understand: architecture, workflow, data flow, APIs, algorithms, storage, deployment, testing, performance, extensibility, or something else?

Example:

```text
学习 /Users/me/projects/my-backend

1. 重点关注 src/api、src/services、src/db
2. 重点了解请求处理流程、数据表关系和缓存逻辑
```

## Output

By default, the skill writes:

```text
<repo-root>/CODEBASE_LEARNING.md
```

The generated note usually includes:

- learning focus
- project overview
- high-value file map
- architecture and module boundaries
- traced workflows
- backend or AI-specific reading notes when relevant
- practical exercises
- what to read next
- uncertainties or follow-up slices

## Repository Structure

```text
learn-codebase/
├── SKILL.md
├── agents/
│   └── openai.yaml
├── references/
│   ├── ai-projects.md
│   ├── backend-projects.md
│   └── learning-note-template.md
└── scripts/
    └── repo_snapshot.sh
```

## Notes

- The skill writes learning notes in Chinese by default.
- Code identifiers, paths, API names, and commands are preserved in their original language.
- It prefers source-code evidence over README-only summaries.
- It does not try to read every file; it selects files based on the user's focus and the repository's highest-value workflows.

