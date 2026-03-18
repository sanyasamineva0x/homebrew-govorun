cask "govorun" do
  version "0.1.5"
  sha256 "0bc69e870ac5785d5a51cbdcafd81781d055c85c4f2166b82188a07bd51ff6bd"

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
