Pod::Spec.new do |s|
  s.name         = 'ModuleB'
  s.summary      = 'High performance model framework for iOS/OSX.'
  s.version      = '1.0.0'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'zhujl' => 'zhujl@gmail.com' }
  s.social_media_url = 'http://blog.ibireme.com'
  s.homepage     = 'https://github.com/ibireme/YYModel'

  s.source       = { :git => 'https://github.com/ibireme/YYModel.git', :tag => s.version.to_s }
  
  s.requires_arc = true
  s.source_files = '**/*.{h,m}'
  
  s.frameworks = 'Foundation', 'CoreFoundation'
end
