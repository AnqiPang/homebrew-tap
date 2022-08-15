require_relative "../lib/private"
class Demo < Formula
  desc "Anqi's homebrew tap"
  homepage "https://github.com/AnqiPang/demo-repo"
  url "https://github.com/AnqiPang/demo-repo.git",
      tag:      "demo-0.3.0",
      revision: "aec678ec192694e2e060f254101ee20fb6b2316c"
  license "Apache-2.0"

  def install
    bin.install "src/HelloWorld.go"
    puts "Demo tap installed"
  end
end
