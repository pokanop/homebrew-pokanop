# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nostromo < Formula
  desc "nostromo is a CLI to manage aliases through simple commands to add and remove scoped aliases and substitutions."
  homepage "https://nostromo.sh"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pokanop/nostromo/releases/download/v0.8.0/nostromo_0.8.0_Darwin_arm64.tar.gz"
      sha256 "bdd632cdb8afd12af4cdc0f6a63bfd800b8fe15cccb9e2023a6ae7687afb451b"

      def install
        bin.install "nostromo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pokanop/nostromo/releases/download/v0.8.0/nostromo_0.8.0_Darwin_x86_64.tar.gz"
      sha256 "97dc60bbc1da29996ab9fcc0268eaaba8bd7b08c86f3bdd9717e45679be0a256"

      def install
        bin.install "nostromo"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pokanop/nostromo/releases/download/v0.8.0/nostromo_0.8.0_Linux_arm64.tar.gz"
      sha256 "7104061ae6dfaf991c41c3ff85dc60297f0d67e772fbb92a443b225f7a51b1d1"

      def install
        bin.install "nostromo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pokanop/nostromo/releases/download/v0.8.0/nostromo_0.8.0_Linux_x86_64.tar.gz"
      sha256 "fc72a2c23ced506e197551e6126da7b8ce4a012e1c8850d540f6b172e2f721ec"

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
