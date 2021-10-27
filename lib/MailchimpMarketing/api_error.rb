=begin
#Mailchimp Marketing API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 3.0.71
Contact: apihelp@mailchimp.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

module MailchimpMarketing
  class ApiError < StandardError
    attr_reader :status, :type, :title, :detail, :instance, :errors

    # Usage examples:
    #   ApiError.new
    #   ApiError.new("message")
    #   ApiError.new(:status => 500, :response_headers => {}, :response_body => "")
    #   ApiError.new(:status => 404, :message => "Not Found")
    def initialize(arg = nil)
      if arg.is_a? Hash
        if arg.key?(:message) || arg.key?('message')
          super(arg[:message] || arg['message'])
        else
          super arg
        end

        arg.each do |k, v|
          instance_variable_set "@#{k}", v
        end
      else
        super arg
      end
    end
  end
end
