The GitHub Flow: An Interpretive Dance
===========
Using GitHub is easy, but the core concepts of version control and workflow can be very difficult to understand. In this session, we’ll use our own bodies to learn the basics of cloning, branching, and merging. Audience participation required! Suitable for all levels -- anyone who wants to learn GitHub or who ever needs to teach the flow to someone else.

### So why are we here?

It’s an open secret that IT is a lot of Googling and clicking around on things, and of course turning it off and on again.

But when you get bored of clicking and want to automate things, or you start working on a team and need train them in “how we do things here,” you learn very quickly that you need a documented process, and that you need a process for iterating on that process.

### [The GitHub Flow](https://guides.github.com/introduction/flow/)

Clone, branch, add, commit, push, pull request, review, deploy, and merge in a series of movements. Audience participation required.
```
      (o_•)   (•_•)
      <)  )> -( -(      clone
       /  \   /  \

      (o_•)  (•_•)
      <)  )> <)  )╯     branch
       /  \   /  \

      * jazz fingers *  add

      * closed fist *   commit

      * high five *     push

      (o_•)  (•_•)
      <)  )╯ <)  )╯
       /  \   /  \

(•_^)  (o_•)  (•_•)
<)  )> <)  )╯ <)  )╯    request a ...
/  \   /  \   /  \

      * high five *     pull

(•_^)  (o_•)  (•_•)
<)  )╯ <)  )╯ <)  )╯
/  \   /  \   /  \

      * thumbs up *     review

(•_^)  (o_•)/ (•_•)
<)  )╯ <)  )  <)  )╯    deploy
/  \   /  \   /  \

(•_^)  (o_•)  (•_•)
<)  )╯ <) V)  <)  )╯    merge
/  \   /  \   /  \
```

### Hands on exercise
 #### Fork this repo!
 ![fork](https://cloud.githubusercontent.com/assets/7864613/20375644/3ba74de2-ac35-11e6-82c6-008dcdd6efb1.gif)

 Click the `Fork` button in the upper right. If you're a member of any orgs, make sure to choose your own account.

 You'll see the forked repo appear with your own name in the upper left.

 #### Clone your fork locally!
 ![clone](https://cloud.githubusercontent.com/assets/7864613/20375643/3ba5dcbe-ac35-11e6-9e6e-b02fba130da3.gif)

 Click the `Clone or download` button and copy the URL for your repo.

 Then hop into your terminal, get into your working directory, and do:
 ```
 git clone [paste the URL you copied]
 cd mactech2016
 ```
![cli-clone](https://cloud.githubusercontent.com/assets/7864613/20375641/3ba16bfc-ac35-11e6-9182-a01a39d7afe8.gif)

#### HTTPS or SSH?  
If you're using HTTPS and don't have your [credential cached](https://help.github.com/articles/caching-your-github-password-in-git/), you'll be prompted for your username and password. If you have 2FA enabled on your account, you'll need to generate a [personal access token](https://help.github.com/articles/creating-an-access-token-for-command-line-use/).

If you don't already have an SSH key set up, you'll need to [add one to your account](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/).

#### Optional: add current git branch to Bash prompt  
First let's see if you already have a `.bash_profile` in your home directory:
```
ls -al ~/ |grep .bash
```
If you don't have anything called `.bash_profile` in the results, do:
```
mv .bash_profile ~/
. ~/.bash_profile
```
You should see the branch name appear in your prompt.

If you already have a `.bash_profile`, just copy the parsing function to the end of your existing file:
```
cat ~/.bash_profile .bash_profile > ~/.bash_profile
. ~/.bash_profile
```

#### Branch!
![cli-branch](https://cloud.githubusercontent.com/assets/7864613/20375640/3b9fd95e-ac35-11e6-8531-0921487f153c.gif)

Make a new branch and check it out in one step:
```
git checkout -b hello-world
```

#### Add your hello!
![cli-add](https://cloud.githubusercontent.com/assets/7864613/20375639/3b952b94-ac35-11e6-841e-881940226841.gif)

In the text editor of your choice, create a file in the `hello-world` directory of the repo with your name as the filename. Then do a `git add` to track the new file:

```
cd hello-world
touch your-name.md
echo "Hello, my name is ..." > your-name.md
git add your-name.md
```

Optional: do `git status` to see what's been staged.

Fear of commitment? Fear not!
![cli-commit](https://cloud.githubusercontent.com/assets/7864613/20375638/3b93ae90-ac35-11e6-8377-3656ed6c66f7.gif)
```
git commit -m"Say hello"
```
Optional: do `git status` again.

#### Push your branch!
![cli-push](https://cloud.githubusercontent.com/assets/7864613/20375636/3b91b072-ac35-11e6-8af8-837a6ec20053.gif)
```
git push -u origin HEAD
```

#### Create a pull request!
![gui-pr](https://cloud.githubusercontent.com/assets/7864613/20375634/3b8e07ba-ac35-11e6-9f8c-2f6d95af8f61.gif)

### Best practices and other closing thoughts
- [Good commit messages](http://chris.beams.io/posts/git-commit/)
- [Good PR descriptions](https://github.com/blog/1943-how-to-write-the-perfect-pull-request)

### Additional resources
https://github.com/progit/progit2
