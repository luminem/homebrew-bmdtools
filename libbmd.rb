class Bmdtools < Formula
  homepage "https://github.com/lu-zero/libbmd"
  head "https://github.com/lu-zero/libbmd.git"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "pkg-config" => :build
  depends_on "luminem/homebrew-bmdtools/decklinksdk" => :build

  def install
    system "autoreconf", "-ivf"
    system "./configure", "--with-sdkdir=#{HOMEBREW_PREFIX}/include",
                          "--disable-tools"
    system "make"
    system "make", "install"
  end
end
