class Distroengine < Formula
  desc "Standalone DistroEngine CLI for publishing, GTM, and attribution workflows"
  homepage "https://github.com/guardianai-network/distroengine-cli-releases"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/guardianai-network/distroengine-cli-releases/releases/download/distroengine-v0.1.8/distroengine-macos-apple-silicon"
      sha256 "b74cbbc7e7336c4c6b43fc67ddfeac794991880c875e379faf11a084ae18aa50"

      def install
        bin.install "distroengine-macos-apple-silicon" => "distroengine"
      end
    else
      url "https://github.com/guardianai-network/distroengine-cli-releases/releases/download/distroengine-v0.1.8/distroengine-macos-intel"
      sha256 "f4d3c0cbbfa93aa1db27bb57f5ad1a7ebb9aab103d12fd31a5380e8e53929a4b"

      def install
        bin.install "distroengine-macos-intel" => "distroengine"
      end
    end
  end

  on_linux do
    url "https://github.com/guardianai-network/distroengine-cli-releases/releases/download/distroengine-v0.1.8/distroengine-linux-x86_64"
    sha256 "722512b84e5ddbfde0ddfc9b28cbc59524136c3ebf807dac3f4c56e89da781ec"

    def install
      bin.install "distroengine-linux-x86_64" => "distroengine"
    end
  end

  test do
    assert_match "Standalone DistroEngine CLI", shell_output("#{bin}/distroengine --help")
  end
end
