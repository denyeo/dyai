#!/usr/bin/env bash
# deploy.sh — Build and push to gh-pages branch
set -euo pipefail
cd "$(dirname "$0")"

echo "==> Building..."
pnpm install --no-frozen-lockfile --silent 2>/dev/null
pnpm run build

echo "==> Deploying to gh-pages branch..."
cp -r dist /tmp/slidev-gh-pages
git checkout --orphan gh-pages-temp 2>/dev/null || git checkout gh-pages-temp 2>/dev/null || true
rm -rf -- * .??* 2>/dev/null || true
cp -r /tmp/slidev-gh-pages/* .
echo "" > .nojekyll
git add -A
git commit -m "Deploy $(date +%Y-%m-%d-%H%M%S)" || true
git push --force origin gh-pages-temp:gh-pages
git checkout main
git branch -D gh-pages-temp 2>/dev/null || true
rm -rf /tmp/slidev-gh-pages
echo "==> Done — https://denyeo.github.io/dyai/"
