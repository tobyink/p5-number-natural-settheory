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

