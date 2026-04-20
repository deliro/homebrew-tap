class Mt < Formula
  desc "Native desktop client for Meshtastic radios (BLE / Serial / TCP)"
  homepage "https://github.com/deliro/mt"
  version "0.2.1"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/deliro/mt/releases/download/v0.2.1/mt-aarch64-apple-darwin.tar.gz"
      sha256 "15ec84c08cbbf293e4ea13fd710a8b637655ff5129fc86dc58dfcfc73c1bf64a"
    end
    on_intel do
      url "https://github.com/deliro/mt/releases/download/v0.2.1/mt-x86_64-apple-darwin.tar.gz"
      sha256 "ae59b8b478c45ea9c170d8bde20cfc12249a4bdcbd97190cd8e51f4679296faf"
    end
  end

  on_linux do
    url "https://github.com/deliro/mt/releases/download/v0.2.1/mt-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "155c566d86a6f016e271fe36d2385e614d9da055c6a656456d973cda20fbdb0c"
  end

  def install
    bin.install "mt"
  end

  test do
    system "#{bin}/mt", "--help"
  end
end
