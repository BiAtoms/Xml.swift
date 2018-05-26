Pod::Spec.new do |s|
    s.name             = 'Xml.swift'
    s.version          = '1.1.0'
    s.summary          = 'An XMLParser wrapper for swift.'
    s.homepage         = 'https://github.com/BiAtoms/Xml.swift'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Orkhan Alikhanov' => 'orkhan.alikhanov@gmail.com' }
    s.source           = { :git => 'https://github.com/BiAtoms/Xml.swift.git', :tag => s.version.to_s }
    s.module_name      = 'XmlSwift'

    s.ios.deployment_target = '8.0'
    s.osx.deployment_target = '10.9'
    s.tvos.deployment_target = '9.0'
    s.source_files = 'Sources/*.swift'
end
