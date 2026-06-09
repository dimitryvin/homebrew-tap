cask "alpaca-portfolio-monitor" do
  version "1.1.0"
  sha256 "67700bd8d72ee534b6433720d8242fd27536ea61a076e25104619ce232c6927a"

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
