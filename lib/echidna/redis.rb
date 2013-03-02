# coding: utf-8
require 'hiredis'
require 'redis'
require 'redis-namespace'

redis_host = ENV['ECHIDNA_REDIS_HOST'] || "127.0.0.1"
redis_port = ENV['ECHIDNA_REDIS_PORT'] || "6379"
redis_namespace = ENV['ECHIDNA_REDIS_NAMESPACE'] || "e:d"

$redis = Redis::Namespace.new(redis_namespace, redis: Redis.new(host: redis_host, port: redis_port, driver: "hiredis"))

$logger.notice("connect to redis: #{redis_host}:#{redis_port}/#{redis_namespace}")
