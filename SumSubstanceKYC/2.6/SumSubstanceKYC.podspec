Pod::Spec.new do |s|

    s.name              = 'SumSubstanceKYC'
    s.version           = '2.6'
    s.summary           = 'SumSubstanceKYC.zip'
    s.authors           = 'SumSubstance'
    s.homepage          = 'https://sumsub.com/'
    s.platform          = :ios
    s.source            = { :http => "https://raw.githubusercontent.com/SumSubstance/KYC-iOS-Release/master/#{s.version}/SumSubstanceKYC.zip" }

    s.ios.deployment_target = '9.3'
    s.default_subspec = 'Default'
    
    s.subspec 'Default' do |s|        
        s.dependency 'SumSubstanceKYC/Bitcode'
        #s.dependency 'SumSubstanceKYC/DocumentTracker'
    end
    
    s.subspec 'Bitcode' do |s|
        s.dependency 'SumSubstanceKYC/Core'
        s.dependency 'SumSubstanceKYC/FaceTracker'
    end
    
    s.subspec 'Core' do |s|
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
    
    s.subspec 'DocumentTracker' do |s|
        s.ios.vendored_frameworks = 'SumSubstanceKYC_DocumentTracker.framework'
        s.dependency 'SumSubstanceKYC/Core'
    end
    
    s.subspec 'FaceTracker' do |s|
        s.ios.vendored_frameworks = 'SumSubstanceKYC_FaceTracker.framework'
        s.dependency 'SumSubstanceKYC/Core'
    end
end
