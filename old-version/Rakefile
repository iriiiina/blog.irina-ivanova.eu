require "html-proofer"
require "w3c_validators"

task :default => [:build]

task :build do
  sh "bundle exec jekyll build"
end

task :test do
  options = {
    :assume_extension => true,
    :check_favicon => true,
    :check_html => true,
    :file_ignore => ["./_site/google409298bd12290ec3.html"]
  }
  HTMLProofer.check_directory("./_site", options).run
end

task :test do
  include W3CValidators
  @validator = NuValidator.new

  Dir.glob("./_site/category/*.html") do |cFile|
    results = @validator.validate_file(cFile)

    if results.errors.length > 0
      results.errors.each do |err|
        puts cFile + ": " + err.to_s
      end
    else
      puts cFile + " is valid according to W3C"
    end
  end
end

task :test do
  include W3CValidators
  @validator = NuValidator.new

  Dir.glob("./_site/201*/*/*/*") do |pFile|
    results = @validator.validate_file(pFile)

    if results.errors.length > 0
      results.errors.each do |err|
        puts pFile + ": " + err.to_s
      end
    else
      puts pFile + " is valid according to W3C"
    end
  end
end

task :test do
  include W3CValidators
  @validator = NuValidator.new

  file = File.dirname(__FILE__) + "/_site/index.html"
  results = @validator.validate_file(file)

  if results.errors.length > 0
    results.errors.each do |err|
      puts "index.html: " + err.to_s
    end
  else
    puts "index.html is valid according to W3C"
  end
end

task :test do
  include W3CValidators
  @validator = CSSValidator.new

  file = File.dirname(__FILE__) + "/_site/css/style.css"
  @validator.set_profile!("css3svg")

  result = @validator.validate_file(file)
  if result.errors.length > 0
    result.errors.each do |err|
      puts  "style.css: " + err.to_s
    end
  else
    puts "style.css is valid according to W3C"
  end

end
