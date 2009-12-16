# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="bootstrap lib profile"
inherit haskell-cabal eutils

MY_PN="Cabal"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A framework for packaging Haskell software"
HOMEPAGE="http://www.haskell.org/cabal/"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE="doc"

# Cabal.cabal only depends on base>=1&&<5 and filepath>=1&&<1.2
# filepath has been a ghc core library since ghc 6.6.1, so let's use that as the
# lowest possible ghc version
DEPEND=">=dev-lang/ghc-6.6.1"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${MY_P}"

CABAL_CORE_LIB_GHC_PV="6.12.1"

src_compile() {
	if ! cabal-is-dummy-lib; then
		einfo "Bootstrapping Cabal..."
		$(ghc-getghc) -i -i. -i"${WORKDIR}/${FP_P}" -cpp --make Setup.hs \
			-o setup || die "compiling Setup.hs failed"
		cabal-configure
		cabal-build
	fi
}
