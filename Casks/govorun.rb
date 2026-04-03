cask "govorun" do
  version "0.2.2"
  sha256 "7161487ea4e1e18aa1f9c53ca99108d3070c0d8cc396f35c705a9e1f32dd2b1c"

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
