class Expirely < Formula
  desc "Report when the TLS certificates you serve expire"
  homepage "https://github.com/bycavii/expirely-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/bycavii/expirely-cli/releases/download/v0.7.0/expirely_0.7.0_darwin_arm64.tar.gz"
      sha256 "6de5bd27f4476de597e31211990a5ad69163ae88f7a449e5ba5c25b209da20fe"
    end
    on_intel do
      url "https://github.com/bycavii/expirely-cli/releases/download/v0.7.0/expirely_0.7.0_darwin_amd64.tar.gz"
      sha256 "e47fa0c2313769de40079159ec4bbbd2a28a0ef2e390745a8e89f8070ce1ef35"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bycavii/expirely-cli/releases/download/v0.7.0/expirely_0.7.0_linux_arm64.tar.gz"
      sha256 "4dc28bf992a88697766ec15ba53e012d051274655575be5f72b1e90a174f48e1"
    end
    on_intel do
      url "https://github.com/bycavii/expirely-cli/releases/download/v0.7.0/expirely_0.7.0_linux_amd64.tar.gz"
      sha256 "edcff212ed5f2a1d248fc001c28639600fd429ee7d8366b71595656574928096"
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
