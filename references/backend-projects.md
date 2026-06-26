# Backend Project Guide

Use this when a repository contains API servers, workers, queues, databases, scheduled jobs, service integrations, or deployment configuration.

## Discovery Targets

Look for:

- Dependency files: `package.json`, `pyproject.toml`, `requirements*.txt`, `go.mod`, `Cargo.toml`, `pom.xml`, `build.gradle`, `mix.exs`.
- Server entry points: `main`, `app`, `server`, `api`, `cmd`, `src/index`, `src/main`, `manage.py`, `asgi.py`, `wsgi.py`.
- Routing surfaces: `routes`, `controllers`, `handlers`, `views`, `routers`, `endpoints`.
- Service/domain logic: `services`, `domain`, `usecases`, `internal`, `core`.
- Persistence: `models`, `schemas`, `repositories`, `migrations`, `prisma`, `sql`, `db`.
- Background work: `workers`, `jobs`, `tasks`, `queues`, `celery`, `rq`, `bull`, `sidekiq`.
- Configuration and operations: `.env*`, `config`, `settings`, `Dockerfile`, `docker-compose*`, `k8s`, `helm`, `terraform`, CI files.
- Tests: `test`, `tests`, `spec`, integration and fixture directories.

## Workflow Tracing

For one important feature, trace:

1. External trigger: HTTP route, CLI command, queue message, cron schedule, or event.
2. Request parsing and validation.
3. Authentication or authorization, if present.
4. Service/domain call.
5. Database or external API access.
6. Response, emitted event, persisted state, or background job.
7. Tests that cover the same path.

## What To Explain

- The framework and how it wires routes or commands.
- The separation between transport layer, business logic, and data access.
- Main data models and persistence mechanism.
- Configuration sources and environment variables when visible.
- How errors are represented and logged.
- How the system is tested and run locally.

## Practice Task Ideas

- Add or document one route handler.
- Follow one database model from migration to API response.
- Add a validation case and a test.
- Trace one background job from enqueue to completion.
- Find the config value controlling an external integration.
