BRANCH_NAME="$(git rev-parse --abbrev-ref HEAD)"

if [ $BRANCH_NAME = "master" ]; then
	echo "It's master branch! Aborting..."
	exit 1
fi