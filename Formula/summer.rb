class Summer < Formula
  desc "MCP server, CLI and skills for Summer Engine, the game engine built for AI"
  homepage "https://summerengine.com"
  url "https://registry.npmjs.org/summer-engine/-/summer-engine-4.2.0.tgz"
  sha256 "ce91f7767ecafa237c21e193d510bcd52252288cb81872c28aadf120416e609b"
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
