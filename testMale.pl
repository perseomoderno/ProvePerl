#!/usr/bin/perl

use Male;

use strict;


my $maschio = Male->new( 'Rocco', 'Cardinale', '50' );

print "\nPersona maschio con nome: ", $maschio->getNome(), " - cognome: ", $maschio->getCognome(), " - eta': ", $maschio->getEta();
