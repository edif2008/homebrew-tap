class MyApp < Formula
  desc ""
  homepage ""
  url "https://github.com/lsyncd/lsyncd/archive/release-2.3.0.tar.gz"
  sha256 "08a1bcab041fa5d4c777ae272c72ad9917442b6e654b14ffd1a82ba0cd45e4ef"
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
