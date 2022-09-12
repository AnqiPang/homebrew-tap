require_relative "../lib/private"
class Demo < Formula
  desc "Anqi's homebrew tap"
  homepage "https://github.com/AnqiPang/demo-repo"
  url "https://github.com/AnqiPang/demo-repo.git",
      tag:      "demo-0.5.7",
      revision: "fdb8b9cb0f409f23fb0d021f4ea04841d55afc86"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/AnqiPang/demo-repo/releases/download/demo-0.5.7"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "ebb41109f7a3bfddd35f12394033d4457572f6165bb64eb8f19156565fa8a61b"
    sha256 cellar: :any_skip_relocation, big_sur:        "1a2c56f62387ce94b061009feb25dc695b59ad8f91a1fed8152814bbfa1baf74"
  end
  depends_on "go" => :build
  def install
    system "go", "build", "greeter/main.go"
    bin.install "main"
    puts "Demo tap installed"
  end
end
