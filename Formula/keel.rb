class Keel < Formula
  desc "Lean hook harness for AI coding agents (permit/deny/ask)"
  homepage "https://github.com/team-hlab/keel"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/team-hlab/keel/releases/download/v0.1.4/keel-aarch64-apple-darwin.tar.gz"
      sha256 "d04d809f026bede49dfe304937b929d212787f2732eca450d649df55df747752"
    end
    on_intel do
      url "https://github.com/team-hlab/keel/releases/download/v0.1.4/keel-x86_64-apple-darwin.tar.gz"
      sha256 "f6235faf23824c3e3e0b6ccd91f545d4c9381fac9145f40f7cc2bd177d096677"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/team-hlab/keel/releases/download/v0.1.4/keel-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "44d8807125e44fb0c22702921da36625025973501b7cab1a8c9e6a0db5b39908"
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
