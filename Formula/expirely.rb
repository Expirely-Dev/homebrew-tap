class Expirely < Formula
  desc "Report when the TLS certificates you serve expire"
  homepage "https://github.com/expirely-dev/expirely-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/expirely-dev/expirely-cli/releases/download/v0.10.0/expirely_0.10.0_darwin_arm64.tar.gz"
      sha256 "226e62c0012af574222d72451f999adb73e1361e7b18ed03a2647d23e71cf9f6"
    end
    on_intel do
      url "https://github.com/expirely-dev/expirely-cli/releases/download/v0.10.0/expirely_0.10.0_darwin_amd64.tar.gz"
      sha256 "f434afd3b4da9be40faf383228757d29476ee0bf7fcdeac40e98552f99f70423"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/expirely-dev/expirely-cli/releases/download/v0.10.0/expirely_0.10.0_linux_arm64.tar.gz"
      sha256 "187d7b2a77f84c2b636a34b22af96c8beb2cd5bfe8e8454903c15042b966110c"
    end
    on_intel do
      url "https://github.com/expirely-dev/expirely-cli/releases/download/v0.10.0/expirely_0.10.0_linux_amd64.tar.gz"
      sha256 "308d993bd867ba4bf6f69bf4d96c72217144c584c1d0238b851fe6370bef4246"
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
