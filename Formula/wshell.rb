# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Wshell < Formula
  desc "常用的自动化部署脚本"
  homepage "https://github.com/wxnacy/wshell"
  url "https://github.com/wxnacy/wshell/archive/v1.4.5.tar.gz"
  sha256 "ec297c3c5389769e32bd99e48cf3751c0bacc311b24c1159bcd78d5dc6e4c24e"

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
