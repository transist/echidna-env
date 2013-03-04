USERS_OFFSET = {
  'echidna' => 0,
  'staging' => 1,
  'testing' => 2,
  'development' => 3,
  'rngadam' => 4,
  'flyerhzm' => 5,
  'rainux' => 6,
  'simsicon' => 7
}

BASE_PORT = {
  'spider' => 62200,
  'streaming' => 62300,
  'dicts' => 62400,
  'monitoring' => 62600,
  'api' => 62700,
  'deploy' => 62800
};

def app_port(app_name=$app_name)
  user = ENV['USER']
  offset = USERS_OFFSET[user] || USERS_OFFSET['development'];
  ENV["ECHIDNA_#{app_name.upcase}_PORT"] = (BASE_PORT[app_name] + offset).to_s
end
