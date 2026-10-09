cask "pr-watcher" do
  version "1.0.2"
  sha256 "c12a38733039a041c126ccb817b20599e1e09056137220cf72a70917d7b34bc6"

  url "https://github.com/noonyuu/homebrew-pr-watcher/releases/download/v#{version}/PRWatcher.zip"
  name "PR Watcher"
  desc "Menu bar app that lists PRs to review, reviewed, and authored"
  homepage "https://github.com/noonyuu/homebrew-pr-watcher"

  depends_on formula: "gh"
  depends_on macos: :ventura

  app "PRWatcher.app"

  zap trash: "~/Library/Preferences/local.prwatcher.plist"
end
