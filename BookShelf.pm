
package BookShelf;

use strict;
use warnings;

use base "Aggregate";
use BookShelfIterator;

sub new{
	my $this = shift;
	my $hash={
		books=> shift,
		lasts=>0
	};
	bless $hash,$this;
		
}

sub getBookAt{
	my $this = shift;
	my $indexpoint = shift;
	return $this->{books}[$indexpoint];
}

#要素追加
sub appendBook{
	my $this = shift;
	my $addBook = shift;
	$this ->{books}[$this->{lasts}]= $addBook;
	$this -> {lasts}++;
}


#要素数
sub getLength{
	my $this = shift;
	return $this->{lasts};
}

#イテレータ
#Aggregate.pmのイテレータをオーバーライド
sub iterator{
	my $this = shift;
	return BookShelfIterator->new($this); 


}

1;
