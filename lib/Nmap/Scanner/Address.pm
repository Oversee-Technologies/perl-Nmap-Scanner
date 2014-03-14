use strict;
use Class::Generate qw(class);

class 'Nmap::Scanner::Address' => {
    qw(addr     $
       addrtype $
       vendor   $),
    '&as_xml' => q!return (defined($addr) ? qq(<address addr="$addr" ) : qq(<address addr="" )) .
                          (defined($addrtype) ? qq(addrtype="$addrtype" ) : qq(addrtype="" )) .
                          (defined($vendor) ? qq(vendor="$vendor"/>) : qq(vendor=""/>));!
};

=pod

=head1 DESCRIPTION

This class represents an host address as represented by the scanning output from
nmap.

=head2 addr()

=head2 addrtype()

=head2 vendor()

=cut
