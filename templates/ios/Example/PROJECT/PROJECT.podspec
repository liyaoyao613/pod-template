Pod::Spec.new do |s|
    s.name             = 'PROJECT'
    s.version          = '0.1.0'
    s.summary          = 'xxxxx'

    s.description      = <<-DESC
            
    DESC

    s.homepage         = 'http://esbuilder.cn/git/summary/esbuilderMpLibs.git'
    s.author           = { 'USER_NAME' => 'USER_EMAIL' }

    #下面的这个tag是仓库的tag，用作仓库基线，并不是库版本的tag，切勿混淆。
    #若存在tag基线版本，则git源改为
    #{ :git => 'http://esbuilder.cn/git/r/esbuilderMpLibs.git', :tag => '这里是基线版本'}
    s.source       = { :git => 'http://esbuilder.cn/git/r/esbuilderMpLibs.git'}
    s.ios.deployment_target = '8.0'
    s.platform   = :ios, "8.0"
    s.vendored_frameworks = ["PROJECT/#{s.version}/lib/*.framework"]
    s.resources = "PROJECT/#{s.version}/lib/*.bundle"

  #  s.dependency 'EsbuilderMpLibsBase'

end
