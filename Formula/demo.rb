require_relative "lib/private.rb"
class Demo < Formula
  desc "Anqi's homebrew tap"
  homepage ""
  url "https://github.com/AnqiPang/demo-repo/archive/refs/tags/0.1.0.tar.gz", :using => GitHubPrivateRepositoryDownloadStrategy
  sha256 "51704a66a5bac02de7a6c325be04f29e5413b197b666de22865cc2d3ced111d9"
  license "Apache-2.0"
  version "0.1.0"
  def install
    bin.install "src/HelloWorld.go"
    puts "Demo tap installed"
  end
end
