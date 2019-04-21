.class Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity$MyStaticHandler;
.super Landroid/os/Handler;
.source "HandlerTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyStaticHandler"
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


# direct methods
.method public constructor <init>(Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;)V
    .locals 1
    .param p1, "activity"    # Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;

    .line 47
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity$MyStaticHandler;->mWkActivity:Ljava/lang/ref/WeakReference;

    .line 49
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity$MyStaticHandler;->mWkActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 57
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 58
    iget-object v0, p0, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity$MyStaticHandler;->mWkActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;

    .line 59
    .local v0, "targetAct":Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    invoke-static {v0}, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;->access$000(Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "name":Ljava/lang/String;
    invoke-static {}, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "sName":Ljava/lang/String;
    invoke-static {v0}, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;->access$200(Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;)V

    .line 63
    const-string v3, ""

    invoke-static {v0, v3}, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;->access$002(Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "sName":Ljava/lang/String;
    :cond_0
    return-void
.end method
