class Md2pdf < Formula
  desc "Convert Markdown to single-page PDF with Japanese font support"
  homepage "https://github.com/grannet/md2pdf"
  version "1.0.0-c1abefb"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/grannet/md2pdf/releases/download/v1.0.0-c1abefb/md2pdf-macos"
      sha256 "34091fdf0623b86bef908a084a68c03cc03fa6f01bd54f980aa2a4a274dbbc5c"
    end
    on_intel do
      url "https://github.com/grannet/md2pdf/releases/download/v1.0.0-c1abefb/md2pdf-macos"
      sha256 "34091fdf0623b86bef908a084a68c03cc03fa6f01bd54f980aa2a4a274dbbc5c"
    end
  end

  def install
    bin.install "md2pdf-macos" => "md2pdf"
  end

  def post_install
    # Remove quarantine attribute for Gatekeeper
    system "xattr", "-d", "com.apple.quarantine", "#{bin}/md2pdf" rescue nil
  end

  test do
    system "#{bin}/md2pdf", "--help"
  end
end
