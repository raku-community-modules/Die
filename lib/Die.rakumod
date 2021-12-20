multi sub die (Cool:D $msg where .ends-with: "\n") is export {
    note $msg.chop;
    exit 1;
}

=begin pod

=head1 NAME

Die - Perl like die routine for note + exit

=head1 SYNOPSIS

=begin code :lang<raku>

use Die;

die "I don't like you, bruh\n"; # new line at the end == no stack trace
die "something looks broken";   # no new line at end == stack trace
die X::SomeShinyException.new;  # this still works like normal

=end code

=head1 DESCRIPTION

Raku avoids many magics prevalent in Perl land, among which is automatically
omitting the stack trace if the C<&die> routine is given a string with a new
line at the end.

In Raku, you do the same with C<note "foo" and exit 1>... or use this shiny
module that adds Perl behaviour to `&die`

=head1 EXPORTS

=head2 &die

=begin code :lang<raku>

die "I don't like you, bruh\n"; # new line at the end == no stack trace
die "something looks broken";   # no new line at end == full stack trace
die X::SomeShinyException.new;  # this still works like normal

=end code

Works just like core C<&die> except stack trace will be omitted if you
include a newline at the end of the die message.

Note that Perl's C<&die> exits with status C<255>, while core Raku C<&die>
and this module's C<&die> exit with status C<1>.

=head1 AUTHOR

Zoffix Znet

Source can be located at: https://github.com/raku-community-modules/Die .
Comments and Pull Requests are welcome.

=head1 COPYRIGHT AND LICENSE

Copyright 2017, 2018 Zoffix Znet, 2021- Raku Community

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod

# vim: expandtab shiftwidth=4
