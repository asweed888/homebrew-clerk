# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Clerk < Formula
  desc "Declarative development framework clerk"
  homepage "https://github.com/asweed888/clerk"
  version "0.0.9"

  on_macos do
    url "https://github.com/asweed888/clerk/releases/download/v0.0.9/clerk_darwin_all.tar.gz"
    sha256 "38ef39be5b2b15833c9c0caa09f1432fd229c9d7df8408602955fd053117f020"

    def install
      bin.install "clerk"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/asweed888/clerk/releases/download/v0.0.9/clerk_linux_arm64.tar.gz"
      sha256 "75b7c1eba74f5afc56a35abc5638f2b27016ff0ea3239a51b1580590570f4969"

      def install
        bin.install "clerk"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/asweed888/clerk/releases/download/v0.0.9/clerk_linux_armv6.tar.gz"
      sha256 "da62754f155d5a83039be5a9f87f1bdd7c0834f47a2e2fe5986fc3f250bfb5e4"

      def install
        bin.install "clerk"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/asweed888/clerk/releases/download/v0.0.9/clerk_linux_x86_64.tar.gz"
      sha256 "6d96c5f57aadebdd12b6cacbb88b39bdebd0c1fd2ce1c656a1082d6674d90f86"

      def install
        bin.install "clerk"
      end
    end
  end

  test do
    system "#{bin}/clerk help"
  end
end
