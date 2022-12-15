class MyApp < Formula
  desc ""
  homepage ""
  url "https://github.com/lsyncd/lsyncd/archive/release-2.3.1.tar.gz"
  sha256 "fc19a77b2258dc6dbb16a74f023de7cd62451c26984cedbec63e20ff22bcbdd8"
  license ""

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize
    system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
