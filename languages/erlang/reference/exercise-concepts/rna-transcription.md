# Concepts for RNA Transcription
The problem of transcribing a DNA strand to get its RNA complement is twofold:
1: Treat each character of a string one by one
2: Map a DNA nucleotide to its RNA complement.

## General
- Strings: The input is a string, which is the same as a list of characters.
  - Characters: The separate elements of a string are integer values
    representing the ASCII of characters.

## Approaches
- String manipulation
  - Recursion: Since a string is a list of characters, a simple approach is to
    perform recursion on the string and treating one character per iteration.
    - List (de)construction: Usage of the cons operator, `|`, for pattern
      matching in the function head is crucial. It can also be used for creating
      a return value, although an accumulator can also be used for this, in
      which case the function will be tail recursive.
      A function clause for termination is also important.
  - List comprehension: Since a string is a list of characters, it's possible to
    treat each character of a string in separately in a list comprehension,
    by running a function on each element that maps one character to another.
  - `lists:map/2`: Since a string is a list of characters, it's possible to
    use the higher-order function `lists:map/2`
    - Higher-order functions: `lists:map/2` is a function that takes two
      arguments, namely a function and a list. The function returns a new list
     where each element E in the list has had the function applied to it.
  - `string` module: String manipulation and replacement can be achieved with
    the `string` module.
    - If for example `string:replace/3` is used, the concept of the
      `unicode:chardata()` type as well as deep IO lists will be introduced.
- Transcription of a single nucleotide (pair mapping)
  - Function clauses: Pattern matching in function heads can be used to achieve
    mapping between an input and an output.
  - Case clauses: Similar to pattern matching in function heads, pattern
    matching can be done within a single function body with a `case` statement.
  - Property list: A property list, or `proplist`, is a common way to achieve
    key-value mapping.
  - Maps: The map data structure contains key-value pairs.

## List of concepts
- Modules
  - `-export()`
- Variables
  - Variable naming
- Functions
  - Named functions
  - Anonymous functions
  - Higher-order functions
  - Recursive functions
    - Tail recursion
- Pattern matching
  - In function heads
  - In `case` statements
- Maps
- Lists
  - List comprehensions
  - `lists:map/2`
  - Proplists
  - List (de)construction with the cons `|` operator
- Strings
  - Deep IO lists
  - `string` module
- Characters
- Data types
  - Lists
    - Proplists
    - Tuples
    - Strings
  - Integers
    - Chars
  - Functions
  - Maps