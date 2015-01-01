# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-2

DESCRIPTION="A lightweight sandbox tool for non-root users"
HOMEPAGE="http://pdos.csail.mit.edu/mbox/ https://github.com/tsgates/mbox"
EGIT_REPO_URI="https://github.com/tsgates/mbox.git"
SRC_URI=""

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

DEPEND=""
RDEPEND="${DEPEND}"

src_configure() {
	cd src/
	cp {.,}configsbox.h
	./configure
}

src_compile() {
	cd src/
	make
}

src_test() {
	cd src/
	./testall.sh
}

src_install() {
	dobin src/mbox
}
