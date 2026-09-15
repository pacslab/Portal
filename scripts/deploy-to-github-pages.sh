#!/usr/bin/env bash
#
# Builds the Hugo site and publishes the public/ output to the
# pacslab/pacslab.github.io repository (GitHub Pages).
#
# Usage:
#   ./scripts/deploy-to-github-pages.sh [--skip-build] [-m "commit message"]
#
# Options:
#   --skip-build   Reuse the existing public/ directory instead of rebuilding.
#   -m, --message  Custom commit message for the deploy commit.

set -euo pipefail

REPO_URL="https://github.com/pacslab/pacslab.github.io.git"
DEPLOY_BRANCH="main"
BASE_URL="https://pacslab.github.io/"
DEPLOY_DIR=".deploy/pacslab.github.io"
SKIP_BUILD=false
COMMIT_MESSAGE=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    --skip-build)
      SKIP_BUILD=true
      shift
      ;;
    -m|--message)
      COMMIT_MESSAGE="$2"
      shift 2
      ;;
    *)
      echo "error: unknown option '$1'" >&2
      exit 1
      ;;
  esac
done

cd "$(git rev-parse --show-toplevel)"

if [[ "$SKIP_BUILD" == false ]]; then
  echo "==> Building site with Hugo"
  hugo --gc --minify -b "$BASE_URL"
fi

if [[ ! -d public ]]; then
  echo "error: public/ directory not found. Run a build first." >&2
  exit 1
fi

if [[ ! -d "$DEPLOY_DIR/.git" ]]; then
  echo "==> Cloning $REPO_URL into $DEPLOY_DIR"
  mkdir -p "$(dirname "$DEPLOY_DIR")"
  git clone "$REPO_URL" "$DEPLOY_DIR"
fi

(
  cd "$DEPLOY_DIR"
  git fetch origin
  if git show-ref --verify --quiet "refs/remotes/origin/$DEPLOY_BRANCH"; then
    git checkout -B "$DEPLOY_BRANCH" "origin/$DEPLOY_BRANCH"
  else
    git checkout -B "$DEPLOY_BRANCH"
  fi
)

echo "==> Syncing public/ into $DEPLOY_DIR"
rsync -av --delete --exclude='.git' public/ "$DEPLOY_DIR/"

SOURCE_SHA="$(git rev-parse --short HEAD)"
DEFAULT_MESSAGE="Deploy Portal@${SOURCE_SHA} ($(date -u '+%Y-%m-%d %H:%M:%S UTC'))"

(
  cd "$DEPLOY_DIR"
  git add -A
  if git diff --cached --quiet; then
    echo "==> Nothing to deploy, site is already up to date."
  else
    git commit -m "${COMMIT_MESSAGE:-$DEFAULT_MESSAGE}"
    git push origin "$DEPLOY_BRANCH"
    echo "Deployed to https://github.com/pacslab/pacslab.github.io"
  fi
)
