# This file was generated by GoReleaser. DO NOT EDIT.
class Nostromo < Formula
  desc "nostromo is a CLI to manage aliases through simple commands to add and remove scoped aliases and substitutions."
  homepage "https://nostromo.sh"
  version "0.3.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/pokanop/nostromo/releases/download/v0.3.4/nostromo_0.3.4_Darwin_x86_64.tar.gz"
    sha256 "2896a17a974fd2a17ba21ce81affb0c65afa01360d62afc93dcbcbba4145ed08"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/pokanop/nostromo/releases/download/v0.3.4/nostromo_0.3.4_Linux_x86_64.tar.gz"
      sha256 "55e2f919f9f43d8849269cfd09e71594db824b8e9de1e57eacfad82108e8b381"
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
