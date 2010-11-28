

package Book;
use strict;
use warnings;

sub new {
	my $this = shift;
	my $hash={
	 name => shift
	};

	bless $hash,$this;
}

sub getName {
	my $this = shift;
	return $this->{name};
}
1;
