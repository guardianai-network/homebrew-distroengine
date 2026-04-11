class Distroengine < Formula
  desc "Standalone DistroEngine CLI for publishing, GTM, and attribution workflows"
  homepage "https://github.com/guardianai-network/distroengine-cli-releases"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/guardianai-network/distroengine-cli-releases/releases/download/distroengine-v0.1.7/distroengine-macos-apple-silicon"
      sha256 "fbc85d5c91deca2e7ec7a36958f4c87ee7dec7856034fc71f067a8a834fbc621"

      def install
        bin.install "distroengine-macos-apple-silicon" => "distroengine"
      end
    else
      url "https://github.com/guardianai-network/distroengine-cli-releases/releases/download/distroengine-v0.1.7/distroengine-macos-intel"
      sha256 "b826d5680aa9c5737b79b1781f35a09a2341a483875a69413f7974925eb5b77e"

      def install
        bin.install "distroengine-macos-intel" => "distroengine"
      end
    end
  end

  on_linux do
    url "https://github.com/guardianai-network/distroengine-cli-releases/releases/download/distroengine-v0.1.7/distroengine-linux-x86_64"
    sha256 "ca9ddafa58d732f54e161b12ac30733cefc02ff1c0868f54a2f08a19eac810a7"

    def install
      bin.install "distroengine-linux-x86_64" => "distroengine"
    end
  end

  test do
    assert_match "Standalone DistroEngine CLI", shell_output("#{bin}/distroengine --help")
  end
end
