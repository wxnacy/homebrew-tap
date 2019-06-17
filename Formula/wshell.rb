# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Wshell < Formula
  desc "常用的自动化部署脚本"
  homepage "https://github.com/wxnacy/wshell"
  url "https://github.com/wxnacy/wshell/archive/v1.4.8.tar.gz"
  sha256 "a161a0dfa7ffb7217696b1d36dfab3c4adf74edc5ad780ec65309ff230cd726b"

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
