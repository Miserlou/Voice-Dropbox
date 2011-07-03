=====
About
=====

voice-dropbox has been created primarily to encourage public monitoring of
authority figures using telephone technology for the `OpenWatch project
<http://openwatch.net/>`_.

The OpenWatch project provides various technologies to assist people in
recording authority figures using mobile technology to help find and fight
against abuses of power.

***************
Target Audience
***************

voice-dropbox is primarily targeted at linux system administrators who have
experience on the command line, and are familiar with standard linux tools.

As the voice-dropbox project is currently under development, installation and
administration of the server still requires quite a bit of work to get running.
We're currently working on simplifying the installation procedures, and making
voice-dropbox a much friendlier software package.

*************
What is This?
*************

voice-dropbox is a telephony service, powered by `Asterisk
<http://www.asterisk.org/>`_, that:

* Can be connected to the public telephone network (PSTN).
* Allows incoming telephone calls (via SIP, IAX, or PSTN).
* Records all incoming calls after playing a short introduction message.
* Uploads call recordings to the official `openwatch <http://openwatch.net/>`_
  website, along with associated metadata.

************************
Why Did You Create This?
************************

`OpenWatch <http://openwatch.net/>`_ currently runs only in the US. While we're
extremely supportive of authority monitoring efforts in other countries, we
currently don't have the resources to support multiple international web
servers, and telephone endpoints that would be cost-effective tools for people
in other countries.

Our hope is that by open sourcing and publishing our tools, engineers in other
countries and areas can setup their own clones, and help encourage monitoring
efforts in their local areas.

**************************
What Are the Requirements?
**************************

In order to throw up your own clone of voice-dropbox, you only need to follow
our :ref:`install` guide. Without any external services, you'll be able to (out
of the box) host your very own:

* Public SIP relay.
* Public IAX relay.

And if you get a VoIP account with a VoIP provider, you can then purchase
a dedicated telephone number, and allow your voice-dropbox instance to function
just like any other phone--it will be able to receive normal phone calls.
