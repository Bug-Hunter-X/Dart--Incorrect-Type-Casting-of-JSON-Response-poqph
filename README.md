# Dart JSON Type Casting Bug

This repository demonstrates a common error in Dart when handling JSON responses: incorrect type casting that can lead to runtime exceptions.  The `bug.dart` file contains code that attempts to cast a JSON response to `List<int>`, which fails if the JSON contains non-integer values. The corrected version is in `bugSolution.dart`.

**Problem:**
The original code assumes the JSON response is always an array of integers. If the JSON data contains strings, floats or other data types, a runtime error occurs. 

**Solution:**
The solution uses type checking and error handling to ensure that the JSON data is appropriately handled, preventing unexpected exceptions and crashes.
