Pod::Spec.new do |s|

    s.name              = 'SumSubstanceKYC'
    s.version           = '2.4'
    s.summary           = 'SumSubstanceKYC.zip'
    s.authors           = 'SumSubstance'
    s.homepage          = 'https://sumsub.com/'
    s.platform          = :ios
    s.source            = { :http => "https://raw.githubusercontent.com/SumSubstance/KYC-iOS-Release/master/#{s.version}/SumSubstanceKYC.zip" }

    s.ios.deployment_target = '9.3'
    s.ios.vendored_frameworks = 'SumSubstanceKYC.framework'

    s.ios.frameworks = 'Foundation', 'CoreData', 'Accelerate', 'AVFoundation', 'CoreMedia'

    s.dependency 'PocketSocket'
    s.dependency 'ReactiveObjC'
    s.dependency 'Reachability'
    s.dependency 'PocketSVG'
    s.dependency 'YYText'
    s.dependency 'RestKit', '>= 0.27.3'
    s.dependency 'SDWebImage', '< 5.0'
end  
