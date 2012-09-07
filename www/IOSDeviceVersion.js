var IOSDeviceVersion = {
    device: function (success, fail, resultType) {
            return Cordova.exec( success, fail,
                    "IOSDeviceVersion",
                    "device",
                    [resultType]);
    }
};
