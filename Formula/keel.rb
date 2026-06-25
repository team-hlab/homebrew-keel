class Keel < Formula
  desc "Lean hook harness for AI coding agents (permit/deny/ask)"
  homepage "https://github.com/team-hlab/keel"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/team-hlab/keel/releases/download/v0.1.0/keel-aarch64-apple-darwin.tar.gz"
      sha256 "64a14b619e70792eef54ed35dfc2d42677a3dcc1d4215d26e7ca8050d6cebd4b"
    end
    on_intel do
      url "https://github.com/team-hlab/keel/releases/download/v0.1.0/keel-x86_64-apple-darwin.tar.gz"
      sha256 "c0c7888f674c3ee0f9d3e5ef0208d8a6fa291e5edae1dc0cc8b288b579adfb38"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/team-hlab/keel/releases/download/v0.1.0/keel-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d22f7707ded24857388f337c4e7a2233e9bb4ebea785e510513d1e90fea47ee6"
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
