class Mcpaste < Formula
  desc "Clipboard bridge between macOS and remote AI coding agents (MCP connector)"
  homepage "https://github.com/1yoouoo/mcpaste"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/1yoouoo/mcpaste/releases/download/v0.1.3/mcpaste-darwin-arm64"
      sha256 "d5a3336d1c3b0a555410b61d54f9a900cd64a38e08a075fdf292b134e6647835"
    end
    on_intel do
      url "https://github.com/1yoouoo/mcpaste/releases/download/v0.1.3/mcpaste-darwin-amd64"
      sha256 "51fadb91e604f146cae178e2ad196d176b66fd3f440bdd01a38ee4a2e7e97920"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/1yoouoo/mcpaste/releases/download/v0.1.3/mcpaste-arm64"
      sha256 "268d853d4f1ccf8d3c5ba7e0f9e5c1c677245e5ed89aeefd68a318098b20ff13"
    end
    on_intel do
      url "https://github.com/1yoouoo/mcpaste/releases/download/v0.1.3/mcpaste-amd64"
      sha256 "78f874debb550604ed1da88e1b0670a47a049762c54c9a0c149bde0c29fda522"
    end
  end

  def install
    bin.install Dir["mcpaste*"].first => "mcpaste"
  end

  def caveats
    <<~EOS
      Pair this machine with the MCPaste server:
        mcpaste setup --name <machine-name>
    EOS
  end

  test do
    assert_match "mcpaste", shell_output("#{bin}/mcpaste approve 2>&1", 1)
  end
end
