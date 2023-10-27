class Localdic < Formula
  desc "Manage the local dictionary on Mac."
  homepage "https://github.com/SSBun/localdic"
  url "https://github.com/SSBun/localdic.git", tag: "0.1"
  version "0.1"
  sha256 "daa4ad0964a613afcd0d053e74fe75aa7f029cdb18dab7f5e240ede12ecffb1b"

  depends_on "xcode": [:build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}localdic", "list"
  end
end
