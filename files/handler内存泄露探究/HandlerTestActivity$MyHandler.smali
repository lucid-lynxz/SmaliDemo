.class Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity$MyHandler;
.super Landroid/os/Handler;
.source "HandlerTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field private final mWkActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;


# direct methods
.method public constructor <init>(Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;)V
    .locals 0
    .param p2, "activity"    # Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;

    .line 70
    iput-object p1, p0, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity$MyHandler;->this$0:Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 71
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity$MyHandler;->mWkActivity:Ljava/lang/ref/WeakReference;

    .line 72
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity$MyHandler;->mWkActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 80
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 81
    iget-object v0, p0, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity$MyHandler;->mWkActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;

    .line 82
    .local v0, "targetAct":Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;
    if-eqz v0, :cond_0

    .line 84
    invoke-static {v0}, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;->access$300(Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;)V

    .line 86
    :cond_0
    return-void
.end method
