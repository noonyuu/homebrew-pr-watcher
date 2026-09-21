cask "pr-watcher" do
  version "1.0.1"
  sha256 "25906c13f9a9df03ccd5df979d75e1fa366697fae8fd20ad93d95d1e3c071778"

  url "https://github.com/noonyuu/homebrew-pr-watcher/releases/download/v#{version}/PRWatcher.zip"
  name "PR Watcher"
  desc "Menu bar app that lists PRs to review, reviewed, and authored"
  homepage "https://github.com/noonyuu/homebrew-pr-watcher"

  depends_on formula: "gh"
  depends_on macos: :ventura

  app "PRWatcher.app"

  zap trash: "~/Library/Preferences/local.prwatcher.plist"
end
