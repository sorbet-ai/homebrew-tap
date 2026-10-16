class Omnimon < Formula
  desc "Terminal monitor for GPUs, the processes using them and the machine around them"
  homepage "https://github.com/sorbet-ai/omnimon"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sorbet-ai/omnimon/releases/download/v0.1.2/omnimon-aarch64-apple-darwin"
      sha256 "ce134298b93fc6ad9ab78aae2bd4d375269d3a58357c0e4f5efb6f854a64a467"
    end
    on_intel do
      url "https://github.com/sorbet-ai/omnimon/releases/download/v0.1.2/omnimon-x86_64-apple-darwin"
      sha256 "b4b7e5d29daef00a6a001697b51c023f07d5a0a9904376ab4817972da7081b4a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sorbet-ai/omnimon/releases/download/v0.1.2/omnimon-aarch64-unknown-linux-gnu"
      sha256 "f56c1c983681b7e8486ff32c8f35aee0db70ffb32ff9673c697ea854bd9c5462"
    end
    on_intel do
      url "https://github.com/sorbet-ai/omnimon/releases/download/v0.1.2/omnimon-x86_64-unknown-linux-gnu"
      sha256 "bf067fea65058deca810705d5d4baa056fe22a4c87c5a1b75d8c3b429ebffe0a"
    end
  end

  def install
    bin.install Dir["omnimon-*"].first => "omnimon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omnimon --version")
  end
end
