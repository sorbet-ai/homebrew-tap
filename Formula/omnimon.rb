class Omnimon < Formula
  desc "Terminal monitor for GPUs, the processes using them and the machine around them"
  homepage "https://github.com/sorbet-ai/omnimon"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sorbet-ai/omnimon/releases/download/v0.1.3/omnimon-aarch64-apple-darwin"
      sha256 "7d5974d569f5bb95c50af79ec99a77d0c31c0d818d6ce33a2d7dd828ba02da23"
    end
    on_intel do
      url "https://github.com/sorbet-ai/omnimon/releases/download/v0.1.3/omnimon-x86_64-apple-darwin"
      sha256 "01dc3c1910723494f0baabb1372f97d889a43c758397292b2636fb3d39f04f27"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sorbet-ai/omnimon/releases/download/v0.1.3/omnimon-aarch64-unknown-linux-gnu"
      sha256 "e6376876a60e38a2394f7706acec227fb713a9162e2b40170573615a775bb951"
    end
    on_intel do
      url "https://github.com/sorbet-ai/omnimon/releases/download/v0.1.3/omnimon-x86_64-unknown-linux-gnu"
      sha256 "44eccf14136ff576615f98cc881c0b74fc2e599f22260cc5f0d79447c75c4649"
    end
  end

  def install
    bin.install Dir["omnimon-*"].first => "omnimon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omnimon --version")
  end
end
