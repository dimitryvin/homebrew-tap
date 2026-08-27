cask "alpaca-portfolio-monitor" do
  version "1.4.1"
  sha256 "95c718ca43271c936894974bb4f42795cba7c0102f2886fc223e1698f71c493d"

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
