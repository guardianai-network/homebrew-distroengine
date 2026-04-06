class Distroengine < Formula
  desc "Standalone DistroEngine CLI for publishing, GTM, and attribution workflows"
  homepage "https://github.com/guardianai-network/distroengine-cli-releases"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/guardianai-network/distroengine-cli-releases/releases/download/distroengine-v0.1.5/distroengine-macos-apple-silicon"
      sha256 "c00bd5fe5d18aaa3d82cd441ee401fb2570d9b650281003dde9653835ea1449f"

      def install
        bin.install "distroengine-macos-apple-silicon" => "distroengine"
      end
    else
      url "https://github.com/guardianai-network/distroengine-cli-releases/releases/download/distroengine-v0.1.5/distroengine-macos-intel"
      sha256 "45ec3c97e2bc7a61d7526568339378783449a372c95369dea5fbdfd57daf96b4"

      def install
        bin.install "distroengine-macos-intel" => "distroengine"
      end
    end
  end

  on_linux do
    url "https://github.com/guardianai-network/distroengine-cli-releases/releases/download/distroengine-v0.1.5/distroengine-linux-x86_64"
    sha256 "91325b510c2b718f64dd2a889de874c133c25a29b8183f4be517e69babdf5971"

    def install
      bin.install "distroengine-linux-x86_64" => "distroengine"
    end
  end

  test do
    assert_match "Standalone DistroEngine CLI", shell_output("#{bin}/distroengine --help")
  end
end
