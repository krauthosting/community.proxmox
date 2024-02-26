# Contribution Guie

Thank you for your interest in helping improve this collection!
The goal of this guide is to help you make contributions to this collection, as well as how to test and submit them.

All contributors must follow the Code of Conduct for this collection that can be found [here](./CODE_OF_CONDUCT.md).

## Contribution Workflow

Whether you are looking for an opportunity to contribute or you found a bug and already know how to solve it, plase check ou the [issue tracker](https://github.com/ansible-collections/community.proxmox/issues) first.
There you can find feature ideas to implement, reports about bugs to solve, or submit an issue to discuss your idea before implementing it which can help choose a right direction at the beginning of your work and potentially save a lot of time and effort.
Also somebody may already have started discussing or working on implementing the same or a similar idea, so you can cooperate to create a better solution together.

Once you have an idea for an improvement or have confirmed that your problem has not been reported before, please feel free to file an issue and describe your proposal/problem.
Other members of the community can then comment on your issue and we can work towards finding a workable solution.
You can then open a PR with your proposed changes that will in turn be reviewd by the community, before being merged or closed by a maintainer.

## Development Guide

If you want to make code changes to this collection, please follow the steps below:

1. Ensure you have a container runtime installed (`docker` is preferred).
2. Fork the repository in GitHub and clone your fork.
    - Please make sure to use a fork, as only maintainers have write access to the main repository.
3. Run the `setup` script in `util` to initialize a local environment with the dependencies installed: `./util/setup.sh`.
    - If you are using an IDE/Editor like VSCode, please point its Python Interpreter to the created virtualenv!
4. You can now make changes or additions to the codebase of this collection!

### Writing Plugins and Modules

When writing modules and other plugins, please adhere to the conventions laid out below:

- Make sure your plugins only use Python features found in the oldest currently supported version (see the [README](./README.md#python)).
- Follow the [Ansible module conventions](https://docs.ansible.com/ansible/latest/dev_guide/developing_modules_best_practices.html).
- Include both `DOCUMENTATION` and `EXAMPLE` blocks as described by the [Ansible docs](https://docs.ansible.com/ansible/latest/dev_guide/developing_modules_documenting.html).
- Avoid code duplication and keep common/shared code in `module_utils` such as `proxmox.py` instead of individual modules.

### Writing Roles

TBD

## Testing the Collection

We aim to test all compoments in this collection against the supported Ansible/Proxmox versions.
Testing of collection components is currently a WIP, as we are migrating away from `community.general`

Please note that `ansible-test` requires all collections to be located in a path that looks like this: `ansible_collections/<namespace>/<collection>`.
If you cloned this collection or a fork in a different directory, please create an appropiate directory structure before running tests with `ansible-test`.

### Sanity Tests

These tests perform basic validation of collection components and their strucure/attributes.

To run the sanity tests: `ansible-test sanity --docker -v`

### Unit Tests

These tests check the code in this collection, without interacting with external systems.

To run the unit tests: `ansible-test units --docker --python <python-version>`

where `<python-version>` is the Python version you want to test against (such as `3.7`).
Usually, this should be the oldest Python version supported by the collection, but also testing against newer versions is a good idea too!

### Integration Tests

These tests verify the functionality of the collection components by running them against a real system.

To run the integration tests: TBD - there are already some integration tests targets, but there is no easy way to run them. This will remain as a TODO for future improvements for now.
