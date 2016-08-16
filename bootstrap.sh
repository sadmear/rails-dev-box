function install {
    echo installing $1
    shift
    apt-get -y install "$@" >/dev/null 2>&1
}

echo updating package information
apt-get -y update >/dev/null 2>&1
apt-get -y upgrade >/dev/null 2>&1

install 'Development Tools' build-essential
install Git git
install SQLite sqlite3 libsqlite3-dev
install PostgreSQL postgresql postgresql-contrib libpq-dev
install 'Nokogiri dependencies' libxml2 libxml2-dev libxslt1-dev
install 'Blade dependencies' libncurses5-dev
install 'ExecJS runtime' nodejs
install 'Missing Essentials' gcc autoconf libssl-dev libyaml-dev libreadline6 libreadline6-dev zlib1g zlib1g-dev libsqlite3-dev
install Emacs emacs
install Tmux tmux
install ZSH zsh

# echo adding vagrant user
# useradd -m -p paX5EmO4EXy0I vagrant
# usermod -aG sudo vagrant

# echo installing oh-my-zsh
# sudo -u vagrant sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

echo installing rbenv and ruby
# sudo -u vagrant git clone https://github.com/rbenv/rbenv.git ~/.rbenv
# sudo -u vagrant git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

echo installing Bundler
# gem install bundler -N >/dev/null 2>&1

echo installing Rails
# gem install rails -N >/dev/null 2>&1

update-locale LANG=en_US.UTF-8 LANGUAGE=en_US.UTF-8 LC_ALL=en_US.UTF-8
echo 'All set, rock on!'
