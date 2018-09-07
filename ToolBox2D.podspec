#
# Be sure to run `pod lib lint ToolBox2D.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ToolBox2D'
  s.version          = '0.0.3'
  s.summary          = 'ToolBox2D is a toolbox ;)'
  
  s.description      = <<-DESC
  ToolBox is a spriteKit toolbox
  DESC
  
  s.homepage         = 'https://github.com/nberthelot/ToolBox2D'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'nberthelot' => '...' }
  s.source           = { :git => 'https://github.com/nberthelot/ToolBox2D.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '10.0'
  
  s.source_files = 'ToolBox2D/Classes/**/*'
  s.frameworks = 'SpriteKit'

end
