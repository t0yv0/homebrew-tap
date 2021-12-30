# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cf2pulumi < Formula
  desc "A tool to convert CloudFormation Templates to Pulumi programs"
  homepage "https://pulumi.com"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.9.0/cf2pulumi-v0.9.0-darwin-x64.tar.gz"
      sha256 "db2d9c547a2114baafa3344d1d8bae4bc0c0ed85ab2254fd6c6c6375dc10c768"

      def install
        bin.install "cf2pulumi"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.9.0/cf2pulumi-v0.9.0-darwin-arm64.tar.gz"
      sha256 "2f91c2b12122142844b36e192e870ad0deff508bdb3eec7c67ad1c36dcfea1c4"

      def install
        bin.install "cf2pulumi"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.9.0/cf2pulumi-v0.9.0-linux-x64.tar.gz"
      sha256 "b8011f2397bf26e243c7e643c300c0232b1aa23573a0b857305cbd1c25b4e4fd"

      def install
        bin.install "cf2pulumi"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pulumi/pulumi-aws-native/releases/download/v0.9.0/cf2pulumi-v0.9.0-linux-arm64.tar.gz"
      sha256 "911f6ff685cd8ea0e0796171a9b7a9b9abdf4395b14208e27b3b153d1af4bbbd"

      def install
        bin.install "cf2pulumi"
      end
    end
  end

  test do
    system "#{bin}/cf2pulumi version"
  end
end