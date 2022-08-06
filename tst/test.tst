# This test is based on the former function SophusTest
# Computing Lie algebras over GF(2) is already done
gap> START_TEST("test.tst");

# Computing algebras over GF(3)
gap> L1 := [ AbelianLieAlgebra( GF(3), 1 ) ];;
gap> L2 := [ AbelianLieAlgebra( GF(3), 2 ) ];;

#
gap> L3 := [ AbelianLieAlgebra( GF(3), 3 ) ];;
gap> Append( L3, Descendants( L2[1], 1 ));

#
gap> L4 := [ AbelianLieAlgebra( GF(3), 4 ) ];;
gap> for i in L3 do Append( L4, Descendants( i, 1 )); od;

#
gap> L5 := [ AbelianLieAlgebra( GF(3), 5 ) ];;
gap> for i in L3 do Append( L5, Descendants( i, 2 )); od;
gap> for i in L4 do Append( L5, Descendants( i, 1 )); od;

# Algebras up to dim 5 computed
gap> L6 := [ AbelianLieAlgebra( GF(3), 6 ) ];;
gap> for i in L3 do Append( L6, Descendants( i, 3 )); od;
gap> for i in L4 do Append( L6, Descendants( i, 2 )); od;
gap> for i in L5 do Append( L6, Descendants( i, 1 )); od;

# Dimension 6 completed
gap> Length( L6 );
34

# Computing the autgrp of an algebra
gap> AutomorphismGroupOfNilpotentLieAlgebra( L6[30] ).size;
78732

# Testing the isom test
gap> AreIsomorphicNilpotentLieAlgebras( L6[30], L6[30] );
true
gap> AreIsomorphicNilpotentLieAlgebras( L6[30], L6[31] );
false

#
gap> STOP_TEST("test.tst", 1);
