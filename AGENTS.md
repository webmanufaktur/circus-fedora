# Fedora Circus - Agent Guidelines

## Build/Lint/Test Commands
- Run all installers: `bash install-all.sh`
- Run individual installer: `bash apps/install-[appname].sh`
- Test installer syntax: `bash -n apps/install-[appname].sh`

## Code Style Guidelines

### Bash Scripting
- Use `#!/usr/bin/env bash` shebang
- Always include `set -euo pipefail` for error handling
- Use `$()` for command substitution, not backticks
- Quote variables: `"$VAR"` not `$VAR`
- Use `[[ ]]` for conditional tests, not `[ ]`
- Indent with 2 spaces
- End files with newline

### Naming Conventions
- Installer scripts: `install-[appname].sh`
- Variables: `UPPER_SNAKE_CASE` for constants, `lower_snake_case` for variables
- Functions: `lower_snake_case()`

### Error Handling
- Check directory existence before operations
- Use meaningful error messages with exit codes
- Validate file paths and permissions

### Structure
- Keep installers focused on single applications
- Use sudo only when necessary
- Follow dnf package manager conventions for Fedora