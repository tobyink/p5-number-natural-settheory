=head1 PURPOSE

Test C<set_to_string>.

=head1 AUTHOR

Toby Inkster E<lt>tobyink@cpan.orgE<gt>.

=head1 COPYRIGHT AND LICENCE

This software is copyright (c) 2011-2012 by Toby Inkster.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

use Test::More tests => 4;
use Number::Natural::SetTheory qw/set_to_string/;

is(
	set_to_string([]),
	'{}',
	'Empty set stringified',
	);
	
is(
	set_to_string([[]]),
	'{{}}',
	'One stringified',
	);

is(
	set_to_string([[],[[]]]),
	'{{},{{}}}',
	'Two stringified',
	);

is(
	set_to_string([[],[[]],[[],[[]]]]),
	'{{},{{}},{{},{{}}}}',
	'Three stringified',
	);

