class Summer < Formula
  desc "MCP server, CLI and skills for Summer Engine, the game engine built for AI"
  homepage "https://summerengine.com"
  url "https://registry.npmjs.org/summer-engine/-/summer-engine-4.3.0.tgz"
  sha256 "ffb422da5ef25709bdeaec7e188aaefee954272169b566788642622c0c8de05d"
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
