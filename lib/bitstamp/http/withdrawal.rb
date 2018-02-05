module Bitstamp::HTTP
  module Withdrawal
    def withdrawal_requests(nonce: nil, timedelta: 86400)
      params = { nonce: nonce, timedelta: timedelta }

      call(request_uri('v2', 'withdrawal-requests'), 'POST', params)
    end

    def bitcoin_withdrawal(nonce: nil, amount:, address:)
      params = {
        nonce:   nonce,
        amount:  amount,
        address: address
      }

      call(request_uri('bitcoin_withdrawal'), 'POST', params)
    end

    def xrp_withdrawal(nonce: nil, amount:, address:, destination_tag:nil)
      params = {
        nonce:   nonce,
        amount:  amount,
        address: address,
        destination_tag: destination_tag
      }

      call(request_uri('v2', 'xrp_withdrawal'), 'POST', params)
    end

    def litecoin_withdrawal(nonce: nil, amount:, address:)
      params = {
        nonce:   nonce,
        amount:  amount,
        address: address
      }

      call(request_uri('v2', 'ltc_withdrawal'), 'POST', params)
    end

    def bitcoin_cash_withdrawal(nonce: nil, amount:, address:)
      params = {
        nonce:   nonce,
        amount:  amount,
        address: address
      }

      call(request_uri('v2', 'bch_withdrawal'), 'POST', params)
    end

    def ethereum_withdrawal(nonce: nil, amount:, address:)
      params = {
        nonce:   nonce,
        amount:  amount,
        address: address
      }

      call(request_uri('v2', 'eth_withdrawal'), 'POST', params)
    end
  end
end
