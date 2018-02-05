module Bitstamp::HTTP
  module Deposit
    def bitcoin_deposit_address(nonce: nil)
      params = { nonce: nonce }

      call(request_uri('bitcoin_deposit_address'), 'POST', params)
    end

    def unconfirmed_bitcoin_deposits(nonce: nil)
      params = { nonce: nonce }

      call(request_uri('unconfirmed_btc'), 'POST', params)
    end

    def xrp_deposit_address(nonce: nil)
      params = { nonce: nonce }

      debugger

      call(request_uri('v2', 'xrp_address'), 'POST', params)
    end

    def eth_deposit_address(nonce: nil)
      params = { nonce: nonce }

      call(request_uri('v2', 'eth_address'), 'POST', params)
    end

    def ltc_deposit_address(nonce: nil)
      params = { nonce: nonce }

      call(request_uri('v2', 'ltc_address'), 'POST', params)
    end

    def bch_deposit_address(nonce: nil)
      params = { nonce: nonce }

      call(request_uri('v2', 'bch_address'), 'POST', params)
    end

    def bch_deposit_address(nonce: nil)
      params = { nonce: nonce }

      call(request_uri('v2', 'bch_address'), 'POST', params)
    end
  end
end
