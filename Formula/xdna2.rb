class Xdna2 < Formula
  desc "Convert DNA Strider (.xdna) files to GenBank/FASTA format"
  homepage "https://incenp.org/dvlpt/xdna2.html"
  url "https://incenp.org/files/softs/xdna2/0.2/xdna2-0.2.4.tar.gz"
  sha256 "3d75a154ad9249fe3eb535c703c6623a99d7b0e00da4652bcfdf79929ab49245"
  license "GPL-3.0-only"

  depends_on "gettext" => "0.19"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    system "xdna", "--version"
  end
end
