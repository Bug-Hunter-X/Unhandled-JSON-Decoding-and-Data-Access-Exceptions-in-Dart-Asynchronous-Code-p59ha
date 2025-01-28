# Unhandled JSON Decoding and Data Access Exceptions in Dart

This repository demonstrates a common error in Dart asynchronous programming involving unhandled exceptions during JSON decoding and data access from an API response.  The `bug.dart` file shows the problematic code, while `bugSolution.dart` provides a more robust solution.

## Problem

The original code lacks comprehensive error handling for potential issues such as:

- Network errors (e.g., timeouts, connection problems)
- HTTP errors (non-200 status codes)
- JSON decoding failures (e.g., malformed JSON)
- Missing data keys in the JSON response

These scenarios can lead to unexpected crashes or incorrect behavior.

## Solution

The improved code in `bugSolution.dart` addresses these issues with more thorough error checking and handling.