require 'rspec'
require_relative 'message_filter'

describe MessageFilter do
  before do
    @filter = MessageFilter.new('foo')
  end

  it do
    @filter.should be_detect 'hello from foo'
  end

  it do
    @filter.should_not be_detect 'hello world!'
  end
end
