set :stage, :production

set :deploy_to, -> { ENV['PROD_DEPLOY_TO'] }
set :tmp_dir, ENV['PROD_TMP_DIR']

# Simple Role Syntax
# ==================
#role :app, %w{deploy@example.com}
#role :web, %w{deploy@example.com}
#role :db,  %w{deploy@example.com}

# Extended Server Syntax
# ======================
# server 'home544133102.1and1-data.host', user: 'u78512415', roles: %w{web app db}

server 'katrinandsandra', user: 'u78512415', roles: %w{web app db}

# you can set custom ssh options
# it's possible to pass any option but you need to keep in mind that net/ssh understand limited list of options
# you can see them in [net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start)
# set it globally
#  set :ssh_options, {
#    keys: %w(~/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }

fetch(:default_env).merge!(wp_env: :production)

set :wpcli_remote_url, 'http://www.littlebluebag.de'
set :wpcli_local_url, 'http://localhost:9000'
set :wpcli_options, [ ]
