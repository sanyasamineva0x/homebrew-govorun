cask "govorun" do
  version "0.1.3"
  sha256 "6efae8b11a4a5ba150f981cb4830ad5e3c825f2192d755b99cd9a3c1a0d907ca"

  url "https://github.com/sanyasamineva0x/govorun-app/releases/download/v#{version}/Govorun.dmg"
  name "Говорун"
  desc "Офлайн голосовой ввод на русском для macOS"
  homepage "https://github.com/sanyasamineva0x/govorun-app"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Govorun.app"
end
