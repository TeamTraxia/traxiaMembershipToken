require('babel-register');
require('babel-polyfill');

module.exports = {
    networks: {
      dev: {
        host: "127.0.0.1",
        port: 7545,
        network_id: "*", // Match any network id
        gas: 6721975,
      },
      live: {
        // Trigger this command line before any live deployment
        host: "127.0.0.1",
        port: 8546,
        network_id: 1,
        gasPrice: 10000000000,
        gas: 700000
      }
    }
};