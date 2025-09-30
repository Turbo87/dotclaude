---
title: 'Write Pull Request Description'
read_only: true
type: 'command'
---

# Create a pull request title and description

- Analyze the content of the current git branch
- Generate 5 pull request titles and descriptions
- Save the suggestions to the `pr.md` file
- The title of the pull request should be concise and descriptive, summarizing the main changes made in the branch
- The descriptions should provide a short overview of the changes, including:
  - What was changed
  - Why the changes were made
  - Any relevant context or background information
- The descriptions should be written in a professional and neutral tone using prose text
- The descriptions should start with "This pull request"

## Examples of Good Pull Request Titles

- components/Header: Fix username retrieval issues on initial render
- alerts: New notification module for system and maintenance type of alerts
- queue-payment-processing: Moved generateMonthlyStatementJob to queue from admin
- admin: New action for creating manual adjustments in user profile
- og_image: Add `OgImageGenerator` struct
