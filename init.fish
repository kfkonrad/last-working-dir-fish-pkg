# last-working-dir initialization hook
#
# You can use the following variables in this file:
# * $package       package name
# * $path          package path
# * $dependencies  package dependencies

if status --is-interactive
    cd $LAST_WORKING_DIR
end

function __onpwd --on-variable PWD
    set --universal LAST_WORKING_DIR $PWD
end
# __onpwd
