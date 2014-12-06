# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-misc/livestreamer/livestreamer-1.8.2.ebuild,v 1.1 2014/06/03 11:51:33 tomwij Exp $

EAPI="5"

DESCRIPTION="CLI tool that pipes video streams from services like twitch.tv into a video player"
HOMEPAGE="https://github.com/chrippa/livestreamer"
SRC_URI="https://github.com/chrippa/livestreamer/archive/v${PV}.tar.gz -> ${P}.tar.gz"

PYTHON_COMPAT=( python{3_3,3_4} )
inherit eutils distutils-r1

KEYWORDS="amd64 ~mips x86"
LICENSE="Apache-2.0 BSD-2 MIT-with-advertising"
SLOT="0"

RDEPEND="${PYTHON_DEPS}
	dev-python/pycrypto[${PYTHON_USEDEP}]
	>=dev-python/requests-1.0[${PYTHON_USEDEP}]
	$(python_gen_cond_dep 'dev-python/singledispatch[${PYTHON_USEDEP}]' python{3_3})
	>media-video/rtmpdump-2.4
"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
"

post_src_prepare() {
	epatch_user
}
