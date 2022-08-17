require_relative "../lib/private"
class Demo < Formula
  desc "Anqi's homebrew tap"
  homepage "https://github.com/AnqiPang/demo-repo"
  url "https://github.com/AnqiPang/demo-repo.git",
      tag:      "demo-0.4.4",
      revision: "ab596bda4f872c616f173cf1e36889d596c41532"
  license "Apache-2.0"
  depends_on "go" => :build
  def install
    system "go", "build", "greeter/main.go"
    bin.install "main"
    puts "Demo tap installed"
  end
end
