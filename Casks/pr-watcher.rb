cask "pr-watcher" do
  version "1.0.0"
  sha256 "4c8153c23f6c7cbce3c0921a10170f53062364f1fdc2236bdb3f31ee5524213e"

  url "https://github.com/noonyuu/PRWatcher/releases/download/v#{version}/PRWatcher.zip"
  name "PR Watcher"
  desc "Menu bar app that lists PRs to review, reviewed, and authored"
  homepage "https://github.com/noonyuu/PRWatcher"

  depends_on formula: "gh"
  depends_on macos: :ventura

  app "PRWatcher.app"

  zap trash: "~/Library/Preferences/local.prwatcher.plist"
end
