class MyApp < Formula
  desc ""
  homepage ""
  url "https://github.com/PaulBatchelor/soundpipe/archive/v1.7.0.tar.gz"
  sha256 "2d6f6b155ad93d12f59ae30e2b0f95dceed27e0723147991da6defc6d65eadda"
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
