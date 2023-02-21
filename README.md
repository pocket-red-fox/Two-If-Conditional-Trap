# Two if conditional trap

This code provides how we can get to an error with in two if conditions inside Bloc emitting.

## Explanation

The problem is related to the fact that the emit method is't the end result point of the BLoC Event.

In the problem BLoC implementation, after the state change in the first if block, the second one 'll work in 100% case, which means the reverse change of the state to the first one.
In the normal BLoC implementation, after the state change in the if block, the second emit in else block can never be called, which means we 'll not fall into the trap.

We encountered this problem when switching states on the page by pressing the spec button

- СС danwirele
- CC pocket-red-fox
