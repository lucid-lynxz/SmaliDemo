package org.lynxz.smalidemo

import android.content.Intent
import android.os.Bundle
import android.support.v7.app.AppCompatActivity
import kotlinx.android.synthetic.main.activity_main.*
import org.lynxz.smalidemo.ui.activity.HandlerTestActivity
import org.lynxz.smalidemo.ui.activity.StringAppendTestActivity

/**
 * Created by lynxz on 2019/4/15
 * E-mail: lynxz8866@gmail.com
 *
 *
 * Description:
 */
class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        btn_string_append_test.setOnClickListener { jumpToActivity(StringAppendTestActivity::class.java) }
        btn_handler_test.setOnClickListener { jumpToActivity(HandlerTestActivity::class.java) }
    }

    private fun jumpToActivity(target: Class<*>) {
        startActivity(
            Intent(this@MainActivity, target)
        )
    }
}
