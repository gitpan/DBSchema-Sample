#!/usr/bin/perl

#=====================================================================
# DECLARATIONS
#=====================================================================
use strict;
use DBSchema::Sample;

my $dbh = dbh();
my $sql = DBSchema::Sample->sql;

#=====================================================================
#  PROGRAM PROPER
#=====================================================================


for (@$sql) {
    warn $_;
    $dbh->do($_); 
}


#=====================================================================
#  SUBROUTINES
#=====================================================================

#
# modify for your method of getting $dbh (DBI database handles)
#

sub dbh {
    use DBIx::Connect;

    my $dbh = DBIx::Connect->to('horse1_test');

}

1; 

