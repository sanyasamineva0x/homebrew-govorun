cask "govorun" do
  version "0.1.2"
  sha256 "7f618c52633d283b6556bb4ab61aba1b60fb83dd7d305b519e9783f1699b8d95"

  url "https://github.com/sanyasamineva0x/govorun-app/releases/download/v#{version}/Govorun.dmg"
  name "Говорун"
  desc "Офлайн голосовой ввод на русском для macOS"
  homepage "https://github.com/sanyasamineva0x/govorun-app"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Govorun.app"
end
