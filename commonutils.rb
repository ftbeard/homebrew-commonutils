class Commonutils < Formula
  desc "ftbeard commons utilities"
  homepage ""
  url "https://github.com/ftbeard/commonutils/archive/0.0.1.tar.gz"
  version "0.0.1"
  sha256 "e09bf04b2afc7c9c039520797c216c569c8ede22f4fd573035e61a93dd58597a"

  def install
	  bin.install "bin/confirm"
  end

end