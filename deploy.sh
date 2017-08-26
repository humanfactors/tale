echo "Pulling from git"

echo "Committing to Git"
git add . &&
echo "Pushing to git master"
git commit -m "!$(curl -s whatthecommit.com/index.txt)" &&
echo "Building blog"
jekyll build &&
echo "Deploying blog to s3"
s3_website push

