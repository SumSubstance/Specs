Pod::Spec.new do |s|

    s.name         = "ZoomAuthSDK"
    s.version      = "8.12.1"
    s.summary      = "FaceTec's ZoOm iOS SDK"
    s.homepage     = "https://dev.facetec.com"
    s.license      = { type: 'custom', text: 'ZoomAuthentication is Copyright 2018 FaceTec, Inc.  It may not be modified.' }
    s.author       = { "Gregory Perez" => "gperez@facetec.com" }

    s.platform     = :ios, "9.0"

    s.source       = { :http => "https://raw.githubusercontent.com/SumSubstance/IdensicMobileSDK-iOS-Release/master/Deps/ZoomAuthSDK-#{s.version}.zip" }

    s.vendored_frameworks = "ZoomAuthentication.framework"

end
