I've researched long enough...time to give up and just leave it alone already.

I've built my opinions based upon comments here:
http://superuser.com/questions/789448/choosing-between-bashrc-profile-bash-profile-etc.

Here is a summary:
~/.bash_profile (if necessary) should be super simple and just load .profile and .bashrc (in that order)
~/.profile has the stuff NOT specifically related to bash, such as environment variables e.g. PATH
~/.bashrc has anything you'd want at an interactive command line. Command prompt, EDITOR variable, bash aliases for my use
