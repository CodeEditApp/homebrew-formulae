class CodeeditCli < Formula
  desc "A command-line-interface to open files/folders in CodeEdit.app"
  homepage "https://github.com/CodeEditApp/CodeEditCLI"
  url "https://github.com/CodeEditApp/CodeEditCLI/archive/refs/tags/0.0.9.tar.gz"
  sha256 "dac1795afea06016d13235c729f65cd4eb5116d1839f7eaefb9c5548ae6b26bc"
  license "MIT"

  depends_on xcode: ["14.0", :build]
  depends_on :macos
  uses_from_macos "swift"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    assert_match "OVERVIEW", shell_output("#{bin}/codeedit --help")
  end
end
