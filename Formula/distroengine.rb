class Distroengine < Formula
  desc "Standalone DistroEngine CLI for publishing, GTM, and attribution workflows"
  homepage "https://github.com/guardianai-network/distroengine-cli-releases"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/guardianai-network/distroengine-cli-releases/releases/download/distroengine-v0.1.6/distroengine-macos-apple-silicon"
      sha256 "f4663cbdef770c6b7a5431c760fc99ec363c1a2a382f0865c1a9590dc62adda6"

      def install
        bin.install "distroengine-macos-apple-silicon" => "distroengine"
      end
    else
      url "https://github.com/guardianai-network/distroengine-cli-releases/releases/download/distroengine-v0.1.6/distroengine-macos-intel"
      sha256 "196704e933e35d5cd004e095275da930401cdd7cf88f2db453fdd4ec3cd63bc2"

      def install
        bin.install "distroengine-macos-intel" => "distroengine"
      end
    end
  end

  on_linux do
    url "https://github.com/guardianai-network/distroengine-cli-releases/releases/download/distroengine-v0.1.6/distroengine-linux-x86_64"
    sha256 "1601a66c3cf41dd51cfb29bfa95db1b2d028d7800cd368abad3eed4b3ceea853"

    def install
      bin.install "distroengine-linux-x86_64" => "distroengine"
    end
  end

  test do
    assert_match "Standalone DistroEngine CLI", shell_output("#{bin}/distroengine --help")
  end
end
