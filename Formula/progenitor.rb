class Progenitor < Formula
  desc "Project template generator CLI tool"
  homepage "https://github.com/Ctorum/progenitor"
  version "0.2.0" 

  if OS.mac?
    url "https://github.com/Ctorum/progenitor/releases/download/v0.2.0/progenitor-0.2.0.tar.gz"
    sha256 "504a72ae4892708b5a06360566430c864337cff7f40c3d74ef8dd80e3faec5aa"
  elsif OS.linux?
    url "https://github.com/Ctorum/progenitor/releases/download/v0.2.0/progenitor-0.2.0.tar.gz"
    sha256 "504a72ae4892708b5a06360566430c864337cff7f40c3d74ef8dd80e3faec5aa"
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