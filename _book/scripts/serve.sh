# add, commit recent changes
git add .
git commit -m 'test serving'
# build new gitbook
gitbook build
# copy it out of the way for branch change
# f to overwirte last publication
cp -rf ./_book ../book-holder
# commit recent build
git add .
git commit -m 'publishing'
# switch to gh-pages branch
git checkout gh-pages
# copy the new book in
# f to overwrite last publication
cp -rf ../book-holder/. ./pathbook
# commit changes
git add .
git commit -m 'publishing'
# serve
gitbook serve