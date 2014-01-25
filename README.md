
1. Install Chef.

    root@intro:~# cd ~
    root@intro:~# curl -L https://www.opscode.com/chef/install.sh | bash

On linux mint 15, 16 there is a bug, so possibly install 
script should be downloaded and updated as specified here:

    https://tickets.opscode.com/browse/CHEF-4951


2. Install required dependencies and gems (run from this project's directory):

    $ sudo apt-get install libxslt-dev libxml2-dev
    $ bundle install

3. Copy and rename soloistrc.example file to soloistrc and edit this to fit
your needs:

    $ cp soloistrc.exmaple soloistrc

4. Run soloist:

    $ sudo soloist

or if you have ruby installed via RVM:

    $ rvmsudo soloist

