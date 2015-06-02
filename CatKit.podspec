Pod::Spec.new do |s|
   s.name = 'CatKit'
   s.version = '1.0'
   s.license = 'MIT'

   s.summary = 'An iOS framework for downloading placeholder cat images.'
   s.homepage = 'https://github.com/jozsef-vesza/CatKit'

   s.social_media_url = 'https://twitter.com/j_vesza'
   s.authors = { 'József Vesza' => 'jozsef.vesza@outlook.com' }

   s.source = { :git => 'https://github.com/jozsef-vesza/CatKit.git', :tag => s.version }
   s.source_files = 'CatKit/*.swift'

   s.platform = :ios, '8.0'
   s.frameworks = 'Foundation'
   s.requires_arc = true
end