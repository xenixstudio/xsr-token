var XSRToken = artifacts.require("./XSRToken.sol");

module.exports = function(deployer) {
  deployer.deploy(XSRToken, "xensor", "XSR", 5000000000, 18);
};