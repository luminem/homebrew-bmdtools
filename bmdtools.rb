class Bmdtools < Formula
  homepage "https://github.com/lu-zero/bmdtools"
  head "https://github.com/lu-zero/bmdtools.git", :branch => "ancillary"

  depends_on "pkg-config" => :build
  depends_on "luminem/homebrew-bmdtools/decklinksdk" => :build
  depends_on "luminem/homebrew-bmdtools/libav" => ["with-fdk-aac"]

  def install
    args = ["SDK_PATH=#{HOMEBREW_PREFIX}/include",
            "DESTDIR=#{prefix}"]
    system "make", *args
    bin.install "bmdcapture"
    bin.install "bmdgenlock"
    bin.install "bmdplay"
  end
end
