module Unico
  module Migration
    class Engine < Rails::Engine

      initializer 'unico.add_migrations' do |app|
        config.paths['db/migrate'].expanded.each do |expanded_path|
          app.config.paths['db/migrate'] << expanded_path
        end
      end

    end
  end
end
