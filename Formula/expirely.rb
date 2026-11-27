class Expirely < Formula
  desc "Report when the TLS certificates you serve expire"
  homepage "https://github.com/expirely-dev/expirely-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/expirely-dev/expirely-cli/releases/download/v0.8.0/expirely_0.8.0_darwin_arm64.tar.gz"
      sha256 "1667165eb7c687123ef3a87e5b993af2961639c81b6f74db2e08553ac484a9f4"
    end
    on_intel do
      url "https://github.com/expirely-dev/expirely-cli/releases/download/v0.8.0/expirely_0.8.0_darwin_amd64.tar.gz"
      sha256 "b1ae7d4b568f0eda02f08eef41fd9ab50999543aa89dabaf01ae7bfef464ed30"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/expirely-dev/expirely-cli/releases/download/v0.8.0/expirely_0.8.0_linux_arm64.tar.gz"
      sha256 "74984c82403c36bfd5e943021792cf1862c3d04db979147ad0cec859f3ff68fb"
    end
    on_intel do
      url "https://github.com/expirely-dev/expirely-cli/releases/download/v0.8.0/expirely_0.8.0_linux_amd64.tar.gz"
      sha256 "74ff99bbfb5e98f7e56c7f0b92c8dc1ba3e5051b46e9f44c640624ec28d966fd"
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
