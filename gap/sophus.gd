#############################################################################
##
#W  sophus.gd                 Sophus package                 Csaba Schneider 
##
#W  Declarations for the Sophus package.
##
#H  $Id: sophus.gd,v 1.4 2004/06/28 14:09:57 gap Exp $

DeclareInfoClass( "LieInfo" );

DeclareRepresentation( "IsNilpotentLieAutomorphismRep",
                       IsAlgebraGeneralMapping,
        ["mingenset", "mingensetimgs", "basis", "basisimgs", 
         "matrix"] );

IsNilpotentLieAutomorphism := IsMapping and IsNilpotentLieAutomorphismRep;

DeclareProperty( "IsLieNilpotentOverFp", IsLieNilpotent );

DeclareAttribute( "AutomorphismGroupOfNilpotentLieAlgebra",
                  IsLieAlgebra );

