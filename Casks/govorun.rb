cask "govorun" do
  version "0.1.1"
  sha256 "68d7d6fd49139775ba3bd014a2ea347979a7123287bf5b91b10fccd595d5cea9"

  url "https://github.com/sanyasamineva0x/govorun-app/releases/download/v#{version}/Govorun.dmg"
  name "Говорун"
  desc "Офлайн голосовой ввод на русском для macOS"
  homepage "https://github.com/sanyasamineva0x/govorun-app"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Govorun.app"
end
