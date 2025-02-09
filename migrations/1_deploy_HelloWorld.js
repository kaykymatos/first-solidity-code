const HelloWorld = artifacts.require("HelloWorld");
const Simple = artifacts.require("Simple");

module.exports = function (deployer) {
  deployer.deploy(HelloWorld);
  deployer.deploy(Simple);
};