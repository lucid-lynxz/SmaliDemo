package org.lynxz.smalidemo;

import android.os.Bundle;
import android.support.annotation.Keep;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.TextView;

/**
 * Created by lynxz on 2019/4/15
 * E-mail: lynxz8866@gmail.com
 * <p>
 * Description:
 */
public class MainActivity extends AppCompatActivity implements View.OnClickListener {

    private int count = 0;
    private TextView tvMsg;
    private static final String TAG = "MainActivity";

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        tvMsg = findViewById(R.id.tv_msg);

        findViewById(R.id.btn_str).setOnClickListener(this);
        findViewById(R.id.btn_sb).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                count++;
                String resultSb = methodForSb(5000, "smali");
                Log.d(TAG, "methodForSb result = " + resultSb);
            }
        });

        methodBoolean(false);
    }

    @Override
    public void onClick(View v) {
        count++;
        if (v.getId() == R.id.btn_str) {
            String result = methodFor(5000, "smali");
            Log.d(TAG, "methodFor result = " + result);
        }
    }

    private void methodBoolean(boolean showLog) {
        if (showLog) {
            Log.d(TAG, "methodBoolean: " + showLog);
        }
    }

    private String methodFor(int loop, String base) {
        long startTs = System.currentTimeMillis();
        String result = "";
        for (int i = 0; i < loop; i++) {
            result += base;
        }
        Log.d(TAG, "methodFor: " + (System.currentTimeMillis() - startTs));
        return result;
    }

    @Keep
    private String methodForSb(int loop, String base) {
        long startTs = System.currentTimeMillis();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < loop; i++) {
            sb.append(base);
        }
        Log.d(TAG, "methodForSb: " + (System.currentTimeMillis() - startTs));
        return sb.toString();
    }

    private String methodFixStr() {
        return "a" + "a" + "a" + "a" + "a" + "a";
    }

    private String methodFixStr(String base) {
        return "a" + "a" + base + "a" + "a" + base;
    }

    private String methodFixSb() {
        StringBuilder sb = new StringBuilder();
        sb.append("a");
        sb.append("a");
        sb.append("a");
        sb.append("a");
        sb.append("a");
        return sb.toString();
    }

    private String methodFixSb2(String base) {
        StringBuilder sb = new StringBuilder();
        sb.append("a");
        sb.append("a");
        sb.append(base);
        sb.append("a");
        sb.append(base);
        return sb.toString();
    }

    public static void methodStatic() {
        Log.d(TAG, "methodStatic log");
    }
}
