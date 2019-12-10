package com.xiey.x_toast

import android.content.Context
import android.widget.TextView
import android.widget.Toast
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry.Registrar

class XToastPlugin : MethodCallHandler {

    private var mContext: Context? = null
    private var mToast: Toast? = null

    constructor(context: Context) {
        this.mContext = context
    }

    companion object {

        @JvmStatic
        fun registerWith(registrar: Registrar) {
            val channel = MethodChannel(registrar.messenger(), "x_toast")
            channel.setMethodCallHandler(XToastPlugin(registrar.context()))
        }
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        if (call.method == "showToast") {

            var msg = call.argument<String>("msg")
            var duration = call.argument<String>("duration")
            var textColor = call.argument<Number>("textColor")
            var textSize = call.argument<Number>("textSize")


            mToast = Toast.makeText(mContext, "", Toast.LENGTH_SHORT)

            mToast?.let { toast ->
                toast.setText(msg ?: "")
                toast.duration = if ("long" == duration) Toast.LENGTH_LONG else Toast.LENGTH_SHORT
                var textView = toast.view.findViewById(android.R.id.message) as TextView
                textView?.let {
                    it.setTextColor(textColor!!.toInt())
                    it.textSize = textSize!!.toFloat()
                }
                toast.show()
            }

        } else {
            result.notImplemented()
        }
    }
}
