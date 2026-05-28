cask "alpaca-portfolio-monitor" do
  version "1.0.2"
  sha256 "3707afbac4b9f990744bdb74ddf9bda90e0034b344eb705ee24df708c46f3b5a"

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
