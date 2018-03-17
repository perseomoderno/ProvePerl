#!/usr/bin/perl

use Person;

use strict;

my $prima_persona = Person->new('Ninni', 'Cardinale');
my $seconda_persona = Person->new('Esperanza', 'Garcia');

print STDERR "\nPersona con nome: ", $prima_persona->getNome(), " ", $prima_persona->getCognome();
print STDERR "\nAltra persona con nome: ", $seconda_persona->getNome(), " ", $seconda_persona->getCognome();

print STDERR "\n\n";
