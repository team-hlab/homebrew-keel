class Keel < Formula
  desc "Lean hook harness for AI coding agents (permit/deny/ask)"
  homepage "https://github.com/team-hlab/keel"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/team-hlab/keel/releases/download/v0.1.5/keel-aarch64-apple-darwin.tar.gz"
      sha256 "b522c6933eb665549c41891d3135851c61afb060a4fd0a653e30ce2a2a06a823"
    end
    on_intel do
      url "https://github.com/team-hlab/keel/releases/download/v0.1.5/keel-x86_64-apple-darwin.tar.gz"
      sha256 "fffb0805ed94305ef58a6358d30ea5c9daed5d8723bbc434e171ab83c154c000"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/team-hlab/keel/releases/download/v0.1.5/keel-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9509f34978f0a61ecf5a021904be27376f90292277cb2451b9e732d4dc5757cd"
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
