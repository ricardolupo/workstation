# workstation

This cookbook runs a workstation setup cookbook installing all the relevant
tools and config for me. It's meant to be a practical example of how to use Chef
to solve for a common use case (everyone has a Workstation BRUH). This cookbook
will demonstrate 2 workflows; the Berks workflow, which will use chef-zero and
the Chef Workstation workflow, which will simplify how dependencies are packaged
and executed.

Berks workflow:
You'll run the following to demonstrate the Berks workflow:

1. In the current working directory, run `berks vendor cookbooks`. This will
take the declared cookbook dependencies in the _Berksfile_ and download them
to your local repo
2. You have 2 options to execute the cookbook; a) `sudo chef-client -z -E packages.json -r workstation`
to run the chef-client in local mode. `-E` defines an environment. Environments are a
primitive in Chef to provide tunables to your automation (https://docs.chef.io/environments.html#attribute-precedence)
b) Your second option is to use the bash wrapper `./chef-run` which concatenates
the command for you.



TODO: Show Chef workstation workflow
