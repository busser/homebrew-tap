# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tftree < Formula
  desc "Display your Terraform module call stack"
  homepage "https://github.com/busser/tftree"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/busser/tftree/releases/download/v0.2.0/tftree_0.2.0_darwin_amd64.tar.gz"
      sha256 "fcfc1e14183983fc8375785d2621f5e2d172cde03bd6a078c590ecd0b4bdd988"

      def install
        bin.install "tftree"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/busser/tftree/releases/download/v0.2.0/tftree_0.2.0_darwin_arm64.tar.gz"
      sha256 "378d75c7cfe4319d7428529db2e1cc7ab78631dc391cf723db062cc9c1b2dec9"

      def install
        bin.install "tftree"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/busser/tftree/releases/download/v0.2.0/tftree_0.2.0_linux_arm64.tar.gz"
      sha256 "3f24550596027b001bbec7ca3dd2608cc1e831be205470bfe8ed17cd0fc341e2"

      def install
        bin.install "tftree"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/busser/tftree/releases/download/v0.2.0/tftree_0.2.0_linux_amd64.tar.gz"
      sha256 "3fcc2ad1b87eb0d9616bc624da9d5889e3608c1603258d4ca0f06a6b80ed4499"

      def install
        bin.install "tftree"
      end
    end
  end

  test do
    system "#{bin}/tftree -version"
  end
end
