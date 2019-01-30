Pod::Spec.new do |s|

    s.name              = 'SumSubstanceKYC'
    s.version           = '1.1'
    s.summary           = 'SumSubstanceKYC.zip'
    s.authors           = 'SumSubstance'
    s.homepage          = 'https://sumsub.com/'
    s.platform          = :ios
    s.source            = { :http => 'https://github.com/SumSubstance/KYC-iOS-Release/raw/e0c9b40c1b136f72197e2b63e728d5c3963cd382/1.1/SumSubstanceKYC.zip' }

    s.ios.deployment_target = '9.0'
    s.ios.vendored_frameworks = 'SumSubstanceKYC.framework'

    s.dependency 'PocketSocket'
    s.dependency 'ReactiveObjC'
    s.dependency 'Reachability'
    s.dependency 'PocketSVG'
    s.dependency 'YYText'
    s.dependency 'RestKit', '>= 0.27.3'
end  
