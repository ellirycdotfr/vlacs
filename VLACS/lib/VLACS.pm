package VLACS;

use warnings;
use strict;
use Data::Dumper;
use Sys::Syslog;


=head1 NAME

VLACS - tr069 ACS Server

=head1 VERSION

Version 0.01

=cut

use Exporter;
our @ISA    = qw(Exporter);
our @EXPORT = qw();
our @EXPORT_OK = qw();

our $VERSION = '0.01';

=head1 SYNOPSIS

    use VLACS;

=head1 Function

=head2 first_answer

 $xml = first_answer($id);

=cut

sub first_answer {
    my ($id) = @_;
    return
        '<SOAP-ENV:Envelope xmlns:SOAP-ENC="http://schemas.xmlsoap.org/soap/encoding/" xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:cwmp="urn:dslforum-org:cwmp-1-0" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
        <SOAP-ENV:Header>
                <cwmp:ID SOAP-ENV:mustUnderstand="1">' . $id . '</cwmp:ID>
                <cwmp:NoMoreRequests>0</cwmp:NoMoreRequests>
        </SOAP-ENV:Header>
        <SOAP-ENV:Body>
                <cwmp:InformResponse xmlns:cwmp="urn:dslforum-org:cwmp-1-0">
                        <MaxEnvelopes>1</MaxEnvelopes>
                </cwmp:InformResponse>
        </SOAP-ENV:Body>
</SOAP-ENV:Envelope>';
}

=head2 Function

 $xml = first_answer($id);

=cut


=head1 AUTHOR

Cyrille Hombecq, C<< <cyrille.hombecq at gmail.com> >>

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc VLACS


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=VLACS>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/VLACS>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/VLACS>

=item * Search CPAN

L<http://search.cpan.org/dist/VLACS/>

=back

=head1 COPYRIGHT & LICENSE

Copyright 2014 Cyrille Hombecq, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.


=cut

1; # End of VLACS
