---
name: learn-codebase
description: Use this skill whenever the user wants to learn, understand, explore, onboard into, study, or document a code repository. Trigger for requests like "help me understand this project", "learn this repo", "codebase walkthrough", "create a repo learning guide", "帮我看懂这个项目", "学习这个仓库", "代码仓导览", or "从零理解这个 repo". This skill first asks what modules and learning topics the user wants to focus on, then inspects the repository, identifies the stack and entry points, traces important backend or AI workflows when present, and writes a focused CODEBASE_LEARNING.md study note into the project unless the user asks otherwise.
---

# Learn Codebase

## Purpose

Turn an unfamiliar repository into a focused learning note. Prefer concrete code facts, cited paths, and a staged reading path over broad summaries.

Default output: create or update `CODEBASE_LEARNING.md` at the repository root.

## Output Language

Write `CODEBASE_LEARNING.md` in Chinese by default. Use English only when the user explicitly asks for English output or when preserving exact code identifiers, commands, paths, APIs, or quoted project text.

## Required Focus Questions

Before doing deep code reading or writing `CODEBASE_LEARNING.md`, ask the user these two questions:

1. Which modules, directories, files, or features should I focus on?
2. Which aspects do you most want to understand: architecture, core workflow, data flow, APIs, algorithms, storage, deployment, testing, performance, extensibility, or something else?

If the user's initial request already answers one or both questions, acknowledge the provided focus and ask only for the missing information. If the user explicitly says they have no preference, proceed with a broad systematic study and state that the guide will prioritize the repository's highest-value paths.

Use the answers to decide which files to read more deeply, which workflows to trace, what examples to include, and how to order the learning plan.

## Operating Modes

Infer the mode from the user's wording:

- **Quick tour**: summarize project purpose, stack, structure, and first reading path.
- **Systematic study**: produce the full learning note with workflows, key files, exercises, and next questions.
- **Deep dive**: focus on one subsystem or feature, then update the note with that focused walkthrough.

If unclear, use **Systematic study**.

## Core Workflow

1. Confirm the repository root from the current working directory or the user's path.
2. Ask the required focus questions unless the user already provided the answers.
3. Inspect before explaining. Start with `README*`, dependency/build files, top-level directories, tests, and likely entry points.
4. Run `scripts/repo_snapshot.sh <repo-root>` when a shell is available to gather a compact structural snapshot. If the script is not suitable, use `rg --files`, `find`, and targeted reads manually.
5. Classify the project type: backend service, AI/ML project, library, CLI, full-stack app, data pipeline, or mixed repository.
6. Read only the files needed to explain the system, with extra depth on the user's requested modules and topics. Prioritize entry points, routing/command surfaces, configuration, core domain modules, data/model code, tests, and deployment files.
7. Trace one or more real workflows through the code. For backend projects, prefer request/task/data flows. For AI projects, prefer data ingestion, training/fine-tuning, inference, evaluation, and serving flows.
8. Write `CODEBASE_LEARNING.md` using `references/learning-note-template.md`, including the user's focus answers near the top.
9. End with what was written, the most important paths studied, and any parts that remain uncertain.

## Reading Strategy

Use progressive discovery:

- First pass: repo purpose, stack, run commands, directory map.
- Second pass: entry points and high-level module boundaries.
- Third pass: one critical workflow from input to output.
- Fourth pass: tests, operational concerns, and beginner exercises.

Do not try to read every file. Explain why selected files matter.

## Evidence Rules

- Cite paths for every important claim. Include line numbers when practical.
- Separate facts from inference with phrases like "The code shows..." and "This appears to...".
- Do not rely on README alone. Verify claims against source files.
- Avoid undocumented assumptions about business logic, model behavior, deployment, or data contracts.
- Mention generated, vendored, build, and dependency directories only when they affect learning.

## Backend And AI Emphasis

If the repository contains backend or AI signals, read the relevant reference before writing the final note:

- Backend service, API, worker, queue, database, auth, deployment: read `references/backend-projects.md`.
- AI/ML, LLM, embeddings, RAG, agents, training, evaluation, inference: read `references/ai-projects.md`.

If both apply, read both.

## Output Requirements

Write a concise but useful learning note:

- Use Chinese section prose by default unless the user explicitly requests another language.
- Include a "Learning Focus" section that records the user's selected modules and topics.
- Keep the main note scannable with short sections and priority markers.
- Put the most important files and workflows near the top.
- Include practical exercises that help the learner touch the code safely.
- Include a "What to read next" section ordered by learning value.
- If the repo is large, document the first slice clearly and list follow-up slices.

Before editing an existing `CODEBASE_LEARNING.md`, read it first and preserve useful user-written content unless it is clearly stale.

## Reference Files

- `references/learning-note-template.md`: Required template for the Markdown learning note.
- `references/backend-projects.md`: Backend-specific discovery and workflow tracing.
- `references/ai-projects.md`: AI-specific discovery and workflow tracing.
