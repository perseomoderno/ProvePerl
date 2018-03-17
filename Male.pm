#!/usr/bin/perl

package Male;

use Person;

@ISA = qw(Person);

sub new
{
	my ($class, $name, $surname, $age) = @_;

    # override costruttore
    my $self = $class->SUPER::new( $_[1], $_[2]);
    # Add a new attribute attributes
    $self->{age}   = $age;
    
  
  
  # associo il riferimento alla classe
  bless( $self, $class );  # puo' essere usato $this in luogo di $self: sono equivalenti
		  
  # incremento il contatore di istanze create
  $personCounter++;

  print STDERR "\nCreazione di un nuovo oggetto di tipo (secondo) $class (numero: $personCounter)\n";

 # restituisco il riferimento appena creato
 return $self;	# puo' essere usato $this in luogo di $self: sono equivalenti  

}		  

sub getEta
{
   my ($self) = @_;   # puo' essere usato $this in luogo di $self: sono equivalenti

    # restituisco il dato richiesto
    return  $self->{age};   # puo' essere usato $this in luogo di $self: sono equivalenti
}


1