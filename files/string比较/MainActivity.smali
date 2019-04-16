.class public Lorg/lynxz/smalidemo/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field private count:I

.field private edtBaseStr:Landroid/widget/EditText;

.field private edtCount:Landroid/widget/EditText;

.field private tvMsg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lorg/lynxz/smalidemo/MainActivity;->count:I

    return-void
.end method

.method static synthetic access$000(Lorg/lynxz/smalidemo/MainActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/lynxz/smalidemo/MainActivity;

    .line 20
    invoke-direct {p0}, Lorg/lynxz/smalidemo/MainActivity;->getLoopCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/lynxz/smalidemo/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/lynxz/smalidemo/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0, p1}, Lorg/lynxz/smalidemo/MainActivity;->getBaseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/lynxz/smalidemo/MainActivity;ILjava/lang/String;)J
    .locals 2
    .param p0, "x0"    # Lorg/lynxz/smalidemo/MainActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0, p1, p2}, Lorg/lynxz/smalidemo/MainActivity;->methodForStr(ILjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lorg/lynxz/smalidemo/MainActivity;ILjava/lang/String;)J
    .locals 2
    .param p0, "x0"    # Lorg/lynxz/smalidemo/MainActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0, p1, p2}, Lorg/lynxz/smalidemo/MainActivity;->methodForSb(ILjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getBaseStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "defaultStr"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string p1, "a"

    .line 93
    :cond_0
    iget-object v0, p0, Lorg/lynxz/smalidemo/MainActivity;->edtBaseStr:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 94
    return-object p1

    .line 97
    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "baseStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    move-object v0, p1

    .line 101
    :cond_2
    return-object v0
.end method

.method private getLoopCount()I
    .locals 3

    .line 74
    iget-object v0, p0, Lorg/lynxz/smalidemo/MainActivity;->edtCount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "countStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 80
    const/16 v2, 0x64

    return v2
.end method

.method private methodBoolean(Z)V
    .locals 3
    .param p1, "showLog"    # Z

    .line 105
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "methodBoolean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method private methodFixSb()Ljava/lang/String;
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private methodFixSb2(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "base"    # Ljava/lang/String;

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private methodFixStr()Ljava/lang/String;
    .locals 1

    .line 143
    const-string v0, "aaaaaa"

    return-object v0
.end method

.method private methodFixStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "base"    # Ljava/lang/String;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "aa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private methodForSb(ILjava/lang/String;)J
    .locals 6
    .param p1, "loop"    # I
    .param p2, "base"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 134
    .local v0, "startTs":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p1, :cond_0

    .line 136
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 138
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "result":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    return-wide v4
.end method

.method private methodForStr(ILjava/lang/String;)J
    .locals 5
    .param p1, "loop"    # I
    .param p2, "base"    # Ljava/lang/String;

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 117
    .local v0, "startTs":J
    const-string v2, ""

    .line 118
    .local v2, "result":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p1, :cond_0

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    .end local v3    # "i":I
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    return-wide v3
.end method

.method public static methodStatic()V
    .locals 2

    .line 171
    const-string v0, "MainActivity"

    const-string v1, "methodStatic log"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .line 58
    iget v0, p0, Lorg/lynxz/smalidemo/MainActivity;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/lynxz/smalidemo/MainActivity;->count:I

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070022

    if-ne v0, v1, :cond_0

    .line 60
    const-string v0, "a"

    invoke-direct {p0, v0}, Lorg/lynxz/smalidemo/MainActivity;->getBaseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "baseStr":Ljava/lang/String;
    invoke-direct {p0}, Lorg/lynxz/smalidemo/MainActivity;->getLoopCount()I

    move-result v1

    .line 63
    .local v1, "count":I
    invoke-direct {p0, v1, v0}, Lorg/lynxz/smalidemo/MainActivity;->methodForStr(ILjava/lang/String;)J

    move-result-wide v2

    .line 64
    .local v2, "strTime":J
    invoke-direct {p0, v1, v0}, Lorg/lynxz/smalidemo/MainActivity;->methodForSb(ILjava/lang/String;)J

    move-result-wide v4

    .line 66
    .local v4, "sbTime":J
    iget-object v6, p0, Lorg/lynxz/smalidemo/MainActivity;->tvMsg:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "String v.s. StringBuilder = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " ms: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .end local v0    # "baseStr":Ljava/lang/String;
    .end local v1    # "count":I
    .end local v2    # "strTime":J
    .end local v4    # "sbTime":J
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 30
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lorg/lynxz/smalidemo/MainActivity;->setContentView(I)V

    .line 33
    const v0, 0x7f07003a

    invoke-virtual {p0, v0}, Lorg/lynxz/smalidemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/lynxz/smalidemo/MainActivity;->edtCount:Landroid/widget/EditText;

    .line 34
    const v0, 0x7f070039

    invoke-virtual {p0, v0}, Lorg/lynxz/smalidemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/lynxz/smalidemo/MainActivity;->edtBaseStr:Landroid/widget/EditText;

    .line 36
    const v0, 0x7f070092

    invoke-virtual {p0, v0}, Lorg/lynxz/smalidemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/lynxz/smalidemo/MainActivity;->tvMsg:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Lorg/lynxz/smalidemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const v0, 0x7f070024

    invoke-virtual {p0, v0}, Lorg/lynxz/smalidemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/lynxz/smalidemo/MainActivity$1;

    invoke-direct {v1, p0}, Lorg/lynxz/smalidemo/MainActivity$1;-><init>(Lorg/lynxz/smalidemo/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v0, 0x7f070023

    invoke-virtual {p0, v0}, Lorg/lynxz/smalidemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/lynxz/smalidemo/MainActivity$2;

    invoke-direct {v1, p0}, Lorg/lynxz/smalidemo/MainActivity$2;-><init>(Lorg/lynxz/smalidemo/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method
