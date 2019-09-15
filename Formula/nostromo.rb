# This file was generated by GoReleaser. DO NOT EDIT.
class Nostromo < Formula
  desc "nostromo is a CLI to manage aliases through simple commands to add and remove scoped aliases and substitutions."
  homepage "https://nostromo.sh"
  version "0.1.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/pokanop/nostromo/releases/download/v0.1.0/nostromo_0.1.0_Darwin_x86_64.tar.gz"
    sha256 "30413dd80bfee026d4ddf635f7fecf4719c655dab5b15b29b48a4763072f3c57"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/pokanop/nostromo/releases/download/v0.1.0/nostromo_0.1.0_Linux_x86_64.tar.gz"
      sha256 "792c9c6a38406f92ce4aac4379063f48567e828a087b3750d7f3e7903d67a9b3"
    end
  end

  def install
    bin.install "nostromo"
  end

  def caveats; <<~EOS
    Initialize nostromo and create a manifest under ~/.nostromo by running:
    
      nostromo init
    
    You can add shell bindings for autocompletion adding these to your init file(s):
      eval "$(nostromo completion)" # for bash
      eval "$(nostromo completion --zsh)" # for zsh
  EOS
  end

  test do
    system "#{bin}/nostromo help"
  end
end
