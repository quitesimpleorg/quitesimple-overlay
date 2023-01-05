# Copyright 2023 Albert Schwarzkopf <gentoo-overlay at quitesimple dot org>

EAPI=7
DESCRIPTION="Executes commands upon file system events (using inotify)"
LICENSE="ISC"
HOMEPAGE="https://quitesimple.org/"
inherit git-r3
EGIT_REPO_URI="https://github.com/quitesimpleorg/${PN}.git"
SLOT="0"

src_compile()
{
	emake release
}
src_install()
{
	dobin adhocify
}
