#############################################################################
##
#W  PackageInfo.g            Sophus Package                  Csaba Schneider 
##                                                               


SetPackageInfo( rec(

  PackageName := "Sophus",
  Subtitle := "Computing in nilpotent Lie algebras",
  Version := "1.23",
  Date    := "03/02/2006",
  ArchiveURL := "http://www.sztaki.hu/~schneider/Research/Sophus/sophus1r23",
  ArchiveFormats := ".tar.gz",

  Persons := [ 
    rec( 
      LastName      := "Schneider",
      FirstNames    := "Csaba",
      IsAuthor      := true,
      IsMaintainer  := true,
      Email         := "csaba.schneider@sztaki.hu",
      WWWHome       := "http://www.sztaki.hu/~schneider",
      PostalAddress := Concatenation( [
                         "Csaba Schneider\n",
                         "Informatics Laboratory\n",
                         "Computer and Automation Research Institute\n",
                         "The Hungarian Academy of Sciences\n",
                         "1111 Budapest, Lagymanyosi u. 11, Hungary" ]),
      Place         := "Budapest",
      Institution   := "Computer and Automation Research Institute"
    )
  ],  

  Status  := "accepted",
  CommunicatedBy 
          := "Alexander Konovalov (Zaporozhye)",
  AcceptDate 
          := "10/2004",

  README_URL := "http://www.sztaki.hu/~schneider/Research/Sophus/README",
  PackageInfoURL := "http://www.sztaki.hu/~schneider/Research/Sophus/PackageInfo.g",

  AbstractHTML := "http://www.sztaki.hu/~schneider/Research/Sophus/",

  PackageWWWHome := "http://www.sztaki.hu/~schneider/Research/Sophus/",

  PackageDoc := rec(
    BookName  := "Sophus",
    HTMLStart := "doc/chap0.html",
    PDFFile   := "doc/manual.pdf",
    SixFile   := "doc/manual.six",
    LongTitle := "Computing with nilpotent Lie algebras",
    Autoload := true 
  ),

  Dependencies := rec(
    GAP := ">= 4.7",
    NeededOtherPackages := [["autpgrp","1.2"]],
    SuggestedOtherPackages := [],
    ExternalConditions := []
  ),

  AvailabilityTest := ReturnTrue,
# TestFile := "",
  Keywords := [ "nilpotent Lie algebras" ]

));
