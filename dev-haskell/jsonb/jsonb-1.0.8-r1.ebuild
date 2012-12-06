# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.1.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit base haskell-cabal

MY_PN="JSONb"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="JSON parser that uses byte strings."
HOMEPAGE="http://github.com/solidsnack/JSONb/"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.10:=[profile?]
		>=dev-haskell/bytestring-nums-0.3.1:=[profile?]
		>=dev-haskell/bytestring-trie-0.1.4:=[profile?]
		>=dev-haskell/utf8-string-0.3:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

S="${WORKDIR}/${MY_P}"

PATCHES=("${FILESDIR}"/${P}-bs-0.10.patch)