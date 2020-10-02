Pod::Spec.new do |s|

    s.name              = 'IdensicMobileSDK'
    s.version           = '1.13.0'
    s.summary           = 'Sum&Substance Mobile SDK'
    s.authors           = 'Sum&Substance'
    s.homepage          = 'https://sumsub.com/'
    s.platform          = :ios
    s.source            = { :http => "https://raw.githubusercontent.com/SumSubstance/IdensicMobileSDK-iOS-Release/master/#{s.version}/IdensicMobileSDK-#{s.version}.zip" }

    s.ios.deployment_target = '9.0'
    s.default_subspec = 'Default'
    
    s.subspec 'Default' do |s|        
        s.dependency 'IdensicMobileSDK/Core'
        s.dependency 'IdensicMobileSDK/Liveness3D'
    end
    
    s.subspec 'Core' do |s|
        s.ios.vendored_frameworks = 'IdensicMobileSDK.framework'
    end
    
    s.subspec 'Liveness3D' do |s|
        s.ios.vendored_frameworks = 'IdensicMobileSDK_Liveness3D.framework'
        s.dependency 'IdensicMobileSDK/Core'
        s.dependency 'ZoomAuthSDK', '=8.12.1'
    end
end
