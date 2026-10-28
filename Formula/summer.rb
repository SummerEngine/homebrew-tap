class Summer < Formula
  desc "MCP server, CLI and skills for Summer Engine, the game engine built for AI"
  homepage "https://summerengine.com"
  url "https://registry.npmjs.org/summer-engine/-/summer-engine-4.9.1.tgz"
  sha256 "66c4f51e627ef20de4f7ec2ce52343708860b7674bbd0309dad28cb8b539f7f4"
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
