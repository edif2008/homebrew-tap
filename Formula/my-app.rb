class MyApp < Formula
  desc ""
  homepage ""
  url "https://registry.npmjs.org/@babel/core/-/core-7.20.5.tgz"
  sha256 "7c30f9e1dcb7ac82fba886325e71ff4da29f628706258c842844aa394dd63f93"
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
