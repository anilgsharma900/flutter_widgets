package com.itsanilg.flutter_widgets

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    val channelTaskToBackground: String = "flutter_widget/taskToBack"
    val methodTaskToBackground: String = "taskToBackground"
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            channelTaskToBackground
        ).setMethodCallHandler { call, result ->
            if (call.method == methodTaskToBackground) {
                moveTaskToBack(true)
                result.success(null)
            }
        }
    }
}
