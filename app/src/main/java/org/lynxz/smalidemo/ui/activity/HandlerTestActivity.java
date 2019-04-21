package org.lynxz.smalidemo.ui.activity;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;

import org.lynxz.smalidemo.R;
import org.lynxz.smalidemo.util.Logger;

import java.lang.ref.WeakReference;


/**
 * handler内存泄露测试
 * 通过profiler监控多次横竖屏切换时,内存变化
 */
public class HandlerTestActivity extends AppCompatActivity {
    private String pName;
    private String pName1;
    private static String sName;
    private static String sName1;

    private Handler leakHandler = new Handler() {
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
        }
    };


    private Handler leakHandler1 = new Handler();
    private MyEmptyStaticHandler myEmptyStaticHandler = new MyEmptyStaticHandler();

    static class MyEmptyStaticHandler extends Handler {
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
        }
    }

    private static class MyStaticHandler extends Handler {
        private final WeakReference<HandlerTestActivity> mWkActivity;

        public MyStaticHandler(HandlerTestActivity activity) {
            mWkActivity = new WeakReference<HandlerTestActivity>(activity);
        }

        public Activity getActivity() {
            return mWkActivity.get();
        }

        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            HandlerTestActivity targetAct = mWkActivity.get();
            if (targetAct != null && !targetAct.isFinishing()) {
                String name = targetAct.pName;
                String sName = HandlerTestActivity.sName;
                targetAct.callPrivateFunc();
                targetAct.pName = "";
            }
        }
    }

    private class MyHandler extends Handler {
        private final WeakReference<HandlerTestActivity> mWkActivity;

        public MyHandler(HandlerTestActivity activity) {
            mWkActivity = new WeakReference<HandlerTestActivity>(activity);
        }

        public Activity getActivity() {
            return mWkActivity.get();
        }

        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            HandlerTestActivity targetAct = mWkActivity.get();
            if (targetAct != null) {
                // 编译器会生成一个 static method access$?00 用于访问私有方法 callPrivateFunc1()
                targetAct.callPrivateFunc1();
            }
        }
    }

    private MyStaticHandler myHandler = new MyStaticHandler(this);

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_handler_test);

        leakHandler.postDelayed(new Runnable() {
            @Override
            public void run() {
                Logger.d("leakHandler 延迟执行,内存泄露测试");
            }
        }, 5 * 60 * 1000);
    }

    private void callPrivateFunc() {
    }

    private void callPrivateFunc1() {
    }

    private void callPrivateFunc2() {
    }

    public void callPublicFunc() {
    }

    protected void callProtectFunc() {
    }

    void callDefaultFunc() {
    }

//    @Override
//    protected void onDestroy() {
//        super.onDestroy();
//        Logger.d("onDestroy === removeCallbacksAndMessages");
//        leakHandler.removeCallbacksAndMessages(null);
//    }
}
