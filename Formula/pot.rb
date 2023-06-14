cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "1.4.2"
  sha256 arm: "9a3d1903d219b7ba82d4188c330771d0537f69e176131731cdb885334b787cf5",
         intel: "aa140fd491e354a6957de015e51740d14d169549058a14fbd9dec3518817576b"

  url "https://github.com/pot-app/pot-desktop/releases/download/#{version}/pot_#{version}_#{arch}.dmg"
  name "Pot"
  desc "A cross-platform software for text translation."
  homepage "https://github.com/pot-app/pot-desktop"

  livecheck do
    url "https://github.com/pot-app/pot-desktop/releases/latest"
    strategy :page_match
    regex(/pot_(\d+(?:\.\d+)*_#{arch}.dmg/i)
  end

  auto_updates true

  app "Pot.app"
  binary "#{appdir}/pot.app/Contents/MacOS/pot"

end
