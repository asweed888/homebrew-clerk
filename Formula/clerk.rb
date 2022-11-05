# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Clerk < Formula
  desc "Declarative development framework clerk"
  homepage "https://github.com/asweed888/clerk"
  version "0.2.4"

  on_macos do
    url "https://github.com/asweed888/clerk/releases/download/v0.2.4/clerk_darwin_all.tar.gz"
    sha256 "6c078a13c0e4a796147ffc836ff9913772d1e7a7665f63ab5de8c38d2dfa919f"

    def install
      bin.install "clerk"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/asweed888/clerk/releases/download/v0.2.4/clerk_linux_armv6.tar.gz"
      sha256 "a93963a6339d711c74a3ea18ca8b975e7093bd23a7a17a264c8795e2d09aff6b"

      def install
        bin.install "clerk"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/asweed888/clerk/releases/download/v0.2.4/clerk_linux_arm64.tar.gz"
      sha256 "b581d8660cf43ac12f6a5f535b7a4dcc19fb5d8b7d748e3afec6848d3ae85e0b"

      def install
        bin.install "clerk"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/asweed888/clerk/releases/download/v0.2.4/clerk_linux_x86_64.tar.gz"
      sha256 "1f8d4dd21b43a3ab396e1e05c05f78188993fb9ecefeecd668cd5801690a85c3"

      def install
        bin.install "clerk"
      end
    end
  end

  test do
    system "#{bin}/clerk help"
  end
end
