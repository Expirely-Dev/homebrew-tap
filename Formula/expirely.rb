class Expirely < Formula
  desc "Report when the TLS certificates you serve expire"
  homepage "https://github.com/expirely-dev/expirely-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/expirely-dev/expirely-cli/releases/download/v0.9.0/expirely_0.9.0_darwin_arm64.tar.gz"
      sha256 "83410bdb8052d611ccbd30bfd2ce456757cea5ff118cc576d0c961a7c2a11c6b"
    end
    on_intel do
      url "https://github.com/expirely-dev/expirely-cli/releases/download/v0.9.0/expirely_0.9.0_darwin_amd64.tar.gz"
      sha256 "50409007ae8e5487a8e89eda6081e9822a9410fd40b02d7db333f2290e3ace32"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/expirely-dev/expirely-cli/releases/download/v0.9.0/expirely_0.9.0_linux_arm64.tar.gz"
      sha256 "cc62bdf3ac26cf8c7cfd4fc2d2d93b58da87df1e56cb0fd6b5a41800f902cad7"
    end
    on_intel do
      url "https://github.com/expirely-dev/expirely-cli/releases/download/v0.9.0/expirely_0.9.0_linux_amd64.tar.gz"
      sha256 "52cdf79c06f2f65a88c82062b6fb5d43c67ab706ddd85b851ad9ab7fb5c51d54"
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
