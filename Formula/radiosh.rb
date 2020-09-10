class Radiosh < Formula
  desc "Mac OS X command-line controller for the venerable USB-based Griffin radioSHARK"
  homepage "https://www.floodgap.com/software/radiosh/"
  url "https://www.floodgap.com/software/radiosh/radiosh-src.zip"
  version "1.0"
  sha256 "c961870dbcc7c180467e3bbf546d3cef7b621eb02b8be96edd04c60ff72ff6c0"
  license "BSD-3-Clause"

  depends_on "cmake" => :build

  def install
    system "make", "radiosh64", "PREFIX=#{prefix}"
    bin.install "radiosh"
  end

  test do
    system "radiosh"
  end
end
