require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RNSignatureCapture"
  s.version      = package["version"]
  s.summary      = "React Native library for capturing signature"
  s.homepage     = "https://github.com/QDivision/react-native-signature-capture"
  s.license      = "MIT"
  s.author             = { "RepairShopr" => "https://github.com/RepairShopr" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/QDivision/react-native-signature-capture.git", :tag => "#{s.version}" }

  s.source_files  = "ios/**/*.{h,m}"

  s.dependency "React"
end