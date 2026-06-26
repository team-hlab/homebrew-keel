class Keel < Formula
  desc "Lean hook harness for AI coding agents (permit/deny/ask)"
  homepage "https://github.com/team-hlab/keel"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/team-hlab/keel/releases/download/v0.1.2/keel-aarch64-apple-darwin.tar.gz"
      sha256 "2265748651f14b30f26abcb802cf5d55b87edee8cf71ccf140288d2f397ba140"
    end
    on_intel do
      url "https://github.com/team-hlab/keel/releases/download/v0.1.2/keel-x86_64-apple-darwin.tar.gz"
      sha256 "3ca2942413ee3c6d39b2051701b1b46344e9feaee382780277a42e14253e44dd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/team-hlab/keel/releases/download/v0.1.2/keel-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "db94ac63e16406072d1f2aee26d1f3e5129180eff3f7cfbea613083344b09840"
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
