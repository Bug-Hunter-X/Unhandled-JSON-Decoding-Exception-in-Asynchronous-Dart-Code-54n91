# Unhandled JSON Decoding Exception in Asynchronous Dart Code

This repository demonstrates a common error in Dart when handling asynchronous operations and JSON decoding. The original code lacks explicit error handling for `jsonDecode`, which can lead to runtime exceptions if the server returns malformed or unexpected JSON data. The solution provides robust error handling to prevent application crashes.

## Bug
The `bug.dart` file contains the flawed code that attempts to fetch and parse JSON data without adequate error checks during the decoding process.

## Solution
The `bugSolution.dart` file offers a corrected version.  The solution adds a `try-catch` block around the `jsonDecode` call to gracefully handle potential `FormatException` errors, which occur when the JSON string is invalid.  This prevents application crashes and allows for more appropriate error handling.