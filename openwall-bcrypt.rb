require "formula"

class OpenwallBcrypt < Formula
  homepage "https://github.com/Rudolph-Miller/openwall-bcrypt"
  url "https://github.com/Rudolph-Miller/openwall-bcrypt/archive/v1.1.tar.gz"
  version '1.1'
  sha1 "6f67c663ad09a31d9c3e58c82549d7f6bbd98b42"
  def install
    system "make", "library"
    ext = OS.mac? ? 'dylib' : 'so'
    lib.install "libbcrypt.#{version}.#{ext}"
    lib.install_symlink "libbcrypt.#{version}.#{ext}" => "libbcrypt.#{ext}"
  end
end
