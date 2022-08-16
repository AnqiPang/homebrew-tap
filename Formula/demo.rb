require_relative "../lib/private"
class Demo < Formula
  desc "Anqi's homebrew tap"
  homepage "https://github.com/AnqiPang/demo-repo"
  url "https://github.com/AnqiPang/demo-repo.git",
      tag:      "demo-0.3.7",
      revision: "b59950448c7f0f8e9ae50ec8e1450e7bc195e48e"
  license "Apache-2.0"

  def install
    bin.install "src/HelloWorld.go"
    puts "Demo tap installed"
  end
end
