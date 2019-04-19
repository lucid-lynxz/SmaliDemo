package org.lynxz.smalidemo.ui.activity;

import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;


import android.os.Bundle;
import android.support.annotation.Keep;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import org.lynxz.smalidemo.R;

/**
 * Created by lynxz on 2019/4/15
 * E-mail: lynxz8866@gmail.com
 * <p>
 * Description: 对比string和stringBuilder的拼接效率
 */
public class StringAppendTestActivity extends AppCompatActivity implements View.OnClickListener {

    private int count = 0;
    private TextView tvMsg;
    private static final String TAG = "StringAppendTestActivity";
    private EditText edtCount;
    private EditText edtBaseStr;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_string_append);

        edtCount = findViewById(R.id.edt_count); // 循环拼接次数
        edtBaseStr = findViewById(R.id.edt_base); // 拼接字符串

        tvMsg = findViewById(R.id.tv_msg);

        findViewById(R.id.btn_test).setOnClickListener(this);

        // 测试 string 循环拼接
        findViewById(R.id.btn_test_str).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                methodForStr(getLoopCount(), getBaseStr("a"));
            }
        });
        // 测试 stringBuilder循环拼接
        findViewById(R.id.btn_test_sb).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                methodForSb(getLoopCount(), getBaseStr("a"));
            }
        });
    }

    @Override
    public void onClick(View v) {
        count++;
        if (v.getId() == R.id.btn_test) { // 循环拼接耗时测试
            String baseStr = getBaseStr("a");
            int count = getLoopCount();

            long strTime = methodForStr(count, baseStr);
            long sbTime = methodForSb(count, baseStr);

            tvMsg.setText("String v.s. StringBuilder = " + strTime + " ms: " + sbTime + " ms");
        }
    }

    /**
     * 获取循环拼接次数
     */
    private int getLoopCount() {
        String countStr = edtCount.getText().toString();

        try {
            return Integer.parseInt(countStr);
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return 100;
        }
    }

    /**
     * 获取要拼接的字符串
     */
    @NonNull
    private String getBaseStr(String defaultStr) {
        if (TextUtils.isEmpty(defaultStr)) {
            defaultStr = "a";
        }

        if (edtBaseStr == null) {
            return defaultStr;
        }

        String baseStr = edtBaseStr.getText().toString();
        if (TextUtils.isEmpty(baseStr)) {
            baseStr = defaultStr;
        }
        return baseStr;
    }

    private void methodBoolean(boolean showLog) {
        Log.d(TAG, "methodBoolean: " + showLog);
    }

    /**
     * String循环拼接测试
     *
     * @param loop 循环次数
     * @param base 拼接字符串
     * @return 耗时, 单位: ms
     */
    private long methodForStr(int loop, String base) {
        long startTs = System.currentTimeMillis();
        String result = "";
        for (int i = 0; i < loop; i++) {
            result += base;
        }
        return System.currentTimeMillis() - startTs;
    }

    /**
     * StringBuilder循环拼接测试
     *
     * @param loop 循环次数
     * @param base 拼接字符串
     * @return 耗时, 单位: ms
     */
    @Keep
    private long methodForSb(int loop, String base) {
        long startTs = System.currentTimeMillis();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < loop; i++) {
            sb.append(base);
        }
        String result = sb.toString();
        return System.currentTimeMillis() - startTs;
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

