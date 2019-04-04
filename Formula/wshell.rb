# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Wshell < Formula
  desc "常用的自动化部署脚本"
  homepage "https://github.com/wxnacy/wshell"
  url "https://github.com/wxnacy/wshell/archive/v1.4.5.tar.gz"
  sha256 "27cd9a606e1fe99aefc6602d39a5e84e9a724d8412d98dd652e835abab0e0b6c"

  def install
    prefix.install Dir["*"]
  end
  def caveats; <<~EOS
    To finish the installation, Put this in your ~/.bash_profile:

      export WS_HOME=$(brew --prefix wshell)
      export PATH=$PATH:$WS_HOME/bin

  EOS
  end

  test do
    system "#{bin}/ws", "-v"
  end
end
