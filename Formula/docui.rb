class Docui < Formula
  desc "TUI Client for Docker"
  homepage "https://github.com/skanehira/docui"
  url "https://github.com/skanehira/docui/archive/1.0.2.tar.gz"
  sha256 "0c55d5261bda1fd4bf070541357482be0baa83043651179c8a38129b5ff8a0a4"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "#{bin}/docui", "version"
  end
end
