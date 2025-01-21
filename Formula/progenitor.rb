class Progenitor < Formula
  desc "Project template generator CLI tool"
  homepage "https://github.com/Ctorum/progenitor"
  version "0.2.0" 

  if OS.mac?
    url "https://github.com/Ctorum/progenitor/releases/download/v0.2.0/progenitor-0.2.0.tar.gz"
    sha256 "904fb3c605ef19e009812221f56721c9c071c1315d0ac83d56503938ef69dccc"
  elsif OS.linux?
    url "https://github.com/Ctorum/progenitor/releases/download/v0.2.0/progenitor-0.2.0.tar.gz"
    sha256 "904fb3c605ef19e009812221f56721c9c071c1315d0ac83d56503938ef69dccc"
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