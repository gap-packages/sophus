LoadPackage("sophus");
TestDirectory(DirectoriesPackageLibrary("sophus", "tst"), rec(exitGAP := true));
FORCE_QUIT_GAP(1);
