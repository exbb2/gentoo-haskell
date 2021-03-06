# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="shell-like (systems) programming in Haskell"
HOMEPAGE="https://github.com/yesodweb/Shelly.hs"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/mtl:=[profile?]
		<dev-haskell/system-fileio-0.4:=[profile?]
		>=dev-haskell/system-filepath-0.4.7:=[profile?]
		<dev-haskell/system-filepath-0.5:=[profile?]
		dev-haskell/text:=[profile?]
		<dev-haskell/unix-compat-0.5:=[profile?]
		>=dev-lang/ghc-6.12.1:="
DEPEND="${RDEPEND}
		test? ( >=dev-haskell/hspec-1.4
			dev-haskell/hunit
		)
		>=dev-haskell/cabal-1.8"
