packfile=".packages"
#change the location here in case, .packages file stored at somewhere else

currentDir=`pwd`
cd $HOME
if [ ! -d pmd-bin* ];then
    wget https://github.com/pmd/pmd/releases/download/pmd_releases%2F6.24.0/pmd-bin-6.24.0.zip
    unzip pmd-bin-6.24.0.zip
fi

cd $currentDir 

if [ ! -f $packfile ];then  #get the input automate
	echo "create a file \"$packfile\" in pwd and write the packages to be included for the pmd analysis"
	exit
fi

if [ ! -d rulesets ]; then
	mkdir rulesets
fi
wget "https://raw.githubusercontent.com/madhes23/hooks/master/rulesets/java.xml" -O rulesets/java.xml
