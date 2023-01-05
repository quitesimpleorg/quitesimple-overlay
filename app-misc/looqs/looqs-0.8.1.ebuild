# Copyright 2023 Albert Schwarzkopf <gentoo-overlay at quitesimple dot org>
EAPI=7

inherit git-r3 qmake-utils desktop
DESCRIPTION="FTS desktop file search with previews"
HOMEPAGE="https://github.com/quitesimpleorg/looqs"
EGIT_REPO_URI="https://github.com/quitesimpleorg/looqs.git"
EGIT_COMMIT="20a1f8b2cd2687df95732ff32ebd6a497b48bdae"
LICENSE="GPL-3"
DEPEND="
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtwidgets:5
	app-i18n/uchardet
	dev-libs/quazip
"
SLOT="0"
KEYWORDS="amd64"
src_prepare()
{
	default
}
src_configure()
{
	eqmake5
}
src_install()
{
	dobin gui/looqs-gui
	dobin cli/looqs

	doicon -s scalable looqs.svg
	domenu looqs.desktop
}
