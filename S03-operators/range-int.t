use v6;
use Test;
plan 480;

is ~(-17..-19), '', '-17..-19';
is ~(-17..^-19), '', '-17..^-19';
is ~(-17^..-19), '', '-17^..-19';
is ~(-17^..^-19), '', '-17^..^-19';
is ~(-17..-18), '', '-17..-18';
is ~(-17..^-18), '', '-17..^-18';
is ~(-17^..-18), '', '-17^..-18';
is ~(-17^..^-18), '', '-17^..^-18';
is ~(-17..-17), '-17', '-17..-17';
is ~(-17..^-17), '', '-17..^-17';
is ~(-17^..-17), '', '-17^..-17';
is ~(-17^..^-17), '', '-17^..^-17';
is ~(-17..-16), '-17 -16', '-17..-16';
is ~(-17..^-16), '-17', '-17..^-16';
is ~(-17^..-16), '-16', '-17^..-16';
is ~(-17^..^-16), '', '-17^..^-16';
is ~(-17..-15), '-17 -16 -15', '-17..-15';
is ~(-17..^-15), '-17 -16', '-17..^-15';
is ~(-17^..-15), '-16 -15', '-17^..-15';
is ~(-17^..^-15), '-16', '-17^..^-15';
is ~(-17..-14), '-17 -16 -15 -14', '-17..-14';
is ~(-17..^-14), '-17 -16 -15', '-17..^-14';
is ~(-17^..-14), '-16 -15 -14', '-17^..-14';
is ~(-17^..^-14), '-16 -15', '-17^..^-14';
is ~(-17..-13), '-17 -16 -15 -14 -13', '-17..-13';
is ~(-17..^-13), '-17 -16 -15 -14', '-17..^-13';
is ~(-17^..-13), '-16 -15 -14 -13', '-17^..-13';
is ~(-17^..^-13), '-16 -15 -14', '-17^..^-13';
is ~(-17..-12), '-17 -16 -15 -14 -13 -12', '-17..-12';
is ~(-17..^-12), '-17 -16 -15 -14 -13', '-17..^-12';
is ~(-17^..-12), '-16 -15 -14 -13 -12', '-17^..-12';
is ~(-17^..^-12), '-16 -15 -14 -13', '-17^..^-12';
is ~(-17..-11), '-17 -16 -15 -14 -13 -12 -11', '-17..-11';
is ~(-17..^-11), '-17 -16 -15 -14 -13 -12', '-17..^-11';
is ~(-17^..-11), '-16 -15 -14 -13 -12 -11', '-17^..-11';
is ~(-17^..^-11), '-16 -15 -14 -13 -12', '-17^..^-11';
is ~(-17..-10), '-17 -16 -15 -14 -13 -12 -11 -10', '-17..-10';
is ~(-17..^-10), '-17 -16 -15 -14 -13 -12 -11', '-17..^-10';
is ~(-17^..-10), '-16 -15 -14 -13 -12 -11 -10', '-17^..-10';
is ~(-17^..^-10), '-16 -15 -14 -13 -12 -11', '-17^..^-10';
is ~(-17..-9), '-17 -16 -15 -14 -13 -12 -11 -10 -9', '-17..-9';
is ~(-17..^-9), '-17 -16 -15 -14 -13 -12 -11 -10', '-17..^-9';
is ~(-17^..-9), '-16 -15 -14 -13 -12 -11 -10 -9', '-17^..-9';
is ~(-17^..^-9), '-16 -15 -14 -13 -12 -11 -10', '-17^..^-9';
is ~(-17..-8), '-17 -16 -15 -14 -13 -12 -11 -10 -9 -8', '-17..-8';
is ~(-17..^-8), '-17 -16 -15 -14 -13 -12 -11 -10 -9', '-17..^-8';
is ~(-17^..-8), '-16 -15 -14 -13 -12 -11 -10 -9 -8', '-17^..-8';
is ~(-17^..^-8), '-16 -15 -14 -13 -12 -11 -10 -9', '-17^..^-8';
is ~(-17..-7), '-17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7', '-17..-7';
is ~(-17..^-7), '-17 -16 -15 -14 -13 -12 -11 -10 -9 -8', '-17..^-7';
is ~(-17^..-7), '-16 -15 -14 -13 -12 -11 -10 -9 -8 -7', '-17^..-7';
is ~(-17^..^-7), '-16 -15 -14 -13 -12 -11 -10 -9 -8', '-17^..^-7';
is ~(-17..0), '-17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1 0', '-17..0';
is ~(-17..^0), '-17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1', '-17..^0';
is ~(-17^..0), '-16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1 0', '-17^..0';
is ~(-17^..^0), '-16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1', '-17^..^0';
is ~(-17..Inf).list.munch(20), '-17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1 0 1 2', '-17..Inf';
is ~(-17..^Inf).list.munch(20), '-17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1 0 1 2', '-17..^Inf';
is ~(-17^..Inf).list.munch(20), '-16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1 0 1 2 3', '-17^..Inf';
is ~(-17^..^Inf).list.munch(20), '-16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1 0 1 2 3', '-17^..^Inf';
is ~(-3..-5), '', '-3..-5';
is ~(-3..^-5), '', '-3..^-5';
is ~(-3^..-5), '', '-3^..-5';
is ~(-3^..^-5), '', '-3^..^-5';
is ~(-3..-4), '', '-3..-4';
is ~(-3..^-4), '', '-3..^-4';
is ~(-3^..-4), '', '-3^..-4';
is ~(-3^..^-4), '', '-3^..^-4';
is ~(-3..-3), '-3', '-3..-3';
is ~(-3..^-3), '', '-3..^-3';
is ~(-3^..-3), '', '-3^..-3';
is ~(-3^..^-3), '', '-3^..^-3';
is ~(-3..-2), '-3 -2', '-3..-2';
is ~(-3..^-2), '-3', '-3..^-2';
is ~(-3^..-2), '-2', '-3^..-2';
is ~(-3^..^-2), '', '-3^..^-2';
is ~(-3..-1), '-3 -2 -1', '-3..-1';
is ~(-3..^-1), '-3 -2', '-3..^-1';
is ~(-3^..-1), '-2 -1', '-3^..-1';
is ~(-3^..^-1), '-2', '-3^..^-1';
is ~(-3..0), '-3 -2 -1 0', '-3..0';
is ~(-3..^0), '-3 -2 -1', '-3..^0';
is ~(-3^..0), '-2 -1 0', '-3^..0';
is ~(-3^..^0), '-2 -1', '-3^..^0';
is ~(-3..1), '-3 -2 -1 0 1', '-3..1';
is ~(-3..^1), '-3 -2 -1 0', '-3..^1';
is ~(-3^..1), '-2 -1 0 1', '-3^..1';
is ~(-3^..^1), '-2 -1 0', '-3^..^1';
is ~(-3..2), '-3 -2 -1 0 1 2', '-3..2';
is ~(-3..^2), '-3 -2 -1 0 1', '-3..^2';
is ~(-3^..2), '-2 -1 0 1 2', '-3^..2';
is ~(-3^..^2), '-2 -1 0 1', '-3^..^2';
is ~(-3..3), '-3 -2 -1 0 1 2 3', '-3..3';
is ~(-3..^3), '-3 -2 -1 0 1 2', '-3..^3';
is ~(-3^..3), '-2 -1 0 1 2 3', '-3^..3';
is ~(-3^..^3), '-2 -1 0 1 2', '-3^..^3';
is ~(-3..4), '-3 -2 -1 0 1 2 3 4', '-3..4';
is ~(-3..^4), '-3 -2 -1 0 1 2 3', '-3..^4';
is ~(-3^..4), '-2 -1 0 1 2 3 4', '-3^..4';
is ~(-3^..^4), '-2 -1 0 1 2 3', '-3^..^4';
is ~(-3..5), '-3 -2 -1 0 1 2 3 4 5', '-3..5';
is ~(-3..^5), '-3 -2 -1 0 1 2 3 4', '-3..^5';
is ~(-3^..5), '-2 -1 0 1 2 3 4 5', '-3^..5';
is ~(-3^..^5), '-2 -1 0 1 2 3 4', '-3^..^5';
is ~(-3..6), '-3 -2 -1 0 1 2 3 4 5 6', '-3..6';
is ~(-3..^6), '-3 -2 -1 0 1 2 3 4 5', '-3..^6';
is ~(-3^..6), '-2 -1 0 1 2 3 4 5 6', '-3^..6';
is ~(-3^..^6), '-2 -1 0 1 2 3 4 5', '-3^..^6';
is ~(-3..7), '-3 -2 -1 0 1 2 3 4 5 6 7', '-3..7';
is ~(-3..^7), '-3 -2 -1 0 1 2 3 4 5 6', '-3..^7';
is ~(-3^..7), '-2 -1 0 1 2 3 4 5 6 7', '-3^..7';
is ~(-3^..^7), '-2 -1 0 1 2 3 4 5 6', '-3^..^7';
is ~(-3..14), '-3 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14', '-3..14';
is ~(-3..^14), '-3 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13', '-3..^14';
is ~(-3^..14), '-2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14', '-3^..14';
is ~(-3^..^14), '-2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13', '-3^..^14';
is ~(-3..Inf).list.munch(20), '-3 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16', '-3..Inf';
is ~(-3..^Inf).list.munch(20), '-3 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16', '-3..^Inf';
is ~(-3^..Inf).list.munch(20), '-2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17', '-3^..Inf';
is ~(-3^..^Inf).list.munch(20), '-2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17', '-3^..^Inf';
is ~(-2..-4), '', '-2..-4';
is ~(-2..^-4), '', '-2..^-4';
is ~(-2^..-4), '', '-2^..-4';
is ~(-2^..^-4), '', '-2^..^-4';
is ~(-2..-3), '', '-2..-3';
is ~(-2..^-3), '', '-2..^-3';
is ~(-2^..-3), '', '-2^..-3';
is ~(-2^..^-3), '', '-2^..^-3';
is ~(-2..-2), '-2', '-2..-2';
is ~(-2..^-2), '', '-2..^-2';
is ~(-2^..-2), '', '-2^..-2';
is ~(-2^..^-2), '', '-2^..^-2';
is ~(-2..-1), '-2 -1', '-2..-1';
is ~(-2..^-1), '-2', '-2..^-1';
is ~(-2^..-1), '-1', '-2^..-1';
is ~(-2^..^-1), '', '-2^..^-1';
is ~(-2..0), '-2 -1 0', '-2..0';
is ~(-2..^0), '-2 -1', '-2..^0';
is ~(-2^..0), '-1 0', '-2^..0';
is ~(-2^..^0), '-1', '-2^..^0';
is ~(-2..1), '-2 -1 0 1', '-2..1';
is ~(-2..^1), '-2 -1 0', '-2..^1';
is ~(-2^..1), '-1 0 1', '-2^..1';
is ~(-2^..^1), '-1 0', '-2^..^1';
is ~(-2..2), '-2 -1 0 1 2', '-2..2';
is ~(-2..^2), '-2 -1 0 1', '-2..^2';
is ~(-2^..2), '-1 0 1 2', '-2^..2';
is ~(-2^..^2), '-1 0 1', '-2^..^2';
is ~(-2..3), '-2 -1 0 1 2 3', '-2..3';
is ~(-2..^3), '-2 -1 0 1 2', '-2..^3';
is ~(-2^..3), '-1 0 1 2 3', '-2^..3';
is ~(-2^..^3), '-1 0 1 2', '-2^..^3';
is ~(-2..4), '-2 -1 0 1 2 3 4', '-2..4';
is ~(-2..^4), '-2 -1 0 1 2 3', '-2..^4';
is ~(-2^..4), '-1 0 1 2 3 4', '-2^..4';
is ~(-2^..^4), '-1 0 1 2 3', '-2^..^4';
is ~(-2..5), '-2 -1 0 1 2 3 4 5', '-2..5';
is ~(-2..^5), '-2 -1 0 1 2 3 4', '-2..^5';
is ~(-2^..5), '-1 0 1 2 3 4 5', '-2^..5';
is ~(-2^..^5), '-1 0 1 2 3 4', '-2^..^5';
is ~(-2..6), '-2 -1 0 1 2 3 4 5 6', '-2..6';
is ~(-2..^6), '-2 -1 0 1 2 3 4 5', '-2..^6';
is ~(-2^..6), '-1 0 1 2 3 4 5 6', '-2^..6';
is ~(-2^..^6), '-1 0 1 2 3 4 5', '-2^..^6';
is ~(-2..7), '-2 -1 0 1 2 3 4 5 6 7', '-2..7';
is ~(-2..^7), '-2 -1 0 1 2 3 4 5 6', '-2..^7';
is ~(-2^..7), '-1 0 1 2 3 4 5 6 7', '-2^..7';
is ~(-2^..^7), '-1 0 1 2 3 4 5 6', '-2^..^7';
is ~(-2..8), '-2 -1 0 1 2 3 4 5 6 7 8', '-2..8';
is ~(-2..^8), '-2 -1 0 1 2 3 4 5 6 7', '-2..^8';
is ~(-2^..8), '-1 0 1 2 3 4 5 6 7 8', '-2^..8';
is ~(-2^..^8), '-1 0 1 2 3 4 5 6 7', '-2^..^8';
is ~(-2..15), '-2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15', '-2..15';
is ~(-2..^15), '-2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14', '-2..^15';
is ~(-2^..15), '-1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15', '-2^..15';
is ~(-2^..^15), '-1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14', '-2^..^15';
is ~(-2..Inf).list.munch(20), '-2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17', '-2..Inf';
is ~(-2..^Inf).list.munch(20), '-2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17', '-2..^Inf';
is ~(-2^..Inf).list.munch(20), '-1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18', '-2^..Inf';
is ~(-2^..^Inf).list.munch(20), '-1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18', '-2^..^Inf';
is ~(0..-2), '', '0..-2';
is ~(0..^-2), '', '0..^-2';
is ~(0^..-2), '', '0^..-2';
is ~(0^..^-2), '', '0^..^-2';
is ~(0..-1), '', '0..-1';
is ~(0..^-1), '', '0..^-1';
is ~(0^..-1), '', '0^..-1';
is ~(0^..^-1), '', '0^..^-1';
is ~(0..0), '0', '0..0';
is ~(0..^0), '', '0..^0';
is ~(0^..0), '', '0^..0';
is ~(0^..^0), '', '0^..^0';
is ~(0..1), '0 1', '0..1';
is ~(0..^1), '0', '0..^1';
is ~(0^..1), '1', '0^..1';
is ~(0^..^1), '', '0^..^1';
is ~(0..2), '0 1 2', '0..2';
is ~(0..^2), '0 1', '0..^2';
is ~(0^..2), '1 2', '0^..2';
is ~(0^..^2), '1', '0^..^2';
is ~(0..3), '0 1 2 3', '0..3';
is ~(0..^3), '0 1 2', '0..^3';
is ~(0^..3), '1 2 3', '0^..3';
is ~(0^..^3), '1 2', '0^..^3';
is ~(0..4), '0 1 2 3 4', '0..4';
is ~(0..^4), '0 1 2 3', '0..^4';
is ~(0^..4), '1 2 3 4', '0^..4';
is ~(0^..^4), '1 2 3', '0^..^4';
is ~(0..5), '0 1 2 3 4 5', '0..5';
is ~(0..^5), '0 1 2 3 4', '0..^5';
is ~(0^..5), '1 2 3 4 5', '0^..5';
is ~(0^..^5), '1 2 3 4', '0^..^5';
is ~(0..6), '0 1 2 3 4 5 6', '0..6';
is ~(0..^6), '0 1 2 3 4 5', '0..^6';
is ~(0^..6), '1 2 3 4 5 6', '0^..6';
is ~(0^..^6), '1 2 3 4 5', '0^..^6';
is ~(0..7), '0 1 2 3 4 5 6 7', '0..7';
is ~(0..^7), '0 1 2 3 4 5 6', '0..^7';
is ~(0^..7), '1 2 3 4 5 6 7', '0^..7';
is ~(0^..^7), '1 2 3 4 5 6', '0^..^7';
is ~(0..8), '0 1 2 3 4 5 6 7 8', '0..8';
is ~(0..^8), '0 1 2 3 4 5 6 7', '0..^8';
is ~(0^..8), '1 2 3 4 5 6 7 8', '0^..8';
is ~(0^..^8), '1 2 3 4 5 6 7', '0^..^8';
is ~(0..9), '0 1 2 3 4 5 6 7 8 9', '0..9';
is ~(0..^9), '0 1 2 3 4 5 6 7 8', '0..^9';
is ~(0^..9), '1 2 3 4 5 6 7 8 9', '0^..9';
is ~(0^..^9), '1 2 3 4 5 6 7 8', '0^..^9';
is ~(0..10), '0 1 2 3 4 5 6 7 8 9 10', '0..10';
is ~(0..^10), '0 1 2 3 4 5 6 7 8 9', '0..^10';
is ~(0^..10), '1 2 3 4 5 6 7 8 9 10', '0^..10';
is ~(0^..^10), '1 2 3 4 5 6 7 8 9', '0^..^10';
is ~(0..17), '0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17', '0..17';
is ~(0..^17), '0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16', '0..^17';
is ~(0^..17), '1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17', '0^..17';
is ~(0^..^17), '1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16', '0^..^17';
is ~(0..Inf).list.munch(20), '0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19', '0..Inf';
is ~(0..^Inf).list.munch(20), '0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19', '0..^Inf';
is ~(0^..Inf).list.munch(20), '1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20', '0^..Inf';
is ~(0^..^Inf).list.munch(20), '1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20', '0^..^Inf';
is ~(1..-1), '', '1..-1';
is ~(1..^-1), '', '1..^-1';
is ~(1^..-1), '', '1^..-1';
is ~(1^..^-1), '', '1^..^-1';
is ~(1..0), '', '1..0';
is ~(1..^0), '', '1..^0';
is ~(1^..0), '', '1^..0';
is ~(1^..^0), '', '1^..^0';
is ~(1..1), '1', '1..1';
is ~(1..^1), '', '1..^1';
is ~(1^..1), '', '1^..1';
is ~(1^..^1), '', '1^..^1';
is ~(1..2), '1 2', '1..2';
is ~(1..^2), '1', '1..^2';
is ~(1^..2), '2', '1^..2';
is ~(1^..^2), '', '1^..^2';
is ~(1..3), '1 2 3', '1..3';
is ~(1..^3), '1 2', '1..^3';
is ~(1^..3), '2 3', '1^..3';
is ~(1^..^3), '2', '1^..^3';
is ~(1..4), '1 2 3 4', '1..4';
is ~(1..^4), '1 2 3', '1..^4';
is ~(1^..4), '2 3 4', '1^..4';
is ~(1^..^4), '2 3', '1^..^4';
is ~(1..5), '1 2 3 4 5', '1..5';
is ~(1..^5), '1 2 3 4', '1..^5';
is ~(1^..5), '2 3 4 5', '1^..5';
is ~(1^..^5), '2 3 4', '1^..^5';
is ~(1..6), '1 2 3 4 5 6', '1..6';
is ~(1..^6), '1 2 3 4 5', '1..^6';
is ~(1^..6), '2 3 4 5 6', '1^..6';
is ~(1^..^6), '2 3 4 5', '1^..^6';
is ~(1..7), '1 2 3 4 5 6 7', '1..7';
is ~(1..^7), '1 2 3 4 5 6', '1..^7';
is ~(1^..7), '2 3 4 5 6 7', '1^..7';
is ~(1^..^7), '2 3 4 5 6', '1^..^7';
is ~(1..8), '1 2 3 4 5 6 7 8', '1..8';
is ~(1..^8), '1 2 3 4 5 6 7', '1..^8';
is ~(1^..8), '2 3 4 5 6 7 8', '1^..8';
is ~(1^..^8), '2 3 4 5 6 7', '1^..^8';
is ~(1..9), '1 2 3 4 5 6 7 8 9', '1..9';
is ~(1..^9), '1 2 3 4 5 6 7 8', '1..^9';
is ~(1^..9), '2 3 4 5 6 7 8 9', '1^..9';
is ~(1^..^9), '2 3 4 5 6 7 8', '1^..^9';
is ~(1..10), '1 2 3 4 5 6 7 8 9 10', '1..10';
is ~(1..^10), '1 2 3 4 5 6 7 8 9', '1..^10';
is ~(1^..10), '2 3 4 5 6 7 8 9 10', '1^..10';
is ~(1^..^10), '2 3 4 5 6 7 8 9', '1^..^10';
is ~(1..11), '1 2 3 4 5 6 7 8 9 10 11', '1..11';
is ~(1..^11), '1 2 3 4 5 6 7 8 9 10', '1..^11';
is ~(1^..11), '2 3 4 5 6 7 8 9 10 11', '1^..11';
is ~(1^..^11), '2 3 4 5 6 7 8 9 10', '1^..^11';
is ~(1..18), '1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18', '1..18';
is ~(1..^18), '1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17', '1..^18';
is ~(1^..18), '2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18', '1^..18';
is ~(1^..^18), '2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17', '1^..^18';
is ~(1..Inf).list.munch(20), '1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20', '1..Inf';
is ~(1..^Inf).list.munch(20), '1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20', '1..^Inf';
is ~(1^..Inf).list.munch(20), '2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21', '1^..Inf';
is ~(1^..^Inf).list.munch(20), '2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21', '1^..^Inf';
is ~(2..0), '', '2..0';
is ~(2..^0), '', '2..^0';
is ~(2^..0), '', '2^..0';
is ~(2^..^0), '', '2^..^0';
is ~(2..1), '', '2..1';
is ~(2..^1), '', '2..^1';
is ~(2^..1), '', '2^..1';
is ~(2^..^1), '', '2^..^1';
is ~(2..2), '2', '2..2';
is ~(2..^2), '', '2..^2';
is ~(2^..2), '', '2^..2';
is ~(2^..^2), '', '2^..^2';
is ~(2..3), '2 3', '2..3';
is ~(2..^3), '2', '2..^3';
is ~(2^..3), '3', '2^..3';
is ~(2^..^3), '', '2^..^3';
is ~(2..4), '2 3 4', '2..4';
is ~(2..^4), '2 3', '2..^4';
is ~(2^..4), '3 4', '2^..4';
is ~(2^..^4), '3', '2^..^4';
is ~(2..5), '2 3 4 5', '2..5';
is ~(2..^5), '2 3 4', '2..^5';
is ~(2^..5), '3 4 5', '2^..5';
is ~(2^..^5), '3 4', '2^..^5';
is ~(2..6), '2 3 4 5 6', '2..6';
is ~(2..^6), '2 3 4 5', '2..^6';
is ~(2^..6), '3 4 5 6', '2^..6';
is ~(2^..^6), '3 4 5', '2^..^6';
is ~(2..7), '2 3 4 5 6 7', '2..7';
is ~(2..^7), '2 3 4 5 6', '2..^7';
is ~(2^..7), '3 4 5 6 7', '2^..7';
is ~(2^..^7), '3 4 5 6', '2^..^7';
is ~(2..8), '2 3 4 5 6 7 8', '2..8';
is ~(2..^8), '2 3 4 5 6 7', '2..^8';
is ~(2^..8), '3 4 5 6 7 8', '2^..8';
is ~(2^..^8), '3 4 5 6 7', '2^..^8';
is ~(2..9), '2 3 4 5 6 7 8 9', '2..9';
is ~(2..^9), '2 3 4 5 6 7 8', '2..^9';
is ~(2^..9), '3 4 5 6 7 8 9', '2^..9';
is ~(2^..^9), '3 4 5 6 7 8', '2^..^9';
is ~(2..10), '2 3 4 5 6 7 8 9 10', '2..10';
is ~(2..^10), '2 3 4 5 6 7 8 9', '2..^10';
is ~(2^..10), '3 4 5 6 7 8 9 10', '2^..10';
is ~(2^..^10), '3 4 5 6 7 8 9', '2^..^10';
is ~(2..11), '2 3 4 5 6 7 8 9 10 11', '2..11';
is ~(2..^11), '2 3 4 5 6 7 8 9 10', '2..^11';
is ~(2^..11), '3 4 5 6 7 8 9 10 11', '2^..11';
is ~(2^..^11), '3 4 5 6 7 8 9 10', '2^..^11';
is ~(2..12), '2 3 4 5 6 7 8 9 10 11 12', '2..12';
is ~(2..^12), '2 3 4 5 6 7 8 9 10 11', '2..^12';
is ~(2^..12), '3 4 5 6 7 8 9 10 11 12', '2^..12';
is ~(2^..^12), '3 4 5 6 7 8 9 10 11', '2^..^12';
is ~(2..19), '2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19', '2..19';
is ~(2..^19), '2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18', '2..^19';
is ~(2^..19), '3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19', '2^..19';
is ~(2^..^19), '3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18', '2^..^19';
is ~(2..Inf).list.munch(20), '2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21', '2..Inf';
is ~(2..^Inf).list.munch(20), '2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21', '2..^Inf';
is ~(2^..Inf).list.munch(20), '3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22', '2^..Inf';
is ~(2^..^Inf).list.munch(20), '3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22', '2^..^Inf';
is ~(5..3), '', '5..3';
is ~(5..^3), '', '5..^3';
is ~(5^..3), '', '5^..3';
is ~(5^..^3), '', '5^..^3';
is ~(5..4), '', '5..4';
is ~(5..^4), '', '5..^4';
is ~(5^..4), '', '5^..4';
is ~(5^..^4), '', '5^..^4';
is ~(5..5), '5', '5..5';
is ~(5..^5), '', '5..^5';
is ~(5^..5), '', '5^..5';
is ~(5^..^5), '', '5^..^5';
is ~(5..6), '5 6', '5..6';
is ~(5..^6), '5', '5..^6';
is ~(5^..6), '6', '5^..6';
is ~(5^..^6), '', '5^..^6';
is ~(5..7), '5 6 7', '5..7';
is ~(5..^7), '5 6', '5..^7';
is ~(5^..7), '6 7', '5^..7';
is ~(5^..^7), '6', '5^..^7';
is ~(5..8), '5 6 7 8', '5..8';
is ~(5..^8), '5 6 7', '5..^8';
is ~(5^..8), '6 7 8', '5^..8';
is ~(5^..^8), '6 7', '5^..^8';
is ~(5..9), '5 6 7 8 9', '5..9';
is ~(5..^9), '5 6 7 8', '5..^9';
is ~(5^..9), '6 7 8 9', '5^..9';
is ~(5^..^9), '6 7 8', '5^..^9';
is ~(5..10), '5 6 7 8 9 10', '5..10';
is ~(5..^10), '5 6 7 8 9', '5..^10';
is ~(5^..10), '6 7 8 9 10', '5^..10';
is ~(5^..^10), '6 7 8 9', '5^..^10';
is ~(5..11), '5 6 7 8 9 10 11', '5..11';
is ~(5..^11), '5 6 7 8 9 10', '5..^11';
is ~(5^..11), '6 7 8 9 10 11', '5^..11';
is ~(5^..^11), '6 7 8 9 10', '5^..^11';
is ~(5..12), '5 6 7 8 9 10 11 12', '5..12';
is ~(5..^12), '5 6 7 8 9 10 11', '5..^12';
is ~(5^..12), '6 7 8 9 10 11 12', '5^..12';
is ~(5^..^12), '6 7 8 9 10 11', '5^..^12';
is ~(5..13), '5 6 7 8 9 10 11 12 13', '5..13';
is ~(5..^13), '5 6 7 8 9 10 11 12', '5..^13';
is ~(5^..13), '6 7 8 9 10 11 12 13', '5^..13';
is ~(5^..^13), '6 7 8 9 10 11 12', '5^..^13';
is ~(5..14), '5 6 7 8 9 10 11 12 13 14', '5..14';
is ~(5..^14), '5 6 7 8 9 10 11 12 13', '5..^14';
is ~(5^..14), '6 7 8 9 10 11 12 13 14', '5^..14';
is ~(5^..^14), '6 7 8 9 10 11 12 13', '5^..^14';
is ~(5..15), '5 6 7 8 9 10 11 12 13 14 15', '5..15';
is ~(5..^15), '5 6 7 8 9 10 11 12 13 14', '5..^15';
is ~(5^..15), '6 7 8 9 10 11 12 13 14 15', '5^..15';
is ~(5^..^15), '6 7 8 9 10 11 12 13 14', '5^..^15';
is ~(5..22), '5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22', '5..22';
is ~(5..^22), '5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21', '5..^22';
is ~(5^..22), '6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22', '5^..22';
is ~(5^..^22), '6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21', '5^..^22';
is ~(5..Inf).list.munch(20), '5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24', '5..Inf';
is ~(5..^Inf).list.munch(20), '5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24', '5..^Inf';
is ~(5^..Inf).list.munch(20), '6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25', '5^..Inf';
is ~(5^..^Inf).list.munch(20), '6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25', '5^..^Inf';
is ~(17..15), '', '17..15';
is ~(17..^15), '', '17..^15';
is ~(17^..15), '', '17^..15';
is ~(17^..^15), '', '17^..^15';
is ~(17..16), '', '17..16';
is ~(17..^16), '', '17..^16';
is ~(17^..16), '', '17^..16';
is ~(17^..^16), '', '17^..^16';
is ~(17..17), '17', '17..17';
is ~(17..^17), '', '17..^17';
is ~(17^..17), '', '17^..17';
is ~(17^..^17), '', '17^..^17';
is ~(17..18), '17 18', '17..18';
is ~(17..^18), '17', '17..^18';
is ~(17^..18), '18', '17^..18';
is ~(17^..^18), '', '17^..^18';
is ~(17..19), '17 18 19', '17..19';
is ~(17..^19), '17 18', '17..^19';
is ~(17^..19), '18 19', '17^..19';
is ~(17^..^19), '18', '17^..^19';
is ~(17..20), '17 18 19 20', '17..20';
is ~(17..^20), '17 18 19', '17..^20';
is ~(17^..20), '18 19 20', '17^..20';
is ~(17^..^20), '18 19', '17^..^20';
is ~(17..21), '17 18 19 20 21', '17..21';
is ~(17..^21), '17 18 19 20', '17..^21';
is ~(17^..21), '18 19 20 21', '17^..21';
is ~(17^..^21), '18 19 20', '17^..^21';
is ~(17..22), '17 18 19 20 21 22', '17..22';
is ~(17..^22), '17 18 19 20 21', '17..^22';
is ~(17^..22), '18 19 20 21 22', '17^..22';
is ~(17^..^22), '18 19 20 21', '17^..^22';
is ~(17..23), '17 18 19 20 21 22 23', '17..23';
is ~(17..^23), '17 18 19 20 21 22', '17..^23';
is ~(17^..23), '18 19 20 21 22 23', '17^..23';
is ~(17^..^23), '18 19 20 21 22', '17^..^23';
is ~(17..24), '17 18 19 20 21 22 23 24', '17..24';
is ~(17..^24), '17 18 19 20 21 22 23', '17..^24';
is ~(17^..24), '18 19 20 21 22 23 24', '17^..24';
is ~(17^..^24), '18 19 20 21 22 23', '17^..^24';
is ~(17..25), '17 18 19 20 21 22 23 24 25', '17..25';
is ~(17..^25), '17 18 19 20 21 22 23 24', '17..^25';
is ~(17^..25), '18 19 20 21 22 23 24 25', '17^..25';
is ~(17^..^25), '18 19 20 21 22 23 24', '17^..^25';
is ~(17..26), '17 18 19 20 21 22 23 24 25 26', '17..26';
is ~(17..^26), '17 18 19 20 21 22 23 24 25', '17..^26';
is ~(17^..26), '18 19 20 21 22 23 24 25 26', '17^..26';
is ~(17^..^26), '18 19 20 21 22 23 24 25', '17^..^26';
is ~(17..27), '17 18 19 20 21 22 23 24 25 26 27', '17..27';
is ~(17..^27), '17 18 19 20 21 22 23 24 25 26', '17..^27';
is ~(17^..27), '18 19 20 21 22 23 24 25 26 27', '17^..27';
is ~(17^..^27), '18 19 20 21 22 23 24 25 26', '17^..^27';
is ~(17..34), '17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34', '17..34';
is ~(17..^34), '17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33', '17..^34';
is ~(17^..34), '18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34', '17^..34';
is ~(17^..^34), '18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33', '17^..^34';
is ~(17..Inf).list.munch(20), '17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36', '17..Inf';
is ~(17..^Inf).list.munch(20), '17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36', '17..^Inf';
is ~(17^..Inf).list.munch(20), '18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37', '17^..Inf';
is ~(17^..^Inf).list.munch(20), '18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37', '17^..^Inf';
 
done;
# # vim: ft=perl6
