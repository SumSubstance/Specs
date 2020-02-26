Pod::Spec.new do |s|

    s.name              = 'SumSubstanceKYC.Frameworks'
    s.version           = '2.12'
    s.summary           = 'Sum&Substance Mobile SDK with prebuilt dependencies'
    s.authors           = 'Sum&Substance'
    s.homepage          = 'https://sumsub.com/'
    s.platform          = :ios
    s.source            = { :http => "https://raw.githubusercontent.com/SumSubstance/KYC-iOS-Release/master/#{s.version}/SumSubstanceKYC.Frameworks.zip" }

    s.ios.deployment_target = '9.3'
    s.default_subspec = 'Default'

    s.subspec 'Default' do |s|
        s.dependency 'SumSubstanceKYC.Frameworks/Core'
        s.dependency 'SumSubstanceKYC.Frameworks/Liveness3D'
    end

    s.subspec 'Core' do |s|
        s.dependency 'SumSubstanceKYC.Frameworks/SumSubstanceKYC'
        s.dependency 'SumSubstanceKYC.Frameworks/Core.Deps'
    end

    s.subspec 'Liveness3D' do |s|
        s.dependency 'SumSubstanceKYC.Frameworks/Core'
        s.dependency 'SumSubstanceKYC.Frameworks/SumSubstanceKYC_Liveness3D'
        s.dependency 'ZoomAuthSDK', '~> 8.0.6'
    end
    
    s.subspec 'SumSubstanceKYC' do |s|
        s.ios.vendored_frameworks = "SumSubstanceKYC.framework"
    end

    s.subspec 'SumSubstanceKYC_Liveness3D' do |s|
        s.ios.vendored_frameworks = "SumSubstanceKYC_Liveness3D.framework"
    end

    s.subspec 'Core.Deps' do |s|
        s.dependency 'SumSubstanceKYC.Frameworks/RestKit'
        s.dependency 'SumSubstanceKYC.Frameworks/RKValueTransformers'
        s.dependency 'SumSubstanceKYC.Frameworks/SOCKit'
        s.dependency 'SumSubstanceKYC.Frameworks/TransitionKit'
        s.dependency 'SumSubstanceKYC.Frameworks/ISO8601DateFormatterValueTransformer'
        s.dependency 'SumSubstanceKYC.Frameworks/Reachability'
        s.dependency 'SumSubstanceKYC.Frameworks/PocketSVG'
        s.dependency 'SumSubstanceKYC.Frameworks/PocketSocket'
        s.dependency 'SumSubstanceKYC.Frameworks/ReactiveObjC'
        s.dependency 'SumSubstanceKYC.Frameworks/SDWebImage'
        s.dependency 'SumSubstanceKYC.Frameworks/YYText'
    end

    s.subspec 'RestKit' do |s|
        s.ios.vendored_frameworks = "Deps/RestKit/RestKit.framework"
    end

    s.subspec 'RKValueTransformers' do |s|
        s.ios.vendored_frameworks = "Deps/RKValueTransformers/RKValueTransformers.framework"
    end

    s.subspec 'SOCKit' do |s|
        s.ios.vendored_frameworks = "Deps/SOCKit/SOCKit.framework"
    end

    s.subspec 'TransitionKit' do |s|
        s.ios.vendored_frameworks = "Deps/TransitionKit/TransitionKit.framework"
    end

    s.subspec 'ISO8601DateFormatterValueTransformer' do |s|
        s.ios.vendored_frameworks = "Deps/ISO8601DateFormatterValueTransformer/ISO8601DateFormatterValueTransformer.framework"
    end

    s.subspec 'Reachability' do |s|
        s.ios.vendored_frameworks = "Deps/Reachability/Reachability.framework"
    end

    s.subspec 'PocketSVG' do |s|
        s.ios.vendored_frameworks = "Deps/PocketSVG/PocketSVG.framework"
    end

    s.subspec 'PocketSocket' do |s|
        s.ios.vendored_frameworks = "Deps/PocketSocket/PocketSocket.framework"
    end

    s.subspec 'ReactiveObjC' do |s|
        s.ios.vendored_frameworks = "Deps/ReactiveObjC/ReactiveObjC.framework"
    end

    s.subspec 'SDWebImage' do |s|
        s.ios.vendored_frameworks = "Deps/SDWebImage/SDWebImage.framework"
    end

    s.subspec 'YYText' do |s|
        s.ios.vendored_frameworks = "Deps/YYText/YYText.framework"
    end
    
end
