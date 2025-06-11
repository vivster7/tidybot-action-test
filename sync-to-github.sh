#!/bin/bash
set -e

# This script syncs the tidybot-action-test package to a separate GitHub repository
# Usage: ./sync-to-github.sh [remote-url]

REMOTE_URL="${1:-}"

if [ -z "$REMOTE_URL" ]; then
    echo "Usage: ./sync-to-github.sh <remote-git-url>"
    echo "Example: ./sync-to-github.sh git@github.com:username/tidybot-action-test.git"
    exit 1
fi

echo "🔄 Syncing to remote repository: $REMOTE_URL"

# Check if remote already exists
if git remote get-url origin &>/dev/null; then
    echo "Updating existing remote..."
    git remote set-url origin "$REMOTE_URL"
else
    echo "Adding new remote..."
    git remote add origin "$REMOTE_URL"
fi

# Push to remote
echo "📤 Pushing to remote..."
git push -u origin main --force

echo "✅ Sync complete!"
echo ""
echo "You can now test the action in the remote repository:"
echo "  $REMOTE_URL"