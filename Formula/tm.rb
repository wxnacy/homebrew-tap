# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Tm < Formula
  desc "Mysql client like vim in terminal"
  homepage "https://github.com/wxnacy/tm"
  url "https://github.com/wxnacy/tm/releases/download/0.4.0/tm-v0.4.0-darwin-amd64.zip"
  sha256 "8a3fc1f9bb7ce5624fcca8875ebf423ec80bec4ee7cc4d73faa5ec89ced10b57"
  version "0.4.0"

  def install
    
    bin.install "tm"
  end
end
