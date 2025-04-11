PUBLIC_KEY=$(ssh-add -L | grep "Github")

git config --global gpg.format ssh
git config --global commit.gpgsign true
git config --global user.signingkey "$PUBLIC_KEY"
git config --global --unset gpg.ssh.program

blade gw clean deploy