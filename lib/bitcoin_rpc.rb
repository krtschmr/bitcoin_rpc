require 'bitcoin_rpc/client'
require 'bitcoin_rpc/config'

module BitcoinRPC
  def self.config
    @@config ||= BitcoinRPC::Config.instance
  end
  def self.new(user, password, args={})
     Client.new(user, password, args)
   end
end

BitcoinRPC.config.network = Rails.env.production? ? :livenet : :testnet
BitcoinRPC.config.debug = !Rails.env.production?
