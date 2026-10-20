class Summer < Formula
  desc "MCP server, CLI and skills for Summer Engine, the game engine built for AI"
  homepage "https://summerengine.com"
  url "https://registry.npmjs.org/summer-engine/-/summer-engine-4.5.0.tgz"
  sha256 "14bab0b797165d5e4bb3ea566a8788daf624938e580e50e2cf5304ee5fc2545f"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/summer --version")
  end
end
