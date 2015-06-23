CarrierWave.configure do |config|
  config.fog_credentials = { 
      :provider               => 'AWS',
      :aws_access_key_id      => 'AKIAITBRTIJ7642A7ZYQ',
      :aws_secret_access_key  => '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',
  }
  config.fog_directory  = 'agiledeversshoppingcart'
end


