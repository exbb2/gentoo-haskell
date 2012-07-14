# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Happstack backend for the digestive-functors library"
HOMEPAGE="http://github.com/jaspervdj/digestive-functors"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/digestive-functors-0.5*[profile?]
		>=dev-haskell/happstack-server-6.0[profile?]
		<dev-haskell/happstack-server-7.1[profile?]
		>=dev-haskell/text-0.11[profile?]
		<dev-haskell/text-1.0[profile?]
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	sed -e 's@bytestring         >= 0.9  && < 0.10@bytestring         >= 0.9  \&\& < 0.11@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}