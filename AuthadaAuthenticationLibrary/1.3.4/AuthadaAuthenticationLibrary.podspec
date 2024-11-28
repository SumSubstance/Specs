Pod::Spec.new do |s|

    s.name         = 'AuthadaAuthenticationLibrary'
    s.version      = '1.3.4'
    s.summary      = 'AUTHADA Authentication Library for iOS'
    s.authors      = 'Authada GmbH'
    s.homepage     = 'https://authada.de/'
    s.license      = { type: 'custom', text: 'Copyright © 2019 Authada GmbH' }

    s.platform     = :ios, '12.0'
    s.source       = { :http => "https://raw.githubusercontent.com/SumSubstance/IdensicMobileSDK-iOS-Release/master/Deps/AuthadaAuthenticationLibrary-#{s.version}.zip" }
    s.vendored_frameworks = 'AuthadaAuthenticationLibrary.xcframework'

end
