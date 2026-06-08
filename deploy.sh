#!/usr/bin/env bash
# deploy.sh — Build and push to gh-pages branch
set -euo pipefail
cd "$(dirname "$0")"

echo "==> Building..."
pnpm install --no-frozen-lockfile --silent
pnpm run build

echo "==> Deploying to gh-pages branch..."
# Save dist, switch to gh-pages, replace contents
cp -r dist /tmp/slidev-dist
git checkout gh-pages 2>/dev/null || git checkout -b gh-pages
# Remove everything tracked but keep .git
git rm -rfq --cached . 2>/dev/null || true
find . -maxdepth 1 -not -name '.git' -not -name '.' -not -name '..' -exec rm -rf {} + 2>/dev/null || true
cp -r /tmp/slidev-dist/* .
touch .nojekyll
git add -A
git commit -m "Deploy $(date +%Y-%m-%d-%H%M%S)" || true
git push --force --set-upstream origin gh-pages
git checkout main
rm -rf /tmp/slidev-dist
echo "==> Done — https://denyeo.github.io/dyai/"
