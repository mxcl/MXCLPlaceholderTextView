Pod::Spec.new do |s|
  version = "1"

  s.name         = "MXCLPlaceholderTextView"
  s.version      = version
  s.source       = { :git => 'https://github.com/mxcl/MXCLPlaceholderTextView.git', :tag => version }
  s.requires_arc = true
  s.source_files = '*.m', '*.h'
  s.summary      = 'UITextView with a placeholder property.'
  s.homepage     = 'https://github.com/mxcl/MXCLPlaceholderTextView'
  s.frameworks   = 'UIKit'
  s.author       = { 'Max Howell' => 'mxcl@me.com' }
  s.license      = { :type => 'BSD 3-Clause License', :file => 'LICENSE' }
  s.platform     = :ios
end
