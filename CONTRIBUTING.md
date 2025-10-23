# Contributing to Claude Legal Agents

Thank you for your interest in improving this legal agent system.

## Development Principles

**You MUST always and religiously follow:**
- **KISS** (Keep It Simple, Stupid)
- **DRY** (Don't Repeat Yourself)
- **YAGNI** (You Aren't Gonna Need It)
- **TRIZ** (Systematic Innovation Principles)

## How to Contribute

### Reporting Issues

**Use GitHub Issues for:**
- Agent prompt errors or inconsistencies
- Outdated legal information
- Missing legal practice areas
- Documentation improvements

**Include:**
- Clear description of the issue
- Agent name (if applicable)
- Expected vs actual behavior
- Steps to reproduce

### Suggesting Improvements

**Before submitting:**
1. Check existing issues and PRs
2. Verify the improvement aligns with project principles (KISS, DRY, YAGNI)
3. Consider if it adds real value

**Submit via:**
- GitHub Issues (for discussion)
- Pull Requests (for implementation)

### Making Changes

**Git Flow Process:**

1. **Fork and clone** the repository
2. **Create feature branch:**
   ```bash
   git flow feature start your-feature-name
   ```
3. **Make changes:**
   - Update agent prompts (`.claude/prompts/`)
   - Update agent configs (`.claude/agents/`) if needed
   - Follow existing structure and style
4. **Commit with descriptive messages:**
   ```bash
   git commit -m "Brief description of change"
   ```
5. **Finish feature:**
   ```bash
   git flow feature finish your-feature-name
   ```
6. **Push and create PR:**
   ```bash
   git push origin develop
   ```

### Agent Prompt Guidelines

**When updating prompts:**

✅ **DO:**
- Maintain mandatory timestamp protocol
- Include web search verification requirements
- Keep jurisdiction-specific analysis
- Preserve ethical framework and disclaimers
- Use clear, precise language
- Cite legal authority when adding new content

❌ **DON'T:**
- Add unnecessary complexity
- Duplicate information across agents
- Remove critical safety disclaimers
- Add content without legal verification
- Use ambiguous or vague language

### Code of Conduct

**Expected Behavior:**
- Professional and respectful communication
- Constructive feedback
- Focus on improving legal accuracy and user safety
- Acknowledge limitations of AI legal tools

**Unacceptable:**
- Harassment or discrimination
- Providing actual legal advice through contributions
- Submitting unverified legal information
- Violating ethical guidelines

## Review Process

**All contributions will be reviewed for:**
1. **Legal Accuracy** - Information must be current and correct
2. **Compliance** - Must follow development principles
3. **Safety** - Appropriate disclaimers and warnings
4. **Quality** - Clear, concise, well-structured

**Timeline:**
- Initial review: Within 7 days
- Feedback provided via PR comments
- Revisions may be requested

## Questions?

**For questions about:**
- **Contributing:** Open a GitHub Issue
- **Legal Content:** Consult licensed attorneys
- **Technical Issues:** Check GitHub Issues or create new one

---

**Remember:** This project provides legal information, not legal advice. All contributions must maintain this distinction and include appropriate disclaimers.
