cask "grannet-md2pdf-quick-action" do
  # version is "<formula version>,<release tag without v>".
  # The formula version (<package.json version>.<run_number>) differs from the release tag (v<version>-<sha>).
  version "1.0.0.9,1.0.0-f15a32e"
  sha256 "9194cc4aa6bd220f67da1327bf58d88303e36ce02336c33829be4a4b54bf8c61"

  url "https://github.com/grannet/md2pdf/releases/download/v#{version.csv.second}/md2pdf-quick-action.workflow.zip"
  name "md2pdf Quick Action"
  desc "Finder Quick Action to convert Markdown to PDF"
  homepage "https://github.com/grannet/md2pdf"

  depends_on formula: "grannet/md2pdf/grannet-md2pdf"

  artifact "md2pdf.workflow", target: "#{ENV["HOME"]}/Library/Services/md2pdf.workflow"

  zap trash: "#{ENV["HOME"]}/Library/Services/md2pdf.workflow"
end
