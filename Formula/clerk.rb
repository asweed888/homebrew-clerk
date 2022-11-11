# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Clerk < Formula
  desc "Declarative development framework clerk"
  homepage "https://github.com/asweed888/clerk"
  version "0.2.6"

  on_macos do
    url "https://github.com/asweed888/clerk/releases/download/v0.2.6/clerk_darwin_all.tar.gz"
    sha256 "837d8f9f9328ef7a87591949ee6820388b10feddafc4abf8ad7d9d27dc368bd3"

    def install
      bin.install "clerk"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/asweed888/clerk/releases/download/v0.2.6/clerk_linux_armv6.tar.gz"
      sha256 "fdde28baff7cc1b72246befe5ca091f6284dc52c0c5a2f0465651b97e16150e7"

      def install
        bin.install "clerk"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/asweed888/clerk/releases/download/v0.2.6/clerk_linux_x86_64.tar.gz"
      sha256 "3ae54bd3e6a808b6fe865710309d5a4656ad990acdd07ee4cc35b9a6560fa71d"

      def install
        bin.install "clerk"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/asweed888/clerk/releases/download/v0.2.6/clerk_linux_arm64.tar.gz"
      sha256 "825215f3bcc4d6f32e526202a3d73fbc220eb0e612c36d272099073d3c44341c"

      def install
        bin.install "clerk"
      end
    end
  end

  test do
    system "#{bin}/clerk help"
  end
end
