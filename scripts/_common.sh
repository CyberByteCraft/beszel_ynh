#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# Get app settings
app=$YNH_APP_INSTANCE_NAME
install_dir=$(ynh_app_setting_get --app=$app --key=final_path)
data_dir=$(ynh_app_setting_get --app=$app --key=data_dir)
domain=$(ynh_app_setting_get --app=$app --key=domain)
path_url=$(ynh_app_setting_get --app=$app --key=path)
port=$(ynh_app_setting_get --app=$app --key=port)
admin=$(ynh_app_setting_get --app=$app --key=admin)
is_public=$(ynh_app_setting_get --app=$app --key=is_public)

# Set defaults if not set
install_dir=${install_dir:-/opt/beszel}
data_dir=${data_dir:-/var/lib/beszel}
port=${port:-8080}

