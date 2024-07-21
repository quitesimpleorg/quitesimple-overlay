# Copyright 2023 Albert Schwarzkopf <gentoo-overlay at quitesimple dot org>
EAPI=7

inherit git-r3 qmake-utils desktop
DESCRIPTION="FTS desktop file search with previews"
HOMEPAGE="https://github.com/quitesimpleorg/looqs"
EGIT_REPO_URI="https://github.com/quitesimpleorg/looqs.git"
EGIT_COMMIT="d60d8c3108330b868475b6b14f8c9c6c23102f48"
LICENSE="GPL-3"
DEPEND="
	dev-qt/qtbase:6[widgets,sqlite,sql,gui,icu]
	app-i18n/uchardet
	dev-libs/quazip[qt6]
"
SLOT="0"
KEYWORDS="amd64"
src_prepare()
{
	default
}
src_configure()
{
	eqmake6
}
src_install()
{
	dobin gui/looqs-gui
	dobin cli/looqs

	doicon -s scalable looqs.svg
	domenu looqs.desktop
}
