Pod::Spec.new do |s|

    s.name              = 'SumSubstanceKYC'
    s.version           = '1.0'
    s.summary           = 'SumSubstanceKYC.zip'
    s.authors           = 'SumSubstance'
    s.homepage          = 'https://sumsub.com/'
    s.platform          = :ios
    s.source            = { :http => 'https://github.com/SumSubstance/KYC-iOS-Release/raw/94c14690f419e4da9f56365f9477f07ff7f6cda3/1.0/SumSubstanceKYC.zip' }

    s.ios.deployment_target = '9.0'
    s.ios.vendored_frameworks = 'SumSubstanceKYC.framework'

    s.dependency 'PocketSocket'
    s.dependency 'ReactiveObjC'
    s.dependency 'Reachability'
    s.dependency 'PocketSVG'
    s.dependency 'YYText'
    s.dependency 'RestKit', '>= 0.27.3'
end  
