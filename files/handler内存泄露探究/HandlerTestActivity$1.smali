.class Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity$1;
.super Landroid/os/Handler;
.source "HandlerTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;


# direct methods
.method constructor <init>(Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;

    .line 26
    iput-object p1, p0, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity$1;->this$0:Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .line 29
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 30
    return-void
.end method
