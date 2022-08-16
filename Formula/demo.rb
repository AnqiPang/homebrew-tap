require_relative "../lib/private"
class Demo < Formula
  desc "Anqi's homebrew tap"
  homepage "https://github.com/AnqiPang/demo-repo"
  url "https://github.com/AnqiPang/demo-repo.git",
      tag:      "demo-0.3.5",
      revision: "f5e29072a4fc8452b52a603a5d6d8d4b0ba3b26b"
  license "Apache-2.0"

  def install
    bin.install "src/HelloWorld.go"
    puts "Demo tap installed"
  end
end
