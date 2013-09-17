Pod::Spec.new do |s|
  s.name         = "UIAlertView-Blocks"
  s.version      = "0.0.1"
  s.summary      = "A category for UIAlertView which allows you to use blocks to handle the pressed button events rather than implementing a delegate."

  s.description  = <<-DESC
A category for UIAlertView which allows you to use blocks to handle the pressed button events rather than implementing a delegate.
                   DESC

  s.homepage     = "https://github.com/jivadevoe/UIAlertView-Blocks"


  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.author       = 'Jiva DeVoe'

  s.platform     = :ios, '5.1'

  s.source       = { :git => "git@github.com:craquee/UIAlertView-Blocks.git", :tag => "0.0.1" }

  s.source_files  = '*.{h,m}'

  s.requires_arc = true
end
