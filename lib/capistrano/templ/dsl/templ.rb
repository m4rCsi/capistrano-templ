require 'erb'
require 'ostruct'

module Capistrano
	module Templ
		module DSL
			def erb(template, vars)
				ERB.new(File.read(template)).result(OpenStruct.new(vars).instance_eval { binding })
			end

			def template(template,to,vars ={})
				res = erb(template,vars)
				tmp_file = "/tmp/cap_erb_tmp_file"
				upload! StringIO.new(res), tmp_file
				execute :sudo, "mv #{tmp_file} #{to}"
			end
		end
	end
end
