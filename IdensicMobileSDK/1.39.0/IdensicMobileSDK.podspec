Pod::Spec.new do |s|

    s.name              = 'IdensicMobileSDK'
    s.version           = '1.39.0'
    s.summary           = 'Sum&Substance Mobile SDK'
    s.authors           = 'Sum&Substance'
    s.homepage          = 'https://sumsub.com/'
    s.platform          = :ios
    s.source            = { :http => "https://raw.githubusercontent.com/SumSubstance/IdensicMobileSDK-iOS-Release/master/#{s.version}/IdensicMobileSDK-#{s.version}.zip" }

    s.ios.deployment_target = '12.0'
    s.default_subspec = 'Default'

    s.subspec 'Default' do |s|
        s.dependency 'IdensicMobileSDK/Core'
    end

    s.subspec 'Core' do |s|
        s.ios.vendored_frameworks = 'IdensicMobileSDK.xcframework'
    end

    s.subspec 'MRTDReader' do |s|
        s.dependency 'IdensicMobileSDK/MRTDReader-latest'
    end

    s.subspec 'MRTDReader-compat' do |s|
        s.ios.vendored_frameworks = 'IdensicMobileSDK_MRTDReader.xcframework'
        s.dependency 'IdensicMobileSDK/Core'
        s.dependency 'OpenSSL-Universal', '< 3.1.5001'
    end

    s.subspec 'MRTDReader-latest' do |s|
        s.ios.vendored_frameworks = 'IdensicMobileSDK_MRTDReader.xcframework'
        s.dependency 'IdensicMobileSDK/Core'
        s.dependency 'OpenSSL-Universal', '>= 3.1.5001'
    end

    s.subspec 'VideoIdent' do |s|
        s.dependency 'IdensicMobileSDK/VideoIdent-latest'
    end

    s.subspec 'VideoIdent-compat' do |s|
        s.ios.vendored_frameworks = 'IdensicMobileSDK_VideoIdent.xcframework'
        s.dependency 'IdensicMobileSDK/Core'
        s.dependency 'TwilioVideo', '< 5.8.2'
    end

    s.subspec 'VideoIdent-latest' do |s|
        s.ios.deployment_target = '12.2'
        s.ios.vendored_frameworks = 'IdensicMobileSDK_VideoIdent.xcframework'
        s.dependency 'IdensicMobileSDK/Core'
        s.dependency 'TwilioVideo', '>= 5.8.2'
    end

    s.subspec 'EID' do |s|
        s.ios.vendored_frameworks = 'IdensicMobileSDK_EID.xcframework'
        s.dependency 'IdensicMobileSDK/Core'
        s.dependency 'AuthadaAuthenticationLibrary', '1.3.4'
    end
end
