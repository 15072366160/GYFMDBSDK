
Pod::Spec.new do |s|

  s.name         = "GYFMDBSDK"
  s.version      = "0.0.1"
  s.summary      = "基于FMDB简单封装数据库的创建及增删改查功能。"

  s.description  = <<-DESC
                 基于FMDB简单封装数据库的创建及增删改查功能
                 DESC

  s.homepage     = "http://EXAMPLE/GYFMDBSDK"

  s.license      = "MIT (example)"

  s.author             = { "Paul" => "564057354@qq.com" }

  s.platform     = :ios, "8.0"

  s.source       = { :git => "http://EXAMPLE/GYFMDBSDK.git", :tag => "#{s.version}" }

  s.source_files  = "GYFMDBSDK.framework", "GYFMDBSDK.framework/**/*.{h,m}"
#s.exclude_files = "Classes/Exclude"

  s.requires_arc = true

  s.dependency "FMDB", "~> 2.7.2"

end
