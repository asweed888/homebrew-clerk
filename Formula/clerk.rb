# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Clerk < Formula
  desc "Declarative development framework clerk"
  homepage "https://github.com/asweed888/clerk"
  version "0.6.6"

  on_macos do
    url "https://github.com/asweed888/clerk/releases/download/v0.6.6/clerk_darwin_all.tar.gz"
    sha256 "d7d0d2d12ee823338fd751500ae8dd64506f9badd655eab60e782661a9ee643d"

    def install
      bin.install "clerk"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/asweed888/clerk/releases/download/v0.6.6/clerk_linux_x86_64.tar.gz"
      sha256 "f908f3ccc086d78588224579c24aea31ef39faa9931c7da769c0dd5ab24c52ad"

      def install
        bin.install "clerk"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/asweed888/clerk/releases/download/v0.6.6/clerk_linux_armv6.tar.gz"
      sha256 "cee6b0f36b6ebbe96966d7f12900b63abf800f5d5f841e0eef604beb80693b39"

      def install
        bin.install "clerk"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/asweed888/clerk/releases/download/v0.6.6/clerk_linux_arm64.tar.gz"
      sha256 "43dd6d452d1e414899b14c024587bb6060444677bfc9797266c108ce8e9c4da7"

      def install
        bin.install "clerk"
      end
    end
  end

  test do
    system "#{bin}/clerk help"
  end
end
