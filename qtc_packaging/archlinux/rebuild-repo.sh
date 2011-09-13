#!/bin/sh

packages="qtmediahub-core delphin confluence"

for package in $packages
do
    cd $package 
    makepkg -d -f
    if [ $? -eq 0 ]
    then
        echo "package successfully built, add to repo"
        cp *i686.pkg.tar.xz ..
        repo-add mediatrolls.db.tar.gz *$package*i686.pkg.tar.xz
    else
        echo "package failed"
    fi
    cd ..
done

#cd delphin
#makepkg -d -f
#cd ..

#cd confluence 
#makepkg -d -f
#cd ..

#repo-add mediatrolls.db.tar.gz delphin/*i686.pkg.tar.xz
#repo-add mediatrolls.db.tar.gz confluence/*i686.pkg.tar.xz


