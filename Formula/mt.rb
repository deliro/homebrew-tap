class Mt < Formula
  desc "Native desktop client for Meshtastic radios (BLE / Serial / TCP)"
  homepage "https://github.com/deliro/mt"
  version "0.2.0"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/deliro/mt/releases/download/v0.2.0/mt-aarch64-apple-darwin.tar.gz"
      sha256 "9a7302e3bc8b2743d9276cb2b5ed650221e271261569838ad5b80ea28bfe0f51"
    end
    on_intel do
      url "https://github.com/deliro/mt/releases/download/v0.2.0/mt-x86_64-apple-darwin.tar.gz"
      sha256 "d3bb1c6dbaeb32e82b1f7cc7f374525953e35d22fccf29680be7b94beff19629"
    end
  end

  on_linux do
    url "https://github.com/deliro/mt/releases/download/v0.2.0/mt-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "263bccbace916c9560b3eb2bdd52d71a78dca67f9557bcd371eca550efa2e031"
  end

  def install
    bin.install "mt"
  end

  test do
    system "#{bin}/mt", "--help"
  end
end
