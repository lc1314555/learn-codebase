# AI Project Guide

Use this when a repository contains ML, LLM, embeddings, RAG, agents, data pipelines, training, fine-tuning, inference, evaluation, or model serving code.

## Discovery Targets

Look for:

- Dependency files: `pyproject.toml`, `requirements*.txt`, `environment.yml`, `package.json`, `uv.lock`, `poetry.lock`.
- Data code: `data`, `datasets`, `loaders`, `preprocess`, `etl`, `features`.
- Model code: `models`, `networks`, `modules`, `train`, `trainer`, `finetune`, `checkpoints`.
- Inference code: `infer`, `predict`, `serve`, `api`, `pipeline`, `chains`, `agents`.
- LLM surfaces: `prompts`, `tools`, `retrievers`, `embeddings`, `vector`, `rag`, `memory`, `evals`.
- Experiment/config systems: `configs`, `hydra`, `yaml`, `wandb`, `mlflow`, notebooks.
- Evaluation: `eval`, `metrics`, `benchmarks`, `golden`, `fixtures`.
- Serving/ops: `Dockerfile`, `modal`, `ray`, `bentoml`, `fastapi`, `gradio`, `streamlit`, CI files.

## Workflow Tracing

For one important AI workflow, trace whichever path exists:

1. Data source and preprocessing.
2. Prompt/template construction or feature creation.
3. Model, embedding, retriever, or tool selection.
4. Inference/training/evaluation execution.
5. Post-processing, scoring, persistence, or serving response.
6. Tests, evals, or example scripts that verify behavior.

## What To Explain

- Whether the project is training, inference, RAG, agentic workflow, evaluation, or serving oriented.
- The main model boundary: local model, hosted API, embedding model, vector database, or custom training code.
- Data assumptions and where sample data or schemas live.
- Prompt/tool/retrieval flow for LLM projects.
- Metrics and eval strategy if present.
- How to run a small safe example without expensive training when possible.

## Practice Task Ideas

- Run or inspect a tiny inference example.
- Trace one prompt from template to model call.
- Add one evaluation case.
- Follow one dataset item through preprocessing.
- Replace a mock model or fixture to understand the interface.
