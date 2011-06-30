=======
Install
=======

As voice-dropbox is currently in development, these instructions are likely to
change over the coming weeks. Please do not consider these instructions
set-in-stone :)

.. note::
   voice-dropbox is currently engineered exclusively for the ubuntu operating
   system. This may change in the future. If you'd like to see it work on other
   platforms, please `let us know
   <https://github.com/Miserlou/Voice-Dropbox/issues>`_.

****************************************
Part 1 - Install the Ubuntu Repositories
****************************************

The first thing we need to do is add the official `Asterisk Ubuntu repository
<https://wiki.asterisk.org/wiki/display/AST/Asterisk+Packages#AsteriskPackages-APT%28Debian%2FUbuntu%29>`_
to our system.

To do this, run the following commands as the ``root`` user::

    $ apt-get install python-software-properties
    $ apt-key adv --keyserver pgp.mit.edu --recv-keys 175E41DF
    $ add-apt-repository "deb http://packages.asterisk.org/deb `lsb_release -cs` main"

Once the respository has been installed, we need to update our respository
cache to prepare for installation::

    $ apt-get update

Now we're ready for the next step.

**********************
Part 2 - Install Dahdi
**********************

Now that we've got our debian repositories configured, we need to install
`DAHDI <http://www.asterisk.org/dahdi>`_. DAHDI provides reliable software
timing for telephony applications.

Without DAHDI, voice-dropbox would only be able to process a few concurrent
calls at a time.
