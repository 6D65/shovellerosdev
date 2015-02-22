# The vagrant image for developing the shovellers game

This vagrant file/boostrap files are based on the cocosdev vagrant image. When the **vagrant up** command is run,
vagrant will download a prebuilt vagrant box hosted on dropbox, which contains a configured environment for cocos2djs development.
Then the bootstrap script will clone the shovelleros repo into the /vagrant folder, and add the "frameworks" cocos2d folder, which is required for compilation.


# The ssh issue

Even though the cocos2djs dev box is based on the precise32 box, it still has some issues with the ssh key for the box.
The solution was to add the default username and password to the Vagrantfile.

```ruby
  config.ssh.username = "vagrant"
  config.ssh.password = "vagrant"
```