name "gitlab"
description "install gitlab"
run_list('recipe[ruby-headers]','recipe[build-essential]','recipe[mysql::server]' , "recipe[gitlab]")


default_attributes( 
	'gitlab' => {'git_url' => "https://github.com/rkesters/gitlabhq.git",
		     'git_branch' => "ldap-groups" , 
		    },
	"build_essential" => {	"compiletime" => true  },
	"authorization" => {
    		"sudo" => {
      		"groups" => ["admin", "wheel", "sysadmin"],
     		"passwordless" => true
    		}
  	},
	'mysql' => {"server_root_password" => "iloverandompasswordsbutthiswilldo",
    	     "server_repl_password" => "iloverandompasswordsbutthiswilldo",
	    "server_debian_password" => "iloverandompasswordsbutthiswilldo",
	},
)
