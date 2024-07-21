# Copyright 2023 Albert Schwarzkopf <gentoo-overlay at quitesimple dot org>

EAPI=7
DESCRIPTION="Executes commands upon file system events (using inotify)"
HOMEPAGE="https://github.com/quitesimpleorg/adhocify"
LICENSE="ISC"
SRC_URI="https://github.com/quitesimpleorg/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

SLOT="0"

KEYWORDS="~amd64"

src_compile()
{
	emake release
}

src_install()
{
	dobin adhocify
}
