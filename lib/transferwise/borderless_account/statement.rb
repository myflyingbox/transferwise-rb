module Transferwise
  class BorderlessAccount::Statement < APIResource
    def self.collection_url(profile_id:, borderless_account_id:)
      "/v3/profiles/#{profile_id}/borderless-accounts/#{borderless_account_id}/statement"
    end

    def self.list(filters = {}, headers = {}, profile_id:, borderless_account_id:)
      response = Transferwise::Request.request(:get, collection_url(profile_id: profile_id, borderless_account_id: borderless_account_id), filters, headers)
      convert_to_transferwise_object(response)
    end

  end
end
