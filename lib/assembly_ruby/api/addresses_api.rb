=begin
#Assembly API

#Assembly (formely PromisePay) is a powerful payments engine custom-built for platforms and marketplaces.

The version of the OpenAPI document: 2.0
Contact: support@assemblypayments.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module AssemblyRuby
  class AddressesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Show Address
    # Show details of a specific Address using a given address `:id`.
    # @param id [String] Address ID
    # @param [Hash] opts the optional parameters
    # @return [Address]
    def show_address(id, opts = {})
      data, _status_code, _headers = show_address_with_http_info(id, opts)
      data
    end

    # Show Address
    # Show details of a specific Address using a given address &#x60;:id&#x60;.
    # @param id [String] Address ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Address, Integer, Hash)>] Address data, response status code and response headers
    def show_address_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AddressesApi.show_address ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AddressesApi.show_address"
      end
      # resource path
      local_var_path = '/addresses/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Address' 

      # auth_names
      auth_names = opts[:auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AddressesApi#show_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
