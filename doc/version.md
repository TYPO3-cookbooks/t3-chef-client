Chef-Client Version Updates
---------------------------

Beware when updating the chef-client version in `attributes/versions.rb`: When running this cookbook through the CI system with a different version, then the chef run will be killed after installing the target version.

Therefore, update the [jenkins-chefci](https://github.com/TYPO3-cookbooks/jenkins-chefci/blob/master/attributes/versions.rb) cookbook first to the target version of chef-client and then update this cookbook.
