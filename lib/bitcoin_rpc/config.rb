require 'singleton'
module BitcoinRPC
  class Config
    include Singleton
    attr_accessor :network, :debug
  end
end
