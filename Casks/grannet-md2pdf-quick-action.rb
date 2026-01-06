cask "grannet-md2pdf-quick-action" do
  version "1.0.0-bcaa95e"
  sha256 "fe41eff491b09dc19c9f3aecb5c3d351e2099960f5a18d4d1219ad8316c879b9"

  url "https://github.com/grannet/md2pdf/releases/download/v#{version}/md2pdf-quick-action.workflow.zip"
  name "md2pdf Quick Action"
  desc "Finder Quick Action to convert Markdown to PDF"
  homepage "https://github.com/grannet/md2pdf"

  depends_on formula: "grannet/md2pdf/grannet-md2pdf"

  artifact "md2pdf.workflow", target: "#{ENV["HOME"]}/Library/Services/md2pdf.workflow"

  uninstall delete: "#{ENV["HOME"]}/Library/Services/md2pdf.workflow"

  zap trash: "#{ENV["HOME"]}/Library/Services/md2pdf.workflow"
end
