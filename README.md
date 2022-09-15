updates from teh customer qa branch
# centos_env
patch 1 was changed in dev/patch branch; to be "pulled" into the customer dev branch;
patch 2 was changed in dev/patch2 branch; to be "pulled" into the customer dev branch -> qa -> prod


##to download
'git clone https://github.com/torreypjones/centos_env.git'

## to make modifications
 - for commit to master level
 - download first: 'git clone https://github.com/torreypjones/centos_env.git'

 - make modifications to whatever you're doing

 - if added a new file: 'git add <path/to/file>'

 - commit: 'git commit -a -m "commit message"'

 - push modifications to github.com repo: 'git push origin master'

## to merge
 - pull down any modifications from the github.com repo: 'git pull'
 - commit anything: 'git commit -a -m "commit message"'
 - push back to the origin: 'git push origin master'
