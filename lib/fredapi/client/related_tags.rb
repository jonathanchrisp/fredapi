module FREDAPI
  class Client
    # RelatedTags module for fred/related_tags endpoint
    module RelatedTags

      # Get the related tags for one or more tags
      #
      # @param opts [Hash] options hash of parameters
      # @option opts [Integer] api_key 32 character alpha-numeric lowercase string
      # @option opts [String] file_type A key or file extension that indicates the type of file to send
      # @option opts [String] realtime_start The start of the real-time period
      # @option opts [String] realtime_end The end of the real-time period
      # @option opts [String] tag_group_id A tag group id to filter tags by type
      # @option opts [String] tag_names A semicolon delimited list of tags to find related tags for
      # @option opts [String] search_text The words to find matching tags with
      # @option opts [Integer] limit The maximum number of results to return
      # @option opts [Integer] offset Non-negative integer
      # @option opts [String] order_by Order results by values of the specified attribute
      # @option opts [String] sort_order Sort results is ascending or descending order for attribute values specified by order_by
      # @return [Hashie::Mash] Hash containing the results
      def related_tags opts={}
        get "fred/related_tags", opts
      end

    end
  end
end