
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "generate_meme/version"

Gem::Specification.new do |spec|
  spec.name          = "generate_meme"
  spec.version       = GenerateMeme::VERSION
  spec.authors       = ["Ronaq13"]
  spec.email         = ["raounaqsharma@gmail.com"]

  spec.summary       = "This gem is used to generate memes"
  spec.description   = "This gem hits the api with the data provided and generate memes"
  spec.homepage      = "https://github.com/Ronaq13/Meme-generator"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = `git ls-files`.split("\n")
  spec.bindir        = "exe"
  spec.executables   = ["generate_meme"]
  spec.require_paths = ["lib"]

  spec.add_dependency "thor"
  spec.add_dependency "unirest"
  spec.add_dependency "dotenv"
  spec.add_dependency "rest-client", ">= 1.7.3", "< 2.2.0"
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "httparty"
end
