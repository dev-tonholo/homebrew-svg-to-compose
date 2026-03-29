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
      url "https://github.com/rafaeltonholo/svg-to-compose/releases/download/2.1.3/s2c-macosArm64-binaries.zip"
      sha256 "23308664ee71abfa83c8f4a1faa2e63cd7db1c2d02ad1c894964d32470903667"
    end

    on_intel do
      url "https://github.com/rafaeltonholo/svg-to-compose/releases/download/2.1.3/s2c-macosX64-binaries.zip"
      sha256 "b9112b9596703d3701128fff6c0e3a697525757b6bda317207af28da0ae1e855"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/rafaeltonholo/svg-to-compose/releases/download/2.1.3/s2c-linuxX64-binaries.zip"
      sha256 "a1237eb8f85fcb649acfd566fe33b821d19073c04e53c5225d35ea18d9350ea1"
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
