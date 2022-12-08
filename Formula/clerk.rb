# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Clerk < Formula
  desc "Declarative development framework clerk"
  homepage "https://github.com/asweed888/clerk"
  version "0.4.4"

  on_macos do
    url "https://github.com/asweed888/clerk/releases/download/v0.4.4/clerk_darwin_all.tar.gz"
    sha256 "ce1a5534f0760082a5bb2f0b15ebdc8d7fc0a23a63becb37883567a7b8e2600b"

    def install
      bin.install "clerk"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/asweed888/clerk/releases/download/v0.4.4/clerk_linux_arm64.tar.gz"
      sha256 "d90189b51d8b9b04ce91d368da1bd21caa32bd8d2e4bf2b9e72a8ac0b903a634"

      def install
        bin.install "clerk"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/asweed888/clerk/releases/download/v0.4.4/clerk_linux_x86_64.tar.gz"
      sha256 "9af19a435fd8a4afaff923a5d90ed5f3f8bd659b6eaab77acc1ae53f458cba3e"

      def install
        bin.install "clerk"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/asweed888/clerk/releases/download/v0.4.4/clerk_linux_armv6.tar.gz"
      sha256 "28802ba80d0dba20ab329530f6e58071e86ca808e9ad0bca37e59e5299604016"

      def install
        bin.install "clerk"
      end
    end
  end

  test do
    system "#{bin}/clerk help"
  end
end
