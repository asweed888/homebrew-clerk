# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Clerk < Formula
  desc "Declarative development framework clerk"
  homepage "https://github.com/asweed888/clerk"
  version "0.2.2"

  on_macos do
    url "https://github.com/asweed888/clerk/releases/download/v0.2.2/clerk_darwin_all.tar.gz"
    sha256 "e21193ac3a9a18457c29d962093e95c6b21e40fb468f66a7e11b06d8b4922f8a"

    def install
      bin.install "clerk"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/asweed888/clerk/releases/download/v0.2.2/clerk_linux_arm64.tar.gz"
      sha256 "762df8a7ed09b1e443e8a800eb1313c41900b59aa9b03c7a92b4523e4e887f0f"

      def install
        bin.install "clerk"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/asweed888/clerk/releases/download/v0.2.2/clerk_linux_x86_64.tar.gz"
      sha256 "9d950a639e24075bf64aa7275f38235805b73502262db01539535fed8e78eaa6"

      def install
        bin.install "clerk"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/asweed888/clerk/releases/download/v0.2.2/clerk_linux_armv6.tar.gz"
      sha256 "88845824c670b6b644484507c805e08551820544248432e32198d4345d2e0396"

      def install
        bin.install "clerk"
      end
    end
  end

  test do
    system "#{bin}/clerk help"
  end
end
