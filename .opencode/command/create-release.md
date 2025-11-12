---
description: Create new release with incremented version
---

Get the latest version tag and create a new release with an incremented version number.

First, let's check the current latest tag:

!`git tag --sort=-version:refname | head -1`

Now analyze the current version and increment it. If the latest tag is v1.0.0, the next should be v1.0.1. If it's v1.1.0, the next should be v1.1.1, etc.

Please:

1. Parse the latest version number
2. Increment the patch version (the last number)
3. Create the new tag
4. Push the tag to remote
5. Create a GitHub release for the new tag

The release notes should include:

- Summary of changes since the last release
- List of modified files (if any)
- Any new features or improvements

Use the gh CLI to create the release with appropriate notes based on recent commits.
