cask "grannet-md2pdf-quick-action" do
  version "1.0.0-c1abefb"
  sha256 "442754bc441d7fbaadf600d5a2fa420ce3e94e0feb8d65e056e2f63bf6019089"

  url "https://github.com/grannet/md2pdf/releases/download/v#{version}/md2pdf-quick-action.workflow.zip"
  name "md2pdf Quick Action"
  desc "Finder Quick Action to convert Markdown to PDF"
  homepage "https://github.com/grannet/md2pdf"

  depends_on formula: "grannet/md2pdf/grannet-md2pdf"

  artifact "md2pdf.workflow", target: "#{ENV["HOME"]}/Library/Services/md2pdf.workflow"

  uninstall delete: "#{ENV["HOME"]}/Library/Services/md2pdf.workflow"

  zap trash: "#{ENV["HOME"]}/Library/Services/md2pdf.workflow"
end
