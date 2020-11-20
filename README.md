[![Build Status](https://travis-ci.org/zoffixznet/perl6-Die.svg)](https://travis-ci.org/zoffixznet/perl6-Die)

# NAME

Die - Perl like die routine for note + exit

# SYNOPSIS

```raku
    use Die;

    die "I don't like you, bruh\n"; # new line at the end == no stack trace
    die "something looks broken";   # no new line at end == stack trace
    die X::SomeShinyException.new;  # this still works like normal
```

# DESCRIPTION

Raku avoids many magics prevalent in Perl land, among which is automatically
omitting the stack trace if the `&die` routine is given a string with a new
line at the end.

In Raku, you do the same with `note "foo" and exit 1`... or use this shiny
module that adds Perl behaviour to `&die`

# EXPORTS

## `&die`

```raku
    die "I don't like you, bruh\n"; # new line at the end == no stack trace
    die "something looks broken";   # no new line at end == full stack trace
    die X::SomeShinyException.new;  # this still works like normal
```

Works just like core `&die` except stack trace will be omitted if you
include a newline at the end of the die message.

Note that Perl's `&die` exits with status `255`, while core Raku `&die` and
this module's `&die` exit with status `1`.

----

#### REPOSITORY

Fork this module on GitHub:
https://github.com/raku-community-modules/Die

#### BUGS

To report bugs or request features, please use
https://github.com/raku-community-modules/Die/issues

#### AUTHOR

Zoffix Znet (https://perl6.party/)

#### LICENSE

You can use and distribute this module under the terms of the
The Artistic License 2.0. See the `LICENSE` file included in this
distribution for complete details.
