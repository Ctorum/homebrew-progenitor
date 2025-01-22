class Progenitor < Formula
  desc "Project template generator CLI tool"
  homepage "https://github.com/Ctorum/progenitor"
  version "0.2.5" 
  url "https://github.com/Ctorum/progenitor/releases/download/v0.2.5/progenitor-0.2.5.tar.gz"
  sha256 "8c6e60f6809201ad3f051bfa6b9a56c1434b4055b097bed91d20dcc9fd6d2ca3"

  def install
    bin.install "progenitor"
    bin.install_symlink "progenitor" => "pgen"
  end

  test do
    system "#{bin}/progenitor", "--version"
    system "#{bin}/pgen", "--version"
  end
end
