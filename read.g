#############################################################################
##
#W  read.g                   Sophus package                   Csaba Schneider 
##

if not IsBound(SolvableRadical) then
    # for backwards compatibility with GAP versions before 4.12
    BindGlobal( "SolvableRadical", RadicalGroup );
fi;

ReadPackage( "Sophus", "gap/general.gi" );
ReadPackage( "Sophus", "gap/lienp.gi" );
ReadPackage( "Sophus", "gap/liesct.gi" );
ReadPackage( "Sophus", "gap/liecover.gi" );
ReadPackage( "Sophus", "gap/nicestab.gi" );
ReadPackage( "Sophus", "gap/lieautoops.gi" );
ReadPackage( "Sophus", "gap/initauts.gi" );
ReadPackage( "Sophus", "gap/lieautgrp.gi" );
ReadPackage( "Sophus", "gap/allowable.gi" );
ReadPackage( "Sophus", "gap/descendant.gi" );
ReadPackage( "Sophus", "gap/lieisom.gi" );
ReadPackage( "Sophus", "gap/io.gi" );


