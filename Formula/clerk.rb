# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Clerk < Formula
  desc "Declarative development framework clerk"
  homepage "https://github.com/asweed888/clerk"
  version "0.4.8"

  on_macos do
    url "https://github.com/asweed888/clerk/releases/download/v0.4.8/clerk_darwin_all.tar.gz"
    sha256 "b79a33d2cbd03dc3cfb33c63f004a24a511c5c01ccda114df0ab6bb34052267b"

    def install
      bin.install "clerk"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/asweed888/clerk/releases/download/v0.4.8/clerk_linux_armv6.tar.gz"
      sha256 "b70d425bd548f48118e48eae1b73ef03859086c003bb2c3378d512ab76c84de7"

      def install
        bin.install "clerk"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/asweed888/clerk/releases/download/v0.4.8/clerk_linux_x86_64.tar.gz"
      sha256 "01d22c06a6f933b47d4d31bfc461b165200bb7b6396b8a6e9d077d559ac0c00a"

      def install
        bin.install "clerk"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/asweed888/clerk/releases/download/v0.4.8/clerk_linux_arm64.tar.gz"
      sha256 "9e4ed8a8191870b673fc21ed5a78b7e3607f145708844c6a781a20d52304bbe5"

      def install
        bin.install "clerk"
      end
    end
  end

  test do
    system "#{bin}/clerk help"
  end
end
