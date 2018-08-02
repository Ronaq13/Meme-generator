require_relative 'spec_helper'
require_relative '../lib/generate_meme/cli'

RSpec.describe GenerateMeme do
  it "has a version number" do
    expect(GenerateMeme::VERSION).not_to be nil
  end
end
