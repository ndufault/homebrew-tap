cask "amphetamine-power-protect" do
  version :latest
  sha256 :no_check

  url "https://github.com/x74353/Amphetamine-Power-Protect/raw/main/DMG/Power%20Protect%20for%20Amphetamine.dmg"
  name "Power Protect for Amphetamine"
  desc "Closed-display mode helper for Amphetamine that stops sleep on battery"
  homepage "https://x74353.github.io/Amphetamine-Power-Protect/"

  depends_on :macos

  pkg "Install Power Protect.pkg"

  uninstall pkgutil: "com.if.pkg.AmphetaminePowerProtect",
            delete:  [
              "/private/etc/sudoers.d/amphetamine_PowerProtect",
              "~/Library/Application Scripts/com.if.Amphetamine/powerProtect.scpt",
            ]
end
