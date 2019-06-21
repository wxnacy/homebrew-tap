# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Wshell < Formula
  desc "常用的自动化部署脚本"
  homepage "https://github.com/wxnacy/wshell"
  url "https://github.com/wxnacy/wshell/archive/v1.5.0.tar.gz"
  sha256 "291d646b5c32369a6ae454f9bd49fd4a7a6031cf9a348435e6301c10393da366"

  def install
    prefix.install Dir["*"]
  end
  def caveats; <<~EOS
    To finish the installation, Put this in your ~/.bash_profile:

      export WS_HOME=$(brew --prefix wshell)
      export PATH=$PATH:$WS_HOME/bin
      . ${WS_HOME}/conf/bash/bashrc

  EOS
  end

  test do
    system "#{bin}/ws", "-v"
  end
end
