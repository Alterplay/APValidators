Pod::Spec.new do |s|
  s.name             = "APValidators"
  s.version          = "0.1.4"
  s.summary          = "APValidators is a codeless solution for form validation. Just connect everything right in Interface Builder and you're done."
  s.homepage         = "https://github.com/Alterplay/APValidators"
  s.license          = 'MIT'
  s.author           = { "Nickolay Sheika" => "nickolai.sheika@alterplay.com" }
  s.source           = { :git => "https://github.com/Alterplay/APValidators.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'APValidators' => ['Pod/**/*.plist']
  }

end
