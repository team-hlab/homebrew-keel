class Keel < Formula
  desc "Lean hook harness for AI coding agents (permit/deny/ask)"
  homepage "https://github.com/team-hlab/keel"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/team-hlab/keel/releases/download/v0.1.1/keel-aarch64-apple-darwin.tar.gz"
      sha256 "d3fbbe7cd32be7173b096f978f50aebb49d74d6345e3d5363e1332779e3d6629"
    end
    on_intel do
      url "https://github.com/team-hlab/keel/releases/download/v0.1.1/keel-x86_64-apple-darwin.tar.gz"
      sha256 "d60b92459de5de694c831f536d30cf3edc98a5660da2b1afc925353972c11dd7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/team-hlab/keel/releases/download/v0.1.1/keel-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ed37ebd160843f946733544e0b40990fa45666e94f62640b74db6e63ab151bf"
    end
  end

  def install
    bin.install "keel"
  end

  def caveats
    <<~EOS
      Run `keel init` to attach keel to your installed agents
      (Claude Code, Codex, Antigravity).
    EOS
  end

  test do
    assert_match "ok", shell_output("#{bin}/keel doctor")
  end
end
