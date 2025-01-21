class Progenitor < Formula
  desc "Project template generator CLI tool"
  homepage "https://github.com/Ctorum/progenitor"
  version "0.2.1" 

  if OS.mac?
    url "https://github.com/Ctorum/progenitor/releases/download/v0.2.0/progenitor-0.2.0.tar.gz"
    sha256 "66349d4cb9cbf843decefe3a935462251a5c4d9033c8c3056a80310b449e96e0"
  elsif OS.linux?
    url "https://github.com/Ctorum/progenitor/releases/download/v0.2.0/progenitor-0.2.0.tar.gz"
    sha256 "66349d4cb9cbf843decefe3a935462251a5c4d9033c8c3056a80310b449e96e0"
  end

  def install
    bin.install "progenitor"
    bin.install_symlink "progenitor" => "pgen"
  end

  test do
    system "#{bin}/progenitor", "--version"
    system "#{bin}/pgen", "--version"
  end
end