require_relative "../lib/private"
class Demo < Formula
  desc "Anqi's homebrew tap"
  homepage "https://github.com/AnqiPang/demo-repo"
  url "https://github.com/AnqiPang/demo-repo.git",
      tag:      "demo-0.5.0",
      revision: "4cddaba1ae8b255e08f57a62b392bbcd5110b1fb"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/AnqiPang/demo-repo/releases/download/demo-0.4.8"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "9c4d64c46a0c3624c41afb073f045ef2d0ed210264f473bc7066155928eced05"
    sha256 cellar: :any_skip_relocation, big_sur:        "325faca78379e3ddabaccac4342528b2aa3656bb6f13e92d5d4c3cf48bf85971"
  end
  depends_on "go" => :build
  def install
    system "go", "build", "greeter/main.go"
    bin.install "main"
    puts "Demo tap installed"
  end
end
