class Expirely < Formula
  desc "Report when the TLS certificates you serve expire"
  homepage "https://github.com/bycavii/expirely-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/bycavii/expirely-cli/releases/download/v{{VERSION}}/expirely_{{VERSION}}_darwin_arm64.tar.gz"
      sha256 "{{SHA256_DARWIN_ARM64}}"
    end
    on_intel do
      url "https://github.com/bycavii/expirely-cli/releases/download/v{{VERSION}}/expirely_{{VERSION}}_darwin_amd64.tar.gz"
      sha256 "{{SHA256_DARWIN_AMD64}}"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bycavii/expirely-cli/releases/download/v{{VERSION}}/expirely_{{VERSION}}_linux_arm64.tar.gz"
      sha256 "{{SHA256_LINUX_ARM64}}"
    end
    on_intel do
      url "https://github.com/bycavii/expirely-cli/releases/download/v{{VERSION}}/expirely_{{VERSION}}_linux_amd64.tar.gz"
      sha256 "{{SHA256_LINUX_AMD64}}"
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
