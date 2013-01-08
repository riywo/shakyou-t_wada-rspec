require 'rspec'
require_relative 'message_filter'

describe MessageFilter do
  it 'should detect message with NG word' do
    filter = MessageFilter.new('foo')
    filter.detect?('hello from foo').should == true
  end
end
