#!/bin/sh
#get the commit content by user input
echo "\033[33m Please input the commit words : \033[0m"
read commit
echo "\033[34m Content:'$commit' \033[0m"

#push code change on this respo.
echo "\033[33m now pushing code local \033[0m"
git add .
git commit -m "${commit}"
git pull --rebase
git push
echo "\033[32m local end \033[0m"

#sync deploy project to another repos.
echo "\033[33m sync code \033[0m"
rm ../javascript_course/PracticeProject/codes/super_show/js_console.html
cp js_console.html ../javascript_course/PracticeProject/codes/super_show/
cd ../javascript_course/
echo "\033[33m now pushing code another \033[0m"
sh deploy_lesson_by_another_repository.sh
echo "\033[32m another end \033[0m"
cd ../js_console/
ls
#end it.
