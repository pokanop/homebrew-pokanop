# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nostromo < Formula
  desc "nostromo is a CLI to manage aliases through simple commands to add and remove scoped aliases and substitutions."
  homepage "https://nostromo.sh"
  version "0.9.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pokanop/nostromo/releases/download/v0.9.7/nostromo_0.9.7_Darwin_arm64.tar.gz"
      sha256 "b4b5f5980b4cb6ca9060cb925f504812c584536769b728df09f1d4c81b307d88"

      def install
        bin.install "nostromo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pokanop/nostromo/releases/download/v0.9.7/nostromo_0.9.7_Darwin_x86_64.tar.gz"
      sha256 "459193876daece1515393193364c0fe5beb05d4bbe6c97abbfc0c7e060c51336"

      def install
        bin.install "nostromo"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pokanop/nostromo/releases/download/v0.9.7/nostromo_0.9.7_Linux_arm64.tar.gz"
      sha256 "7491070181b4a711e4aa9376a4196ab42d852b3e1125fda587f9296de71c2599"

      def install
        bin.install "nostromo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pokanop/nostromo/releases/download/v0.9.7/nostromo_0.9.7_Linux_x86_64.tar.gz"
      sha256 "0ea09c2bcca4640736cba8c5a89050327ad99916d923de4d8451cbe338457b25"

      def install
        bin.install "nostromo"
      end
    end
  end

  def caveats; <<~EOS
    Initialize nostromo which will create a manifest under ~/.nostromo by running:

      nostromo init

    You can get started by running the following interactive command:

      nostromo add

    Be sure to source your shell profile after initializing nostromo for auto-complete to work.
  EOS
  end

  test do
    system "#{bin}/nostromo help"
  end
end
