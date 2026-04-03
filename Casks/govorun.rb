cask "govorun" do
  version "0.2.1"
  sha256 "94b5d3935d5021c8339f74e443b679533c023f5a0db9b629acd076cf0652db71"

  url "https://github.com/sanyasamineva0x/govorun-app/releases/download/v#{version}/Govorun.dmg"
  name "Говорун"
  desc "Офлайн голосовой ввод на русском для macOS"
  homepage "https://github.com/sanyasamineva0x/govorun-app"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Govorun.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Govorun.app"]
  end
end
