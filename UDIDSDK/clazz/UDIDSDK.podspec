Pod::Spec.new do |s|
  s.name         = "UDIDSDK"
  s.version      = "0.0.1"
  s.summary      = "UD OCR SDK "
  s.homepage     = "https://github.com/wzy911229/UDIDOCRSDK"
  s.license      = 'MIT'
  s.author       = { "zhiyu" => "540824120@qq.com" }
  s.source       = { :git => "https://github.com/wzy911229/UDIDOCRSDK.git"}
  s.platform     = :ios, '8.0'
  s.ios.deployment_target = '8.0'
  s.requires_arc = true
  s.license = { :type => 'MIT', :file => 'MIT' }
  s.


  s.subspec 'Base' do |cs|
      cs.source_files = 'Laplata/base/**/*.{h,m}'
      cs.public_header_files = 'Laplata/base/**/*.h'
      cs.dependency  'MBProgressHUD', '~> 0.9'
      cs.dependency  'AFNetworking', '~>3.0'
      cs.dependency  'ReactiveCocoa', '~>2.0'
      cs.dependency  'libextobjc'
      cs.dependency  'MJRefresh', '3.1.11'
      cs.dependency  'Masonry', '0.6.1'
      cs.dependency  'UMengAnalytics-NO-IDFA'
      cs.resources   = "Laplata/base/loading/resource/loading.bundle"

  end

  s.subspec 'Extension' do |es|
      es.source_files = 'Laplata/extension/**/*.{h,m}'
      es.public_header_files = 'Laplata/extension//**/*.h'
      es.dependency 'Laplata/Base'
      es.dependency 'SSZipArchive','1.1'
      es.dependency  'SDWebImage', '~>3.8.1'
      es.dependency  'SDWebImageWebp'
  end

   s.subspec 'Business' do |bus|
      bus.source_files = 'Laplata/business/**/**/*.{h,m}'
      bus.public_header_files = 'Laplata/business/**/**/*.h'
      bus.dependency 'Laplata/Base'
      bus.dependency 'Laplata/Extension'
      bus.dependency  'Masonry', '0.6.1'
      bus.dependency 'TZImagePickerController'
      bus.resources   = "Laplata/business/nativeLoginModule/resource/login.bundle"

  end

 s.subspec 'UI' do |us|
      us.source_files = 'Laplata/ui/**/**/*.{h,m}'
      us.public_header_files = 'Laplata/ui/**/**/*.h'
      us.dependency 'Laplata/Base'
      us.dependency  'ALRichTextView', '1.0.1-SNAPSHOT'
      us.dependency  'SDWebImage', '~>3.8.1'
      us.dependency  'Masonry', '0.6.1'
      us.resources   = "Laplata/ui/resource/UIResource.bundle"
  end
  s
  s.subspec 'Location' do |ls|
      ls.source_files = 'Laplata/location/*.{h,m}'
      ls.public_header_files = 'Laplata/location/*.h'
      ls.dependency 'Laplata/Base'
      ls.dependency 'AMapLocation','1.1.0'
  end

  s.subspec 'Pay' do |ps|
      ps.source_files = 'Laplata/pay/**/*.{h,m}'
      ps.public_header_files = 'Laplata/pay/**/*.h'
      ps.dependency 'AliPay', '~> 2.1.2'
      ps.dependency 'Laplata/Extension'
      ps.resources = "Laplata/pay/resource/LoadingResource.bundle"
      ps.dependency 'UMengUShare/Social/WeChat', '6.4.7'
  end
  
  s.subspec 'ThirdParty' do |tp|
      tp.source_files = 'Laplata/ThirdParty/**/*.{h,m}'
      tp.public_header_files = 'Laplata/ThirdParty/**/*.h'
      tp.dependency 'UMengUShare/Social/QQ', '6.4.7'
      tp.dependency 'UMengUShare/Social/WeChat', '6.4.7'
  end

  s.subspec 'Social' do |ss|
      ss.source_files = 'Laplata/social/*.{h,m}'
      ss.public_header_files = 'Laplata/social/*.h'
      ss.dependency 'UMengUShare/UI' , '6.4.7'
      ss.dependency 'UMengUShare/Social/WeChat', '6.4.7'
      ss.dependency 'UMengUShare/Social/QQ', '6.4.7'
      ss.dependency 'UMengUShare/Social/Sina', '6.4.7'
  end

end
