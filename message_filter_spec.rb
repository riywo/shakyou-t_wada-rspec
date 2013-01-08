require 'rspec'
require_relative 'message_filter'

describe MessageFilter, 'with argument "foo"' do
  subject do
    MessageFilter.new('foo')
  end

  it do
    should be_detect 'hello from foo'
  end

  it do
    should_not be_detect 'hello world!'
  end
end
