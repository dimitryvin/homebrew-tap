cask "alpaca-portfolio-monitor" do
  version "1.2.0"
  sha256 "0a2f2cfab5521be5a7288abf73c67d0afe7c5879029b35fc8c279f0863073efd"

  url "https://github.com/dimitryvin/alpaca-portfolio-monitor/releases/download/v#{version}/AlpacaMonitor-#{version}.dmg"
  name "Alpaca Monitor"
  desc "Menu bar app to monitor your Alpaca portfolio (read-only)"
  homepage "https://github.com/dimitryvin/alpaca-portfolio-monitor"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "AlpacaPortfolioMonitor.app"

  zap trash: [
    "~/Library/Preferences/com.alpacamonitor.AlpacaPortfolioMonitor.plist",
    "~/Library/Saved Application State/com.alpacamonitor.AlpacaPortfolioMonitor.savedState",
  ]
end
