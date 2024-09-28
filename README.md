# Makefile

Lists are space-separated

The syntax `$(VAR:%.x=a/%.y)` performs a substitution on the whole
list.

The `vars` target is a cool way to debug makefiles, it's just a target
that prints the values of some variables.

Normally Make will print every command it runs.  If we put a `@` before it, then
it will run the command without printing it.  This is nice when the command
itself is a printing command.

The rules `out: in1 in2 in3...` say that `out` is created from `in1 in2 in3...`
and here are the commands to make that happen.  Those commands are called a
recipe.  Inside the recipe, we can use special variables `$@`, `$<`, and `$^`.
- `$@`: the thing to build (left of `:`)
- `$^`: All the dependencies (right of `:`)
- `$<`: The first dependency (`in1`).

# build.sh

Rather than using names like angklung and doing `$1.ly`, I use full names
because that allows us to to put full filenames in the Makefile which is
easier.

And in the script, we can just get the filename without the `.ly` by removing
it with `${1%.*}` or `${1%.ly}` (where ${var%_} removes `_` from the end and
`${var#_}` removes `_` from the start, and there are ${var##_} and ${var%%}
which are greedier).


