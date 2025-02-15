Pod::Spec.new do |s|
  s.name                  = 'RadarSDKMotion'
  s.version               = '0.0.4'
  s.summary               = 'Motion detection plugin for RadarSDK, the leading geofencing and location tracking platform'
  s.homepage              = 'https://radar.com'
  s.author                = { 'Radar Labs, Inc.' => 'support@radar.com' }
  s.platform              = :ios
  s.source                = { :git => 'https://github.com/radarlabs/radar-sdk-ios-motion.git', :tag => s.version.to_s }
  s.source_files          = ["RadarSDKMotion/*.{h,m}", "RadarSDKMotion/Include/*.h"]
  s.module_name           = 'RadarSDKMotion'
  s.ios.deployment_target = '10.0'
  s.frameworks            = 'CoreMotion'
  s.requires_arc          = true
  s.license               = { :type => 'Apache-2.0' }
end
