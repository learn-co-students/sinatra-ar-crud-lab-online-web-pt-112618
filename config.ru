
require './config/environment'

begin
  fi_check_migration

  #With this code, app knows we use PATCH, PUT, DELETE requests
  use Rack::MethodOverride

  run ApplicationController
rescue ActiveRecord::PendingMigrationError => err
  STDERR.puts err
  exit 1
end
