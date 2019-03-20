commit_hash = "d97a3f63465d4406faa61917a6fe1e1d7c07aad0"

Pod::Spec.new do |s|

    s.name              = 'SumSubstanceKYC'
    s.version           = '2.0'
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
    s.dependency 'SDWebImage'
end  
