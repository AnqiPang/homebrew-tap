require_relative "../lib/private.rb"
class Demo < Formula
  desc "Anqi's homebrew tap"
  homepage ""
  url "https://github.com/AnqiPang/demo-repo.git", 
      tag: "demo-0.2.0",
      revision: "12c659549faf6da67451ccbec1dcbc25bcb65ba7",
      :using => GitHubPrivateRepositoryDownloadStrategy
  license "Apache-2.0"

  def install
    bin.install "src/HelloWorld.go"
    puts "Demo tap installed"
  end
end
