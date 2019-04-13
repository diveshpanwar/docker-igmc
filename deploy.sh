#Check the present working directory
WorkingDir=$(pwd)
echo "=========================================="
echo "Present working directory is: $WorkingDir"
echo "=========================================="
read -p "press y to continue else press any key to continue: " proceed
echo "$proceed";
if [ "$proceed" == "y" ]; then
	echo "=========================================="
	echo "Switching to ngApp Directory"
	echo "=========================================="
	cd src/main/webApps/ngapp/
	echo "=========================================="
	echo "Running NPM install"
	echo "=========================================="
	npm install
	echo "=========================================="
	echo "NPM install finished"
	echo "=========================================="
	echo ""
	echo ""
	echo "=========================================="
	echo "Installing Gulp globally"
	echo "=========================================="
	sudo npm install gulp
	echo ""
	echo ""
	echo "=========================================="
	echo "Gulp Installed"
	echo "=========================================="
	echo ""
	echo ""
	echo "=========================================="
	echo "Switching to Root Directory DPBACKEND"
	cd ..
	cd ..
	cd ..
	cd ..
	WorkingDir=$(pwd)
	echo "=========================================="
	echo "Present working directory is: $WorkingDir"
	echo "=========================================="
	echo ""
	echo ""
	echo "=========================================="
	echo "Starting maven build"
	echo "=========================================="
	mvn clean compile package
	echo "=========================================="
	echo "Maven Build Finished"
	echo "=========================================="
	echo ""
	echo ""
	echo "=========================================="
	echo "Copying War generated to wars folder"
	echo "=========================================="
	mkdir wars
	cp -a /targets/*.war /wars/
	echo ""
	echo ""
	echo "=========================================="
	echo "Wars Copied"
	echo "=========================================="
	echo ""
	echo ""
	echo "=========================================="
	echo "Generating docker image now"
	echo "=========================================="
	docker build -t dpbackend .
	echo ""
	echo ""
	echo "=========================================="
	echo "Docker Image Built"
	echo "=========================================="
else
	echo "You choose to exit"
fi
