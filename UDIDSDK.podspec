Pod::Spec.new do |s|
  s.name         = "UDIDSDK"
  s.version      = "0.0.1"
  s.summary      = "UD OCR SDK "
  s.homepage     = "https://github.com/wzy911229/UDIDOCRSDK"
  s.license      = 'MIT'
  s.author       = { "zhiyu" => "540824120@qq.com" }
  s.source       = { :git => "https://github.com/wzy911229/UDIDOCRSDK.git", :tag => s.version }
  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.license      = "MIT"
  s.source_files = '**/clazz/*.{h,m}'
  s.resources = "**/openLibs/*.bundle"
  s.vendored_frameworks = '**/openLibs/*.framework' 
  s.vendored_libraries = '**/openLibs/*.a' 

  s.frameworks = "CoreMedia", "ImageIO", "SystemConfiguration", "CoreTelephony", "AudioToolbox", "AVFoundation", "MobileCoreServices", "CoreMotion"
  s.library   = "icucore.tbd", "c++"

end
