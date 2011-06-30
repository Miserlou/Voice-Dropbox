=======
Install
=======

As voice-dropbox is currently in development, these instructions are likely to
change over the coming weeks. Please do not consider these instructions
set-in-stone :)

.. note::
   voice-dropbox is currently engineered exclusively for debian-based operating
   systems. This may change in the future. If you'd like to see it work on
   other platforms, please `let us know
   <https://github.com/Miserlou/Voice-Dropbox/issues>`_.

**********************
Part 1 - Install Dahdi
**********************

The first component we need to install is `DAHDI
<http://www.asterisk.org/dahdi>`_. DAHDI provides reliable software timing for
telephony applications.

Without DAHDI, voice-dropbox would only be able to process a few concurrent
calls at a time.
