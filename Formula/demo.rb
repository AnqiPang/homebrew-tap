require_relative "../lib/private"
class Demo < Formula
  desc "Anqi's homebrew tap"
  homepage "https://github.com/AnqiPang/demo-repo"
  url "https://github.com/AnqiPang/demo-repo.git",
      tag:      "demo-0.3.6",
      revision: "6940eb5b5f9961ee94b79c0e983fbf50cfbf2a94"
  license "Apache-2.0"

  def install
    bin.install "src/HelloWorld.go"
    puts "Demo tap installed"
  end
end
