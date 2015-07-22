require 'spec_helper'

describe Feature::Server do
  it 'has a version number' do
    expect(Feature::Server::VERSION).not_to be nil
  end
end
