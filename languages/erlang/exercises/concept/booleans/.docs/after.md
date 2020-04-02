Booleans in Erlang are represented by the atoms `true` and `false`.

Erlang supports six [boolean operators][operators]: `not` (NOT), `andalso` (AND), `orelse` (OR), which use _short-circuit evaluation_, meaning that the right-hand side of the operator is only evaluated when needed, as well as `and`, `or` and `xor`, which do _not_ use short-circuit evaluation, meaning that both sides are always evaluated.

`and` and `or` are generally avoided as they can lead to unwanted side-effects, but you may encounter them anyway, especially in older code.

```erlang
true orelse false %% => true
true andalso false %% => false
true xor true %% => false
```

The boolean operators each have a different [_operator precedence_][precedence]. As a consequence, they are evaluated in this order:
1. `not`
2. `and`
3. `or` and `xor`
4. `andalso`
5. `orelse`

To change the order a chain of boolean expressions is evaluated, you can enclose a boolean expression in parentheses (`()`), as the parentheses have an even higher operator precedence.

```erlang
not true andalso false %% => false
not (true andalso false) %% => true

true xor true andalso false %% => false
true xor (true andalso false) %% => true
```

[operators]: https://erlang.org/doc/reference_manual/expressions.html#boolean-expressions
[precedence]: https://erlang.org/doc/reference_manual/expressions.html#operator-precedence
