#############################################################################
##
#W  sophus.gd                 Sophus package                 Csaba Schneider 
##
#W  Declarations for the Sophus package.
##

DeclareInfoClass( "LieInfo" );

DeclareRepresentation( "IsNilpotentLieAutomorphismRep",
                       IsAlgebraGeneralMapping,
        ["mingenset", "mingensetimgs", "basis", "basisimgs", 
         "matrix"] );

IsNilpotentLieAutomorphism := IsMapping and IsNilpotentLieAutomorphismRep;

DeclareProperty( "IsLieNilpotentOverFp", IsLieNilpotent );

DeclareAttribute( "AutomorphismGroupOfNilpotentLieAlgebra",
                  IsLieAlgebra );

DeclareOperation( "DescendantsOfStep1OfAbelianLieAlgebra", [ IsPosInt, IsPosInt ] );

DeclareOperation( "Descendants", [ IsLieAlgebra, IsPosInt ] );

DeclareAttribute( "MinimalGeneratorNumber", IsLieNilpotent );

DeclareOperation( "LiftAutorphismToLieCover", 
                  [ IsNilpotentLieAutomorphism ] );

DeclareOperation( "LinearActionOnMultiplicator", 
                  [ IsNilpotentLieAutomorphism ] );

DeclareOperation( "NilpotentLieAutomorphism", 
                  [ IsLieNilpotentOverFp, IsList, IsList ] );

DeclareProperty( "IsLieCover", IsLieNilpotentOverFp );

DeclareAttribute( "CoverOf", IsLieCover );

DeclareAttribute( "CoverHomomorphism", IsLieCover );

DeclareAttribute( "LieCover", IsLieAlgebra );

DeclareAttribute( "LieNucleus", IsLieNilpotentOverFp );

DeclareAttribute( "LieMultiplicator", IsLieNilpotentOverFp );

DeclareOperation( "LiftIsomorphismToLieCover", [ IsLieAlgebra, IsLieAlgebra, IsMatrix ] );

DeclareOperation( "AreIsomorphicNilpotentLieAlgebras", [ IsLieAlgebra, IsLieAlgebra ] );

DeclareProperty( "IsLieAlgebraWithNB", IsLieNilpotentOverFp );

DeclareAttribute( "NilpotentBasis", IsLieAlgebra, "mutable" );
    
DeclareProperty( "IsNilpotentBasis", IsBasis );

DeclareAttribute( "LieNBDefinitions", IsNilpotentBasis );

DeclareAttribute( "LieNBWeights", IsNilpotentBasis );






