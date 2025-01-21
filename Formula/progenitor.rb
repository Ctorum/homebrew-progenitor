class Progenitor < Formula
  desc "Project template generator CLI tool"
  homepage "https://github.com/Ctorum/progenitor"
  version "0.2.0" 

  if OS.mac?
    url "https://github.com/Ctorum/progenitor/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "426a60152e225060f451b48214efb9407d0422029923f1c1a9b76b27c9b5fc16  progenitor-0.2.0.tar"
  elsif OS.linux?
    url "https://github.com/Ctorum/progenitor/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "426a60152e225060f451b48214efb9407d0422029923f1c1a9b76b27c9b5fc16  progenitor-0.2.0.tar"
  end

  def install
    bin.install "progenitor"
  end

  test do
    system "#{bin}/progenitor", "--version"
  end
end
