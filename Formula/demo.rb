require_relative "../lib/private"
class Demo < Formula
  desc "Anqi's homebrew tap"
  homepage "https://github.com/AnqiPang/demo-repo"
  url "https://github.com/AnqiPang/demo-repo.git",
      tag:      "demo-0.5.3",
      revision: "8e6e9f52d55cb8c6ccdd76c77f29b1fc403011cf"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/AnqiPang/demo-repo/releases/download/demo-0.5.3"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "15e9b6c4e5f940c86e0eb1b01ceb7b8dea341b019cba7d7dcec17892a83ad1a4"
    sha256 cellar: :any_skip_relocation, big_sur:        "0ec6c05472482c48bb4ba828c230db27cd0ffd5ae826072803e8fc4ec63049b1"
  end
  depends_on "go" => :build
  def install
    system "go", "build", "greeter/main.go"
    bin.install "main"
    puts "Demo tap installed"
  end
end
