
Pod::Spec.new do |s|
  s.name             = '${POD_NAME}'
  s.version          = '0.1.0'
  s.summary          = 'A short description of ${POD_NAME}.'
  
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
      'LINK_WITH_STANDARD_LIBRARIES' => 'NO'
  }

  s.user_target_xcconfig = {
    'OTHER_LDFLAGS' => ['-ObjC'],
}

  s.source_files = '${POD_NAME}/Classes/**/*.{h,m,mm}'
  s.public_header_files = '${POD_NAME}/Classes/Public/**/*.h'

  # s.resource_bundles = {
  #   'EsbuilderMpxxxx' => ['EsbuilderMpxxxx/Assets/*.png']
  # }

  # s.frameworks = 'UIKit', 'MapKit'
  # s.libraries = "c++"
  # s.dependency 'AFNetworking', '~> 2.3'
end
