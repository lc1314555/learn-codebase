#!/usr/bin/env bash
set -euo pipefail

ROOT="${1:-.}"
cd "$ROOT"

echo "== root =="
pwd

echo
echo "== git =="
if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  git status --short
  git rev-parse --show-toplevel
else
  echo "not a git repository"
fi

echo
echo "== top-level =="
find . -maxdepth 2 \
  -path './.git' -prune -o \
  -path './node_modules' -prune -o \
  -path './.venv' -prune -o \
  -path './venv' -prune -o \
  -path './dist' -prune -o \
  -path './build' -prune -o \
  -path './target' -prune -o \
  -print | sed 's#^\./##' | sort | head -200

echo
echo "== project files =="
find . -maxdepth 3 -type f \( \
  -name 'README*' -o \
  -name 'package.json' -o \
  -name 'pyproject.toml' -o \
  -name 'requirements*.txt' -o \
  -name 'go.mod' -o \
  -name 'Cargo.toml' -o \
  -name 'pom.xml' -o \
  -name 'build.gradle' -o \
  -name 'settings.gradle' -o \
  -name 'Dockerfile' -o \
  -name 'docker-compose*.yml' -o \
  -name 'docker-compose*.yaml' -o \
  -name '.env.example' -o \
  -name '*.ipynb' \
\) | sort | head -200

echo
echo "== likely entry points =="
find . -maxdepth 4 -type f \( \
  -name 'main.py' -o \
  -name 'app.py' -o \
  -name 'server.py' -o \
  -name 'manage.py' -o \
  -name 'index.ts' -o \
  -name 'index.js' -o \
  -name 'main.go' -o \
  -name 'main.rs' \
\) | sort | head -200
