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

# Unit tests for AssemblyRuby::ChargesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ChargesApi' do
  before do
    # run before each test
    @api_instance = AssemblyRuby::ChargesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ChargesApi' do
    it 'should create an instance of ChargesApi' do
      expect(@api_instance).to be_instance_of(AssemblyRuby::ChargesApi)
    end
  end

  # unit tests for create_charge
  # Create Charge
  # Create a **Charge**. **Charges** require a specified **Card Account** or **Bank Account**. You may pass through an existing **User**, or define the &#x60;user_id&#x60; of the new user that will be associated with the **Charge** and the provided Account. The &#x60;user_id&#x60; can be left blank if you wish for a new user to be created for the **Charge**, or specified if you wish for a new **User** to be created with the passed &#x60;user_id&#x60;. 
  # @param charge_request_body 
  # @param [Hash] opts the optional parameters
  # @return [SingleCharge]
  describe 'create_charge test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_charges
  # List Charges
  # Retrieve an ordered and paginated list of **Charges**.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Number of records to retrieve. Up to 200.
  # @option opts [Integer] :offset Number of records to offset. Required for pagination.
  # @return [Charges]
  describe 'list_charges test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_charge
  # Show Charge
  # Show details of a specific **Charge** using a given &#x60;:id&#x60;.
  # @param id Charge ID
  # @param [Hash] opts the optional parameters
  # @return [SingleCharge]
  describe 'show_charge test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_charge_buyer
  # Show Charge Buyer
  # Show the buyer **User** associated with the **Charge** using a given &#x60;:id&#x60;.
  # @param id Charge ID
  # @param [Hash] opts the optional parameters
  # @return [SingleUser]
  describe 'show_charge_buyer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_charge_status
  # Show Charge Status
  # Show status of a specific **Charge** using a given &#x60;:id&#x60;.
  # @param id Charge ID
  # @param [Hash] opts the optional parameters
  # @return [SingleChargeStatus]
  describe 'show_charge_status test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
