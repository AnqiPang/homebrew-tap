require_relative "../lib/private"
class Demo < Formula
  desc "Anqi's homebrew tap"
  homepage "https://github.com/AnqiPang/demo-repo"
  url "https://github.com/AnqiPang/demo-repo.git",
      tag:      "demo-0.4.8",
      revision: "351a3a00faf864d6f91127d5d13ff8de0bd241eb"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/AnqiPang/demo-repo/releases/download/demo-0.4.7"
    sha256 cellar: :any_skip_relocation, big_sur: "4469f45b5b23410b333d3a984710cedd4831a0a15307d18adec62ca18af2987a"
  end
  depends_on "go" => :build
  def install
    system "go", "build", "greeter/main.go"
    bin.install "main"
    puts "Demo tap installed"
  end
end
