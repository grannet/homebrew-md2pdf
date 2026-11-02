class GrannetMd2pdf < Formula
  desc "Convert Markdown to single-page PDF with Japanese font support"
  homepage "https://github.com/grannet/md2pdf"
  url "https://github.com/grannet/md2pdf/releases/download/v1.0.0-f15a32e/md2pdf-macos"
  # version is <package.json version>.<Release workflow run_number>.
  # The commit SHA in the release tag is not ordered, so brew could not tell which build is newer.
  version "1.0.0.9"
  sha256 "34091fdf0623b86bef908a084a68c03cc03fa6f01bd54f980aa2a4a274dbbc5c"
  license "MIT"

  # Only an Apple Silicon (bun-darwin-arm64) binary is released
  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "md2pdf-macos" => "md2pdf"
    # macOS kills bun binaries with a broken code signature (releases up to v1.0.0-f15a32e).
    # Re-sign ad-hoc so the binary launches regardless of how the release asset was signed.
    system "/usr/bin/codesign", "--force", "--sign", "-", bin/"md2pdf"
  end

  test do
    (testpath/"test.md").write("# テスト\n\nhello **world**\n")
    system bin/"md2pdf", "test.md", "-o", "test.pdf"
    assert_path_exists testpath/"test.pdf"
  end
end
