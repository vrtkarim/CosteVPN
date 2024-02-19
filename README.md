
# CosteVPN: minimalist vpn app using dart and flutter

CosteVPN is a vpn app using Dart and Flutter framework using OpenVpn configs.


## 1st : add those lines to your kotlin MainActivity
```
openvpn_flutter: ^1.2.2
```
## 2nd : add those to the specified files: 

```kotlin
gradle.properties > android.bundle.enableUncompressedNativeLibs=false
AndroidManifest > android:extractNativeLibs="true" in application tag
```
## 3rd: add those lines to your kotlin MainActivity path: android\app\src\main\kotlin
```kotlin
package com.example.costevpn
import android.R
import android.content.Intent
import java.io.FileDescriptor
import java.lang.reflect.Method
import io.flutter.embedding.android.FlutterActivity
import id.laskarmedia.openvpn_flutter.OpenVPNFlutterPlugin
class MainActivity: FlutterActivity() {
    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        OpenVPNFlutterPlugin.connectWhileGranted(requestCode == 24 && resultCode == RESULT_OK)
        super.onActivityResult(requestCode, resultCode, data)
    }
}
```


## Video Demonstration: 

![App Screenshot](https://via.placeholder.com/468x300?text=App+Screenshot+Here)
