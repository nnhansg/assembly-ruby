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
  class TokenAuthApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Generate Token
    # Create a token, either for a bank or a card account, that can be used with the **PromisePay.js** package to securely send Assembly credit card details.
    # @param token_auth_request_body [TokenAuthRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def generate_token(token_auth_request_body, opts = {})
      data, _status_code, _headers = generate_token_with_http_info(token_auth_request_body, opts)
      data
    end

    # Generate Token
    # Create a token, either for a bank or a card account, that can be used with the **PromisePay.js** package to securely send Assembly credit card details.
    # @param token_auth_request_body [TokenAuthRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def generate_token_with_http_info(token_auth_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TokenAuthApi.generate_token ...'
      end
      # verify the required parameter 'token_auth_request_body' is set
      if @api_client.config.client_side_validation && token_auth_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'token_auth_request_body' when calling TokenAuthApi.generate_token"
      end
      # resource path
      local_var_path = '/token_auths'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(token_auth_request_body) 

      # return_type
      return_type = opts[:return_type] || 'Object' 

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

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TokenAuthApi#generate_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
