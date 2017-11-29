module Bitstamp
  module UserTransactions
    def user_transactions(nonce: nil, offset: 0, limit: 100, sort: 'desc', currency_pair: nil)
      params = { nonce: nonce }

      if currency_pair == nil
        call(request_uri('v2', 'user_transactions'), 'POST', params)
      else
        call(request_uri('v2', 'user_transactions', currency_pair), 'POST', params)
      end
    end
  end
end
