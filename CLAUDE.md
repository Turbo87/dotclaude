# Claude Guide

This file contains project-specific instructions that Claude should read at the start of each conversation and maintain in memory throughout the entire interaction. **IMPORTANT:** Once this file has been read or updated, it MUST be loaded at the beginning of any new conversation to ensure awareness of communication requirements, custom tasks, etc.

## Default Mode

- Architect mode should be enabled by default
- Focus on providing detailed analysis, patterns, trade-offs, and architectural guidance

## Permissions

- Always allowed to use `ls`, `cd`, `mkdir` commands freely to navigate the project
- Always allowed to read all files and list all folder structure needed for task completion
- If user modifies a file between reads, assume the change is intentional
- NEVER modify files on your own initiative - only make changes when explicitly requested
- If you notice something that should be modified, ask about it and wait for explicit permission

## Code Style Guidelines

- **Comments**:
    - Use minimal comments and only in English
    - Add comments only when code clarity is insufficient or to explain non-standard solutions or hard to read / understand code sections

## Communication Style

- NEVER suggest or offer staging files with git add commands
- When asking questions, always provide multiple numbered options when appropriate:

    - Format as a numbered list: `1. Option one, 2. Option two, 3. Option three`
    - Example: `1. Yes, continue with the changes, 2. Modify the approach, 3. Stop and cancel the operation`

- When analyzing code for improvement:

    - Present multiple implementation variants as numbered options
    - For each variant, provide at least 3 bullet points explaining the changes, benefits, and tradeoffs
    - Format as: "1. [short explanation of variant]" followed by explanation points

- When implementing code changes:

    - If the change wasn't preceded by an explanation or specific instructions
    - Include within the diff a bulleted list explaining what was changed and why
    - Explicitly note when a solution is opinionated and explain the reasoning

- When completing a task, ask if I want to:
    1. Run task:commit (need to manually stage files first)
    2. Neither (stop here)

## Code Style Consistency

- ALWAYS respect how things are written in the existing project
- DO NOT invent your own approaches or innovations
- STRICTLY follow the existing style of tests, functions, and arguments
- Before creating a new file, ALWAYS examine a similar file and follow its style exactly
- If code doesn't include comments, DO NOT add comments
- Follow the exact format of error handling, variable naming, and code organization used in similar files
- Never deviate from the established patterns in the codebase

## Code Documentation and Comments

When working with code that contains comments or documentation:

1. Carefully follow all developer instructions and notes in code comments
2. Explicitly confirm that all required steps from comments have been completed
3. Automatically execute all mandatory steps mentioned in comments without requiring additional reminders
4. Treat any comment marked for "developers" or "all developers" as directly applicable to Claude
5. Pay special attention to comments marked as "IMPORTANT", "NOTE", or with similar emphasis

This applies to both code-level comments and documentation in separate files. Comments within the code are binding instructions that must be followed.

## Knowledge Sharing and Persistence

- When asked to remember something, ALWAYS persist this information in a way that's accessible to ALL developers, not just in conversational memory
- Document important information in appropriate files (comments, documentation, README, etc.) so other developers (human or AI) can access it
- Information should be stored in a structured way that follows project conventions
- NEVER keep crucial information only in conversational memory - this creates knowledge silos
- If asked to implement something that won't be accessible to other users/developers in the repository, proactively highlight this issue
- The goal is complete knowledge sharing between ALL developers (human and AI) without exceptions
- When suggesting where to store information, recommend appropriate locations based on the type of information (code comments, documentation files, CLAUDE.md, etc.)

## Commands and Tasks

- Files in the `.claude/commands/` directory contain instructions for automated tasks
- These files are READ-ONLY and should NEVER be modified
- When a command is run, follow the instructions in the file exactly, without trying to improve or modify the file itself
- Command files may include a YAML frontmatter with metadata - respect any `read_only: true` flags

# Tool Usage

- Prefer the git MCP over bash commands for git operations
- Prefer using `rg` (ripgrep) over `grep` for searching files

## Commit Message Style

When creating commit messages, follow these patterns observed in the codebase:

### Structure and Format
- Use present tense imperative mood (e.g., "Add", "Remove", "Fix", "Extract")
- Include module/component/crate prefixes when relevant (e.g., "team_repo:", "controllers/krate:", "util/errors:", "tests:")
- Keep first line under 72 characters when possible

### Common Patterns
1. **Extraction/Refactoring**:
  - "Extract `StructName` struct"
  - "Extract `function_name()` fn"
  - "Move `function()` to dedicated module"

2. **Implementation**:
  - "Implement `TraitName` for `StructName`"
  - "Add support for X"
  - "Replace X with Y"

3. **Removal/Cleanup**:
  - "Remove obsolete `function_name()` fn"
  - "Remove unused X"
  - "Remove `#[macro_use]` for `crate_name`"

4. **Testing**:
  - "Use snapshot testing for X"
  - "Add test case for X"
  - "Update test snapshots"

5. **Configuration/Dependencies**:
  - "Enable `feature_name` feature of `crate_name`"
  - "Use `new_approach` to simplify X"

### Specific Conventions
- When referencing code elements, use backticks: `function_name()`, `StructName`, `trait_name`
- Use "Fix" for corrections: "Fix tracing level", "Fix font size"
- Use descriptive but concise explanations in commit bodies when needed

### Tone
- **IMPORTANT**: Direct and technical
- Avoid unnecessary words like "the", "a", "an" when they don't add clarity
- Be specific about the change: "Use `let chains` to simplify nested conditional patterns" rather than "Improve code"

# Snapshot testing

- In Rust project, always use `cargo insta accept` instead of `cargo insta review`

# Implementation Plans

- Do NOT include timeline estimation in any implementation plans
