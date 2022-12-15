class MyApp < Formula
  desc ""
  homepage ""
  url "https://github.com/gotoh/ssh-connect/archive/1.105.tar.gz"
  sha256 "96c50fefe7ecf015cf64ba6cec9e421ffd3b18fef809f59961ef9229df528f3e"
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
