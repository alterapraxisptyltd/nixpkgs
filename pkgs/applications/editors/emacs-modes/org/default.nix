{ fetchurl, stdenv, emacs, texinfo, which, texLive }:

stdenv.mkDerivation rec {
  name = "org-8.2.6";

  src = fetchurl {
    url = "http://orgmode.org/${name}.tar.gz";
    sha256 = "0f196r0n9m2np123sjabsqdw68h9qp6qr7l5v257am8qs7rj0jm1";
  };

  buildInputs = [ emacs ];
  nativeBuildInputs = [ texinfo texLive ];

  configurePhase =
    '' sed -i mk/default.mk \
           -e "s|^prefix\t=.*$|prefix=$out/share|g"
    '';

  postBuild =
    '' make doc
    '';

  installPhase =
    '' make install install-info

       mkdir -p "$out/share/doc/${name}"
       cp -v doc/org*.{html,pdf,txt} "$out/share/doc/${name}"

       mkdir -p "$out/share/org"
       cp -R contrib "$out/share/org/contrib"
    '';

  meta = {
    description = "Org-Mode, an Emacs mode for notes, project planning, and authoring";

    longDescription =
      '' Org-mode is for keeping notes, maintaining ToDo lists, doing project
         planning, and authoring with a fast and effective plain-text system.

         This package contains a version of Org-mode typically more recent
         than that found in GNU Emacs.
      '';

    license = "GPLv3+";

    maintainers = with stdenv.lib.maintainers; [ chaoflow ];
    platforms = stdenv.lib.platforms.gnu;
  };
}
