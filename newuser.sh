if [ -z "$1" ] || [ "$1" = "" ]
then
	echo "must supply a username"
	exit
fi

echo "Create new user '$1'? (y/n)"

read response

if [ $response = "y" ]
then
	adduser $1
	exit
fi

if [ $response = 'n' ]
then
	echo "no action performed"
	exit
fi

echo "no action performed"

# useradd $1 
