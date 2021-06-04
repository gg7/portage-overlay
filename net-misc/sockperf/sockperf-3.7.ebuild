# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools

DESCRIPTION="Network benchmarking utility for testing latency and throughput"
HOMEPAGE="https://github.com/Mellanox/sockperf"
SRC_URI="https://github.com/Mellanox/sockperf/archive/refs/tags/${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=">=sys-devel/automake-1.7 >=sys-devel/autoconf-2.57 >=sys-devel/m4-1.4 >=sys-devel/libtool-1.4"

src_prepare() {
	default
	eautoreconf
}
