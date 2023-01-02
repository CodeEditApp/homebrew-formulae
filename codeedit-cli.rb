class CodeeditCli < Formula
  desc "A command-line-interface to open files/folders in CodeEdit.app"
  homepage "https://github.com/CodeEditApp/CodeEditCLI"
  url "https://github.com/CodeEditApp/CodeEditCLI.git", tag: "0.0.7"
  head "https://github.com/CodeEditApp/CodeEditCLI.git", branch: "main"
  license "MIT"
  version "0.0.7"

  depends_on xcode: ["14.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "true"
  end
end
