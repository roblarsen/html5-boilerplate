# AGENTS Guide

This file is the canonical guidance for AI coding assistants that work on this repository.

## Scope

- This guidance applies to the whole repository.
- If a task has tighter instructions in a nested AGENTS file, follow the nested file for that subtree.

## Project goals

- Keep the distributed starter in dist predictable and minimal.
- Preserve compatibility for existing users.
- Prefer small, reviewable changes.

## Working rules

- Follow existing code style and file conventions.
- Do not change unrelated files.
- Update tests when shipped files change.
- Keep developer-facing docs current when behavior changes.

## Common commands

- Install: npm install
- Build: npm run build
- Test: npm test
- Lint: npm run lint

## Build and release notes

- dist is generated from src via gulp tasks.
- If you add a file that should ship, add it under src and update tests that assert dist contents.
