class GrannetMd2pdf < Formula
  desc "Convert Markdown to single-page PDF with Japanese font support"
  homepage "https://github.com/grannet/md2pdf"
  url "https://github.com/grannet/md2pdf/releases/download/v1.0.0-a9ee2cd/md2pdf-macos"
  # version is <package.json version>.<Release workflow run_number>.
  # The commit SHA in the release tag is not ordered, so brew could not tell which build is newer.
  version "1.0.0.10"
  sha256 "56e2d0047a1f185884418536526d60ea371a8908204c75fbb3ff1b11b15d2f9d"
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
