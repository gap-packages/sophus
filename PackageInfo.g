#############################################################################
##
#W  PackageInfo.g            Sophus Package                  Csaba Schneider 
##                                                               


SetPackageInfo( rec(

  PackageName := "Sophus",
  Subtitle := "Computing in nilpotent Lie algebras",
  Version := "1.23",
  Date    := "03/02/2006",

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
    ),

    rec(
      LastName      := "GAP Team",
      FirstNames    := "The",
      IsAuthor      := false,
      IsMaintainer  := true,
      Email         := "support@gap-system.org",
    ),
  ],  

  Status := "accepted",
  CommunicatedBy := "Alexander Konovalov (Zaporozhye)",
  AcceptDate := "10/2004",

  PackageWWWHome  := "https://gap-packages.github.io/sophus/",
  README_URL      := Concatenation( ~.PackageWWWHome, "README" ),
  PackageInfoURL  := Concatenation( ~.PackageWWWHome, "PackageInfo.g" ),
  SourceRepository := rec(
      Type := "git",
      URL := "https://github.com/gap-packages/sophus",
  ),
  IssueTrackerURL := Concatenation( ~.SourceRepository.URL, "/issues" ),
  ArchiveURL      := Concatenation( ~.SourceRepository.URL,
                                   "/releases/download/v", ~.Version,
                                   "/sophus-", ~.Version ),
  ArchiveFormats := ".tar.gz",

  AbstractHTML := "http://www.sztaki.hu/~schneider/Research/Sophus/",

  PackageDoc := rec(
    BookName  := "Sophus",
    ArchiveURLSubset := ["doc"],
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
