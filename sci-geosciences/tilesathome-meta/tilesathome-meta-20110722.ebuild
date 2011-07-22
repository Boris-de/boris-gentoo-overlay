# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

DESCRIPTION="Meta-package for tiles@home that pull all dependencies"
HOMEPAGE="http://localhost/"
SRC_URI=""

LICENSE="BSD"
SLOT="0"
KEYWORDS="x86 amd64"
IUSE="osmarender_perl"


RDEPEND="app-arch/unzip
    app-arch/zip
    app-text/xmlstarlet
    dev-perl/AppConfig
    dev-perl/Class-Accessor
    dev-perl/Error
    dev-perl/GD[png]
    dev-perl/IPC-Run
    dev-perl/libwww-perl
    dev-perl/libxml-perl
    dev-perl/Math-Vec
    dev-perl/Math-VecStat
    dev-perl/URI
    dev-vcs/subversion
    media-fonts/dejavu
    media-fonts/lohit-fonts
    media-fonts/thaifonts-scalable
    media-fonts/vlgothic
    media-fonts/wqy-bitmapfont
    media-fonts/wqy-unibit
    media-gfx/inkscape
    media-gfx/optipng
    media-gfx/pngcrush
    media-gfx/pngnq
	virtual/perl-File-Spec
    virtual/perl-Module-Pluggable
    osmarender_perl? (
		dev-perl/Set-Object
		dev-perl/XML-Writer
		dev-perl/XML-XPath
	)"

pkg_postinst() {
	einfo "wqy-bitmapfont is currently not enabled by default. Please run:"
	einfo "\teselect fontconfig enable 85-wqy-bitmapsong.conf"
	einfo ""
	einfo "This ebuild reflects the needed dependencies of ${PV}"
}
