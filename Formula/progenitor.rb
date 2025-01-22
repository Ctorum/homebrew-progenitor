class Progenitor < Formula
  desc "Project template generator CLI tool"
  homepage "https://github.com/Ctorum/progenitor"
  version "0.2.1" 

  if OS.mac?
    url "https://github.com/Ctorum/progenitor/releases/download/v0.2.4/progenitor-0.2.4.tar.gz"
    sha256 "7abedc637b94ca59c08afae33b35bc794fae411d6b573468b44d5ad3d47cc10f"
  elsif OS.linux?
    url "https://github.com/Ctorum/progenitor/releases/download/v0.2.4/progenitor-0.2.4.tar.gz"
    sha256 "7abedc637b94ca59c08afae33b35bc794fae411d6b573468b44d5ad3d47cc10f"
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