suspend barrier execution to avoid keyboard issues
==================================================

The problem
-----------

When barrier is running but looses network connection
to the server it tends to go awry. In particular, the
keyboard tends to get hooked in a Ctrl-pressed state,
and the whole system can become unstable due to 
random and intermittent key presses.

The solution
------------

We disable (kill) barrier upon network down events
and upon system suspend.

Insallation
-----------

    $ make install

If you're using systemd for networking, also run

    $ make use-systemd

How this works
--------------

Upon much investigation I found the following solution
to work best:

1. Using systemd networkd-dispatcher

    This requires use of systemd-networkd.

    https://gitlab.com/craftyguy/networkd-dispatcher
    
2. Using NetworkManager dispatch

    This requires use of NetworkManager, which is the
    default on Linux Mint.

    https://networkmanager.dev/docs/api/latest/NetworkManager-dispatcher.html

4. Using systemd system-sleep

    This uses the systemd system-sleep target.


