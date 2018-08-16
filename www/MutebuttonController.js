var exec = require('cordova/exec');

exports.coolMethod = function (options, success, error) {

    var urlPath = null;
    var index = null;
    if (options) {
        urlPath = options.urlPath;
        index = options.index;
    }
    exec(success, error, 'MutebuttonController', 'coolMethod', [urlPath, index]);
};