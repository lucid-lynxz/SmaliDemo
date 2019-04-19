.class Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity$2;
.super Ljava/lang/Object;
.source "HandlerTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 96
    iput-object p1, p0, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity$2;->this$0:Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 99
    const-string v0, "leakHandler \u5ef6\u8fdf\u6267\u884c,\u5185\u5b58\u6cc4\u9732\u6d4b\u8bd5"

    invoke-static {v0}, Lorg/lynxz/smalidemo/util/Logger;->d(Ljava/lang/String;)V

    .line 100
    return-void
.end method
