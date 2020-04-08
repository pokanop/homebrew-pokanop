# This file was generated by GoReleaser. DO NOT EDIT.
class Nostromo < Formula
  desc "nostromo is a CLI to manage aliases through simple commands to add and remove scoped aliases and substitutions."
  homepage "https://nostromo.sh"
  version "0.7.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/pokanop/nostromo/releases/download/v0.7.2/nostromo_0.7.2_Darwin_x86_64.tar.gz"
    sha256 "59e0c0d0f6a1a122a724ab5eb1279bb5ec2ba8c5d76baaef2d5f2b7fa26d29fe"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/pokanop/nostromo/releases/download/v0.7.2/nostromo_0.7.2_Linux_x86_64.tar.gz"
      sha256 "7d8d3256c1634343033e3f68ae9a8435fc0fca08e1a097cf13b4c35a9f9ae7df"
    end
  end

  def install
    bin.install "nostromo"
  end

  def caveats; <<~EOS
    Initialize nostromo and create a manifest under ~/.nostromo by running:
    
      nostromo init
    
    You can get started by running the following interactive command:
    
      nostromo add
  EOS
  end

  test do
    system "#{bin}/nostromo help"
  end
end
