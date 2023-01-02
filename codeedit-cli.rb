class CodeeditCli < Formula
  desc "A command-line-interface to open files/folders in CodeEdit.app"
  homepage "https://github.com/CodeEditApp/CodeEditCLI"
  url "https://github.com/CodeEditApp/CodeEditCLI/archive/refs/tags/0.0.7.tar.gz"
  sha256 "6556e0d74938d68a53862600dce1d9f270570c16825e615d673f584193ffe5aa"
  license "MIT"

  depends_on xcode: ["14.0", :build]
  depends_on :macos
  uses_from_macos "swift"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "true"
  end
end
