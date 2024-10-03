echo "--- INITIALIZING REPO ---"
read -p "Project name: " pName
read -p "Project mantainer's email: " pMantainer
read -p "License type (leave black for MIT): " pLicense

if [ -z ${pLicense} ]
then
    pLicense="MIT"
fi

sed -i -e "s/##1/$pName/;s/##2/$pMantainer/;s/##3/$pLicense/" package.yaml
