# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfautomv < Formula
  desc "Generate Terraform moved blocks automatically for painless refactoring"
  homepage "https://github.com/busser/tfautomv"
  version "0.6.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/busser/tfautomv/releases/download/v0.6.1/tfautomv_0.6.1_darwin_amd64.tar.gz"
      sha256 "d0520ad8d0ca684ca0040b86d45bafcef42b380ad8128d8f0ebd14825489d993"

      def install
        bin.install "tfautomv"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/busser/tfautomv/releases/download/v0.6.1/tfautomv_0.6.1_darwin_arm64.tar.gz"
      sha256 "fd07f5daee65d2d6d0587dcd34e0994148d92851133e337a1dfa4bb40d6604f0"

      def install
        bin.install "tfautomv"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/busser/tfautomv/releases/download/v0.6.1/tfautomv_0.6.1_linux_arm64.tar.gz"
      sha256 "7df4d91f63274524fe7d84124f6ebd83c08e535f3089de11f771def2aae4341b"

      def install
        bin.install "tfautomv"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/busser/tfautomv/releases/download/v0.6.1/tfautomv_0.6.1_linux_amd64.tar.gz"
      sha256 "bcd679177774512aa31cc82a84973784691cafe8d5a2ab27169370f1abb88ecf"

      def install
        bin.install "tfautomv"
      end
    end
  end

  test do
    system "#{bin}/tfautomv -version"
  end
end
