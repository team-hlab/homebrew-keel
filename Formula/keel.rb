class Keel < Formula
  desc "Lean hook harness for AI coding agents (permit/deny/ask)"
  homepage "https://github.com/team-hlab/keel"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/team-hlab/keel/releases/download/v0.1.3/keel-aarch64-apple-darwin.tar.gz"
      sha256 "fc8d2db85560c6e2c1d26efafd691a70936dd72e4324e201365c875f6c44255d"
    end
    on_intel do
      url "https://github.com/team-hlab/keel/releases/download/v0.1.3/keel-x86_64-apple-darwin.tar.gz"
      sha256 "fe04634124cf1900e33ef1622c336fbaa6faffd52090e4401de31c574bcc6d81"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/team-hlab/keel/releases/download/v0.1.3/keel-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bfc834cc53ace8c8e18bbccc5d25c696d9a78637e39272f330b3108a604a7448"
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
