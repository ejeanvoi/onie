********************************
Open Network Install Environment
********************************

ONIE is a small operating system, pre-installed on bare
metal network switches, that provides an environment for automated
provisioning.

Visit the `ONIE Wiki <https://github.com/opencomputeproject/onie/wiki>`_ for more info.

******************************
Mailing List and Collaboration
******************************

Join the conversation -- send questions, comments and ideas to opencompute-onie@lists.opencompute.org.

Subscribe to the list: `http://lists.opencompute.org/mailman/listinfo/opencompute-onie <http://lists.opencompute.org/mailman/listinfo/opencompute-onie>`_.

Browse the archives: `http://lists.opencompute.org/pipermail/opencompute-onie/ <http://lists.opencompute.org/pipermail/opencompute-onie/>`_.

***************************
Automatic Build with docker
***************************
ONIE images can be built "automatically" thanks to a Dockerfile.

.. code-block:: bash

    # build the container
    $ docker build -t oniebuilder .
    # create ONIE images
    $ mkdir -p /tmp/onie && docker run -it --rm -v /tmp/onie:/home/zozo/output oniebuilder

Result of the compilation will be copied in /tmp/onie.
