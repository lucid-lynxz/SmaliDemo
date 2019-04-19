package org.lynxz.smalidemo.util;

import android.support.annotation.Keep;
import android.text.TextUtils;
import android.util.Log;

import org.json.JSONArray;
import org.json.JSONObject;

@Keep
public final class Logger {
    private static String sTag = "cus_logger";

    public static final int LEVEL_VERBOSE = 0;
    public static final int LEVEL_DEBUG = 1;
    public static final int LEVEL_INFO = 2;
    public static final int LEVEL_WARN = 3;
    public static final int LEVEL_ERROR = 4;
    public static final int LEVEL_NONE = 10;

    public static final int JSON_INDENT = 2;
    public static final int MIN_STACK_OFFSET = 3;

    public static int logLevel = LEVEL_DEBUG;

    private Logger() {
    }

    private static Logger instance = new Logger();

    public static Logger getInstance() {
        return instance;
    }

    public static void init(int level, String tag) {
        logLevel = level;
        sTag = tag;
    }

    public static void v(String msg) {
        v(msg, sTag);
    }

    public static void d(String msg) {
        d(msg, sTag);
    }

    public static void i(String msg) {
        i(msg, sTag);
    }

    public static void w(String msg) {
        w(msg, sTag);
    }

    public static void e(String msg) {
        e(msg, sTag);
    }

    public static void v(String msg, String tag) {
        if (LEVEL_VERBOSE >= logLevel && !TextUtils.isEmpty(msg)) {
            String s = getMethodNames();
            Log.v(tag, String.format(s, msg));
        }
    }

    public static void d(String msg, String tag) {
        if (LEVEL_DEBUG >= logLevel && !TextUtils.isEmpty(msg)) {
            String s = getMethodNames();
            Log.d(tag, String.format(s, msg));
        }
    }

    public static void i(String msg, String tag) {
        if (LEVEL_INFO >= logLevel && !TextUtils.isEmpty(msg)) {
            String s = getMethodNames();
            Log.d(tag, String.format(s, msg));
        }
    }

    public static void w(String msg, String tag) {
        if (LEVEL_WARN >= logLevel && !TextUtils.isEmpty(msg)) {
            String s = getMethodNames();
            Log.w(tag, String.format(s, msg));
        }
    }

    public static void e(String msg, String tag) {
        if (LEVEL_ERROR >= logLevel && !TextUtils.isEmpty(msg)) {
            String s = getMethodNames();
            Log.e(tag, String.format(s, msg));
        }
    }

    /**
     * 打印json格式化字符串,在log过滤条中使用关键字 "system.out" 来搜索查找
     *
     * @param tag 当打印或解析出错时,打印日志用
     */
    public static void json(String json, String tag) {
        if (TextUtils.isEmpty(json)) {
            d("Empty/Null json content", tag);
            return;
        }

        try {
            json = json.trim();
            if (json.startsWith("{")) {
                JSONObject jsonObject = new JSONObject(json);
                String message = jsonObject.toString(JSON_INDENT);
                message = message.replaceAll("\n", "\n║ ");
                String s = getMethodNames();
                System.out.print(String.format(s, message));
            } else if (json.startsWith("[")) {
                JSONArray jsonArray = new JSONArray(json);
                String message = jsonArray.toString(JSON_INDENT);
                message = message.replaceAll("\n", "\n║ ");
                String s = getMethodNames();
                System.out.print(String.format(s, message));

            }
        } catch (Exception e) {
            e.printStackTrace();
            e("Invalid Json", tag);
        }

    }


    /**
     * 获取程序执行的线程名,类名和方法名,以及行号等信息
     */
    private static String getMethodNames() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        int stackOffset = getStackOffset(stackTrace);
        stackOffset++;
        StringBuilder sb = new StringBuilder(30);
        sb.append(stackTrace[stackOffset].getMethodName())
                .append("(").append(stackTrace[stackOffset].getFileName())
                .append(":").append(stackTrace[stackOffset].getLineNumber())
                .append(") ").append("%s");
        return sb.toString();
    }

    private static int getStackOffset(StackTraceElement... trace) {
        int i = MIN_STACK_OFFSET;
        while (i < trace.length) {
            String name = trace[i].getClassName();
            if (!Logger.class.getName().equalsIgnoreCase(name)) {
                return --i;
            }
            i++;
        }
        return -1;
    }
}