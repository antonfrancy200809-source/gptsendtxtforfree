.class public Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager;
.super Ljava/lang/Object;
.source "RecoveryTransactionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$RecoveryTransactionCallback;
    }
.end annotation


# instance fields
.field private final disposables:Lio/reactivex/disposables/CompositeDisposable;

.field private transactionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method static synthetic lambda$makeRecoveryCall$1(Landroid/app/Activity;Ljava/util/ArrayList;Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p2, 0x0

    .line 261
    invoke-static {p0, p2}, Lcom/sitael/vending/util/ViewUtil;->enableDisableTouchInView(Landroid/app/Activity;Z)V

    .line 262
    sget-object p0, Lcom/sitael/vending/manager/thread/SyncCreditWithServerNew;->INSTANCE:Lcom/sitael/vending/manager/thread/SyncCreditWithServerNew;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/sitael/vending/manager/thread/SyncCreditWithServerNew;->setRecoveryRunning(Z)V

    .line 263
    sget-object p0, Lcom/sitael/vending/util/logger/EventsLog;->INSTANCE:Lcom/sitael/vending/util/logger/EventsLog;

    sget-object p2, Lcom/sitael/vending/util/logger/LoggableEvents$Events;->RECOVERY_START:Lcom/sitael/vending/util/logger/LoggableEvents$Events;

    new-instance v0, Lcom/sitael/vending/util/logger/logdatamodel/RecoverySuccessData;

    invoke-direct {v0, p1}, Lcom/sitael/vending/util/logger/logdatamodel/RecoverySuccessData;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p2, v0}, Lcom/sitael/vending/util/logger/EventsLog;->logEvent(Lcom/sitael/vending/util/logger/LoggableEvents$Events;Lcom/sitael/vending/util/logger/logdatamodel/LogDataModel;)V

    return-void
.end method

