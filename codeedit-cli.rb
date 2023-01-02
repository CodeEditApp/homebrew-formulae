class CodeeditCli < Formula
  desc "A command-line-interface to open files/folders in CodeEdit.app"
  homepage "https://github.com/CodeEditApp/CodeEditCLI"
  url "https://github.com/CodeEditApp/CodeEditCLI/archive/refs/tags/0.0.8.tar.gz"
  sha256 "b459d7a22b418d8f895ebb7158781f225855c77e1dbf4b5a38dad951f3aa5221"
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
