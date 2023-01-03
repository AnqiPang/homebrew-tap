require_relative "../lib/private"
class Demo < Formula
  desc "Anqi's homebrew tap"
  homepage "https://github.com/AnqiPang/demo-repo"
  url "https://github.com/AnqiPang/demo-repo.git",
      tag:      "demo-0.5.6",
      revision: "a6da8c08976f3fbfc0689c659655609a08632fae"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/AnqiPang/demo-repo/releases/download/demo-0.5.6"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "f78296e0cfb0f18f4a3812972e2956d8324b12ba7c4f86aced973e425e44fc2a"
    sha256 cellar: :any_skip_relocation, big_sur:        "4434f6751455cbc60287df4b8bd1e8938cc23a66841fbecae41354925f70cabf"
  end
  depends_on "go" => :build
  def install
    system "go", "build", "greeter/main.go"
    bin.install "main"
    puts "Demo tap installed halo main"
  end
end
