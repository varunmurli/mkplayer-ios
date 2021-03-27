Pod::Spec.new do |spec|

    spec.name         = "mkplayer"
    spec.version      = "0.9.5"
    spec.summary      = "MKPlayer is an iOS SDK for the MediaFirst player."
    spec.homepage     = "https://www.mediakind.com/"
    spec.license      = "Commercial"
    spec.author       = { "MediaKind" => "support@mediakind.com" }

    spec.platform     = :ios, "11.0"
    spec.platform     = :tvos, "11.0"

    spec.ios.deployment_target = "11.0"
    spec.tvos.deployment_target = "11.0"

    spec.source       = { :http => "https://mkplayer.z13.web.core.windows.net/ios_tvos/MKPlayer-0.9.5.zip" }

    spec.ios.vendored_frameworks = 'MKPlayer/iOS/MKPlayer.framework'
    spec.ios.framework  = 'Foundation'
    spec.ios.framework  = 'UIKit'
    spec.ios.framework  = 'AVFoundation'
    spec.ios.framework  = 'AVKit'
    spec.ios.framework  = 'WebKit'
    spec.ios.dependency 'Alamofire', '~> 5.2'
    spec.ios.dependency 'BitmovinPlayer', '2.61.1'

    spec.tvos.vendored_frameworks = 'MKPlayer/tvOS/MKPlayer.framework'
    spec.tvos.framework  = 'Foundation'
    spec.tvos.framework  = 'UIKit'
    spec.tvos.framework  = 'AVFoundation'
    spec.tvos.framework  = 'AVKit'
    spec.tvos.dependency 'Alamofire', '~> 5.2'
    spec.tvos.dependency 'BitmovinPlayer', '2.61.1'

    spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=*simulator*]' => 'arm64' }
    spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=*simulator*]' => 'arm64' }

end
