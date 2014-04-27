Notes
=====

* You should consider this overlay as highly experimental.
* I don't support systemd.
* Feedback is welcome :-)

Installation
============

Please refer to the `Layman wiki <https://wiki.gentoo.org/wiki/Layman>`_ for
information on how to fully configure and use Layman.

After you have configured Layman, add
'https://github.com/gg7/gentoo-overlay/raw/master/repositories.xml' to
'overlays' in '/etc/layman/layman.cfg', like this:

.. code ::

    #-----------------------------------------------------------
    # URLs of the remote lists of overlays (one per line) or
    # local overlay definitions
    #
    overlays : http://www.gentoo.org/proj/en/overlays/repositories.xml
               https://github.com/gg7/gentoo-overlay/raw/master/repositories.xml

Then use `layman` to fetch and install the overlay:

.. code :: sh

    layman --fetch --add 'gg7'

License
=======

Unless otherwise stated, ebuilds here are under the MIT License -- see
`license.txt`.
