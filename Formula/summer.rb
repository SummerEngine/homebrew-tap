class Summer < Formula
  desc "MCP server, CLI and skills for Summer Engine, the game engine built for AI"
  homepage "https://summerengine.com"
  url "https://registry.npmjs.org/summer-engine/-/summer-engine-4.8.0.tgz"
  sha256 "eac21670ae5185cf106ab22367c447654c630cfee975dff3ef70b487266c68fc"
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
