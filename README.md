# How to reproduce:

```
$ bundle install
$ bundle exec rake db:setup
Created database 'bad_index_development'
Created database 'bad_index_test'
-- enable_extension("plpgsql")
   -> 0.0125s
-- create_table("sorry_i_didnt_name_the_table_that_caused_this_problem_for_me", {:id=>:bigint, :default=>#<Proc:0x007fc2941ab6d0@/Users/jardo/Codes/bad_index/db/schema.rb:18 (lambda)>, :force=>:cascade})
rake aborted!
ActiveRecord::StatementInvalid: PG::UndefinedTable: ERROR:  relation "sorry_i_didnt_name_the_table_that_caused_this_problem_fo_id_seq" does not exist
: CREATE TABLE "sorry_i_didnt_name_the_table_that_caused_this_problem_for_me" ("id" bigint DEFAULT nextval('sorry_i_didnt_name_the_table_that_caused_this_problem_fo_id_seq'::regclass) NOT NULL PRIMARY KEY)
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/connection_adapters/postgresql/database_statements.rb:73:in `async_exec'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/connection_adapters/postgresql/database_statements.rb:73:in `block (2 levels) in execute'
/Users/jardo/.gem/ruby/2.4.1/gems/activesupport-5.1.4/lib/active_support/dependencies/interlock.rb:46:in `block in permit_concurrent_loads'
/Users/jardo/.gem/ruby/2.4.1/gems/activesupport-5.1.4/lib/active_support/concurrency/share_lock.rb:185:in `yield_shares'
/Users/jardo/.gem/ruby/2.4.1/gems/activesupport-5.1.4/lib/active_support/dependencies/interlock.rb:45:in `permit_concurrent_loads'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/connection_adapters/postgresql/database_statements.rb:72:in `block in execute'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/connection_adapters/abstract_adapter.rb:612:in `block (2 levels) in log'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/connection_adapters/abstract_adapter.rb:611:in `block in log'
/Users/jardo/.gem/ruby/2.4.1/gems/activesupport-5.1.4/lib/active_support/notifications/instrumenter.rb:21:in `instrument'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/connection_adapters/abstract_adapter.rb:603:in `log'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/connection_adapters/postgresql/database_statements.rb:71:in `execute'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/connection_adapters/abstract/schema_statements.rb:288:in `create_table'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/migration.rb:849:in `block in method_missing'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/migration.rb:818:in `block in say_with_time'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/migration.rb:818:in `say_with_time'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/migration.rb:838:in `method_missing'
/Users/jardo/Codes/bad_index/db/schema.rb:18:in `block in <top (required)>'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/schema.rb:48:in `instance_eval'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/schema.rb:48:in `define'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/schema.rb:44:in `define'
/Users/jardo/Codes/bad_index/db/schema.rb:13:in `<top (required)>'
/Users/jardo/.gem/ruby/2.4.1/gems/activesupport-5.1.4/lib/active_support/dependencies.rb:286:in `load'
/Users/jardo/.gem/ruby/2.4.1/gems/activesupport-5.1.4/lib/active_support/dependencies.rb:286:in `block in load'
/Users/jardo/.gem/ruby/2.4.1/gems/activesupport-5.1.4/lib/active_support/dependencies.rb:258:in `load_dependency'
/Users/jardo/.gem/ruby/2.4.1/gems/activesupport-5.1.4/lib/active_support/dependencies.rb:286:in `load'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/tasks/database_tasks.rb:233:in `load_schema'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/tasks/database_tasks.rb:255:in `block in load_schema_current'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/tasks/database_tasks.rb:304:in `block in each_current_configuration'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/tasks/database_tasks.rb:303:in `each'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/tasks/database_tasks.rb:303:in `each_current_configuration'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/tasks/database_tasks.rb:254:in `load_schema_current'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/railties/databases.rake:248:in `block (3 levels) in <top (required)>'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/railties/databases.rake:252:in `block (3 levels) in <top (required)>'
/Users/jardo/.gem/ruby/2.4.1/gems/rake-12.3.0/exe/rake:27:in `<top (required)>'
/Users/jardo/.gem/ruby/2.4.1/gems/bundler-1.13.7/lib/bundler/cli/exec.rb:74:in `load'
/Users/jardo/.gem/ruby/2.4.1/gems/bundler-1.13.7/lib/bundler/cli/exec.rb:74:in `kernel_load'
/Users/jardo/.gem/ruby/2.4.1/gems/bundler-1.13.7/lib/bundler/cli/exec.rb:27:in `run'
/Users/jardo/.gem/ruby/2.4.1/gems/bundler-1.13.7/lib/bundler/cli.rb:332:in `exec'
/Users/jardo/.gem/ruby/2.4.1/gems/bundler-1.13.7/lib/bundler/vendor/thor/lib/thor/command.rb:27:in `run'
/Users/jardo/.gem/ruby/2.4.1/gems/bundler-1.13.7/lib/bundler/vendor/thor/lib/thor/invocation.rb:126:in `invoke_command'
/Users/jardo/.gem/ruby/2.4.1/gems/bundler-1.13.7/lib/bundler/vendor/thor/lib/thor.rb:359:in `dispatch'
/Users/jardo/.gem/ruby/2.4.1/gems/bundler-1.13.7/lib/bundler/cli.rb:20:in `dispatch'
/Users/jardo/.gem/ruby/2.4.1/gems/bundler-1.13.7/lib/bundler/vendor/thor/lib/thor/base.rb:440:in `start'
/Users/jardo/.gem/ruby/2.4.1/gems/bundler-1.13.7/lib/bundler/cli.rb:11:in `start'
/Users/jardo/.gem/ruby/2.4.1/gems/bundler-1.13.7/exe/bundle:34:in `block in <top (required)>'
/Users/jardo/.gem/ruby/2.4.1/gems/bundler-1.13.7/lib/bundler/friendly_errors.rb:100:in `with_friendly_errors'
/Users/jardo/.gem/ruby/2.4.1/gems/bundler-1.13.7/exe/bundle:26:in `<top (required)>'
/Users/jardo/.gem/ruby/2.4.1/bin/bundle:22:in `load'
/Users/jardo/.gem/ruby/2.4.1/bin/bundle:22:in `<main>'

Caused by:
PG::UndefinedTable: ERROR:  relation "sorry_i_didnt_name_the_table_that_caused_this_problem_fo_id_seq" does not exist
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/connection_adapters/postgresql/database_statements.rb:73:in `async_exec'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/connection_adapters/postgresql/database_statements.rb:73:in `block (2 levels) in execute'
/Users/jardo/.gem/ruby/2.4.1/gems/activesupport-5.1.4/lib/active_support/dependencies/interlock.rb:46:in `block in permit_concurrent_loads'
/Users/jardo/.gem/ruby/2.4.1/gems/activesupport-5.1.4/lib/active_support/concurrency/share_lock.rb:185:in `yield_shares'
/Users/jardo/.gem/ruby/2.4.1/gems/activesupport-5.1.4/lib/active_support/dependencies/interlock.rb:45:in `permit_concurrent_loads'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/connection_adapters/postgresql/database_statements.rb:72:in `block in execute'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/connection_adapters/abstract_adapter.rb:612:in `block (2 levels) in log'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/connection_adapters/abstract_adapter.rb:611:in `block in log'
/Users/jardo/.gem/ruby/2.4.1/gems/activesupport-5.1.4/lib/active_support/notifications/instrumenter.rb:21:in `instrument'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/connection_adapters/abstract_adapter.rb:603:in `log'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/connection_adapters/postgresql/database_statements.rb:71:in `execute'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/connection_adapters/abstract/schema_statements.rb:288:in `create_table'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/migration.rb:849:in `block in method_missing'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/migration.rb:818:in `block in say_with_time'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/migration.rb:818:in `say_with_time'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/migration.rb:838:in `method_missing'
/Users/jardo/Codes/bad_index/db/schema.rb:18:in `block in <top (required)>'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/schema.rb:48:in `instance_eval'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/schema.rb:48:in `define'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/schema.rb:44:in `define'
/Users/jardo/Codes/bad_index/db/schema.rb:13:in `<top (required)>'
/Users/jardo/.gem/ruby/2.4.1/gems/activesupport-5.1.4/lib/active_support/dependencies.rb:286:in `load'
/Users/jardo/.gem/ruby/2.4.1/gems/activesupport-5.1.4/lib/active_support/dependencies.rb:286:in `block in load'
/Users/jardo/.gem/ruby/2.4.1/gems/activesupport-5.1.4/lib/active_support/dependencies.rb:258:in `load_dependency'
/Users/jardo/.gem/ruby/2.4.1/gems/activesupport-5.1.4/lib/active_support/dependencies.rb:286:in `load'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/tasks/database_tasks.rb:233:in `load_schema'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/tasks/database_tasks.rb:255:in `block in load_schema_current'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/tasks/database_tasks.rb:304:in `block in each_current_configuration'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/tasks/database_tasks.rb:303:in `each'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/tasks/database_tasks.rb:303:in `each_current_configuration'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/tasks/database_tasks.rb:254:in `load_schema_current'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/railties/databases.rake:248:in `block (3 levels) in <top (required)>'
/Users/jardo/.gem/ruby/2.4.1/gems/activerecord-5.1.4/lib/active_record/railties/databases.rake:252:in `block (3 levels) in <top (required)>'
/Users/jardo/.gem/ruby/2.4.1/gems/rake-12.3.0/exe/rake:27:in `<top (required)>'
/Users/jardo/.gem/ruby/2.4.1/gems/bundler-1.13.7/lib/bundler/cli/exec.rb:74:in `load'
/Users/jardo/.gem/ruby/2.4.1/gems/bundler-1.13.7/lib/bundler/cli/exec.rb:74:in `kernel_load'
/Users/jardo/.gem/ruby/2.4.1/gems/bundler-1.13.7/lib/bundler/cli/exec.rb:27:in `run'
/Users/jardo/.gem/ruby/2.4.1/gems/bundler-1.13.7/lib/bundler/cli.rb:332:in `exec'
/Users/jardo/.gem/ruby/2.4.1/gems/bundler-1.13.7/lib/bundler/vendor/thor/lib/thor/command.rb:27:in `run'
/Users/jardo/.gem/ruby/2.4.1/gems/bundler-1.13.7/lib/bundler/vendor/thor/lib/thor/invocation.rb:126:in `invoke_command'
/Users/jardo/.gem/ruby/2.4.1/gems/bundler-1.13.7/lib/bundler/vendor/thor/lib/thor.rb:359:in `dispatch'
/Users/jardo/.gem/ruby/2.4.1/gems/bundler-1.13.7/lib/bundler/cli.rb:20:in `dispatch'
/Users/jardo/.gem/ruby/2.4.1/gems/bundler-1.13.7/lib/bundler/vendor/thor/lib/thor/base.rb:440:in `start'
/Users/jardo/.gem/ruby/2.4.1/gems/bundler-1.13.7/lib/bundler/cli.rb:11:in `start'
/Users/jardo/.gem/ruby/2.4.1/gems/bundler-1.13.7/exe/bundle:34:in `block in <top (required)>'
/Users/jardo/.gem/ruby/2.4.1/gems/bundler-1.13.7/lib/bundler/friendly_errors.rb:100:in `with_friendly_errors'
/Users/jardo/.gem/ruby/2.4.1/gems/bundler-1.13.7/exe/bundle:26:in `<top (required)>'
/Users/jardo/.gem/ruby/2.4.1/bin/bundle:22:in `load'
/Users/jardo/.gem/ruby/2.4.1/bin/bundle:22:in `<main>'
Tasks: TOP => db:schema:load
(See full trace by running task with --trace)
```
