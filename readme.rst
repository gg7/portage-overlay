Notes
=====

* You should consider this overlay as highly experimental.
* I don't support systemd.
* Feedback is welcome :-)

Installation
============

Please refer to the `Layman wiki <https://wiki.gentoo.org/wiki/Layman>`_ for
information on how to fully configure and use Layman.

After you have configured Layman, run

.. code :: sh

    # layman --fetch --add gg7 --overlays "https://github.com/gg7/portage-overlay/raw/master/repositories.xml"

Then use `layman` to fetch and install the overlay:

License
=======

Unless otherwise stated, ebuilds here are under the MIT License -- see
`license.txt`.
