#############################################################################
##
#W  init.g                   Sophus package                   Csaba Schneider 
##
#H  $Id: init.g,v 1.4 2004/06/21 09:13:55 gap Exp $

DeclareAutoPackage( "Sophus", "1.0", 
  function()
    if not CompareVersionNumbers( VERSION, "4.3fix4" ) then
      Info( InfoWarning, 1, "This version of the Sophus package requires ",
                            "at least GAP 4.3fix4" );
      return fail;
    fi;
    return true;
  end );

DeclareInfoClass( "LieInfo" );

FIND_MIN_GEN_SET := false;

ReadPkg( "Sophus", "gap/sophus.gd" );  
ReadPkg( "Sophus", "gap/general.gi" );
ReadPkg( "Sophus", "gap/lienp.gi" );
ReadPkg( "Sophus", "gap/liesct.gi" );
ReadPkg( "Sophus", "gap/liecover.gi" );
ReadPkg( "Sophus", "gap/nicestab.gi" );
ReadPkg( "Sophus", "gap/lieautoops.gi" );
ReadPkg( "Sophus", "gap/initauts.gi" );
ReadPkg( "Sophus", "gap/lieautgrp.gi" );
ReadPkg( "Sophus", "gap/allowable.gi" );
ReadPkg( "Sophus", "gap/descendant.gi" );
ReadPkg( "Sophus", "gap/lieisom.gi" );
ReadPkg( "Sophus", "gap/io.gi" );
ReadPkg( "Sophus", "gap/test.gi" );
