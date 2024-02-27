.. _ansible_collections.community.proxmox.docsite.guide_migration_community_general:

Migrating from community.general to community.proxmox
=====================================================

We aim to make migrating from the ``community.general`` proxmox modules to this collection an easy and seamless process.

Version ``1.0`` of ``community.proxmox`` contains the same modules with the same parameters as the previous ``community.general`` collection.
If you are moving to version ``1.0``, simply change the ``community.general`` namespace to ``community.proxmox`` in all your invocations should be sufficient.

Future versions of this collection may introduce additional requirements that break compatibility with the existing ``community.general`` modules.
We will announce these breaking changes and note them in our Changelog.
