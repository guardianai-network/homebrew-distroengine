class Distroengine < Formula
  desc "Standalone DistroEngine CLI for publishing, GTM, and attribution workflows"
  homepage "https://github.com/guardianai-network/distroengine-cli-releases"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/guardianai-network/distroengine-cli-releases/releases/download/distroengine-v0.1.3/distroengine-macos-apple-silicon"
      sha256 "ae1b4b59c9c29f3f6f2215e1f898fb1f9bc114ae488545221d5132d755845b0b"

      def install
        bin.install "distroengine-macos-apple-silicon" => "distroengine"
      end
    else
      url "https://github.com/guardianai-network/distroengine-cli-releases/releases/download/distroengine-v0.1.3/distroengine-macos-intel"
      sha256 "3fc524c20beeb0ae210e10941b9add23552e00938095f8c7e68e3eb3dc99b367"

      def install
        bin.install "distroengine-macos-intel" => "distroengine"
      end
    end
  end

  on_linux do
    url "https://github.com/guardianai-network/distroengine-cli-releases/releases/download/distroengine-v0.1.3/distroengine-linux-x86_64"
    sha256 "87b1a613b2fb9ac1222bf3301ae12c79480806418a7ff02a673670beddc227f8"

    def install
      bin.install "distroengine-linux-x86_64" => "distroengine"
    end
  end

  test do
    assert_match "Standalone DistroEngine CLI", shell_output("#{bin}/distroengine --help")
  end
end
