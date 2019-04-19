commit_hash = "3882ae2a455b4b44273e314d87df2229bb8d4e96"

Pod::Spec.new do |s|

    s.name              = 'SumSubstanceKYC'
    s.version           = '2.2'
    s.summary           = 'SumSubstanceKYC.zip'
    s.authors           = 'SumSubstance'
    s.homepage          = 'https://sumsub.com/'
    s.platform          = :ios
    s.source            = { :http => "https://github.com/SumSubstance/KYC-iOS-Release/raw/#{commit_hash}/#{s.version}/SumSubstanceKYC.zip" }

    s.ios.deployment_target = '9.0'
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
