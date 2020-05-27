# This file was generated by GoReleaser. DO NOT EDIT.
class Pulumictl < Formula
  desc "A swiss army knife for Pulumi development"
  homepage "https://pulumi.io"
  version "0.0.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/pulumi/pulumictl/releases/download/v0.0.1/pulumictl-v0.0.1-darwin-amd64.tar.gz"
    sha256 "1094a6c0f15137caa2d9b6409c6a6042b64cc16de9420c354a7d0beab1163a77"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumictl/releases/download/v0.0.1/pulumictl-v0.0.1-linux-amd64.tar.gz"
      sha256 "d0bb83a8c9f93bb04a28a1276e33a8906f0417479a5db8439d542c194534714c"
    end
  end

  def install
    bin.install "pulumictl"
  end
end
