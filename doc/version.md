Chef-Client Version Updates
---------------------------

Beware when updating the chef-client version in `attributes/versions.rb`: When running this cookbook through the CI system with a different version, then the chef run will be killed after installing the target version.

Therefore, follow this procedure for updating the chef-client version:

1. update the version number in chef-repo's `support_files/test-kitchen/config.yml` to test cookbooks locally against the new version
1. update the version number in the [site-chefcitypo3org](https://github.com/TYPO3-cookbooks/site-chefcitypo3org/blob/master/attributes/versions.rb) cookbook so that Chef-CI tests the cookbooks with the new version
1. update the version number in t3-chef-client (which would finally deploy it on all nodes)
