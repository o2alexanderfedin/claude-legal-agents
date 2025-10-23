#!/bin/bash
#
# Git Hooks Setup Script
# Installs git flow enforcement hooks
#

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
GIT_DIR="$(git rev-parse --git-dir 2>/dev/null)"

if [ -z "$GIT_DIR" ]; then
    echo "❌ Error: Not in a git repository"
    exit 1
fi

HOOKS_DIR="$GIT_DIR/hooks"

echo ""
echo "🔧 Installing Git Flow Enforcement Hooks"
echo ""

# Create hooks directory if it doesn't exist
mkdir -p "$HOOKS_DIR"

# Install hooks
for hook in pre-commit commit-msg pre-push; do
    SOURCE="$SCRIPT_DIR/$hook"
    TARGET="$HOOKS_DIR/$hook"

    if [ -f "$SOURCE" ]; then
        if [ -f "$TARGET" ]; then
            echo "⚠️  Backing up existing $hook hook to $hook.backup"
            mv "$TARGET" "$TARGET.backup"
        fi

        cp "$SOURCE" "$TARGET"
        chmod +x "$TARGET"
        echo "✅ Installed $hook hook"
    else
        echo "⚠️  Warning: $SOURCE not found, skipping"
    fi
done

echo ""
echo "✅ Git Flow Enforcement Hooks installed successfully!"
echo ""
echo "Installed hooks:"
echo "  - pre-commit:  Prevents direct commits to main/develop"
echo "  - commit-msg:  Validates commit message format"
echo "  - pre-push:    Prevents force pushes to protected branches"
echo ""
echo "To uninstall hooks, delete files from: $HOOKS_DIR"
echo ""
