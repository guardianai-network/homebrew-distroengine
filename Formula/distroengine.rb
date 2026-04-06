class Distroengine < Formula
  desc "Standalone DistroEngine CLI for publishing, GTM, and attribution workflows"
  homepage "https://github.com/guardianai-network/distroengine-cli-releases"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/guardianai-network/distroengine-cli-releases/releases/download/distroengine-v0.1.4/distroengine-macos-apple-silicon"
      sha256 "1c83425eaf714a0075770dc55ca262039360156d29a0a21b9362ae83e83ad5da"

      def install
        bin.install "distroengine-macos-apple-silicon" => "distroengine"
      end
    else
      url "https://github.com/guardianai-network/distroengine-cli-releases/releases/download/distroengine-v0.1.4/distroengine-macos-intel"
      sha256 "d3a67ce3e9a72c023c184ac31a7db4b5a8ee420e4d9080633829730ab50b7708"

      def install
        bin.install "distroengine-macos-intel" => "distroengine"
      end
    end
  end

  on_linux do
    url "https://github.com/guardianai-network/distroengine-cli-releases/releases/download/distroengine-v0.1.4/distroengine-linux-x86_64"
    sha256 "0d7b2df8953072c3be02d90190ef93c875c0bd2fe4993ece9267e77159dc8d37"

    def install
      bin.install "distroengine-linux-x86_64" => "distroengine"
    end
  end

  test do
    assert_match "Standalone DistroEngine CLI", shell_output("#{bin}/distroengine --help")
  end
end
