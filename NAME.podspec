#
# Be sure to run `pod lib lint ${POD_NAME}.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = '${POD_NAME}'
  s.version          = '0.1.0'
  s.summary          = 'A short description of ${POD_NAME}.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/${USER_NAME}/${POD_NAME}'
  s.author           = { '${USER_NAME}' => '${USER_EMAIL}' }
  s.source           = { :git => 'https://github.com/${USER_NAME}/${POD_NAME}.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.platform     = :ios, "8.0"
  s.static_framework = true
  s.pod_target_xcconfig = {
      'DEAD_CODE_STRIPPING' => 'NO',
      'LINK_WITH_STANDARD_LIBRARIES' => 'NO',
      'OTHER_LDFLAGS' => '-lObjC'
  }

  s.source_files = '${POD_NAME}/Classes/**/*.{h,m,mm}'
  s.public_header_files = '${POD_NAME}/Classes/Public/**/*.h'
  
  # s.resource_bundles = {
  #   '${POD_NAME}' => ['${POD_NAME}/Assets/*.png']
  # }

  # s.frameworks = 'UIKit', 'MapKit'
  # s.libraries = "c++"
  # s.dependency 'AFNetworking', '~> 2.3'
end
