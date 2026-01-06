cask "grannet-md2pdf-quick-action" do
  version "1.0.0"
  sha256 "9194cc4aa6bd220f67da1327bf58d88303e36ce02336c33829be4a4b54bf8c61"

  url "https://github.com/grannet/md2pdf/releases/download/v#{version}/md2pdf-quick-action.workflow.zip"
  name "md2pdf Quick Action"
  desc "Finder Quick Action to convert Markdown to PDF"
  homepage "https://github.com/grannet/md2pdf"

  depends_on formula: "grannet/md2pdf/grannet-md2pdf"

  artifact "md2pdf.workflow", target: "#{ENV["HOME"]}/Library/Services/md2pdf.workflow"

  uninstall delete: "#{ENV["HOME"]}/Library/Services/md2pdf.workflow"

  zap trash: "#{ENV["HOME"]}/Library/Services/md2pdf.workflow"
end
