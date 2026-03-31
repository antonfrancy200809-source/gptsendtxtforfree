.class public final Lcom/sitael/vending/util/network/SmartVendingService;
.super Ljava/lang/Object;
.source "SmartVendingService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0003\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010F\u001a\u00020GJ\u0008\u0010H\u001a\u00020IH\u0002J$\u0010J\u001a\u00020G2\u0006\u0010K\u001a\u00020I2\u0012\u0010L\u001a\u000e\u0012\u0004\u0012\u00020N\u0012\u0004\u0012\u00020G0MH\u0002J\u0010\u0010O\u001a\u00020\u00162\u0006\u0010K\u001a\u00020PH\u0002J\u0006\u0010Q\u001a\u00020\u0010J\u0010\u0010R\u001a\u00020\u00102\u0006\u0010S\u001a\u00020\u0016H\u0002J\u0008\u0010T\u001a\u00020GH\u0002J\u0018\u0010U\u001a\u00020\u001b2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010V\u001a\u00020\u0007H\u0002J\u0008\u0010W\u001a\u00020XH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010$\u001a\n %*\u0004\u0018\u00010#0#X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010&R\u0010\u0010\'\u001a\u0004\u0018\u00010(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010)\u001a\n %*\u0004\u0018\u00010(0(X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010*R\u0010\u0010+\u001a\u0004\u0018\u00010,X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010-\u001a\n %*\u0004\u0018\u00010,0,X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010.R\u0018\u0010/\u001a\n %*\u0004\u0018\u00010000X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u00101R\u001c\u00102\u001a\u00020#8FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R\u001c\u00107\u001a\u00020(8FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R\u001c\u0010<\u001a\u00020,8FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R\u001c\u0010A\u001a\u0002008FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010E\u00a8\u0006Y"
    }
    d2 = {
        "Lcom/sitael/vending/util/network/SmartVendingService;",
        "",
        "<init>",
        "()V",
        "HTTP_CALL_TIMEOUT",
        "",
        "CLIENT_ID",
        "",
        "CLIENT_SECRET",
        "AUTH_SCOPE",
        "REFRESH_TOKEN_GRANT",
        "LOGIN_GRANT",
        "FB_PSW",
        "loggingInterceptor",
        "Lokhttp3/logging/HttpLoggingInterceptor;",
        "okHttpClient",
        "Lokhttp3/OkHttpClient;",
        "getOkHttpClient",
        "()Lokhttp3/OkHttpClient;",
        "setOkHttpClient",
        "(Lokhttp3/OkHttpClient;)V",
        "isClientInitialized",
        "",
        "isClientSecure",
        "secureClient",
        "unsecureClient",
        "secureOAuthRetrofit",
        "Lretrofit2/Retrofit;",
        "unsecureOAuthRetrofit",
        "secureAppApiRetrofit",
        "unsecureAppApiRetrofit",
        "secureAnalyticsApiRetrofit",
        "unsecureAnalyticsApiRetrofit",
        "unsecureMapsApiRetrofit",
        "secureOAuthApi",
        "Lcom/sitael/vending/util/network/api/OAuthApi;",
        "unsecureOAuthApi",
        "kotlin.jvm.PlatformType",
        "Lcom/sitael/vending/util/network/api/OAuthApi;",
        "secureAppApi",
        "Lcom/sitael/vending/util/network/api/AppApi;",
        "unsecureAppApi",
        "Lcom/sitael/vending/util/network/api/AppApi;",
        "secureAnalyticsApi",
        "Lcom/sitael/vending/util/network/api/AnalyticsApi;",
        "unsecureAnalyticsApi",
        "Lcom/sitael/vending/util/network/api/AnalyticsApi;",
        "unsecureMapsApi",
        "Lcom/sitael/vending/util/network/api/MapsApi;",
        "Lcom/sitael/vending/util/network/api/MapsApi;",
        "oAuthApi",
        "getOAuthApi",
        "()Lcom/sitael/vending/util/network/api/OAuthApi;",
        "setOAuthApi",
        "(Lcom/sitael/vending/util/network/api/OAuthApi;)V",
        "appApi",
        "getAppApi",
        "()Lcom/sitael/vending/util/network/api/AppApi;",
        "setAppApi",
        "(Lcom/sitael/vending/util/network/api/AppApi;)V",
        "analyticsApi",
        "getAnalyticsApi",
        "()Lcom/sitael/vending/util/network/api/AnalyticsApi;",
        "setAnalyticsApi",
        "(Lcom/sitael/vending/util/network/api/AnalyticsApi;)V",
        "mapsApi",
        "getMapsApi",
        "()Lcom/sitael/vending/util/network/api/MapsApi;",
        "setMapsApi",
        "(Lcom/sitael/vending/util/network/api/MapsApi;)V",
        "init",
        "",
        "performCheckAppVersionCall",
        "Lokhttp3/Response;",
        "handleCheckAppVersionResponse",
        "response",
        "result",
        "Lkotlin/Function1;",
        "Lcom/sitael/vending/util/CheckAppVersionResult;",
        "checkSecureClient",
        "Lcom/sitael/vending/util/network/models/BaseResponse;",
        "provideClientForImageDownloader",
        "provideOkHttpClient",
        "secure",
        "activateSecureClients",
        "provideRetrofit",
        "url",
        "provideCertificatePinner",
        "Lokhttp3/CertificatePinner;",
        "mobile_argentaProductionGmsRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final AUTH_SCOPE:Ljava/lang/String; = "read,write,trust"

.field public static final CLIENT_ID:Ljava/lang/String; = "restapp"

.field public static final CLIENT_SECRET:Ljava/lang/String; = "restapp"

.field public static final FB_PSW:Ljava/lang/String; = "fb"

.field private static final HTTP_CALL_TIMEOUT:J = 0x1eL

.field public static final INSTANCE:Lcom/sitael/vending/util/network/SmartVendingService;

.field public static final LOGIN_GRANT:Ljava/lang/String; = "password"

.field public static final REFRESH_TOKEN_GRANT:Ljava/lang/String; = "refresh_token"

.field private static analyticsApi:Lcom/sitael/vending/util/network/api/AnalyticsApi;

.field private static appApi:Lcom/sitael/vending/util/network/api/AppApi;

.field private static isClientInitialized:Z

.field private static isClientSecure:Z

.field private static final loggingInterceptor:Lokhttp3/logging/HttpLoggingInterceptor;

.field private static mapsApi:Lcom/sitael/vending/util/network/api/MapsApi;

.field private static oAuthApi:Lcom/sitael/vending/util/network/api/OAuthApi;

.field private static okHttpClient:Lokhttp3/OkHttpClient;

.field private static secureAnalyticsApi:Lcom/sitael/vending/util/network/api/AnalyticsApi;

.field private static secureAnalyticsApiRetrofit:Lretrofit2/Retrofit;

.field private static secureAppApi:Lcom/sitael/vending/util/network/api/AppApi;

.field private static secureAppApiRetrofit:Lretrofit2/Retrofit;

.field private static secureClient:Lokhttp3/OkHttpClient;

.field private static secureOAuthApi:Lcom/sitael/vending/util/network/api/OAuthApi;

.field private static secureOAuthRetrofit:Lretrofit2/Retrofit;

.field private static final unsecureAnalyticsApi:Lcom/sitael/vending/util/network/api/AnalyticsApi;

.field private static final unsecureAnalyticsApiRetrofit:Lretrofit2/Retrofit;

.field private static final unsecureAppApi:Lcom/sitael/vending/util/network/api/AppApi;

.field private static final unsecureAppApiRetrofit:Lretrofit2/Retrofit;

.field private static unsecureClient:Lokhttp3/OkHttpClient;

.field private static final unsecureMapsApi:Lcom/sitael/vending/util/network/api/MapsApi;

.field private static final unsecureMapsApiRetrofit:Lretrofit2/Retrofit;

.field private static final unsecureOAuthApi:Lcom/sitael/vending/util/network/api/OAuthApi;

.field private static final unsecureOAuthRetrofit:Lretrofit2/Retrofit;


# direct methods
.method public static synthetic $r8$lambda$8SUEXutNH_gkP-VGegzvSLGttvo(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/sitael/vending/util/network/SmartVendingService;->loggingInterceptor$lambda$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$95DCPUQT2DZNhssxE6DNCA42130(Lcom/appmattus/certificatetransparency/CTInterceptorBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/sitael/vending/util/network/SmartVendingService;->provideOkHttpClient$lambda$1(Lcom/appmattus/certificatetransparency/CTInterceptorBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/sitael/vending/util/network/SmartVendingService;

    invoke-direct {v0}, Lcom/sitael/vending/util/network/SmartVendingService;-><init>()V

    sput-object v0, Lcom/sitael/vending/util/network/SmartVendingService;->INSTANCE:Lcom/sitael/vending/util/network/SmartVendingService;

    .line 41
    new-instance v1, Lokhttp3/logging/HttpLoggingInterceptor;

    new-instance v2, Lcom/sitael/vending/util/network/SmartVendingService$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/sitael/vending/util/network/SmartVendingService$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    .line 45
    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 41
    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v1

    sput-object v1, Lcom/sitael/vending/util/network/SmartVendingService;->loggingInterceptor:Lokhttp3/logging/HttpLoggingInterceptor;

    .line 49
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    sput-object v1, Lcom/sitael/vending/util/network/SmartVendingService;->okHttpClient:Lokhttp3/OkHttpClient;

    const/4 v1, 0x0

    .line 54
    invoke-direct {v0, v1}, Lcom/sitael/vending/util/network/SmartVendingService;->provideOkHttpClient(Z)Lokhttp3/OkHttpClient;

    move-result-object v1

    sput-object v1, Lcom/sitael/vending/util/network/SmartVendingService;->unsecureClient:Lokhttp3/OkHttpClient;

    .line 57
    const-string v2, "https://vendingapp.matipay.com:443"

    invoke-direct {v0, v1, v2}, Lcom/sitael/vending/util/network/SmartVendingService;->provideRetrofit(Lokhttp3/OkHttpClient;Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v1

    sput-object v1, Lcom/sitael/vending/util/network/SmartVendingService;->unsecureOAuthRetrofit:Lretrofit2/Retrofit;

    .line 60
    sget-object v2, Lcom/sitael/vending/util/network/SmartVendingService;->unsecureClient:Lokhttp3/OkHttpClient;

    const-string v3, "https://vendingapp.matipay.com:443/smart-vending-webapp/rest/oauth2/app-service/"

    invoke-direct {v0, v2, v3}, Lcom/sitael/vending/util/network/SmartVendingService;->provideRetrofit(Lokhttp3/OkHttpClient;Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v2

    sput-object v2, Lcom/sitael/vending/util/network/SmartVendingService;->unsecureAppApiRetrofit:Lretrofit2/Retrofit;

    .line 63
    sget-object v3, Lcom/sitael/vending/util/network/SmartVendingService;->unsecureClient:Lokhttp3/OkHttpClient;

    const-string v4, "https://vendingapp.matipay.com:443/smart-vending-webapp/rest/oauth2/app-service/analytics/"

    invoke-direct {v0, v3, v4}, Lcom/sitael/vending/util/network/SmartVendingService;->provideRetrofit(Lokhttp3/OkHttpClient;Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v3

    sput-object v3, Lcom/sitael/vending/util/network/SmartVendingService;->unsecureAnalyticsApiRetrofit:Lretrofit2/Retrofit;

    .line 65
    sget-object v4, Lcom/sitael/vending/util/network/SmartVendingService;->unsecureClient:Lokhttp3/OkHttpClient;

    const-string v5, "https://maps.googleapis.com/maps/api/place/autocomplete/"

    invoke-direct {v0, v4, v5}, Lcom/sitael/vending/util/network/SmartVendingService;->provideRetrofit(Lokhttp3/OkHttpClient;Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v0

    sput-object v0, Lcom/sitael/vending/util/network/SmartVendingService;->unsecureMapsApiRetrofit:Lretrofit2/Retrofit;

    .line 68
    const-class v4, Lcom/sitael/vending/util/network/api/OAuthApi;

    invoke-virtual {v1, v4}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sitael/vending/util/network/api/OAuthApi;

    sput-object v1, Lcom/sitael/vending/util/network/SmartVendingService;->unsecureOAuthApi:Lcom/sitael/vending/util/network/api/OAuthApi;

    .line 71
    const-class v4, Lcom/sitael/vending/util/network/api/AppApi;

    invoke-virtual {v2, v4}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sitael/vending/util/network/api/AppApi;

    sput-object v2, Lcom/sitael/vending/util/network/SmartVendingService;->unsecureAppApi:Lcom/sitael/vending/util/network/api/AppApi;

    .line 74
    const-class v4, Lcom/sitael/vending/util/network/api/AnalyticsApi;

    invoke-virtual {v3, v4}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sitael/vending/util/network/api/AnalyticsApi;

    sput-object v3, Lcom/sitael/vending/util/network/SmartVendingService;->unsecureAnalyticsApi:Lcom/sitael/vending/util/network/api/AnalyticsApi;

    .line 76
    const-class v4, Lcom/sitael/vending/util/network/api/MapsApi;

    invoke-virtual {v0, v4}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sitael/vending/util/network/api/MapsApi;

    sput-object v0, Lcom/sitael/vending/util/network/SmartVendingService;->unsecureMapsApi:Lcom/sitael/vending/util/network/api/MapsApi;

    .line 78
    const-string v4, "unsecureOAuthApi"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/sitael/vending/util/network/SmartVendingService;->oAuthApi:Lcom/sitael/vending/util/network/api/OAuthApi;

    .line 85
    const-string v1, "unsecureAppApi"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v2, Lcom/sitael/vending/util/network/SmartVendingService;->appApi:Lcom/sitael/vending/util/network/api/AppApi;

    .line 92
    const-string v1, "unsecureAnalyticsApi"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v3, Lcom/sitael/vending/util/network/SmartVendingService;->analyticsApi:Lcom/sitael/vending/util/network/api/AnalyticsApi;

    .line 99
    const-string v1, "unsecureMapsApi"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/sitael/vending/util/network/SmartVendingService;->mapsApi:Lcom/sitael/vending/util/network/api/MapsApi;

    const/16 v0, 0x8

    sput v0, Lcom/sitael/vending/util/network/SmartVendingService;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$handleCheckAppVersionResponse(Lcom/sitael/vending/util/network/SmartVendingService;Lokhttp3/Response;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/sitael/vending/util/network/SmartVendingService;->handleCheckAppVersionResponse(Lokhttp3/Response;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$performCheckAppVersionCall(Lcom/sitael/vending/util/network/SmartVendingService;)Lokhttp3/Response;
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/sitael/vending/util/network/SmartVendingService;->performCheckAppVersionCall()Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method private final activateSecureClients()V
    .locals 3

    const/4 v0, 0x1

    .line 209
    invoke-direct {p0, v0}, Lcom/sitael/vending/util/network/SmartVendingService;->provideOkHttpClient(Z)Lokhttp3/OkHttpClient;

    move-result-object v1

    sput-object v1, Lcom/sitael/vending/util/network/SmartVendingService;->secureClient:Lokhttp3/OkHttpClient;

    .line 211
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "https://vendingapp.matipay.com:443"

    invoke-direct {p0, v1, v2}, Lcom/sitael/vending/util/network/SmartVendingService;->provideRetrofit(Lokhttp3/OkHttpClient;Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v1

    sput-object v1, Lcom/sitael/vending/util/network/SmartVendingService;->secureOAuthRetrofit:Lretrofit2/Retrofit;

    .line 212
    sget-object v1, Lcom/sitael/vending/util/network/SmartVendingService;->secureClient:Lokhttp3/OkHttpClient;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "https://vendingapp.matipay.com:443/smart-vending-webapp/rest/oauth2/app-service/"

    invoke-direct {p0, v1, v2}, Lcom/sitael/vending/util/network/SmartVendingService;->provideRetrofit(Lokhttp3/OkHttpClient;Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v1

    sput-object v1, Lcom/sitael/vending/util/network/SmartVendingService;->secureAppApiRetrofit:Lretrofit2/Retrofit;

    .line 213
    sget-object v1, Lcom/sitael/vending/util/network/SmartVendingService;->secureClient:Lokhttp3/OkHttpClient;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "https://vendingapp.matipay.com:443/smart-vending-webapp/rest/oauth2/app-service/analytics/"

    invoke-direct {p0, v1, v2}, Lcom/sitael/vending/util/network/SmartVendingService;->provideRetrofit(Lokhttp3/OkHttpClient;Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v1

    sput-object v1, Lcom/sitael/vending/util/network/SmartVendingService;->secureAnalyticsApiRetrofit:Lretrofit2/Retrofit;

    .line 215
    sget-object v1, Lcom/sitael/vending/util/network/SmartVendingService;->secureOAuthRetrofit:Lretrofit2/Retrofit;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-class v2, Lcom/sitael/vending/util/network/api/OAuthApi;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sitael/vending/util/network/api/OAuthApi;

    sput-object v1, Lcom/sitael/vending/util/network/SmartVendingService;->secureOAuthApi:Lcom/sitael/vending/util/network/api/OAuthApi;

    .line 216
    sget-object v1, Lcom/sitael/vending/util/network/SmartVendingService;->secureAppApiRetrofit:Lretrofit2/Retrofit;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-class v2, Lcom/sitael/vending/util/network/api/AppApi;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sitael/vending/util/network/api/AppApi;

    sput-object v1, Lcom/sitael/vending/util/network/SmartVendingService;->secureAppApi:Lcom/sitael/vending/util/network/api/AppApi;

    .line 217
    sget-object v1, Lcom/sitael/vending/util/network/SmartVendingService;->secureAnalyticsApiRetrofit:Lretrofit2/Retrofit;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-class v2, Lcom/sitael/vending/util/network/api/AnalyticsApi;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sitael/vending/util/network/api/AnalyticsApi;

    sput-object v1, Lcom/sitael/vending/util/network/SmartVendingService;->secureAnalyticsApi:Lcom/sitael/vending/util/network/api/AnalyticsApi;

    .line 219
    sget-object v1, Lcom/sitael/vending/util/network/SmartVendingService;->secureClient:Lokhttp3/OkHttpClient;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/Dispatcher;->setMaxRequests(I)V

    return-void
.end method

.method private final checkSecureClient(Lcom/sitael/vending/util/network/models/BaseResponse;)Z
    .locals 4

    .line 175
    new-instance v0, Lcom/sitael/vending/util/network/RequestHelper;

    sget-object v1, Lcom/sitael/vending/SmartVendingApplication;->Companion:Lcom/sitael/vending/SmartVendingApplication$Companion;

    invoke-virtual {v1}, Lcom/sitael/vending/SmartVendingApplication$Companion;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sitael/vending/util/network/RequestHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sitael/vending/util/network/RequestHelper;->composeBaseQueryParam()Ljava/util/Map;

    move-result-object v0

    .line 176
    sget-object v1, Lcom/sitael/vending/util/CertificateTransparencyActivatorUtils;->INSTANCE:Lcom/sitael/vending/util/CertificateTransparencyActivatorUtils;

    sget-object v2, Lcom/sitael/vending/SmartVendingApplication;->Companion:Lcom/sitael/vending/SmartVendingApplication$Companion;

    invoke-virtual {v2}, Lcom/sitael/vending/SmartVendingApplication$Companion;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "deviceId"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v0}, Lcom/sitael/vending/util/CertificateTransparencyActivatorUtils;->checkAdditionalData(Lcom/sitael/vending/util/network/models/BaseResponse;Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private final handleCheckAppVersionResponse(Lokhttp3/Response;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/sitael/vending/util/CheckAppVersionResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 152
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 154
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/sitael/vending/util/network/models/BaseResponse;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sitael/vending/util/network/models/BaseResponse;

    .line 156
    sget-object v0, Lcom/sitael/vending/util/CheckAppVersionResult$KO;->INSTANCE:Lcom/sitael/vending/util/CheckAppVersionResult$KO;

    check-cast v0, Lcom/sitael/vending/util/CheckAppVersionResult;

    .line 161
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/sitael/vending/util/network/SmartVendingService;->checkSecureClient(Lcom/sitael/vending/util/network/models/BaseResponse;)Z

    move-result p1

    sput-boolean p1, Lcom/sitael/vending/util/network/SmartVendingService;->isClientSecure:Z

    if-eqz p1, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/sitael/vending/util/network/SmartVendingService;->activateSecureClients()V

    .line 166
    :cond_0
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 169
    :cond_1
    sget-object p1, Lcom/sitael/vending/util/CheckAppVersionResult$UNEVALUATED;->INSTANCE:Lcom/sitael/vending/util/CheckAppVersionResult$UNEVALUATED;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final loggingInterceptor$lambda$0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    const-string v0, "OkHttp"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final performCheckAppVersionCall()Lokhttp3/Response;
    .locals 4

    .line 128
    new-instance v0, Lcom/sitael/vending/util/network/RequestHelper;

    sget-object v1, Lcom/sitael/vending/SmartVendingApplication;->Companion:Lcom/sitael/vending/SmartVendingApplication$Companion;

    invoke-virtual {v1}, Lcom/sitael/vending/SmartVendingApplication$Companion;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sitael/vending/util/network/RequestHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sitael/vending/util/network/RequestHelper;->composeBaseQueryParam()Ljava/util/Map;

    move-result-object v0

    .line 129
    sget-object v1, Lcom/sitael/vending/util/network/SmartVendingService;->unsecureClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lokhttp3/Dispatcher;->setMaxRequests(I)V

    .line 130
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://vendingapp.matipay.com:443/smart-vending-webapp/rest/oauth2/app-service/check-app-version?appVersion="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    const-string v3, "appVersion"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v3, "&appCrc="

    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v3, "appCrc"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v3, "&appKey="

    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v3, "appKey"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v3, "language="

    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v3, "language"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v3, "&brand="

    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v3, "brand"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v3, "&deviceId="

    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v3, "deviceId"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v3, "&clientTimestamp="

    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v3, "clientTimestamp"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v0, "&os="

    .line 132
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 132
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 146
    sget-object v1, Lcom/sitael/vending/util/network/SmartVendingService;->unsecureClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method private final provideCertificatePinner()Lokhttp3/CertificatePinner;
    .locals 3

    .line 230
    new-instance v0, Lokhttp3/CertificatePinner$Builder;

    invoke-direct {v0}, Lokhttp3/CertificatePinner$Builder;-><init>()V

    .line 231
    const-string v1, "sha256/BCI9MGu3jLVrfUf46xceUfw6m+ozIyTuPmRSK/kCon4="

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "vendingapp.matipay.com"

    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    .line 232
    const-string v1, "sha256/x274XFtkgh8C6/JOXBeQ+4MyHN/Vi4+gR0NtScD1jpg="

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lokhttp3/CertificatePinner$Builder;->build()Lokhttp3/CertificatePinner;

    move-result-object v0

    return-object v0
.end method

.method private final provideOkHttpClient(Z)Lokhttp3/OkHttpClient;
    .locals 3

    const-wide/16 v0, 0x1e

    if-eqz p1, :cond_0

    .line 187
    sget-object p1, Lcom/sitael/vending/util/network/SmartVendingService;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 188
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 189
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 190
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 191
    sget-object v0, Lcom/sitael/vending/util/network/SmartVendingService;->loggingInterceptor:Lokhttp3/logging/HttpLoggingInterceptor;

    check-cast v0, Lokhttp3/Interceptor;

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 192
    new-instance v0, Lcom/sitael/vending/util/network/RequestAuthenticatorInterceptor;

    invoke-direct {v0}, Lcom/sitael/vending/util/network/RequestAuthenticatorInterceptor;-><init>()V

    check-cast v0, Lokhttp3/Interceptor;

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    new-instance v0, Lcom/sitael/vending/util/network/SmartVendingService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sitael/vending/util/network/SmartVendingService$$ExternalSyntheticLambda0;-><init>()V

    .line 193
    invoke-static {v0}, Lcom/appmattus/certificatetransparency/CTInterceptorBuilderExtKt;->certificateTransparencyInterceptor(Lkotlin/jvm/functions/Function1;)Lokhttp3/Interceptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 196
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    return-object p1

    .line 198
    :cond_0
    sget-object p1, Lcom/sitael/vending/util/network/SmartVendingService;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 199
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 200
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 201
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 202
    sget-object v0, Lcom/sitael/vending/util/network/SmartVendingService;->loggingInterceptor:Lokhttp3/logging/HttpLoggingInterceptor;

    check-cast v0, Lokhttp3/Interceptor;

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 203
    new-instance v0, Lcom/sitael/vending/util/network/RequestAuthenticatorInterceptor;

    invoke-direct {v0}, Lcom/sitael/vending/util/network/RequestAuthenticatorInterceptor;-><init>()V

    check-cast v0, Lokhttp3/Interceptor;

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    return-object p1
.end method

.method private static final provideOkHttpClient$lambda$1(Lcom/appmattus/certificatetransparency/CTInterceptorBuilder;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$certificateTransparencyInterceptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    const-string v0, "vendingapp.matipay.com"

    invoke-virtual {p0, v0}, Lcom/appmattus/certificatetransparency/CTInterceptorBuilder;->unaryPlus(Ljava/lang/String;)V

    .line 195
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final provideRetrofit(Lokhttp3/OkHttpClient;Ljava/lang/String;)Lretrofit2/Retrofit;
    .locals 1

    .line 224
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 225
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    check-cast v0, Lretrofit2/Converter$Factory;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 226
    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object p2

    check-cast p2, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final getAnalyticsApi()Lcom/sitael/vending/util/network/api/AnalyticsApi;
    .locals 2

    .line 94
    sget-boolean v0, Lcom/sitael/vending/util/network/SmartVendingService;->isClientInitialized:Z

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/sitael/vending/util/network/SmartVendingService;->init()V

    .line 97
    :cond_0
    sget-boolean v0, Lcom/sitael/vending/util/network/SmartVendingService;->isClientSecure:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sitael/vending/util/network/SmartVendingService;->secureAnalyticsApi:Lcom/sitael/vending/util/network/api/AnalyticsApi;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    sget-object v0, Lcom/sitael/vending/util/network/SmartVendingService;->unsecureAnalyticsApi:Lcom/sitael/vending/util/network/api/AnalyticsApi;

    const-string v1, "unsecureAnalyticsApi"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAppApi()Lcom/sitael/vending/util/network/api/AppApi;
    .locals 2

    .line 87
    sget-boolean v0, Lcom/sitael/vending/util/network/SmartVendingService;->isClientInitialized:Z

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/sitael/vending/util/network/SmartVendingService;->init()V

    .line 90
    :cond_0
    sget-boolean v0, Lcom/sitael/vending/util/network/SmartVendingService;->isClientSecure:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sitael/vending/util/network/SmartVendingService;->secureAppApi:Lcom/sitael/vending/util/network/api/AppApi;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    sget-object v0, Lcom/sitael/vending/util/network/SmartVendingService;->unsecureAppApi:Lcom/sitael/vending/util/network/api/AppApi;

    const-string v1, "unsecureAppApi"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getMapsApi()Lcom/sitael/vending/util/network/api/MapsApi;
    .locals 2

    .line 101
    sget-boolean v0, Lcom/sitael/vending/util/network/SmartVendingService;->isClientInitialized:Z

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/sitael/vending/util/network/SmartVendingService;->init()V

    .line 104
    :cond_0
    sget-object v0, Lcom/sitael/vending/util/network/SmartVendingService;->unsecureMapsApi:Lcom/sitael/vending/util/network/api/MapsApi;

    const-string v1, "unsecureMapsApi"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getOAuthApi()Lcom/sitael/vending/util/network/api/OAuthApi;
    .locals 2

    .line 80
    sget-boolean v0, Lcom/sitael/vending/util/network/SmartVendingService;->isClientInitialized:Z

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/sitael/vending/util/network/SmartVendingService;->init()V

    .line 83
    :cond_0
    sget-boolean v0, Lcom/sitael/vending/util/network/SmartVendingService;->isClientSecure:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sitael/vending/util/network/SmartVendingService;->secureOAuthApi:Lcom/sitael/vending/util/network/api/OAuthApi;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    sget-object v0, Lcom/sitael/vending/util/network/SmartVendingService;->unsecureOAuthApi:Lcom/sitael/vending/util/network/api/OAuthApi;

    const-string v1, "unsecureOAuthApi"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 49
    sget-object v0, Lcom/sitael/vending/util/network/SmartVendingService;->okHttpClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public final init()V
    .locals 7

    const/4 v0, 0x1

    .line 108
    sput-boolean v0, Lcom/sitael/vending/util/network/SmartVendingService;->isClientInitialized:Z

    .line 109
    sget-object v1, Lcom/sitael/vending/util/network/SmartVendingService;->unsecureClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/Dispatcher;->setMaxRequests(I)V

    .line 112
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/sitael/vending/util/network/SmartVendingService$init$1;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/sitael/vending/util/network/SmartVendingService$init$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final provideClientForImageDownloader()Lokhttp3/OkHttpClient;
    .locals 1

    .line 180
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public final setAnalyticsApi(Lcom/sitael/vending/util/network/api/AnalyticsApi;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    sput-object p1, Lcom/sitael/vending/util/network/SmartVendingService;->analyticsApi:Lcom/sitael/vending/util/network/api/AnalyticsApi;

    return-void
.end method

.method public final setAppApi(Lcom/sitael/vending/util/network/api/AppApi;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sput-object p1, Lcom/sitael/vending/util/network/SmartVendingService;->appApi:Lcom/sitael/vending/util/network/api/AppApi;

    return-void
.end method

.method public final setMapsApi(Lcom/sitael/vending/util/network/api/MapsApi;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    sput-object p1, Lcom/sitael/vending/util/network/SmartVendingService;->mapsApi:Lcom/sitael/vending/util/network/api/MapsApi;

    return-void
.end method

.method public final setOAuthApi(Lcom/sitael/vending/util/network/api/OAuthApi;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sput-object p1, Lcom/sitael/vending/util/network/SmartVendingService;->oAuthApi:Lcom/sitael/vending/util/network/api/OAuthApi;

    return-void
.end method

.method public final setOkHttpClient(Lokhttp3/OkHttpClient;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sput-object p1, Lcom/sitael/vending/util/network/SmartVendingService;->okHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method
