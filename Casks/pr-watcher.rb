cask "pr-watcher" do
  version "1.0.1"
  sha256 "713aee7858259c4d327fe278bbe95082511f8efd6fa111c5d94903a6d0e3fd37"

  url "https://github.com/noonyuu/homebrew-pr-watcher/releases/download/v#{version}/PRWatcher.zip"
  name "PR Watcher"
  desc "Menu bar app that lists PRs to review, reviewed, and authored"
  homepage "https://github.com/noonyuu/homebrew-pr-watcher"

  depends_on formula: "gh"
  depends_on macos: :ventura

  app "PRWatcher.app"

  zap trash: "~/Library/Preferences/local.prwatcher.plist"
end
