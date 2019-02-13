class Docui < Formula
  desc "TUI Client for Docker"
  homepage "https://github.com/skanehira/docui"
  url "https://github.com/skanehira/docui/archive/1.0.2.tar.gz"
  sha256 "0c55d5261bda1fd4bf070541357482be0baa83043651179c8a38129b5ff8a0a4"
  depends_on "go" => :build

  def install
    print buildpath
    ENV['GOPATH'] = buildpath
    docui_path = buildpath/"src/github.com/skanehira/docui"
    docui_path.install buildpath.children
    system 'go', 'install'
    bin.install 'docui'
    cd docui_path do
      system "go", "build"
      bin.install "docui"
    end
  end

  test do
    system "#{bin}/docui", "version"
  end
end
