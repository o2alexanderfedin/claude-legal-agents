# Git Flow Enforcement Hooks

Automated git hooks to enforce git flow workflow and protect repository integrity.

## What These Hooks Do

### `pre-commit`
**Prevents direct commits to protected branches**<br/>
- Blocks commits to `main`, `master`, and `develop`<br/>
- Ensures all work goes through proper git flow branches<br/>
- Guides developers to use `git flow` commands

### `commit-msg`
**Validates commit message quality**<br/>
- Enforces minimum message length (10 characters)<br/>
- Warns about generic messages (wip, test, fix, etc.)<br/>
- Ensures meaningful commit history

### `pre-push`
**Prevents force pushes to protected branches**<br/>
- Blocks `git push --force` to `main`, `master`, `develop`<br/>
- Warns when pushing to `main` from non-release/hotfix branches<br/>
- Protects shared branch history

## Installation

### Automatic (Recommended)

```bash
./.githooks/setup-hooks.sh
```

### Manual

```bash
cp .githooks/pre-commit .git/hooks/
cp .githooks/commit-msg .git/hooks/
cp .githooks/pre-push .git/hooks/
chmod +x .git/hooks/pre-commit .git/hooks/commit-msg .git/hooks/pre-push
```

### Git Config (Alternative)

Configure git to use `.githooks` directory:

```bash
git config core.hooksPath .githooks
```

## Usage

Once installed, hooks run automatically:

**Attempting direct commit to main:**
```bash
$ git checkout main
$ git commit -m "fix"
❌ COMMIT REJECTED - Git Flow Enforcement

Direct commits to 'main' are not allowed.

Please use git flow commands:
  git flow feature start <feature-name>
```

**Attempting force push:**
```bash
$ git push --force origin main
❌ PUSH REJECTED - Git Flow Enforcement

Force push to 'main' is not allowed.
```

## Bypassing Hooks (Emergency Only)

**⚠️ Not recommended - only for emergencies**

```bash
git commit --no-verify
git push --no-verify
```

## Uninstallation

```bash
rm .git/hooks/pre-commit
rm .git/hooks/commit-msg
rm .git/hooks/pre-push
```

Or if using core.hooksPath:

```bash
git config --unset core.hooksPath
```

## Protected Branches

- `main` / `master` - Production releases only<br/>
- `develop` - Development integration branch

## Proper Git Flow Workflow

**New Feature:**
```bash
git flow feature start my-feature
# ... make changes ...
git add .
git commit -m "Add new feature"
git flow feature finish my-feature
```

**Release:**
```bash
git flow release start 1.2.0
# ... bump version, final fixes ...
git flow release finish 1.2.0
git push origin main develop --tags
```

**Hotfix:**
```bash
git flow hotfix start 1.2.1
# ... fix critical bug ...
git flow hotfix finish 1.2.1
git push origin main develop --tags
```

## Troubleshooting

**Hook not running:**<br/>
- Check file permissions: `ls -la .git/hooks/`<br/>
- Ensure hooks are executable: `chmod +x .git/hooks/*`<br/>
- Verify hook path: `git config core.hooksPath`

**Hook blocking legitimate action:**<br/>
- Contact repository maintainer<br/>
- Use `--no-verify` only if absolutely necessary

## Contributing

To modify hooks:<br/>
1. Edit files in `.githooks/` directory<br/>
2. Test thoroughly<br/>
3. Run setup script to reinstall<br/>
4. Commit changes to version control
