#############################################################################
##
#W  general.gi                Sophus package                 Csaba Schneider 
##
## Some general functions.

######################################################################
## 
#P IsLieNilpotentOverFp( <L> )
##
## returns true if L is defined over a finite prime field and is 
## nilpotent 

InstallImmediateMethod(
    IsLieNilpotentOverFp,
    IsLieNilpotent and HasLeftActingDomain, 0,
    function( R )
    return 
           IsFinite( LeftActingDomain( R )) and
           IsPrimeField( LeftActingDomain( R ));
    end );

######################################################################
## 
#A MinimalGeneratorNumber( <L> )
##

InstallMethod( 
        MinimalGeneratorNumber,
        "for nilpotent Lie algebras",
        [ IsLieNilpotentOverFp ],
        function( L )
    
    return Dimension( L/LieDerivedSubalgebra( L ));
    end );


######################################################################
## 
#F  AbelianLieAlgebra( F, <d> )
#W  Returns the abelian Lie algebra with dimension <d> over the
##  field <F>.

BindGlobal("AbelianLieAlgebra", function( F, d )
    local L;

    L := LieAlgebraByStructureConstants( F, 
	   EmptySCTable( d, Zero( F ), "antisymmetric" ));
    SetIsLieNilpotent( L, true );

    return L;
end );
