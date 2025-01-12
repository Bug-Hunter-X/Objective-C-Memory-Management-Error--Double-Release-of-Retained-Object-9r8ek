# Objective-C Memory Management Bug: Double Release

This repository demonstrates a common Objective-C memory management error involving the double-release of a retained object.  The bug is present in `bug.m`, and the solution is provided in `bugSolution.m`.

The bug highlights a crucial concept in manual memory management: understanding object ownership and the potential for multiple retains.  The example uses `retain` and `release` but the underlying principles apply even in Automatic Reference Counting (ARC) scenarios, especially when interacting with legacy code or handling specific object lifecycles.

This simple example serves as a cautionary tale to emphasize careful attention to memory management best practices in Objective-C.

## Reproduction

1. Clone the repository.
2. Open the project in Xcode.
3. Run the `bug.m` version (expect a crash).
4. Run the `bugSolution.m` version (expect successful execution).