# Claude Configuration

This repository contains configuration files and templates for Claude AI assistant interactions, including specialized agents, custom commands, and workflow automation.

## Structure

```
.claude/
├── README.md                   # This file
├── CLAUDE.md                   # Main configuration and rules
├── .gitignore                  # Excludes personal data from version control
├── agents/                     # Specialized AI agents for different domains
├── commands/                   # Custom slash commands for common tasks
└── hooks/                      # Shell scripts for automation
```

## Components

### 📋 Configuration (`CLAUDE.md`)
The main configuration file containing:
- Default mode settings (Architect mode enabled)
- Code style guidelines and consistency rules
- Communication preferences and formatting rules
- Commit message conventions
- Knowledge sharing and persistence guidelines

### 🤖 Agents (`agents/`)
Specialized AI agents for different domains:
- **api-designer**: RESTful API design and review
- **aviation-domain-expert**: Flight computer algorithms and aviation theory
- **cargo-specialist**: Rust Cargo and dependency management
- **code-reviewer**: Comprehensive code quality review
- **cpp-expert**: Modern C++ patterns and optimization
- **cross-platform-ui-specialist**: UI rendering and touch interfaces
- **database-optimizer**: SQL query optimization and schema design
- **dependency-analyst**: Dependency updates and security analysis
- **devops-engineer**: Infrastructure and deployment automation
- **documentation-writer**: Technical documentation and API docs
- **geospatial-mapping-specialist**: Map rendering and coordinate systems
- **integration-tester**: End-to-end testing strategies
- **migration-specialist**: Safe database migrations and refactoring
- **mobile-android-specialist**: Android NDK development and optimization
- **nmea-protocol-specialist**: NMEA sentence parsing and GPS data handling
- **performance-engineer**: Performance profiling and optimization
- **rust-expert**: Idiomatic Rust patterns and best practices
- **security-auditor**: Security vulnerability assessment
- **supply-chain-reviewer**: Dependency risk assessment and auditing
- **test-automator**: Comprehensive testing strategies

### ⚡ Commands (`commands/`)
Custom slash commands for common workflows:
- **1-commit**: Interactive git commit with message suggestions
- **2-commit-fast**: Fast git commit using first suggested message
- **3-pull-request**: Generate pull request titles and descriptions

### 🔧 Hooks (`hooks/`)
Shell scripts for automation:
- **format.sh**: Code formatting automation
- **notify.sh**: Desktop notifications for task completion

## Usage

### Setting Up
1. Clone or copy these configuration files to your `~/.claude/` directory
2. Customize `CLAUDE.md` with your project-specific preferences
3. Enable any desired hooks in your Claude settings

### Using Agents
Agents are automatically suggested by Claude when working on relevant tasks, or you can explicitly request them:
- "Use the rust-expert agent to review this code"
- "I need the database-optimizer for this SQL query"

### Using Commands
Commands are available as slash commands in Claude:
- `/1-commit` - Interactive commit process
- `/2-commit-fast` - Quick commit with auto-selected message  
- `/3-pull-request` - Generate PR descriptions

## Customization

### Adding New Agents
Create new `.md` files in the `agents/` directory following this format:
```markdown
---
name: agent-name
description: When to use this agent
tools: Read, Write, Bash
model: sonnet
---

Agent instructions and expertise areas...
```

### Modifying Commands
Edit the `.md` files in `commands/` to customize the command behavior. All command files are marked as `read_only: true` to prevent accidental modification during execution.

### Personal vs Shared Files
The `.gitignore` file excludes personal data while allowing shared configuration:
- ✅ **Shared**: Agent definitions, commands, hooks, documentation
- ❌ **Private**: Personal settings, conversation history, project data

## Contributing

When contributing to shared configurations:
1. Ensure no personal information (paths, API keys, etc.) is included
2. Test configurations thoroughly before committing
3. Document any new agents or commands clearly
4. Follow the existing naming and structure conventions
