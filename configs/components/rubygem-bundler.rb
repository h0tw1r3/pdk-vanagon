component "rubygem-bundler" do |pkg, settings, platform|
  pkg.version "1.15.1"
  pkg.md5sum "329064ce58948d8c38b7543340ce9068"
  pkg.url "http://buildsources.delivery.puppetlabs.net/bundler-#{pkg.get_version}.gem"

  pkg.build_requires "ruby-#{settings[:ruby_version]}"

  if platform.is_windows?
    pkg.environment "PATH", settings[:gem_path_env]
  end

  pkg.install do
    "#{settings[:gem_install]} bundler-#{pkg.get_version}.gem"
  end
end