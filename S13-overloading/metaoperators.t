use v6;
use Test;

plan 13;

#L<S06/Operator overloading>

# Define operator, check it works.
sub infix:<wtf>($a, $b) { $a ~ "WTF" ~ $b };
is 'OMG' wtf 'BBQ', 'OMGWTFBBQ', 'basic sanity';

# Assignment meta-op.
my $a = 'OMG';
$a wtf= 'BBQ';
is $a, 'OMGWTFBBQ', 'assignment meta-op';

# Reduce meta-op.
is ([wtf] <OMG BBQ PONIES>), 'OMGWTFBBQWTFPONIES', 'reduce meta-op generated';

# Reverse meta-op.
is 'BBQ' Rwtf 'OMG', 'OMGWTFBBQ', 'reverse meta-op generated';

# Cross meta-op.
is ~('OMG','BBQ' Xwtf 'OMG','BBQ'), 'OMGWTFOMG OMGWTFBBQ BBQWTFOMG BBQWTFBBQ',
    'cross meta-op generated';

# Hyper meta-op (todo: unicode variants, check variants apply correct constraints)
is ~(('OMG','BBQ') >>wtf<< ('BBQ','OMG')), 'OMGWTFBBQ BBQWTFOMG', '>>...<< hyper generated';
is ~(('OMG','BBQ') <<wtf<< ('BBQ','OMG')), 'OMGWTFBBQ BBQWTFOMG', '<<...<< hyper generated';
is ~(('OMG','BBQ') >>wtf>> ('BBQ','OMG')), 'OMGWTFBBQ BBQWTFOMG', '>>...>> hyper generated';
is ~(('OMG','BBQ') <<wtf>> ('BBQ','OMG')), 'OMGWTFBBQ BBQWTFOMG', '<<...>> hyper generated';

# RT #121692
{
    sub foo { $^a ~ $^b };
    is ([[&foo]] <a b c d e>), 'abcde', "can we use a sub as an reduce op between [[]]";
}

# RT #122332
{
    sub foo ($a, $b) { $a * $b };
    is (2 [&foo] 3 [&foo] 4), 24, "can we use a sub as an infix op between []";
}

# RT #130998
{
    is([+](^20 .grep: *.is-prime), 77, "can we use &infix:<.> as argument for []");
}

# RT #130610
{
    is-deeply(
        [\,](<a b>, <c d>, <e f>), $(
            ($("a", "b"),),
            ($("a", "b"), $("c", "d")),
            ($("a", "b"), $("c", "d"), $("e", "f"))
        ),
        "Triangular reduce with &infix:<,> and a list of lists shouldn't flatern"
    )
}

# vim: ft=perl6
