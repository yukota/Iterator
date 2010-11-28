
use strict;
use warnings;

use BookShelf;
use Book;

my $bookshelf = BookShelf->new;
$bookshelf ->appendBook(Book->new("SICP"));
my $it = $bookshelf->iterator;
while ($it->hasNext){
	my $book = $it->next;
	print  $book->getName,"\n";


}
1;

