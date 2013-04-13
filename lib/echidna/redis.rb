# coding: utf-8
require 'hiredis'
require 'redis'
require 'redis-namespace'

ENV['ECHIDNA_ENV'] ||= "development"
ENV['ECHIDNA_REDIS_HOST'] ||= "127.0.0.1"
ENV['ECHIDNA_REDIS_PORT'] ||= "6379"
ENV['ECHIDNA_REDIS_NAMESPACE'] = "e:#{ENV['USER']}:#{ENV['ECHIDNA_ENV'][0]}"

$redis = Redis::Namespace.new(ENV['ECHIDNA_REDIS_NAMESPACE'], redis: Redis.new(host: ENV['ECHIDNA_REDIS_HOST'], port: ENV['ECHIDNA_REDIS_PORT'], driver: "hiredis"))

$logger.info("connect to redis: #{ENV['ECHIDNA_REDIS_HOST']}:#{ENV['ECHIDNA_REDIS_PORT']}/#{ENV['ECHIDNA_REDIS_NAMESPACE']}")
