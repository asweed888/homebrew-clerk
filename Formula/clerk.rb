# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Clerk < Formula
  desc "Declarative development framework clerk"
  homepage "https://github.com/asweed888/clerk"
  version "0.5.3"

  on_macos do
    url "https://github.com/asweed888/clerk/releases/download/v0.5.3/clerk_darwin_all.tar.gz"
    sha256 "7a93e0d0ca652ff57e7bc32f93647cd8b28ff22670409d68d6edb66d0260c48e"

    def install
      bin.install "clerk"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/asweed888/clerk/releases/download/v0.5.3/clerk_linux_x86_64.tar.gz"
      sha256 "39b515afe6474d3757e666f5ae480ab4bd7fd0c38ee82eb0b6279307e7f6e17e"

      def install
        bin.install "clerk"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/asweed888/clerk/releases/download/v0.5.3/clerk_linux_arm64.tar.gz"
      sha256 "3bf697738bd42197589d5c82977fea86867cfd51ad497aee6617d3b67b2cdd3d"

      def install
        bin.install "clerk"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/asweed888/clerk/releases/download/v0.5.3/clerk_linux_armv6.tar.gz"
      sha256 "a9d8e10ab982d5a970d803a51a32217822a318e9646cd4d95bc850cc832bd425"

      def install
        bin.install "clerk"
      end
    end
  end

  test do
    system "#{bin}/clerk help"
  end
end
