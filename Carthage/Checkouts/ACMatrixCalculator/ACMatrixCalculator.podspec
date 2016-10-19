Pod::Spec.new do |spec|
  spec.name = "ACMatrixCalculator"
  spec.version = "0.0.1"
  spec.summary = "Framework for basic matrix arithmetic"
  spec.homepage = "https://github.com/acuenco/ACMatrixCalculator"
  spec.license = { type: 'MIT', file: 'LICENSE' }
  spec.authors = { "Adriene Cuenco" => 'adrienC562@gmail.com' }
  spec.social_media_url = "www.linkedin.com/in/acuenco"

  spec.platform = :ios, "9.1"
  spec.requires_arc = true
  spec.source = { git: "https://github.com/acuenco/ACMatrixCalculator.git", tag: "v#{spec.version}", submodules: true }
  spec.source_files = "ACMatrixCalculator/**/*.{h,swift}"
end

