class MyApp < Formula
  desc ""
  homepage ""
  url "https://github.com/DOCGroup/ACE_TAO/releases/download/ACE%2BTAO-7_0_10/ACE+TAO-7.0.10.tar.bz2"
  sha256 "cba005e2d267884ba9634414bd39c2a72b8717eb9f7a7a293298f3b2a05c841e"
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
