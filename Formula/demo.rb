require_relative "../lib/private"
class Demo < Formula
  desc "Anqi's homebrew tap"
  homepage "https://github.com/AnqiPang/demo-repo"
  url "https://github.com/AnqiPang/demo-repo.git",
      tag:      "demo-0.3.9",
      revision: "6246feb41fb406300bca33ebfa6688d1bd129749"
  license "Apache-2.0"

  def install
    bin.install "src/HelloWorld.go"
    puts "Demo tap installed"
  end
end
