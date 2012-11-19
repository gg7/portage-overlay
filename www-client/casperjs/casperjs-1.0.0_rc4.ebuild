# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

EGIT_REPO_URI="git://github.com/n1k0/${PN}.git"
EGIT_COMMIT="1.0.0-RC4"
inherit git-2

PYTHON_DEPEND="python? *"
inherit python

DESCRIPTION="Navigation scripting & testing utility written in Javascript and based on PhantomJS"
HOMEPAGE="http://casperjs.org/"
SRC_URI=""

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="doc examples +python -ruby"
REQUIRED_USE="^^ ( python ruby )"

DEPEND="
	|| ( >=www-client/phantomjs-1.6 >=www-client/phantomjs-bin-1.6 )
	ruby? ( dev-lang/ruby )
"
RDEPEND="
	|| ( >=www-client/phantomjs-1.6 >=www-client/phantomjs-bin-1.6 )
	ruby? ( dev-lang/ruby )
"

if use python; then
	CASPERJS_EXE="bin/casperjs"
else
	CASPERJS_EXE="rubybin/casperjs"
fi

src_install() {
	insinto ${EROOT}usr/share/${PF}
	doins -r package.json tests modules || die

	insinto ${EROOT}usr/share/${PF}/bin
	doins bin/bootstrap.js || die

	exeinto ${EROOT}/usr/share/${PF}/bin
	doexe "$CASPERJS_EXE" || die

	# create a link in /usr/bin:
	dosym ${EROOT}usr/share/${PF}/"$CASPERJS_EXE" ${EROOT}usr/bin/casperjs || die

	if use doc; then
		dodoc bin/usage.txt CHANGELOG.md CONTRIBUTING.md CONTRIBUTORS.md README.md || die
	fi

	if use examples; then
		docinto examples
		dodoc samples/* || die
	fi
}

src_test() {
	./"$CASPERJS_EXE" test tests/suites || die
}
