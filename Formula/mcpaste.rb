class Mcpaste < Formula
  desc "Clipboard bridge between macOS and remote AI coding agents (MCP connector)"
  homepage "https://github.com/1yoouoo/mcpaste"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/1yoouoo/mcpaste/releases/download/v0.1.1/mcpaste-darwin-arm64"
      sha256 "378ca2eb462b350e24dee987c643dd514b0fb1cb3ba67c0b9178cff755780295"
    end
    on_intel do
      url "https://github.com/1yoouoo/mcpaste/releases/download/v0.1.1/mcpaste-darwin-amd64"
      sha256 "1c6fd03ac412f50385f141046277aefe7c21f995ee5c47209a882054678a29c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/1yoouoo/mcpaste/releases/download/v0.1.1/mcpaste-arm64"
      sha256 "ecbe010c855d09adde8016e729826a31ec1a631edf2f8c268e4c5df0d92f5739"
    end
    on_intel do
      url "https://github.com/1yoouoo/mcpaste/releases/download/v0.1.1/mcpaste-amd64"
      sha256 "90c5ad6bfc1e86e1af4d15a6a062ac4076c14dd754f5f9c084bed032d0aa6296"
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
