cask "alpaca-portfolio-monitor" do
  version "1.0.3"
  sha256 "5ccc9093946b1af0e7e28264d1bdff35f04a88d230796a75fd998d7775815fce"

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
