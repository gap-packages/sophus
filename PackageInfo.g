#############################################################################
##
#W  PackageInfo.g            Sophus Package                  Csaba Schneider
##


SetPackageInfo( rec(

  PackageName := "Sophus",
  Subtitle := "Computing in nilpotent Lie algebras",
  Version := "1.27",
  Date    := "09/08/2022", # dd/mm/yyyy format
  License := "GPL-2.0-or-later",

  Persons := [
    rec(
      LastName      := "Schneider",
      FirstNames    := "Csaba",
      IsAuthor      := true,
      IsMaintainer  := false,
      Email         := "csaba@mat.ufmg.br",
      WWWHome       := "http://www.mat.ufmg.br/~csaba/",
      PostalAddress := Concatenation( [
                         "Departamento de Matemática\n",
                         "Instituto de Ciências Exatas\n",
                         "Universidade Federal de Minas Gerais (UFMG)\n",
                         "Belo Horizonte, Brasil" ]),
      Place         := "Belo Horizonte",
      Institution   := "Universidade Federal de Minas Gerais"
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
  CommunicatedBy := "Olexandr Konovalov (Zaporizhzhia)",
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

  AbstractHTML := "",

  PackageDoc := rec(
    BookName  := "Sophus",
    ArchiveURLSubset := ["doc"],
    HTMLStart := "doc/chap0_mj.html",
    PDFFile   := "doc/manual.pdf",
    SixFile   := "doc/manual.six",
    LongTitle := "Computing with nilpotent Lie algebras",
    Autoload := true
  ),

  Dependencies := rec(
    GAP := ">= 4.8",
    NeededOtherPackages := [["autpgrp","1.2"]],
    SuggestedOtherPackages := [],
    ExternalConditions := []
  ),

  AvailabilityTest := ReturnTrue,
  TestFile := "tst/testall.g",
  Keywords := [ "nilpotent Lie algebras" ],

  AutoDoc := rec(
      TitlePage := rec(
          Abstract := """
&Sophus; is a GAP4 package to compute with nilpotent
Lie algebras over finite prime fields. In particular, the package can be
used to compute certain central extensions and the automorphism group
of such Lie algebras. &Sophus; also enables its user to test
isomorphism between two nilpotent Lie algebras. The author of the
package used it to construct all Lie algebras of dimension at most 9
over <Math>\mathbb F_2</Math>.
""",
          Copyright := """
<Index>License</Index>
&copyright; 2004, 2005 Csaba Schneider<P/>
The &Sophus; package is free software;
you can redistribute it and/or modify it under the terms of the
<URL Text="GNU General Public License">http://www.fsf.org/licenses/gpl.html</URL>
as published by the Free Software Foundation; either version 2 of the License,
or (at your option) any later version.
""",
          Acknowledgements := """
Most of the work on this package was carried out while I held a
research position at the Technische Universität Braunschweig. I
would like to express my gratitude to the staff and the students of
the Institut für Geometrie for their interest in this work. Special
thanks go to Bettina Eick for her rôle in completing this project.
""",
      ),
  ),

));
