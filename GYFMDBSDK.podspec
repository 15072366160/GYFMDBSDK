
Pod::Spec.new do |s|

  s.name         = 'GYFMDBSDK'

  s.version      = '1.1.0'

  s.summary      = '基于FMDB简单封装数据库的创建及增删改查功能。'

  s.homepage     = 'https://github.com/15072366160/GYFMDBSDK'

  s.license      = 'MIT'

  s.author       = { 'Paul' => '564057354@qq.com' }

  s.platform     = :ios, '8.0'

  s.source       = { :git => 'https://github.com/15072366160/GYFMDBSDK.git', :tag => '#{s.version}' }

  s.source_files  = 'GYFMDBSDK.framework', 'GYFMDBSDK.framework/**/*.{h,m}'
#s.exclude_files = 'Classes/Exclude'

  s.requires_arc = true

  s.dependency 'FMDB', '~> 2.7.2'

end