.method static synthetic lambda$makeRecoveryCall$10(Landroid/app/Activity;Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$RecoveryTransactionCallback;Ljava/util/ArrayList;Ljava/lang/Throwable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 361
    invoke-static {p0, v0}, Lcom/sitael/vending/util/ViewUtil;->enableDisableTouchInView(Landroid/app/Activity;Z)V

    .line 362
    instance-of v0, p3, Lio/reactivex/exceptions/CompositeException;

    if-eqz v0, :cond_0

    .line 363
    check-cast p3, Lio/reactivex/exceptions/CompositeException;

    invoke-virtual {p3}, Lio/reactivex/exceptions/CompositeException;->getExceptions()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lretrofit2/HttpException;

    if-eqz p2, :cond_1

    .line 364
    invoke-virtual {p3}, Lio/reactivex/exceptions/CompositeException;->getExceptions()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lretrofit2/HttpException;

    invoke-virtual {p2}, Lretrofit2/HttpException;->code()I

    move-result p2

    const/16 p3, 0x1fb

    if-ne p2, p3, :cond_1

    .line 365
    invoke-interface {p1, p0}, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$RecoveryTransactionCallback;->onRecoverySuccess(Landroid/app/Activity;)V

    return-void

    .line 368
    :cond_0
    sget-object p1, Lcom/sitael/vending/manager/HttpErrorManager;->INSTANCE:Lcom/sitael/vending/manager/HttpErrorManager;

    invoke-virtual {p1, p3, p0}, Lcom/sitael/vending/manager/HttpErrorManager;->handleHttpError(Ljava/lang/Throwable;Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 369
    sget-object p1, Lcom/sitael/vending/ui/widget/dialogs/AlertDialogManager;->INSTANCE:Lcom/sitael/vending/ui/widget/dialogs/AlertDialogManager;

    new-instance v0, Lcom/sitael/vending/ui/utils/Alert$FullscreenWithMessage;

    const v1, 0x7f1403f2

    .line 371
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v1, 0x7f140645

    const v3, 0x7f1403dc

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sitael/vending/ui/utils/Alert$FullscreenWithMessage;-><init>(ILjava/lang/String;ILkotlin/jvm/functions/Function0;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 369
    invoke-virtual {p1, p0, v0, v1}, Lcom/sitael/vending/ui/widget/dialogs/AlertDialogManager;->showNewAlertDialog(Landroid/app/Activity;Lcom/sitael/vending/ui/utils/Alert;Ljava/lang/String;)Landroidx/appcompat/app/AlertDialog;

    .line 377
    sget-object p0, Lcom/sitael/vending/util/logger/EventsLog;->INSTANCE:Lcom/sitael/vending/util/logger/EventsLog;

    sget-object p1, Lcom/sitael/vending/util/logger/LoggableEvents$Events;->RECOVERY_ERROR:Lcom/sitael/vending/util/logger/LoggableEvents$Events;

    new-instance v0, Lcom/sitael/vending/util/logger/logdatamodel/RecoveryErrorData;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p2, p3}, Lcom/sitael/vending/util/logger/logdatamodel/RecoveryErrorData;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/sitael/vending/util/logger/EventsLog;->logEvent(Lcom/sitael/vending/util/logger/LoggableEvents$Events;Lcom/sitael/vending/util/logger/logdatamodel/LogDataModel;)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$makeRecoveryCall$2(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 267
    invoke-static {p0, v0}, Lcom/sitael/vending/util/ViewUtil;->enableDisableTouchInView(Landroid/app/Activity;Z)V

    .line 268
    sget-object p0, Lcom/sitael/vending/manager/thread/SyncCreditWithServerNew;->INSTANCE:Lcom/sitael/vending/manager/thread/SyncCreditWithServerNew;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sitael/vending/manager/thread/SyncCreditWithServerNew;->setRecoveryRunning(Z)V

    return-void
.end method

.method static synthetic lambda$makeRecoveryCall$3(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 272
    invoke-static {p0, v0}, Lcom/sitael/vending/util/ViewUtil;->enableDisableTouchInView(Landroid/app/Activity;Z)V

    .line 273
    sget-object p0, Lcom/sitael/vending/util/logger/EventsLog;->INSTANCE:Lcom/sitael/vending/util/logger/EventsLog;

    sget-object v0, Lcom/sitael/vending/util/logger/LoggableEvents$Events;->RECOVERY_ERROR:Lcom/sitael/vending/util/logger/LoggableEvents$Events;

    new-instance v1, Lcom/sitael/vending/util/logger/logdatamodel/RecoveryErrorData;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/sitael/vending/util/logger/logdatamodel/RecoveryErrorData;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sitael/vending/util/logger/EventsLog;->logEvent(Lcom/sitael/vending/util/logger/LoggableEvents$Events;Lcom/sitael/vending/util/logger/logdatamodel/LogDataModel;)V

    return-void
.end method

.method static synthetic lambda$makeRecoveryCall$5(Landroid/app/Activity;Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$RecoveryTransactionCallback;Ljava/util/ArrayList;Ljava/lang/Throwable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 299
    invoke-static {p0, v0}, Lcom/sitael/vending/util/ViewUtil;->enableDisableTouchInView(Landroid/app/Activity;Z)V

    .line 300
    instance-of v0, p3, Lio/reactivex/exceptions/CompositeException;

    if-eqz v0, :cond_0

    .line 301
    check-cast p3, Lio/reactivex/exceptions/CompositeException;

    invoke-virtual {p3}, Lio/reactivex/exceptions/CompositeException;->getExceptions()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lretrofit2/HttpException;

    if-eqz p2, :cond_1

    .line 302
    invoke-virtual {p3}, Lio/reactivex/exceptions/CompositeException;->getExceptions()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lretrofit2/HttpException;

    invoke-virtual {p2}, Lretrofit2/HttpException;->code()I

    move-result p2

    const/16 p3, 0x1fb

    if-ne p2, p3, :cond_1

    .line 303
    invoke-interface {p1, p0}, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$RecoveryTransactionCallback;->onRecoverySuccess(Landroid/app/Activity;)V

    return-void

    .line 306
    :cond_0
    sget-object p1, Lcom/sitael/vending/manager/HttpErrorManager;->INSTANCE:Lcom/sitael/vending/manager/HttpErrorManager;

    invoke-virtual {p1, p3, p0}, Lcom/sitael/vending/manager/HttpErrorManager;->handleHttpError(Ljava/lang/Throwable;Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 307
    sget-object p1, Lcom/sitael/vending/ui/widget/dialogs/AlertDialogManager;->INSTANCE:Lcom/sitael/vending/ui/widget/dialogs/AlertDialogManager;

    new-instance v0, Lcom/sitael/vending/ui/utils/Alert$FullscreenWithMessage;

    const v1, 0x7f1403f2

    .line 309
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v1, 0x7f140645

    const v3, 0x7f1403dc

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sitael/vending/ui/utils/Alert$FullscreenWithMessage;-><init>(ILjava/lang/String;ILkotlin/jvm/functions/Function0;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 307
    invoke-virtual {p1, p0, v0, v1}, Lcom/sitael/vending/ui/widget/dialogs/AlertDialogManager;->showNewAlertDialog(Landroid/app/Activity;Lcom/sitael/vending/ui/utils/Alert;Ljava/lang/String;)Landroidx/appcompat/app/AlertDialog;

    .line 315
    sget-object p0, Lcom/sitael/vending/util/logger/EventsLog;->INSTANCE:Lcom/sitael/vending/util/logger/EventsLog;

    sget-object p1, Lcom/sitael/vending/util/logger/LoggableEvents$Events;->RECOVERY_ERROR:Lcom/sitael/vending/util/logger/LoggableEvents$Events;

    new-instance v0, Lcom/sitael/vending/util/logger/logdatamodel/RecoveryErrorData;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p2, p3}, Lcom/sitael/vending/util/logger/logdatamodel/RecoveryErrorData;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/sitael/vending/util/logger/EventsLog;->logEvent(Lcom/sitael/vending/util/logger/LoggableEvents$Events;Lcom/sitael/vending/util/logger/logdatamodel/LogDataModel;)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$makeRecoveryCall$6(Landroid/app/Activity;Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    .line 330
    invoke-static {p0, p1}, Lcom/sitael/vending/util/ViewUtil;->enableDisableTouchInView(Landroid/app/Activity;Z)V

    .line 331
    sget-object p0, Lcom/sitael/vending/manager/thread/SyncCreditWithServerNew;->INSTANCE:Lcom/sitael/vending/manager/thread/SyncCreditWithServerNew;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sitael/vending/manager/thread/SyncCreditWithServerNew;->setRecoveryRunning(Z)V

    return-void
.end method

.method static synthetic lambda$makeRecoveryCall$7(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 335
    invoke-static {p0, v0}, Lcom/sitael/vending/util/ViewUtil;->enableDisableTouchInView(Landroid/app/Activity;Z)V

    .line 336
    sget-object p0, Lcom/sitael/vending/manager/thread/SyncCreditWithServerNew;->INSTANCE:Lcom/sitael/vending/manager/thread/SyncCreditWithServerNew;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sitael/vending/manager/thread/SyncCreditWithServerNew;->setRecoveryRunning(Z)V

    return-void
.end method

.method static synthetic lambda$makeRecoveryCall$8(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 340
    invoke-static {p0, v0}, Lcom/sitael/vending/util/ViewUtil;->enableDisableTouchInView(Landroid/app/Activity;Z)V

    .line 341
    sget-object p0, Lcom/sitael/vending/util/logger/EventsLog;->INSTANCE:Lcom/sitael/vending/util/logger/EventsLog;

    sget-object v0, Lcom/sitael/vending/util/logger/LoggableEvents$Events;->RECOVERY_ERROR:Lcom/sitael/vending/util/logger/LoggableEvents$Events;

    new-instance v1, Lcom/sitael/vending/util/logger/logdatamodel/RecoveryErrorData;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/sitael/vending/util/logger/logdatamodel/RecoveryErrorData;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sitael/vending/util/logger/EventsLog;->logEvent(Lcom/sitael/vending/util/logger/LoggableEvents$Events;Lcom/sitael/vending/util/logger/logdatamodel/LogDataModel;)V

    return-void
.end method

.method static synthetic lambda$saveTransaction$0(Ljava/lang/String;Lio/realm/Realm;Lio/realm/Realm;)V
    .locals 0

    .line 220
    sget-object p2, Lcom/sitael/vending/persistence/realm/RealmManager;->INSTANCE:Lcom/sitael/vending/persistence/realm/RealmManager;

    invoke-virtual {p2, p0, p1}, Lcom/sitael/vending/persistence/realm/RealmManager;->getLastTransactionById(Ljava/lang/String;Lio/realm/Realm;)Lcom/sitael/vending/persistence/entity/LastTransactionRealm;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 222
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->setCreditSent(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getTransactionArray(Ljava/lang/Integer;Lio/realm/Realm;)Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lio/realm/Realm;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sitael/vending/model/dto/TransactionEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    sget-object v3, Lcom/sitael/vending/persistence/realm/RealmManager;->INSTANCE:Lcom/sitael/vending/persistence/realm/RealmManager;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p2

    invoke-virtual {v3, v5, v4}, Lcom/sitael/vending/persistence/realm/RealmManager;->getAllLastTransactionsByUserId(Lio/realm/Realm;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 63
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager;->transactionIds:Ljava/util/List;

    .line 66
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;

    .line 67
    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getCreditSent()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1d

    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getBadRequest()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1d

    .line 68
    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getCreditSent()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_1d

    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getBadRequest()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_1d

    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getRollbacked()Z

    move-result v5

    if-nez v5, :cond_1d

    .line 69
    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getCurrentCredit()Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getPreviousCredit()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    .line 85
    new-instance v6, Lcom/sitael/vending/model/dto/TransactionEntity;

    invoke-direct {v6}, Lcom/sitael/vending/model/dto/TransactionEntity;-><init>()V

    .line 86
    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getType()Lcom/sitael/vending/model/type/TypeTransaction;

    move-result-object v7

    sget-object v8, Lcom/sitael/vending/model/type/TypeTransaction;->BRAINTREE_PAYPAL_RECHARGE:Lcom/sitael/vending/model/type/TypeTransaction;

    invoke-virtual {v7, v8}, Lcom/sitael/vending/model/type/TypeTransaction;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_c

    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getType()Lcom/sitael/vending/model/type/TypeTransaction;

    move-result-object v7

    sget-object v9, Lcom/sitael/vending/model/type/TypeTransaction;->BRAINTREE_CREDIT_CARD_RECHARGE:Lcom/sitael/vending/model/type/TypeTransaction;

    invoke-virtual {v7, v9}, Lcom/sitael/vending/model/type/TypeTransaction;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_5

    .line 89
    :cond_0
    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getType()Lcom/sitael/vending/model/type/TypeTransaction;

    move-result-object v7

    sget-object v9, Lcom/sitael/vending/model/type/TypeTransaction;->XPAY_PAYPAL_RECHARGE:Lcom/sitael/vending/model/type/TypeTransaction;

    invoke-virtual {v7, v9}, Lcom/sitael/vending/model/type/TypeTransaction;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getType()Lcom/sitael/vending/model/type/TypeTransaction;

    move-result-object v7

    sget-object v9, Lcom/sitael/vending/model/type/TypeTransaction;->XPAY_CREDIT_CARD_RECHARGE:Lcom/sitael/vending/model/type/TypeTransaction;

    invoke-virtual {v7, v9}, Lcom/sitael/vending/model/type/TypeTransaction;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_4

    .line 92
    :cond_1
    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getType()Lcom/sitael/vending/model/type/TypeTransaction;

    move-result-object v7

    sget-object v9, Lcom/sitael/vending/model/type/TypeTransaction;->FONDY_CREDIT_CARD_RECHARGE:Lcom/sitael/vending/model/type/TypeTransaction;

    invoke-virtual {v7, v9}, Lcom/sitael/vending/model/type/TypeTransaction;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 94
    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getPaymentId()Ljava/lang/String;

    move-result-object v5

    const-string v7, "FONDY"

    goto/16 :goto_6

    .line 95
    :cond_2
    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getType()Lcom/sitael/vending/model/type/TypeTransaction;

    move-result-object v7

    sget-object v9, Lcom/sitael/vending/model/type/TypeTransaction;->CLOUDPAYMETNS_CREDIT_CARD_RECHARGE:Lcom/sitael/vending/model/type/TypeTransaction;

    invoke-virtual {v7, v9}, Lcom/sitael/vending/model/type/TypeTransaction;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 97
    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getPaymentId()Ljava/lang/String;

    move-result-object v5

    const-string v7, "CLOUD_PAYMENTS"

    goto/16 :goto_6

    .line 98
    :cond_3
    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getType()Lcom/sitael/vending/model/type/TypeTransaction;

    move-result-object v7

    sget-object v9, Lcom/sitael/vending/model/type/TypeTransaction;->E_COMMERCE_PURCHASE:Lcom/sitael/vending/model/type/TypeTransaction;

    invoke-virtual {v7, v9}, Lcom/sitael/vending/model/type/TypeTransaction;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 100
    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getPaymentId()Ljava/lang/String;

    move-result-object v5

    const-string v7, "E_COMMERCE_PURCHASE"

    goto/16 :goto_6

    .line 101
    :cond_4
    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getType()Lcom/sitael/vending/model/type/TypeTransaction;

    move-result-object v7

    sget-object v9, Lcom/sitael/vending/model/type/TypeTransaction;->ONLINE_RECHARGE:Lcom/sitael/vending/model/type/TypeTransaction;

    invoke-virtual {v7, v9}, Lcom/sitael/vending/model/type/TypeTransaction;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 103
    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getNotificationId()Ljava/lang/String;

    move-result-object v5

    const-string v7, "NOTIFY_RECHARGE"

    move-object/from16 p1, v3

    move-object/from16 p2, v4

    move-object v9, v5

    move-object v3, v8

    move-object v5, v3

    move-object v10, v5

    goto/16 :goto_7

    .line 104
    :cond_5
    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getType()Lcom/sitael/vending/model/type/TypeTransaction;

    move-result-object v7

    sget-object v9, Lcom/sitael/vending/model/type/TypeTransaction;->CREDIT:Lcom/sitael/vending/model/type/TypeTransaction;

    invoke-virtual {v7, v9}, Lcom/sitael/vending/model/type/TypeTransaction;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 106
    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getNotificationId()Ljava/lang/String;

    move-result-object v5

    .line 107
    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getTransactionId()Ljava/lang/String;

    move-result-object v7

    const-string v9, "CREDIT"

    move-object/from16 p1, v3

    move-object/from16 p2, v4

    move-object v10, v7

    move-object v3, v8

    move-object v11, v3

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object v7, v9

    move-object v9, v5

    :goto_1
    move-object/from16 v5, v17

    goto/16 :goto_8

    .line 108
    :cond_6
    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getType()Lcom/sitael/vending/model/type/TypeTransaction;

    move-result-object v7

    sget-object v9, Lcom/sitael/vending/model/type/TypeTransaction;->TRANSFER_CREDIT:Lcom/sitael/vending/model/type/TypeTransaction;

    invoke-virtual {v7, v9}, Lcom/sitael/vending/model/type/TypeTransaction;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 110
    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getTransferId()Ljava/lang/String;

    move-result-object v5

    const-string v7, "TRANSFER"

    move-object/from16 p1, v3

    move-object/from16 p2, v4

    move-object v3, v8

    move-object v9, v3

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object v8, v5

    goto :goto_1

    .line 112
    :cond_7
    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getTransactionBleAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sitael/vending/util/FormatUtil;->cleanMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 113
    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getAckWritten()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 114
    new-instance v10, Ljava/math/BigDecimal;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v5, v10}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v5

    if-lez v5, :cond_8

    .line 116
    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getNote()Ljava/lang/String;

    move-result-object v5

    const-string v10, "WALLET"

    move-object/from16 p1, v3

    move-object/from16 p2, v4

    move-object/from16 v16, v5

    move-object v11, v7

    move-object v3, v8

    move-object v5, v3

    move-object v12, v5

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v17, v14

    move-object v15, v9

    move-object v7, v10

    move-object/from16 v9, v17

    move-object v10, v9

    goto/16 :goto_8

    .line 119
    :cond_8
    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getRackPosition()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 122
    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getDiscountSurcharge()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 123
    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getDiscountSurcharge()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2

    :cond_9
    move-object v5, v8

    .line 127
    :goto_2
    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getRackPosition()Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 128
    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->isFreeVend()Ljava/lang/Boolean;

    move-result-object v11

    .line 130
    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getNote()Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :cond_a
    move-object v5, v8

    move-object v10, v5

    move-object v11, v10

    move-object v12, v11

    .line 132
    :goto_3
    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getWelfareServiceId()Ljava/lang/Integer;

    move-result-object v13

    .line 133
    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getWelfareAmount()Ljava/lang/Double;

    move-result-object v14

    const-string v15, "PURCHASE"

    move-object/from16 p1, v3

    move-object/from16 p2, v4

    move-object/from16 v16, v12

    move-object v3, v13

    move-object/from16 v17, v14

    move-object v14, v5

    move-object v5, v8

    move-object v12, v10

    move-object v13, v11

    move-object v11, v7

    move-object v10, v5

    move-object v7, v15

    move-object v15, v9

    move-object v9, v10

    goto :goto_8

    .line 91
    :cond_b
    :goto_4
    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getPaymentId()Ljava/lang/String;

    move-result-object v5

    const-string v7, "XPAY"

    goto :goto_6

    .line 88
    :cond_c
    :goto_5
    invoke-virtual {v4}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getPaymentId()Ljava/lang/String;

    move-result-object v5

    const-string v7, "BRAINTREE"

    :goto_6
    move-object/from16 p1, v3

    move-object/from16 p2, v4

    move-object v3, v8

    move-object v9, v3

    move-object v10, v9

    :goto_7
    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    .line 136
    :goto_8
    invoke-virtual/range {p2 .. p2}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getWalletBrand()Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-virtual/range {p2 .. p2}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sitael/vending/model/dto/TransactionEntity;->setDate(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p2 .. p2}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getType()Lcom/sitael/vending/model/type/TypeTransaction;

    move-result-object v0

    move-object/from16 v18, v1

    sget-object v1, Lcom/sitael/vending/model/type/TypeTransaction;->CREDIT:Lcom/sitael/vending/model/type/TypeTransaction;

    invoke-virtual {v0, v1}, Lcom/sitael/vending/model/type/TypeTransaction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 140
    invoke-virtual/range {p2 .. p2}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getCurrentCredit()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getPreviousCredit()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sitael/vending/model/dto/TransactionEntity;->setTransactionAmount(Ljava/lang/String;)V

    goto :goto_9

    .line 142
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getCurrentCredit()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getPreviousCredit()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sitael/vending/model/dto/TransactionEntity;->setTransactionAmount(Ljava/lang/String;)V

    .line 144
    :goto_9
    invoke-virtual/range {p2 .. p2}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getTransactionVmTimestamp()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 145
    invoke-virtual/range {p2 .. p2}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getTransactionVmTimestamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sitael/vending/model/dto/TransactionEntity;->setTransactionVmTimestamp(Ljava/lang/Long;)V

    .line 147
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getCurrentCredit()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sitael/vending/model/dto/TransactionEntity;->setSmartphoneCredit(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v6, v4}, Lcom/sitael/vending/model/dto/TransactionEntity;->setWalletBrand(Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p2 .. p2}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getRetry()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sitael/vending/model/dto/TransactionEntity;->setRetry(Ljava/lang/Boolean;)V

    .line 150
    invoke-virtual {v6, v7}, Lcom/sitael/vending/model/dto/TransactionEntity;->setTransactionType(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getType()Lcom/sitael/vending/model/type/TypeTransaction;

    move-result-object v0

    sget-object v1, Lcom/sitael/vending/model/type/TypeTransaction;->CREDIT_REVERSAL:Lcom/sitael/vending/model/type/TypeTransaction;

    invoke-virtual {v0, v1}, Lcom/sitael/vending/model/type/TypeTransaction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    .line 153
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sitael/vending/model/dto/TransactionEntity;->setRetry(Ljava/lang/Boolean;)V

    .line 154
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-virtual/range {p2 .. p2}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getNote()Ljava/lang/String;

    move-result-object v16

    const-string v0, "D"

    goto :goto_a

    .line 157
    :cond_f
    const-string v0, "N"

    :goto_a
    move-object/from16 v1, v16

    if-eqz v8, :cond_10

    .line 160
    invoke-virtual {v6, v8}, Lcom/sitael/vending/model/dto/TransactionEntity;->setTransferId(Ljava/lang/String;)V

    .line 163
    :cond_10
    invoke-virtual {v6, v0}, Lcom/sitael/vending/model/dto/TransactionEntity;->setStatus(Ljava/lang/String;)V

    if-eqz v5, :cond_11

    .line 166
    invoke-virtual {v6, v5}, Lcom/sitael/vending/model/dto/TransactionEntity;->setPaymentId(Ljava/lang/String;)V

    :cond_11
    if-eqz v9, :cond_12

    .line 169
    invoke-virtual {v6, v9}, Lcom/sitael/vending/model/dto/TransactionEntity;->setNotificationId(Ljava/lang/String;)V

    :cond_12
    if-eqz v10, :cond_13

    .line 172
    invoke-virtual {v6, v10}, Lcom/sitael/vending/model/dto/TransactionEntity;->setTransactionId(Ljava/lang/String;)V

    :cond_13
    if-eqz v11, :cond_14

    .line 175
    invoke-virtual {v6, v11}, Lcom/sitael/vending/model/dto/TransactionEntity;->setBleAddress(Ljava/lang/String;)V

    :cond_14
    if-eqz v12, :cond_15

    .line 178
    invoke-virtual {v6, v12}, Lcom/sitael/vending/model/dto/TransactionEntity;->setSelection(Ljava/lang/String;)V

    :cond_15
    if-eqz v13, :cond_16

    .line 181
    invoke-virtual {v6, v13}, Lcom/sitael/vending/model/dto/TransactionEntity;->setFreeVend(Ljava/lang/Boolean;)V

    :cond_16
    if-eqz v14, :cond_17

    .line 184
    invoke-virtual {v6, v14}, Lcom/sitael/vending/model/dto/TransactionEntity;->setDiscount(Ljava/lang/Integer;)V

    :cond_17
    if-eqz v15, :cond_18

    .line 187
    invoke-virtual {v6, v15}, Lcom/sitael/vending/model/dto/TransactionEntity;->setAckReceived(Ljava/lang/Boolean;)V

    :cond_18
    if-eqz v1, :cond_19

    .line 190
    invoke-virtual {v6, v1}, Lcom/sitael/vending/model/dto/TransactionEntity;->setNote(Ljava/lang/String;)V

    :cond_19
    if-eqz v3, :cond_1a

    .line 193
    invoke-virtual {v6, v3}, Lcom/sitael/vending/model/dto/TransactionEntity;->setWelfareServiceId(Ljava/lang/Integer;)V

    :cond_1a
    if-eqz v17, :cond_1b

    .line 196
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sitael/vending/model/dto/TransactionEntity;->setWelfareAmount(Ljava/lang/Double;)V

    .line 198
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 199
    invoke-virtual/range {p2 .. p2}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sitael/vending/model/dto/TransactionEntity;->setSessionToken(Ljava/lang/String;)V

    :cond_1c
    move-object/from16 v0, v18

    .line 200
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    .line 202
    iget-object v3, v1, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager;->transactionIds:Ljava/util/List;

    invoke-virtual/range {p2 .. p2}, Lcom/sitael/vending/persistence/entity/LastTransactionRealm;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1d
    move-object/from16 p1, v1

    move-object v1, v0

    move-object/from16 v0, p1

    move-object/from16 p1, v3

    :goto_b
    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    move-object/from16 v3, p1

    goto/16 :goto_0

    :cond_1e
    move-object/from16 v19, v1

    move-object v1, v0

    move-object/from16 v0, v19

    .line 206
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method synthetic lambda$makeRecoveryCall$4$com-sitael-vending-manager-transactions-RecoveryTransactionManager(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$RecoveryTransactionCallback;Ljava/util/ArrayList;Lcom/sitael/vending/model/dto/RecoveryTransactionsResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 0
    const/4 v0, 0x1

    .line 277
    invoke-static {p1, v0}, Lcom/sitael/vending/util/ViewUtil;->enableDisableTouchInView(Landroid/app/Activity;Z)V

    .line 278
    invoke-virtual {p0}, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager;->saveTransaction()Z

    .line 279
    invoke-virtual {p6}, Lcom/sitael/vending/model/dto/RecoveryTransactionsResponse;->getUserWallets()Ljava/util/List;

    move-result-object p6

    .line 281
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sitael/vending/model/dto/UserWallet;

    .line 282
    invoke-virtual {v2}, Lcom/sitael/vending/model/dto/UserWallet;->getWalletBrand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 289
    invoke-static {p6, v0}, Lcom/sitael/vending/persistence/dao/UserWalletDAO;->updateUserWalletsOnAutologin(Ljava/util/List;Z)V

    goto :goto_0

    .line 291
    :cond_2
    sget-object p2, Lcom/sitael/vending/manager/transactions/RecoveryManager;->INSTANCE:Lcom/sitael/vending/manager/transactions/RecoveryManager;

    invoke-virtual {p2, p6}, Lcom/sitael/vending/manager/transactions/RecoveryManager;->updateWalletAfterRecovery(Ljava/util/List;)V

    .line 294
    :goto_0
    invoke-interface {p4, p1}, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$RecoveryTransactionCallback;->onRecoverySuccess(Landroid/app/Activity;)V

    .line 297
    sget-object p1, Lcom/sitael/vending/util/logger/EventsLog;->INSTANCE:Lcom/sitael/vending/util/logger/EventsLog;

    sget-object p2, Lcom/sitael/vending/util/logger/LoggableEvents$Events;->RECOVERY_SUCCESS:Lcom/sitael/vending/util/logger/LoggableEvents$Events;

    new-instance p3, Lcom/sitael/vending/util/logger/logdatamodel/RecoverySuccessData;

    invoke-direct {p3, p5}, Lcom/sitael/vending/util/logger/logdatamodel/RecoverySuccessData;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, p2, p3}, Lcom/sitael/vending/util/logger/EventsLog;->logEvent(Lcom/sitael/vending/util/logger/LoggableEvents$Events;Lcom/sitael/vending/util/logger/logdatamodel/LogDataModel;)V

    return-void
.end method

.method synthetic lambda$makeRecoveryCall$9$com-sitael-vending-manager-transactions-RecoveryTransactionManager(Landroid/app/Activity;Ljava/lang/String;Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$RecoveryTransactionCallback;Ljava/util/ArrayList;Lcom/sitael/vending/model/dto/RecoveryTransactionsResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 0
    const/4 v0, 0x1

    .line 344
    invoke-static {p1, v0}, Lcom/sitael/vending/util/ViewUtil;->enableDisableTouchInView(Landroid/app/Activity;Z)V

    .line 345
    invoke-virtual {p0}, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager;->saveTransaction()Z

    .line 346
    invoke-virtual {p5}, Lcom/sitael/vending/model/dto/RecoveryTransactionsResponse;->getUserWallets()Ljava/util/List;

    move-result-object p5

    .line 348
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sitael/vending/model/dto/UserWallet;

    .line 349
    invoke-virtual {v1}, Lcom/sitael/vending/model/dto/UserWallet;->getWalletBrand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    :cond_1
    sget-object p2, Lcom/sitael/vending/manager/transactions/RecoveryManager;->INSTANCE:Lcom/sitael/vending/manager/transactions/RecoveryManager;

    invoke-virtual {p2, p5}, Lcom/sitael/vending/manager/transactions/RecoveryManager;->updateWalletAfterRecovery(Ljava/util/List;)V

    .line 357
    invoke-interface {p3, p1}, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$RecoveryTransactionCallback;->onRecoverySuccess(Landroid/app/Activity;)V

    .line 359
    sget-object p1, Lcom/sitael/vending/util/logger/EventsLog;->INSTANCE:Lcom/sitael/vending/util/logger/EventsLog;

    sget-object p2, Lcom/sitael/vending/util/logger/LoggableEvents$Events;->RECOVERY_SUCCESS:Lcom/sitael/vending/util/logger/LoggableEvents$Events;

    new-instance p3, Lcom/sitael/vending/util/logger/logdatamodel/RecoverySuccessData;

    invoke-direct {p3, p4}, Lcom/sitael/vending/util/logger/logdatamodel/RecoverySuccessData;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, p2, p3}, Lcom/sitael/vending/util/logger/EventsLog;->logEvent(Lcom/sitael/vending/util/logger/LoggableEvents$Events;Lcom/sitael/vending/util/logger/logdatamodel/LogDataModel;)V

    return-void
.end method

.method public makeRecoveryCall(Ljava/lang/Boolean;Landroid/app/Activity;Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$RecoveryTransactionCallback;)V
    .locals 10

    .line 233
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v1

    .line 234
    :try_start_0
    invoke-static {}, Lcom/sitael/vending/persistence/dao/UserDAO;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    sget-object p1, Lcom/sitael/vending/ui/widget/dialogs/AlertDialogManager;->INSTANCE:Lcom/sitael/vending/ui/widget/dialogs/AlertDialogManager;

    new-instance v2, Lcom/sitael/vending/ui/utils/Alert$FullscreenWithMessage;

    const p3, 0x7f1403f2

    .line 237
    invoke-virtual {p2, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v3, 0x7f140645

    const v5, 0x7f1403dc

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/sitael/vending/ui/utils/Alert$FullscreenWithMessage;-><init>(ILjava/lang/String;ILkotlin/jvm/functions/Function0;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 235
    invoke-virtual {p1, p2, v2, p3}, Lcom/sitael/vending/ui/widget/dialogs/AlertDialogManager;->showNewAlertDialog(Landroid/app/Activity;Lcom/sitael/vending/ui/utils/Alert;Ljava/lang/String;)Landroidx/appcompat/app/AlertDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v1, :cond_4

    .line 386
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    return-void

    .line 246
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/sitael/vending/persistence/dao/UserDAO;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager;->getTransactionArray(Ljava/lang/Integer;Lio/realm/Realm;)Ljava/util/ArrayList;

    move-result-object v7

    .line 248
    invoke-static {v1}, Lcom/sitael/vending/persistence/dao/UserWalletDAO;->getCurrentWallet(Lio/realm/Realm;)Lcom/sitael/vending/persistence/entity/WalletRealmEntity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 250
    invoke-virtual {v0}, Lcom/sitael/vending/persistence/entity/WalletRealmEntity;->getWalletHasCardNfc()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 251
    :try_start_2
    invoke-virtual {v0}, Lcom/sitael/vending/persistence/entity/WalletRealmEntity;->getWalletBrand()Ljava/lang/String;

    move-result-object v5

    .line 252
    invoke-virtual {v0}, Lcom/sitael/vending/persistence/entity/WalletRealmEntity;->getWalletCredit()Ljava/math/BigDecimal;

    .line 253
    invoke-virtual {v0}, Lcom/sitael/vending/persistence/entity/WalletRealmEntity;->getWalletCurrencyCode()Ljava/lang/String;

    .line 254
    invoke-virtual {v0}, Lcom/sitael/vending/persistence/entity/WalletRealmEntity;->getWalletDecimalPlaces()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 255
    sget-object v0, Lcom/sitael/vending/manager/thread/SyncCreditWithServerNew;->INSTANCE:Lcom/sitael/vending/manager/thread/SyncCreditWithServerNew;

    invoke-virtual {v0, v3}, Lcom/sitael/vending/manager/thread/SyncCreditWithServerNew;->setRecoveryRunning(Z)V

    .line 257
    iget-object v0, p0, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    sget-object v2, Lcom/sitael/vending/util/network/SmartVendingClient;->INSTANCE:Lcom/sitael/vending/util/network/SmartVendingClient;

    invoke-static {}, Lcom/sitael/vending/persistence/dao/UserDAO;->getLoggedUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3, v7}, Lcom/sitael/vending/util/network/SmartVendingClient;->sendRecoveryTransactions(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lio/reactivex/Single;

    move-result-object v2

    .line 258
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    .line 259
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    new-instance v3, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$$ExternalSyntheticLambda2;

    invoke-direct {v3, p2, v7}, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$$ExternalSyntheticLambda2;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 260
    invoke-virtual {v2, v3}, Lio/reactivex/Single;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object v2

    new-instance v3, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$$ExternalSyntheticLambda3;

    invoke-direct {v3, p2}, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$$ExternalSyntheticLambda3;-><init>(Landroid/app/Activity;)V

    .line 266
    invoke-virtual {v2, v3}, Lio/reactivex/Single;->doOnTerminate(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object v2

    new-instance v3, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$$ExternalSyntheticLambda4;

    invoke-direct {v3, p2, v7}, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$$ExternalSyntheticLambda4;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 271
    invoke-virtual {v2, v3}, Lio/reactivex/Single;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object v9

    new-instance v2, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$$ExternalSyntheticLambda5;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v3, p0

    move-object v6, p1

    move-object v4, p2

    move-object v8, v7

    move-object v7, p3

    :try_start_3
    invoke-direct/range {v2 .. v8}, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$$ExternalSyntheticLambda5;-><init>(Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$RecoveryTransactionCallback;Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object p1, v3

    move-object v6, v7

    move-object v7, v8

    :try_start_4
    new-instance p2, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$$ExternalSyntheticLambda6;

    invoke-direct {p2, v4, v6, v7}, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$$ExternalSyntheticLambda6;-><init>(Landroid/app/Activity;Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$RecoveryTransactionCallback;Ljava/util/ArrayList;)V

    .line 276
    invoke-virtual {v9, v2, p2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p2

    .line 257
    invoke-virtual {v0, p2}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v3

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object p1, p0

    :goto_0
    move-object p2, v0

    move-object p1, p2

    goto/16 :goto_2

    :cond_1
    move-object p1, p0

    move-object v4, p2

    move-object v6, p3

    .line 319
    :try_start_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 320
    invoke-virtual {v0}, Lcom/sitael/vending/persistence/entity/WalletRealmEntity;->getWalletBrand()Ljava/lang/String;

    move-result-object v5

    .line 321
    invoke-virtual {v0}, Lcom/sitael/vending/persistence/entity/WalletRealmEntity;->getWalletCredit()Ljava/math/BigDecimal;

    .line 322
    invoke-virtual {v0}, Lcom/sitael/vending/persistence/entity/WalletRealmEntity;->getWalletCurrencyCode()Ljava/lang/String;

    .line 323
    invoke-virtual {v0}, Lcom/sitael/vending/persistence/entity/WalletRealmEntity;->getWalletDecimalPlaces()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 324
    sget-object p2, Lcom/sitael/vending/manager/thread/SyncCreditWithServerNew;->INSTANCE:Lcom/sitael/vending/manager/thread/SyncCreditWithServerNew;

    invoke-virtual {p2, v3}, Lcom/sitael/vending/manager/thread/SyncCreditWithServerNew;->setRecoveryRunning(Z)V

    .line 326
    iget-object p2, p1, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    sget-object p3, Lcom/sitael/vending/util/network/SmartVendingClient;->INSTANCE:Lcom/sitael/vending/util/network/SmartVendingClient;

    invoke-static {}, Lcom/sitael/vending/persistence/dao/UserDAO;->getLoggedUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v4, v0, v7}, Lcom/sitael/vending/util/network/SmartVendingClient;->sendRecoveryTransactions(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lio/reactivex/Single;

    move-result-object p3

    .line 327
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p3

    .line 328
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p3

    new-instance v0, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, v4}, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$$ExternalSyntheticLambda7;-><init>(Landroid/app/Activity;)V

    .line 329
    invoke-virtual {p3, v0}, Lio/reactivex/Single;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p3

    new-instance v0, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, v4}, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$$ExternalSyntheticLambda8;-><init>(Landroid/app/Activity;)V

    .line 334
    invoke-virtual {p3, v0}, Lio/reactivex/Single;->doOnTerminate(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object p3

    new-instance v0, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$$ExternalSyntheticLambda9;

    invoke-direct {v0, v4, v7}, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$$ExternalSyntheticLambda9;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 339
    invoke-virtual {p3, v0}, Lio/reactivex/Single;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p3

    new-instance v2, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$$ExternalSyntheticLambda10;

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$$ExternalSyntheticLambda10;-><init>(Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager;Landroid/app/Activity;Ljava/lang/String;Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$RecoveryTransactionCallback;Ljava/util/ArrayList;)V

    new-instance p1, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$$ExternalSyntheticLambda1;

    invoke-direct {p1, v4, v6, v7}, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$RecoveryTransactionCallback;Ljava/util/ArrayList;)V

    .line 343
    invoke-virtual {p3, v2, p1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 326
    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_1

    .line 382
    :cond_2
    invoke-static {v4, v3}, Lcom/sitael/vending/util/ViewUtil;->enableDisableTouchInView(Landroid/app/Activity;Z)V

    .line 383
    invoke-interface {v6, v4}, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$RecoveryTransactionCallback;->successWithNoNfcOrTransaction(Landroid/app/Activity;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 386
    invoke-virtual {v1}, Lio/realm/Realm;->close()V

    :cond_4
    return-void

    :catchall_3
    move-exception v0

    move-object p1, v0

    :goto_2
    if-eqz v1, :cond_5

    .line 233
    :try_start_6
    invoke-virtual {v1}, Lio/realm/Realm;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw p1
.end method

.method public saveTransaction()Z
    .locals 5

    const/4 v0, 0x0

    .line 217
    :try_start_0
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :try_start_1
    iget-object v2, p0, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager;->transactionIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 219
    new-instance v4, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, v1}, Lcom/sitael/vending/manager/transactions/RecoveryTransactionManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lio/realm/Realm;)V

    invoke-virtual {v1, v4}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eqz v1, :cond_1

    .line 226
    :try_start_2
    invoke-virtual {v1}, Lio/realm/Realm;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return v0

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 217
    :try_start_3
    invoke-virtual {v1}, Lio/realm/Realm;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    .line 227
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method
