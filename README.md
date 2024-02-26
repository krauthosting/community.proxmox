# community.proxmox Ansible Collection
<!-- Add CI and code coverage badges here. Samples included below. -->
[![CI](https://github.com/ansible-collections/REPONAMEHERE/workflows/CI/badge.svg?event=push)](https://github.com/ansible-collections/REPONAMEHERE/actions) [![Codecov](https://img.shields.io/codecov/c/github/ansible-collections/REPONAMEHERE)](https://codecov.io/gh/ansible-collections/REPONAMEHERE)

A community-maintained collection containing plugins for interacting with Proxmox products such as Proxmox Virtual Environment (PVE).
This collection serves as the new home for Proxmox-related content from `community.general`, as well as any new plugins/components.

## Code of Conduct

We follow the [Ansible Code of Conduct](https://docs.ansible.com/ansible/devel/community/code_of_conduct.html) in all our interactions within this project.

If you encounter abusive behavior, please refer to the [policy violations](https://docs.ansible.com/ansible/devel/community/code_of_conduct.html#policy-violations) section of the Code for information on how to raise a complaint.

## Requirements

### Supported Ansible/Proxmox Versions

We aim to maintain a high level of compatibility between different versions of `ansible-core`, this collection and the Proxmox software releases.
We currently test and support the following combinations:

| Collection Version | `ansible-core` version | Proxmox Versions     |
|--------------------|------------------------|----------------------|
| `0.1.z`            | `2.15` and `2.16`      | PVE: `7.0` and newer |

To run plugins from this collection, you will need a version of Python listed as compatible with your collection version in the table below.

### Python

In addition to the control-node requirements from `ansible-core` see [here](https://docs.ansible.com/ansible/devel/reference_appendices/release_and_maintenance.html#ansible-core-support-matrix), we also require a the following Python versions on target nodes:

| Collection Version | Target Node Python     |
|--------------------|------------------------|
| `0.1.z`            |  Python `3.7` or newer |

### Proxmoxer

Many of the plugins in this collection depend on the [`proxmoxer`](https://github.com/proxmoxer/proxmoxer) Python libary.
The supported versions can vary between plugins, but in general we require at least `proxmoxer=>2.0`

## Included content

### Modules

See the [modules directory](./plugins/modules/) for an up-to-date list of modules

### Inventory Plugins

See the [inventory directory](./plugins/inventory/) for an up-to-date list of inventory plugins

## Using this collection

### Installing the Collection from Ansible Galaxy

Before using this collection, you need to install it with the Ansible Galaxy command-line tool:
```bash
ansible-galaxy collection install community.proxmox
```

You can also include it in a `requirements.yml` file and install it with `ansible-galaxy collection install -r requirements.yml`, using the format:
```yaml
---
collections:
  - name: community.proxmox
```

Note that if you install the collection from Ansible Galaxy, it will not be upgraded automatically when you upgrade the `ansible` package. To upgrade the collection to the latest available version, run the following command:
```bash
ansible-galaxy collection install community.proxmox --upgrade
```

You can also install a specific version of the collection, for example, if you need to downgrade when something is broken in the latest version (please report an issue in this repository). Use the following syntax to install version `0.1.0`:

```bash
ansible-galaxy collection install community.proxmox:==0.1.0
```

See [using Ansible collections](https://docs.ansible.com/ansible/devel/user_guide/collections_using.html) for more details.

### Installing Proxmoxer

Many plugins in this collection rely on the [`proxmoxer`](https://github.com/proxmoxer/proxmoxer) Python libary.
You can check the [Proxmoxer section in this README to find a supported version](#proxmoxer).

Once you know which version to install, you can run run:

```bash
# Recommended: use a virtualenv
pip install 'proxmoxer==<version>'
```

Or, using a requirements.txt file like below and install it with `pip install -r requirements.txt`
```
# requirements.txt contents:
proxmoxer==2.0.1
```

## Communication

Communication related to the development of this collection mainly happens through the issues and pull requests in this repository.
If you would like to raise an issue with us, this is the best way to get in touch!

We announce important development changes and releases through Ansible's [The Bullhorn newsletter](https://docs.ansible.com/ansible/devel/community/communication.html#the-bullhorn). If you are a collection developer, be sure you are subscribed.

Join us on:
* The Ansible forum:
    * [News & Announcements](https://forum.ansible.com/c/news/5/none)
    * [Get Help](https://forum.ansible.com/c/help/6/none)
    * [Social Spaces](https://forum.ansible.com/c/chat/4)
* Matrix chat rooms:
    * [#users:ansible.com](https://matrix.to/#/#users:ansible.com): general use questions and support
    * [#community:ansible.com](https://matrix.to/#/#community:ansible.com): community and collection development questions
    * [#social:ansible.com](https://matrix.to/#/#social:ansible.com): to say "Good morning, community!"

We take part in the global [Ansible contributor summit](https://github.com/ansible/community/wiki/Contributor-Summit) virtually or in-person. Track [The Bullhorn newsletter](https://docs.ansible.com/ansible/devel/community/communication.html#the-bullhorn) and join us.

For more information about communication, refer to the [Ansible communication guide](https://docs.ansible.com/ansible/devel/community/communication.html).

## Contributing to this collection

The content of this collection is made by people like you, a community of individuals collaborating on making the world better through developing automation software.
We are actively accepting new contributors and all types of contributions are very welcome.

The primary way to contribute to this collection is via issues and PRs opened against this repository.
See the [Contributing Guide](./CONTRIBUTING.md) for mode details.

In addition to the collection-specific guide, you may also want to refer to the following Ansible and Ansible-Community guides:

- [Ansible community guide](https://docs.ansible.com/ansible/devel/community/index.html)!
- [Quick-start development guide](https://docs.ansible.com/ansible/devel/community/create_pr_quick_start.html).
- [Collection review checklist](https://docs.ansible.com/ansible/devel/community/collection_contributors/collection_reviewing.html)
- [Ansible development guide](https://docs.ansible.com/ansible/devel/dev_guide/index.html)
- [Ansible collection development guide](https://docs.ansible.com/ansible/devel/dev_guide/developing_collections.html#contributing-to-collections)

## Collection maintenance

The current maintainers are listed in the [MAINTAINERS](MAINTAINERS) file. If you have questions or need help, feel free to mention them in the proposals.

To learn how to maintain/become a maintainer of this collection, refer to the [Maintainer guidelines](https://docs.ansible.com/ansible/devel/community/maintainers.html).

It is necessary for maintainers of this collection to be subscribed to:

* The collection itself (the `Watch` button -> `All Activity` in the upper right corner of the repository's homepage).
* The [news-for-maintainers repository](https://github.com/ansible-collections/news-for-maintainers).

They also should be subscribed to Ansible's [The Bullhorn newsletter](https://docs.ansible.com/ansible/devel/community/communication.html#the-bullhorn).

## Governance

The process of decision making in this collection is based on discussing and finding consensus among participants.

Every voice is important. If you have something on your mind, create an issue or dedicated discussion and let's discuss it!

## Release notes

See the [changelog](https://github.com/ansible-collections/REPONAMEHERE/tree/main/CHANGELOG.rst).

## More information

- [Ansible user guide](https://docs.ansible.com/ansible/devel/user_guide/index.html)
- [Ansible developer guide](https://docs.ansible.com/ansible/devel/dev_guide/index.html)
- [Ansible collections requirements](https://docs.ansible.com/ansible/devel/community/collection_contributors/collection_requirements.html)
- [Ansible community Code of Conduct](https://docs.ansible.com/ansible/devel/community/code_of_conduct.html)
- [The Bullhorn (the Ansible contributor newsletter)](https://docs.ansible.com/ansible/devel/community/communication.html#the-bullhorn)
- [Important announcements for maintainers](https://github.com/ansible-collections/news-for-maintainers)

## Licensing

GNU General Public License v3.0 or later.

See [LICENSE](https://www.gnu.org/licenses/gpl-3.0.txt) to see the full text.
