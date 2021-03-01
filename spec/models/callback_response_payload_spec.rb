=begin
#Assembly API

#Assembly (formely PromisePay) is a powerful payments engine custom-built for platforms and marketplaces.

The version of the OpenAPI document: 2.0
Contact: support@assemblypayments.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AssemblyRuby::CallbackResponsePayload
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CallbackResponsePayload' do
  before do
    # run before each test
    @instance = AssemblyRuby::CallbackResponsePayload.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CallbackResponsePayload' do
    it 'should create an instance of CallbackResponsePayload' do
      expect(@instance).to be_instance_of(AssemblyRuby::CallbackResponsePayload)
    end
  end
  describe 'test attribute "message"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
