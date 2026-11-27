class Expirely < Formula
  desc "Report when the TLS certificates you serve expire"
  homepage "https://github.com/bycavii/expirely-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/bycavii/expirely-cli/releases/download/v0.6.0/expirely_0.6.0_darwin_arm64.tar.gz"
      sha256 "d70ae14c4a174b4529f2cb6b137beceddfb7cabb7a0158440960f6531aca0e27"
    end
    on_intel do
      url "https://github.com/bycavii/expirely-cli/releases/download/v0.6.0/expirely_0.6.0_darwin_amd64.tar.gz"
      sha256 "84d36585ea5deffea0e3a2052a6f3c74b560fa1baf088ebfe186847c6c5a5fa4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bycavii/expirely-cli/releases/download/v0.6.0/expirely_0.6.0_linux_arm64.tar.gz"
      sha256 "55ca6eacbaa8eb0ab3a13bd53eb4fb8a7df8b1b1e0a669d870cdd69e63f0a97d"
    end
    on_intel do
      url "https://github.com/bycavii/expirely-cli/releases/download/v0.6.0/expirely_0.6.0_linux_amd64.tar.gz"
      sha256 "bb09834de4ab88de31b21fdc37f31929b03f85989f782d648e7be1fbefa7f0be"
    end
  end

  def install
    bin.install "expirely"
    doc.install "third-party"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/expirely --version")
  end
end
