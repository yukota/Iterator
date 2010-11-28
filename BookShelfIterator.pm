
#スキャンを行う
package BookShelfIterator;
use warnings;
use strict;

#iteratorクラスを継承
use base "Iterator";

sub new{
	my $this = shift;
	my $hash = {
		bookshelf => shift,
		indexpoint => 0
	};

	bless $hash,$this;
}

#列に次の要素があるか
sub hasNext{
	my $this = shift;
	if($this->{indexpoint} < $this->{bookshelf}->getLength()){
		return 1;
	}else{
		return 0;
	}
}

#次は何か
sub next{
	my $this =shift;
	my $book = $this->{bookshelf}->getBookAt($this->{indexpoint});
	$this -> {indexpoint}++;
	return $book;
}
1;
