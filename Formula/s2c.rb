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
      url "https://github.com/rafaeltonholo/svg-to-compose/releases/download/2.2.1/s2c-macosArm64-binaries.zip"
      sha256 "9448286708eee81178c5377f21198f71ec731db81dde902b2b6492874853a37a"
    end

    on_intel do
      url "https://github.com/rafaeltonholo/svg-to-compose/releases/download/2.2.1/s2c-macosX64-binaries.zip"
      sha256 "b7df9ea7d497a954aea6b72289507754054f5234daf367a5490cd29d301f3162"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rafaeltonholo/svg-to-compose/releases/download/2.2.1/s2c-linuxX64-binaries.zip"
      sha256 "6b6f4611a49c338cb12d454f91109e66dd6fb93830f5c44dea7ea272eb528db3"
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
