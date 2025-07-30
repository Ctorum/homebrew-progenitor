class Progenitor < Formula
  desc "Project template generator CLI tool"
  homepage "https://github.com/Ctorum/progenitor"
  version "0.3.0"
  url "https://github.com/Ctorum/progenitor/releases/download/v0.3.0/progenitor.tar.gz"
  sha256 "6e1562c87ba8e9e2e70651a2dff7637be6d47b5ffd2940fff2360902e286188c"

  def install
    bin.install "progenitor"
    bin.install_symlink "progenitor" => "pgen"
  end

  test do
    system "#{bin}/progenitor", "--version"
    system "#{bin}/pgen", "--version"
  end
end
