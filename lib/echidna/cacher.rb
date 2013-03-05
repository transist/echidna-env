class Cacher
  attr_accessor :store

  def initialize(store)
    self.store = store
  end

  def fetch(key, cache_options=nil)
    cache_options ||= {}
    value = store.get(key)
    if value
      value
    else
      value = yield
      if cache_options[:expires_in]
        store.setex(key, cache_options[:expires_in], value)
      else
        store.set(key, value)
      end
      value
    end
  end

  def delete(key)
    store.del(key)
  end
end

$cacher = Cacher.new($redis)
