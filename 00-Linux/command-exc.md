##Exercise 1
1- mkdir -p foo/{dummy,empty} && touch foo/dummy/file{1,2}.txt
2- echo 'Me encanta la bash!!' > foo/dummy/file1.txt

##Exercise 2
1-cd foo
2-cp ./dummy/file1.txt ./dummy/file2.txt && mv ./dummy/file2.txt ./empty
