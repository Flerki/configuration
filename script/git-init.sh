cd ..

excludesfile=$(git config --list | grep 'core.excludesfile' | head -n 1)

if [[ -z "$excludesfile" ]]
then
	echo 'core.excludesfile is not initialised. Initialising...'

	git config --global core.excludesFile $PWD/git/global_ignore

	echo 'core.excludesfile was successfully initialised'
else
	echo 'core.excludesfile is already initialised'
fi

include_my_config_string=$(git config --list | grep '/git/config' | head -n 1)

if [[ -z "$include_my_config_string" ]]
then
	echo 'include.path is not initialised with my custom configuration. Initialising...'

	git config --global --add include.path $PWD/git/config

	echo 'include.path was successfully initialised with my custom configuration'
else
	echo 'include.path is already initialised with my custom configuration'
fi
