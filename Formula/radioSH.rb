class RadioSH < Formula
  desc "Mac OS X command-line controller for the venerable USB-based Griffin radioSHARK, allowing you to programmatically control its two LED notifiers and tune to arbitrary FM and AM radio stations"
  homepage "https://www.floodgap.com/software/radiosh/"
  url "https://www.floodgap.com/software/radiosh/radiosh-src.zip"
  version "1.0"
  sha256 "c961870dbcc7c180467e3bbf546d3cef7b621eb02b8be96edd04c60ff72ff6c0"
  license "BSD-3-Clause"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test radhiSH`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
