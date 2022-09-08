# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Clerk < Formula
  desc "Declarative development framework clerk"
  homepage "https://github.com/asweed888/clerk"
  version "0.1.0"

  on_macos do
    url "https://github.com/asweed888/clerk/releases/download/v0.1.0/clerk_darwin_all.tar.gz"
    sha256 "bba34cff7ab393979f26b6e89072e2727eb734c01b5075eaa26c5fe5b7182a63"

    def install
      bin.install "clerk"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/asweed888/clerk/releases/download/v0.1.0/clerk_linux_armv6.tar.gz"
      sha256 "74a9d78621532833120e59b11bbcc8d258041f07b30a0e30434ccfbf32ea177d"

      def install
        bin.install "clerk"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/asweed888/clerk/releases/download/v0.1.0/clerk_linux_arm64.tar.gz"
      sha256 "035c3b67ada6d720520febd67aef3f2d8d2265947ca0deb7fb9cd5e06f95f582"

      def install
        bin.install "clerk"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/asweed888/clerk/releases/download/v0.1.0/clerk_linux_x86_64.tar.gz"
      sha256 "2dbf06fbdd0388eadd2732ec2fb116fbeaea210b08529008f0c8f25b45051165"

      def install
        bin.install "clerk"
      end
    end
  end

  test do
    system "#{bin}/clerk help"
  end
end
