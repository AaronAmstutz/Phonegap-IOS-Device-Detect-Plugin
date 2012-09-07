var IOSDeviceVersion = {
    device: function (success, fail, resultType) {
            return Cordova.exec( success, fail,
                    "IOSDeviceVersion",
                    "device",
                    [resultType]);
    }
};

// function callNativePlugin( returnSuccess ) {
//   console.log(DeviceVersion);
//     DeviceVersion.specs( EnabledHandler, ErrorHandler, returnSuccess );
// }

// function EnabledHandler (result) {
//    alert("SUCCESS: \r\n"+result );
// }

// function ErrorHandler (error) {
//    alert("ERROR: \r\n"+error );
// }
