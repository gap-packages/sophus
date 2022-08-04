# This test is based on the former function SophusTest
gap> START_TEST("test.tst");

# Computing Lie algebras over GF(2)
gap> L1 := [ AbelianLieAlgebra( GF(2), 1 ) ];;
gap> L2 := [ AbelianLieAlgebra( GF(2), 2 ) ];;
gap> L3 := [ AbelianLieAlgebra( GF(2), 3 ) ];;

#
gap> Append( L3, Descendants( L2[1], 1 ));

#
gap> L4 := [ AbelianLieAlgebra( GF(2), 4 ) ];;
gap> for i in L3 do Append( L4, Descendants( i, 1 )); od;

#
gap> L5 := [ AbelianLieAlgebra( GF(2), 5 ) ];;
gap> for i in L3 do Append( L5, Descendants( i, 2 )); od;
gap> for i in L4 do Append( L5, Descendants( i, 1 )); od;

# Lie algs computed up to dimension 5
gap> L6 := [ AbelianLieAlgebra( GF(2), 6 ) ];;
gap> for i in L3 do Append( L6, Descendants( i, 3 )); od;
gap> for i in L4 do Append( L6, Descendants( i, 2 )); od;
gap> for i in L5 do Append( L6, Descendants( i, 1 )); od;

# Dimension 6 completed
gap> L7 := [ AbelianLieAlgebra( GF(2), 6 ) ];;
gap> for i in L4 do Append( L7, Descendants( i, 3 )); od;
gap> for i in L5 do Append( L7, Descendants( i, 2 )); od;
gap> for i in L6 do Append( L7, Descendants( i, 1 )); od;

# Dimension 7 completed
gap> Length( L7 );
202

# Computing the autgrp of an algebra
gap> size := AutomorphismGroupOfNilpotentLieAlgebra( L7[100] ).size;
4096

# Testing the isomorphism test
gap> AreIsomorphicNilpotentLieAlgebras( L7[100], L7[100] );
true
gap> AreIsomorphicNilpotentLieAlgebras( L7[100], L7[101] );
false

# Now computing algebras over GF(3)
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
