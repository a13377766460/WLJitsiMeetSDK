#
#  Be sure to run `pod spec lint WLJitsiMeetSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "WLJitsiMeetSDK"
  spec.version      = "0.0.1"
  spec.swift_versions = "5.0"
  spec.summary      = "视频会议SDK"

  spec.homepage     = "https://github.com/a13377766460/WLJitsiMeetSDK"

  spec.license      = { :type => "MIT", :file => "LICENSE" }
  
  spec.author             = { "WangLu" => "444686596@qq.com" }
  

  spec.platform     = :ios, "12.0"

  spec.source       = { :git => "https://github.com/a13377766460/WLJitsiMeetSDK.git", :tag => "#{spec.version}" }


  # spec.source_files  = "WLJitsiMeetSDK", "WLJitsiMeetSDK/**/*.{h,m}"
  spec.exclude_files = "WLJitsiMeetSDK/WLJitsiMeetSDK.podspec"

  spec.requires_arc = true
  
  spec.dependency "Giphy", "~> 2.1.20"

end
