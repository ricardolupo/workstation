# workstation

This cookbook runs a workstation setup cookbook installing all the relevant
tools and config for me. It's meant to be a practical example of how to use Chef
to solve for a common use case (everyone has a Workstation BRUH). This cookbook
will demonstrate 2 workflows; the Berks workflow, which will use chef-zero and
the Chef Workstation workflow, which will simplify how dependencies are packaged
and executed.

*Before you get started*

Be sure to install ChefDK on your workstation. Chef-DK contains the chef-client so you only need to download the one package. The download can be found here(https://downloads/chef.io/chef-dk)

### Policyfile workflow ###

1. This repo contains a `Policyfile.rb` file that contains attributes that define the packages that are to be installed. If you would like to add/modify packages, you will do so in this file
2. Once you are happy with the packages that need to be installed, run `chef install`
3. This will generate a `Policyfile.lock.json` file. Now run the following:
`chef export Policyfile.rb ./temp`. This will solve for your cookbook dependencies and pull down all dependent cookbooks locally
3. From the `./temp` subdirectory, simply run `chef-client -z`
4. Profit

[ Click here if you want to use this workflow with a Chef Server and a bootstrapped node](https://learn.chef.io/modules/managing-nodes-with-policyfiles#/)

### Berks workflow ###
You'll run the following to demonstrate the Berks workflow:

1. In the current working directory, run `berks vendor cookbooks`. This will
take the declared cookbook dependencies in the _Berksfile_ and download them
to your local repo
2. You have 2 options to execute the cookbook;
     * `sudo chef-client -z -r workstation`
to run the chef-client in local mode.
     * Your second option is to use the bash wrapper `./chef-run` which concatenates
the command for you.
