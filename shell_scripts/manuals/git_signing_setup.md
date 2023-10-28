### Git : Signed Commits Setup
----------------------------------------
#### Ensure you are having the latest git client.
If it is not the latest, upgrade ( This command is for Debian based distros )

```shell
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt install git
```

#### Ensure you have the ssh key-pair for your user. If not, generate one using the below command :

```shell
ssh-keygen -t ecdsa -b 521
```

#### Git Client Config
```shell
git config --global user.email your@email.here
git config --global user.name "First_Name Last_Name"

git config --global commit.gpgsign true
git config --global gpg.format ssh
git config --global user.signingkey /home/$USER/.ssh/id_ecdsa.pub
```
#### Ensure you have added your public key to GitHub as the signing key, otherwise, your commits will not be verified.
```shell
cat /home/$USER/.ssh/id_ecdsa.pub
```
#### When you commit, use the "-S" option to sign it, and then push to your remote.
```shell
git commit -S -m "Test Commit"
git push
```