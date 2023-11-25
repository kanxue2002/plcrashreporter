Pod::Spec.new do |spec|
  IOS_DEPLOYMENT_TARGET = '11.0' unless defined? IOS_DEPLOYMENT_TARGET
  spec.cocoapods_version = '>= 1.10'
  spec.name        = 'PLCrashReporter'
  spec.version     = '1.11.1'
  spec.summary     = 'Reliable, open-source crash reporting for iOS, macOS and tvOS.'
  spec.description = 'PLCrashReporter is a reliable open source library that provides an in-process live crash reporting framework for use on iOS, macOS and tvOS. The library detects crashes and generates reports to help your investigation and troubleshooting with the information of application, system, process, thread, etc. as well as stack traces.'

  spec.homepage    = 'https://github.com/microsoft/plcrashreporter'
  spec.license     = { :type => 'MIT', :file => 'LICENSE.txt' }
  spec.authors     = { 'Microsoft' => 'appcentersdk@microsoft.com' }

  spec.source      = { :http     => "https://github.com/kanxue2002/plcrashreporter.git",
                       :tag => spec.version }
  spec.source_files = 'Source/**/*'
  spec.resources = ['Source/**/*', '!Source/**/*.plist', '!Source/**/Makefile', '!Source/**/*.ios', '!Source/**/*.macosx', '!Source/**/*.sim', 'Dependencies/protobuf-c/**/*']
  spec.xcconfig = {
      'GCC_PREPROCESSOR_DEFINITIONS' => 'PLCF_MIN_MACOSX_SDK=$(PL_MIN_MACOSX_SDK) PLCR_PRIVATE'
    }  
  spec.ios.deployment_target    = '11.0'
  spec.vendored_frameworks = "CrashReporter.xcframework"
end
