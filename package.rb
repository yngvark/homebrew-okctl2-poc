# typed: false
# frozen_string_literal: true

class Ok < Formula
  desc "okctl2-poc testing"
  homepage "https://github.com/yngvark/okctl2-poc"
  version "0.0.1"
  license "AGPL-3.0-only"

  depends_on "hashicorp/tap/terraform"

  on_linux do
    if Hardware::CPU.intel?
      url "https://raw.githubusercontent.com/yngvark/okctl2-poc/main/ok"
      sha256 "2cc8a9d9778ab2e2666a8c7d380dc3d4bb7056ce2be51434381b59071ecf1b41"

      def install
        bin.install "ok"
      end
    end
  end

end
