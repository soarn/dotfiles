# Jack's dotfiles

---

This is how I personalize my Mac. !!This is for Mac, most of it will work on linux or whatever, but I use this with iTerm2!!

It's relatively simple, I have the main `.zshrc` which does everything, and it sources `.alises` and `.exports`.  `.aliases` has all of my aliases, and `.exports` has all of the stuff that gets sourced and all that jazz.

The way this is setup is actually pretty easy, symlinking is not required!!  I used [this](https://www.atlassian.com/git/tutorials/dotfiles) tutorial from Atlassian.

---

So my files are a bit different, I use nano instead of vim, mainly because I'm too lazy to actually learn vim.  I also use VS Code so my config file is also in here.
I have a hyper config in here as well, but I don't use it.  I only use hyper on my PC where I have some wacky stuff setup so that way then I can use the Windows Subsystem for Linux and Windows at the same time, but that's a story for another day...

---

## Prerequisites

* homebrew `xcode-select —-install` `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
* iTerm2 `brew cask install iterm2`
* zsh `brew install zsh`
* neofetch `brew install neofetch`
* zsh-syntax-highlighting (This should get installed when you clone the config, sinceit's a git submodule?)
* [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
* colorls `gem install colorls`
* oh-my-zsh `$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
* [Visual Studio Code](https://go.microsoft.com/fwlink/?LinkID=534106)
* (Optional!) [SDKMAN](https://sdkman.io) `curl -s "https://get.sdkman.io" | bash`
* (Optional?) [Ruby Version Manager](https://rvm.io/rvm/install)

---

## So these are the steps (I think?)

1. Prior to doing this, add this alias to your `.zsh`:
    `alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'`

2. And that your source repository ignores the folder where you'll clone it, so that you don't create weird recursion problems:
    `echo ".cfg" >> .gitignore`

3. Now clone your dotfiles into a bare repository in a "dot" folder of your $HOME:
    `git clone --bare https://github.com/soarn/dotfiles.git $HOME/.cfg`

4. Define the alias in the current shell scope:
    `alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'`

5. Checkout the actual content from the bare repository to your $HOME:
    `config checkout`

    * This step might fail with a message like:

        `error: The following untracked working tree files would be overwritten by checkout:
        .bashrc
        .gitignore
    Please move or remove them before you can switch branches.
    Aborting`

    * This is because your $HOME folder might already have some stock configuration files which would be overwritten by Git. The solution is simple: back up the files if you care about them, remove them if you don't care. Below is a possible rough shortcut to move all the offending files automatically to a backup folder:
    `mkdir -p .config-backup && \
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
    xargs -I{} mv {} .config-backup/{}`

    * Re-run the checkout if you had problems:
    `config checkout`

6. Set the flag showUntrackedFiles to no on this specific (local) repository:
    `config config --local status.showUntrackedFiles no`

7. You're done, from now on you can now type config commands to add and update your dotfiles:
    `config status
     config add .vimrc
     config commit -m "Add vimrc"
     config add .bashrc
     config commit -m "Add bashrc"
     config push`

* Since this is taken from Atlassian, they made a simple script to help in this process:
    `curl -Lks http://bit.do/cfg-install | /bin/bash`

## Here's how you import my iTerm2 profile

    iTerm ▶ Preferences ▶ Profiles ▶ "Other Actions" (dropdown) ▶ "Import JSON Profiles..." ▶ `Tungsten.json`
---

So yeah, that's essentially all you gotta do.
