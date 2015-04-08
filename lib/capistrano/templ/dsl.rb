require 'capistrano/templ/dsl/templ.rb'

SSHKit::Backend::Netssh.send(:include,Capistrano::Templ::DSL)
