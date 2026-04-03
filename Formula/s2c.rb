class S2c < Formula
  desc "CLI tool to convert SVG/Android Vector Drawable to Jetpack Compose ImageVector"
  homepage "https://www.svgtocompose.com"
  license "MIT"

  livecheck do
    url :stable
    regex(/(\d+(?:\.\d+)+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/rafaeltonholo/svg-to-compose/releases/download/2.2.0/s2c-macosArm64-binaries.zip"
      sha256 "521a50ebaf01429b4eb6d5e60eaa534ad560db4492af1f1821d7e03b3e474d4a"
    end

    on_intel do
      url "https://github.com/rafaeltonholo/svg-to-compose/releases/download/2.2.0/s2c-macosX64-binaries.zip"
      sha256 "750e4f5bcd8ab0dce0670ef5a25f6814d4c6d54434e6ae4aa44871224b922a6d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rafaeltonholo/svg-to-compose/releases/download/2.2.0/s2c-linuxX64-binaries.zip"
      sha256 "77787acfff4ac5fe7a7f9d814e0e38c59794578f6ed41502c0552cddba2fc6db"
    end
  end

  def install
    bin.install "s2c.kexe" => "s2c"
  end

  def caveats
    <<~EOS
      s2c is also available as a Gradle plugin for Android/KMP projects:
        plugins {
id("dev.tonholo.s2c") version "#{version}"
        }

      For more information, visit:
        https://github.com/rafaeltonholo/svg-to-compose
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/s2c --version")
  end
end
