name "workstation"
description "An Workstation Chef role"
run_list "recipe[mychef-client]","recipe[workstation]"
