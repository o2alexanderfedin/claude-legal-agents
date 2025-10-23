# Contributing to Claude Legal Agents

Thank you for your interest in improving this legal agent system.

## Development Principles

**You MUST always and religiously follow:**<br/>
- **KISS** (Keep It Simple, Stupid)<br/>
- **DRY** (Don't Repeat Yourself)<br/>
- **YAGNI** (You Aren't Gonna Need It)<br/>
- **TRIZ** (Systematic Innovation Principles)

## How to Contribute

### Reporting Issues

**Use GitHub Issues for:**<br/>
- Agent prompt errors or inconsistencies<br/>
- Outdated legal information<br/>
- Missing legal practice areas<br/>
- Documentation improvements

**Include:**<br/>
- Clear description of the issue<br/>
- Agent name (if applicable)<br/>
- Expected vs actual behavior<br/>
- Steps to reproduce

### Suggesting Improvements

**Before submitting:**<br/>
1. Check existing issues and PRs<br/>
2. Verify the improvement aligns with project principles (KISS, DRY, YAGNI)<br/>
3. Consider if it adds real value

**Submit via:**<br/>
- GitHub Issues (for discussion)<br/>
- Pull Requests (for implementation)

### Making Changes

**Git Flow Process:**

1. **Fork and clone** the repository
2. **Install git hooks (recommended):**
   ```bash
   ./.githooks/setup-hooks.sh
   ```
   This installs hooks that enforce git flow and prevent common mistakes.

3. **Create feature branch:**
   ```bash
   git flow feature start your-feature-name
   ```
4. **Make changes:**<br/>
   - Update agent prompts (`.claude/prompts/`)<br/>
   - Update agent configs (`.claude/agents/`) if needed<br/>
   - Follow existing structure and style
5. **Commit with descriptive messages:**
   ```bash
   git commit -m "Brief description of change"
   ```
6. **Finish feature:**
   ```bash
   git flow feature finish your-feature-name
   ```
7. **Push and create PR:**
   ```bash
   git push origin develop
   ```

### Agent Prompt Guidelines

**When updating prompts:**

✅ **DO:**<br/>
- Maintain mandatory timestamp protocol<br/>
- Include web search verification requirements<br/>
- Keep jurisdiction-specific analysis<br/>
- Preserve ethical framework and disclaimers<br/>
- Use clear, precise language<br/>
- Cite legal authority when adding new content

❌ **DON'T:**<br/>
- Add unnecessary complexity<br/>
- Duplicate information across agents<br/>
- Remove critical safety disclaimers<br/>
- Add content without legal verification<br/>
- Use ambiguous or vague language

### Code of Conduct

**Expected Behavior:**<br/>
- Professional and respectful communication<br/>
- Constructive feedback<br/>
- Focus on improving legal accuracy and user safety<br/>
- Acknowledge limitations of AI legal tools

**Unacceptable:**<br/>
- Harassment or discrimination<br/>
- Providing actual legal advice through contributions<br/>
- Submitting unverified legal information<br/>
- Violating ethical guidelines

## Git Flow Enforcement

**Automated git hooks protect repository integrity:**

This repository uses git hooks to enforce proper git flow workflow. After cloning, run:

```bash
./.githooks/setup-hooks.sh
```

**What the hooks enforce:**<br/>
- **No direct commits** to `main` or `develop` branches<br/>
- **Meaningful commit messages** (minimum 10 characters)<br/>
- **No force pushes** to protected branches<br/>
- **Proper git flow usage** for all changes

**If a hook blocks your action:**<br/>
- The hook is working correctly<br/>
- Follow the suggested git flow commands<br/>
- Do not use `--no-verify` unless absolutely necessary

See [.githooks/README.md](.githooks/README.md) for details.

## Review Process

**All contributions will be reviewed for:**<br/>
1. **Legal Accuracy** - Information must be current and correct<br/>
2. **Compliance** - Must follow development principles<br/>
3. **Safety** - Appropriate disclaimers and warnings<br/>
4. **Quality** - Clear, concise, well-structured

**Timeline:**<br/>
- Initial review: Within 7 days<br/>
- Feedback provided via PR comments<br/>
- Revisions may be requested

## Questions?

**For questions about:**<br/>
- **Contributing:** Open a GitHub Issue<br/>
- **Legal Content:** Consult licensed attorneys<br/>
- **Technical Issues:** Check GitHub Issues or create new one

---

**Remember:** This project provides legal information, not legal advice. All contributions must maintain this distinction and include appropriate disclaimers.
