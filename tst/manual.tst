#
gap> L1 := [ AbelianLieAlgebra( GF(2), 1 ) ];;
gap> L2 := [ AbelianLieAlgebra( GF(2), 2 ) ];;
gap> L3 := [ AbelianLieAlgebra( GF(2), 3 ) ];;

#
gap> Append( L3, Descendants( L2[1], 1 ));
gap> L3;
[ <Lie algebra of dimension 3 over GF(2)>, 
  <Lie algebra of dimension 3 over GF(2)> ]

#
gap> L4 := [ AbelianLieAlgebra( GF(2), 4 ) ];;
gap> for i in L3 do Append( L4, Descendants( i, 1 )); od;
gap> L4;
[ <Lie algebra of dimension 4 over GF(2)>, 
  <Lie algebra of dimension 4 over GF(2)>, 
  <Lie algebra of dimension 4 over GF(2)> ]

#
gap> L5 := [ AbelianLieAlgebra( GF(2), 5 ) ];;
gap> for i in L3 do Append( L5, Descendants( i, 2 )); od;
gap> for i in L4 do Append( L5, Descendants( i, 1 )); od;
gap> L6 := [ AbelianLieAlgebra( GF(2), 6 ) ];;
gap> for i in L3 do Append( L6, Descendants( i, 3 )); od;
gap> for i in L4 do Append( L6, Descendants( i, 2 )); od;
gap> for i in L5 do Append( L6, Descendants( i, 1 )); od;
gap> L7 := [ AbelianLieAlgebra( GF(2), 6 ) ];;
gap> for i in L4 do Append( L7, Descendants( i, 3 )); od;
gap> for i in L5 do Append( L7, Descendants( i, 2 )); od;
gap> for i in L6 do Append( L7, Descendants( i, 1 )); od;
gap> Length( L7 );
202

#
gap> AutomorphismGroupOfNilpotentLieAlgebra( L7[100] );
rec( agAutos := [ Aut: [ v.1, v.1+v.2, v.3, v.4, v.5, v.5+v.6, v.7 ], 
      Aut: [ v.1, v.2+v.3, v.3, v.4, v.5, v.6, v.7 ], 
      Aut: [ v.1+v.3, v.2, v.3, v.4+v.5, v.5, v.6+v.7, v.7 ], 
      Aut: [ v.1+v.4, v.2, v.3+v.5, v.4+v.6, v.5+v.7, v.6+v.7, v.7 ], 
      Aut: [ v.1, v.2+v.4, v.3, v.4+v.5, v.5, v.6+v.7, v.7 ], 
      Aut: [ v.1+v.5, v.2, v.3, v.4+v.7, v.5, v.6, v.7 ], 
      Aut: [ v.1, v.2+v.5, v.3, v.4, v.5, v.6, v.7 ], 
      Aut: [ v.1+v.6, v.2, v.3, v.4+v.7, v.5, v.6, v.7 ], 
      Aut: [ v.1, v.2+v.6, v.3, v.4+v.7, v.5, v.6, v.7 ], 
      Aut: [ v.1+v.7, v.2, v.3, v.4, v.5, v.6, v.7 ], 
      Aut: [ v.1, v.2+v.7, v.3, v.4, v.5, v.6, v.7 ], 
      Aut: [ v.1, v.2, v.3+v.7, v.4, v.5, v.6, v.7 ] ], 
  agOrder := [ 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 ], field := GF(2), 
  glAutos := [  ], glOper := [  ], glOrder := 1, 
  liealg := <Lie algebra of dimension 7 over GF(2)>, 
  one := Aut: [ v.1, v.2, v.3, v.4, v.5, v.6, v.7 ], prime := 2, size := 4096 
 )
gap> AutomorphismGroup( L7[100] );
<group with 12 generators>

#
gap> AreIsomorphicNilpotentLieAlgebras( L7[100], L7[101] );
false
