REG_USERNAME="rajan9886886836"
REG_PASSWORD="R@j@n5707"
echo "====> Logging into conatiner"
sudo docker login --username $REG_USERNAME --password $REG_PASSWORD
if [ $? -ne 0 ] ; then
        echo "ERROR: Docker Login failed"
        exit 1
fi
echo "====>Initailising the image build "
sudo docker build . -f dockerfile.df -t angularv1:av1
if [ $? -ne 0 ] ; then
        echo "ERROR: Docker build failed"
        exit 1
fi
sudo docker tag angularv1:av1 rajan9886886836/angul:av1
echo "====> Inintialising Pushing the image to conatiner"
sudo docker push rajan9886886836/angul:av1
if [ $? -ne 0 ] ; then
        echo "ERROR: Docker PUSH failed"
        exit 1
fi
