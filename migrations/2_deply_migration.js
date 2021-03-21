const PeiToken = artifacts.require("PeiToken");

module.exports = function(deployer) {
    deployer.deploy(PeiToken);
};