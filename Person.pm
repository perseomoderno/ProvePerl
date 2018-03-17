#!/usr/bin/perl

package Person;

# variabile statica (la stessa condivisa fra tutte le istanze)
$personCounter = 0;

sub new
{
	my ($class, $name, $surname) = @_;

 # creazione nuovo riferimento ad hash con i dati (stato) dell'oggetto
  my $self = {  name    => $name,   # puo' essere usato $this in luogo di $self: sono equivalenti
				surname => $surname,
			};

  # associo il riferimento alla classe
  bless( $self, $class );  # puo' essere usato $this in luogo di $self: sono equivalenti
		  
  # incremento il contatore di istanze create
  $personCounter++;

  print STDERR "\nCreazione di un nuovo oggetto di tipo (primo) $class (numero: $personCounter)\n";

 # restituisco il riferimento appena creato
 return $self;	# puo' essere usato $this in luogo di $self: sono equivalenti  

}		  

sub getNome
{
   my ($self) = @_;   # puo' essere usato $this in luogo di $self: sono equivalenti

    # restituisco il dato richiesto
    return  $self->{name};   # puo' essere usato $this in luogo di $self: sono equivalenti
}

sub getCognome
{
   my ($self) = @_; # puo' essere usato $this in luogo di $self: sono equivalenti

   # restituisco il dato richiesto
   return $self->{surname}; # puo' essere usato $this in luogo di $self: sono equivalenti
}
1
