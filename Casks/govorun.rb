cask "govorun" do
  version "0.1.0"
  sha256 "fccad840d2689c380a8c405b724b20c99bca10cf1444114f79acc3c8e2972b44"

  url "https://github.com/sanyasamineva0x/govorun-app/releases/download/v#{version}/Govorun.dmg"
  name "Говорун"
  desc "Офлайн голосовой ввод на русском для macOS"
  homepage "https://github.com/sanyasamineva0x/govorun-app"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Govorun.app"
end
