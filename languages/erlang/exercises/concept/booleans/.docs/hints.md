### General

- There are six [boolean operators][operators] to work with boolean values.
- The two operators `and` and `or` should, in general, not be used.
- Multiple operators can be combined in a single expression.

### 1. Check if a fast attack can be made

- Unlike many other languages, boolean negation is _not_ done with a `!` or `~` operator.

### 2. Check if the group can be spied upon

- The group can be spied upon if any of the three characters, the knight _or_ the archer _or_ the prisoner, is awake.

### 3. Check if the prisoner can be signalled

- The prisoner can be signalled if she is awake _and_ the archer is _not_ awake.

### 4. Check if the prisoner can be freed.

- The prisoner can be freed under two different conditions. The first one _or_ the second one must be fulfilled.
- You can use parentheses in order to group boolean operations, this is a good way to get better readability of the two conditions.
- Grouping boolean expressions with parentheses will also affect the order in which they are applied. Compare, for example, the results of `not true andalso false` with that of `not (true andalso false)`.

[operators]: https://erlang.org/doc/reference_manual/expressions.html#boolean-expressions
