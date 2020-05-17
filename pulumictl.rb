# This file was generated by GoReleaser. DO NOT EDIT.
class Pulumictl < Formula
  desc "A swiss army knife for Pulumi development"
  homepage "https://pulumi.io"
  version "0.0.1-alpha"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/pulumi/pulumictl/releases/download/v0.0.1-alpha/pulumictl-v0.0.1-alpha-darwin-amd64.tar.gz"
    sha256 "41b672db1d8a7115c96b5ea9af49eac7e55cd6598d0fbf17cc19bfb829f7e35f"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumictl/releases/download/v0.0.1-alpha/pulumictl-v0.0.1-alpha-linux-amd64.tar.gz"
      sha256 "41b7cc982901598fc3c78fded31a415dd96edc8a0506fc4742ad4b86026ad12c"
    end
  end

  def install
    bin.install "pulumictl"
  end
end
