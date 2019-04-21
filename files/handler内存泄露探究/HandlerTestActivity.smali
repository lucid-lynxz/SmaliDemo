.class public Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "HandlerTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity$MyHandler;,
        Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity$MyStaticHandler;,
        Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity$MyEmptyStaticHandler;
    }
.end annotation


# static fields
.field private static sName:Ljava/lang/String;

.field private static sName1:Ljava/lang/String;


# instance fields
.field private leakHandler:Landroid/os/Handler;

.field private leakHandler1:Landroid/os/Handler;

.field private myEmptyStaticHandler:Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity$MyEmptyStaticHandler;

.field private myHandler:Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity$MyStaticHandler;

.field private pName:Ljava/lang/String;

.field private pName1:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 26
    new-instance v0, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity$1;

    invoke-direct {v0, p0}, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity$1;-><init>(Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;)V

    iput-object v0, p0, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;->leakHandler:Landroid/os/Handler;

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;->leakHandler1:Landroid/os/Handler;

    .line 35
    new-instance v0, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity$MyEmptyStaticHandler;

    invoke-direct {v0}, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity$MyEmptyStaticHandler;-><init>()V

    iput-object v0, p0, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;->myEmptyStaticHandler:Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity$MyEmptyStaticHandler;

    .line 90
    new-instance v0, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity$MyStaticHandler;

    invoke-direct {v0, p0}, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity$MyStaticHandler;-><init>(Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;)V

    iput-object v0, p0, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;->myHandler:Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity$MyStaticHandler;

    return-void
.end method

.method static synthetic access$000(Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;

    .line 20
    iget-object v0, p0, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;->pName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;->pName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;->sName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;

    .line 20
    invoke-direct {p0}, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;->callPrivateFunc()V

    return-void
.end method

.method static synthetic access$300(Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;

    .line 20
    invoke-direct {p0}, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;->callPrivateFunc1()V

    return-void
.end method

.method private callPrivateFunc()V
    .locals 0

    .line 106
    return-void
.end method

.method private callPrivateFunc1()V
    .locals 0

    .line 109
    return-void
.end method

.method private callPrivateFunc2()V
    .locals 0

    .line 112
    return-void
.end method


# virtual methods
.method callDefaultFunc()V
    .locals 0

    .line 121
    return-void
.end method

.method protected callProtectFunc()V
    .locals 0

    .line 118
    return-void
.end method

.method public callPublicFunc()V
    .locals 0

    .line 115
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 94
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;->setContentView(I)V

    .line 97
    iget-object v0, p0, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;->leakHandler:Landroid/os/Handler;

    new-instance v1, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity$2;

    invoke-direct {v1, p0}, Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity$2;-><init>(Lorg/lynxz/smalidemo/ui/activity/HandlerTestActivity;)V

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    return-void
.end method
