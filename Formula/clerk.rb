# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Clerk < Formula
  desc "Declarative development framework clerk"
  homepage "https://github.com/asweed888/clerk"
  version "0.5.6"

  on_macos do
    url "https://github.com/asweed888/clerk/releases/download/v0.5.6/clerk_darwin_all.tar.gz"
    sha256 "62d9d02d49f4ef1b04324d297a33221f1c866e9a09437d63a8e51d63a29421e8"

    def install
      bin.install "clerk"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/asweed888/clerk/releases/download/v0.5.6/clerk_linux_arm64.tar.gz"
      sha256 "8d23b9cd109ca36a148560cb096a60df28053eee20c576508c7e87372186c4f8"

      def install
        bin.install "clerk"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/asweed888/clerk/releases/download/v0.5.6/clerk_linux_armv6.tar.gz"
      sha256 "1d93fa0a3aab0f429229c56042193ae48a98ca4e890c5b853402dc3bd5e72aed"

      def install
        bin.install "clerk"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/asweed888/clerk/releases/download/v0.5.6/clerk_linux_x86_64.tar.gz"
      sha256 "b8146a4f680c8ffdb44587b739385397c49b3ef39aafb1cb2d2b917ca2a77f4c"

      def install
        bin.install "clerk"
      end
    end
  end

  test do
    system "#{bin}/clerk help"
  end
end
