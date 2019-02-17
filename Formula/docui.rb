# This file was generated by GoReleaser. DO NOT EDIT.
class Docui < Formula
  desc "TUI Client for Docker"
  homepage "https://github.com/skanehira/docui"
  url "https://github.com/gotchane/docui/releases/download/1.0.6/docui_1.0.6_Darwin_x86_64.tar.gz"
  version "1.0.6"
  sha256 "09373d147a12c1a3fc073aeecefe400a61ef59caeeca663ca7e8677b63eb2343"
  
  depends_on "go"

  def install
    bin.install "docui"
  end

  test do
    system "#{bin}/docui", "version"
  end
end
