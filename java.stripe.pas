
unit java.stripe;

interface

uses
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes;

type
// ===== Forward declarations =====

  JStripe = interface;//com.stripe.Stripe
  JStripeException = interface;//com.stripe.exception.StripeException
  JAPIConnectionException = interface;//com.stripe.exception.APIConnectionException
  JAPIException = interface;//com.stripe.exception.APIException
  Jexception_AuthenticationException = interface;//com.stripe.exception.AuthenticationException
  JCardException = interface;//com.stripe.exception.CardException
  JInvalidRequestException = interface;//com.stripe.exception.InvalidRequestException
  JStripeObject = interface;//com.stripe.model.StripeObject
  JAPIResource = interface;//com.stripe.net.APIResource
  Jmodel_Account = interface;//com.stripe.model.Account
  JApplicationFee = interface;//com.stripe.model.ApplicationFee
  JStripeCollection = interface;//com.stripe.model.StripeCollection
  JApplicationFeeCollection = interface;//com.stripe.model.ApplicationFeeCollection
  JBalance = interface;//com.stripe.model.Balance
  JBalanceTransaction = interface;//com.stripe.model.BalanceTransaction
  JBalanceTransactionCollection = interface;//com.stripe.model.BalanceTransactionCollection
  JBankAccount = interface;//com.stripe.model.BankAccount
  JCard = interface;//com.stripe.model.Card
  JCharge = interface;//com.stripe.model.Charge
  JChargeCollection = interface;//com.stripe.model.ChargeCollection
  JStripeColllectionAPIResource = interface;//com.stripe.model.StripeColllectionAPIResource
  JChargeRefundCollection = interface;//com.stripe.model.ChargeRefundCollection
  //JChargeRefundCollectionDeserializer = interface;//com.stripe.model.ChargeRefundCollectionDeserializer
  //JChargeRefundCollectionDeserializer_1 = interface;//com.stripe.model.ChargeRefundCollectionDeserializer$1
  JCoupon = interface;//com.stripe.model.Coupon
  JCouponCollection = interface;//com.stripe.model.CouponCollection
  JCustomer = interface;//com.stripe.model.Customer
  JCustomerCardCollection = interface;//com.stripe.model.CustomerCardCollection
  JCustomerCollection = interface;//com.stripe.model.CustomerCollection
  JCustomerSubscriptionCollection = interface;//com.stripe.model.CustomerSubscriptionCollection
  JDeletedCard = interface;//com.stripe.model.DeletedCard
  JDeletedCoupon = interface;//com.stripe.model.DeletedCoupon
  JDeletedCustomer = interface;//com.stripe.model.DeletedCustomer
  JDeletedInvoiceItem = interface;//com.stripe.model.DeletedInvoiceItem
  JDeletedPlan = interface;//com.stripe.model.DeletedPlan
  JDeletedRecipient = interface;//com.stripe.model.DeletedRecipient
  JDiscount = interface;//com.stripe.model.Discount
  JDispute = interface;//com.stripe.model.Dispute
  JEvent = interface;//com.stripe.model.Event
  JEventCollection = interface;//com.stripe.model.EventCollection
  JEventData = interface;//com.stripe.model.EventData
  //JEventDataDeserializer = interface;//com.stripe.model.EventDataDeserializer
  JFee = interface;//com.stripe.model.Fee
  JFeeRefund = interface;//com.stripe.model.FeeRefund
  JInvoice = interface;//com.stripe.model.Invoice
  JInvoiceCollection = interface;//com.stripe.model.InvoiceCollection
  JInvoiceItem = interface;//com.stripe.model.InvoiceItem
  JInvoiceItemCollection = interface;//com.stripe.model.InvoiceItemCollection
  JInvoiceLineItem = interface;//com.stripe.model.InvoiceLineItem
  JInvoiceLineItemCollection = interface;//com.stripe.model.InvoiceLineItemCollection
  JInvoiceLineItemPeriod = interface;//com.stripe.model.InvoiceLineItemPeriod
  JMetadataStore = interface;//com.stripe.model.MetadataStore
  JMoney = interface;//com.stripe.model.Money
  JNextRecurringCharge = interface;//com.stripe.model.NextRecurringCharge
  JPlan = interface;//com.stripe.model.Plan
  JPlanCollection = interface;//com.stripe.model.PlanCollection
  JRecipient = interface;//com.stripe.model.Recipient
  JRecipientCardCollection = interface;//com.stripe.model.RecipientCardCollection
  JRecipientCollection = interface;//com.stripe.model.RecipientCollection
  JRefund = interface;//com.stripe.model.Refund
  JStripeRawJsonObject = interface;//com.stripe.model.StripeRawJsonObject
  //JStripeRawJsonObjectDeserializer = interface;//com.stripe.model.StripeRawJsonObjectDeserializer
  JSubscription = interface;//com.stripe.model.Subscription
  JSummary = interface;//com.stripe.model.Summary
  JToken = interface;//com.stripe.model.Token
  JTransfer = interface;//com.stripe.model.Transfer
  JTransferCollection = interface;//com.stripe.model.TransferCollection
  JTransferTransaction = interface;//com.stripe.model.TransferTransaction
  JTransferTransactionCollection = interface;//com.stripe.model.TransferTransactionCollection
  JAPIResource_1 = interface;//com.stripe.net.APIResource$1
  JAPIResource_Error = interface;//com.stripe.net.APIResource$Error
  JAPIResource_ErrorContainer = interface;//com.stripe.net.APIResource$ErrorContainer
  JAPIResource_RequestMethod = interface;//com.stripe.net.APIResource$RequestMethod
  JStripeResponse = interface;//com.stripe.net.StripeResponse

// ===== Interface declarations =====

  JStripeClass = interface(JObjectClass)
    ['{C08A0F96-82FF-4300-8306-CB9539B40685}']
    {class} function _GetLIVE_API_BASE: JString; cdecl;
    {class} function _GetVERSION: JString; cdecl;
    {class} function _GetapiKey: JString; cdecl;
    {class} function _GetapiVersion: JString; cdecl;
    {class} function getApiBase: JString; cdecl;
    {class} function getVerifySSL: Boolean; cdecl;
    {class} function init: JStripe; cdecl;
    {class} procedure overrideApiBase(P1: JString); cdecl;
    {class} procedure setVerifySSL(P1: Boolean); cdecl;
    {class} property LIVE_API_BASE: JString read _GetLIVE_API_BASE;
    {class} property VERSION: JString read _GetVERSION;
    {class} property apiKey: JString read _GetapiKey;
    {class} property apiVersion: JString read _GetapiVersion;
  end;

  [JavaSignature('com/stripe/Stripe')]
  JStripe = interface(JObject)
    ['{7FDC0241-8584-4B85-976B-24E1D73BCF60}']
  end;
  TJStripe = class(TJavaGenericImport<JStripeClass, JStripe>) end;

  JStripeExceptionClass = interface(JExceptionClass)
    ['{B24535E9-3420-41F3-8A0E-0414388E004A}']
    {class} function init(P1: JString): JStripeException; cdecl; overload;//Deprecated
    {class} function init(P1: JString; P2: JThrowable): JStripeException; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/stripe/exception/StripeException')]
  JStripeException = interface(JException)
    ['{B3138F61-C90B-4207-88EF-B2CC2C48FF12}']
  end;
  TJStripeException = class(TJavaGenericImport<JStripeExceptionClass, JStripeException>) end;

  JAPIConnectionExceptionClass = interface(JStripeExceptionClass)
    ['{C3D1E42C-E2FE-4BE8-AB09-F3DA3A54EC3D}']
    {class} function init(P1: JString): JAPIConnectionException; cdecl; overload;//Deprecated
    {class} function init(P1: JString; P2: JThrowable): JAPIConnectionException; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/stripe/exception/APIConnectionException')]
  JAPIConnectionException = interface(JStripeException)
    ['{4E7DB503-28D9-4726-8C98-296206EFF767}']
  end;
  TJAPIConnectionException = class(TJavaGenericImport<JAPIConnectionExceptionClass, JAPIConnectionException>) end;

  JAPIExceptionClass = interface(JStripeExceptionClass)
    ['{E10251B6-536C-46B4-933E-A7C9168ECD1B}']
    {class} function init(P1: JString; P2: JThrowable): JAPIException; cdecl;//Deprecated
  end;

  [JavaSignature('com/stripe/exception/APIException')]
  JAPIException = interface(JStripeException)
    ['{41CC10BC-E6FB-4C88-95C5-A45A4C33FDF8}']
  end;
  TJAPIException = class(TJavaGenericImport<JAPIExceptionClass, JAPIException>) end;

  Jexception_AuthenticationExceptionClass = interface(JStripeExceptionClass)
    ['{D6E1E76A-C34E-43E0-9F64-ADEA7E2FE127}']
    {class} function init(P1: JString): Jexception_AuthenticationException; cdecl;//Deprecated
  end;

  [JavaSignature('com/stripe/exception/AuthenticationException')]
  Jexception_AuthenticationException = interface(JStripeException)
    ['{FDBCB63D-13ED-40AB-86B4-95642C9F9B6C}']
  end;
  TJexception_AuthenticationException = class(TJavaGenericImport<Jexception_AuthenticationExceptionClass, Jexception_AuthenticationException>) end;

  JCardExceptionClass = interface(JStripeExceptionClass)
    ['{E092177D-3D53-4AE7-B5B9-69DA34B783F7}']
    {class} function init(P1: JString; P2: JString; P3: JString; P4: JThrowable): JCardException; cdecl;//Deprecated
  end;

  [JavaSignature('com/stripe/exception/CardException')]
  JCardException = interface(JStripeException)
    ['{D52B1897-D64B-4211-ADEB-83443D6646CA}']
    function getCode: JString; cdecl;//Deprecated
    function getParam: JString; cdecl;//Deprecated
  end;
  TJCardException = class(TJavaGenericImport<JCardExceptionClass, JCardException>) end;

  JInvalidRequestExceptionClass = interface(JStripeExceptionClass)
    ['{0E967071-13D1-4645-B0F5-230FE6722C82}']
    {class} function init(P1: JString; P2: JString; P3: JThrowable): JInvalidRequestException; cdecl;//Deprecated
  end;

  [JavaSignature('com/stripe/exception/InvalidRequestException')]
  JInvalidRequestException = interface(JStripeException)
    ['{70F8E20D-3706-4F13-AB1F-DBE23C099355}']
    function getParam: JString; cdecl;//Deprecated
  end;
  TJInvalidRequestException = class(TJavaGenericImport<JInvalidRequestExceptionClass, JInvalidRequestException>) end;

  JStripeObjectClass = interface(JObjectClass)
    ['{35ABF5E2-556E-4E82-929D-174ECA693FD1}']
    {class} //function _GetPRETTY_PRINT_GSON: JGson; cdecl;
    {class} function init: JStripeObject; cdecl;
    {class} //property PRETTY_PRINT_GSON: JGson read _GetPRETTY_PRINT_GSON;
  end;

  [JavaSignature('com/stripe/model/StripeObject')]
  JStripeObject = interface(JObject)
    ['{5A8B768A-CD8D-4EC4-8162-64FD25FA8EF7}']
    function toString: JString; cdecl;
  end;
  TJStripeObject = class(TJavaGenericImport<JStripeObjectClass, JStripeObject>) end;

  JAPIResourceClass = interface(JStripeObjectClass)
    ['{7BD68AB7-A320-4B9C-A449-0F1B686D9018}']
    {class} function _GetCHARSET: JString; cdecl;
    {class} //function _GetGSON: JGson; cdecl;
    {class} function init: JAPIResource; cdecl;
    {class} property CHARSET: JString read _GetCHARSET;
    {class} //property GSON: JGson read _GetGSON;
  end;

  [JavaSignature('com/stripe/net/APIResource')]
  JAPIResource = interface(JStripeObject)
    ['{C7EB7467-B16B-4917-853A-67C1F7CFA061}']
  end;
  TJAPIResource = class(TJavaGenericImport<JAPIResourceClass, JAPIResource>) end;

  Jmodel_AccountClass = interface(JAPIResourceClass)
    ['{0E2DDB8E-E175-42E8-B95C-D0A036A2F183}']
    {class} function init: Jmodel_Account; cdecl;
    {class} function retrieve: Jmodel_Account; cdecl; overload;
    {class} function retrieve(P1: JString): Jmodel_Account; cdecl; overload;
  end;

  [JavaSignature('com/stripe/model/Account')]
  Jmodel_Account = interface(JAPIResource)
    ['{73B7345E-008E-4CF2-ADA2-BF3E849A79D3}']
    function getChargeEnabled: JBoolean; cdecl;
    function getCountry: JString; cdecl;
    function getCurrenciesSupported: JList; cdecl;
    function getDefaultCurrency: JString; cdecl;
    function getDetailsSubmitted: JBoolean; cdecl;
    function getDisplayName: JString; cdecl;
    function getEmail: JString; cdecl;
    function getId: JString; cdecl;
    function getStatementDescriptor: JString; cdecl;
    function getTimezone: JString; cdecl;
    function getTransferEnabled: JBoolean; cdecl;
  end;
  TJmodel_Account = class(TJavaGenericImport<Jmodel_AccountClass, Jmodel_Account>) end;

  JApplicationFeeClass = interface(JAPIResourceClass)
    ['{065EEDA7-71A9-4240-83D8-752062EAE031}']
    {class} function all(P1: JMap): JApplicationFeeCollection; cdecl; overload;
    {class} function all(P1: JMap; P2: JString): JApplicationFeeCollection; cdecl; overload;
    {class} function init: JApplicationFee; cdecl;
    {class} function retrieve(P1: JString): JApplicationFee; cdecl; overload;
    {class} function retrieve(P1: JString; P2: JString): JApplicationFee; cdecl; overload;
  end;

  [JavaSignature('com/stripe/model/ApplicationFee')]
  JApplicationFee = interface(JAPIResource)
    ['{7C1EDE3B-2F33-418E-8A45-509507D6CFCA}']
    function getAmount: JInteger; cdecl;
    function getAmountRefunded: JInteger; cdecl;
    function getApplication: JString; cdecl;
    function getBalanceTransaction: JString; cdecl;
    function getCharge: JString; cdecl;
    function getCreated: JLong; cdecl;
    function getCurrency: JString; cdecl;
    function getId: JString; cdecl;
    function getLivemode: JBoolean; cdecl;
    function getRefunded: JBoolean; cdecl;
    function getRefunds: JList; cdecl;
    function getUser: JString; cdecl;
    function refund: JApplicationFee; cdecl; overload;
    function refund(P1: JString): JApplicationFee; cdecl; overload;
    function refund(P1: JMap): JApplicationFee; cdecl; overload;
    function refund(P1: JMap; P2: JString): JApplicationFee; cdecl; overload;
    procedure setAmount(P1: JInteger); cdecl;
    procedure setAmountRefunded(P1: JInteger); cdecl;
    procedure setApplication(P1: JString); cdecl;
    procedure setBalanceTransaction(P1: JString); cdecl;
    procedure setCharge(P1: JString); cdecl;
    procedure setCreated(P1: JLong); cdecl;
    procedure setCurrency(P1: JString); cdecl;
    procedure setId(P1: JString); cdecl;
    procedure setLivemode(P1: JBoolean); cdecl;
    procedure setRefunded(P1: JBoolean); cdecl;
    procedure setRefunds(P1: JList); cdecl;
    procedure setUser(P1: JString); cdecl;
  end;
  TJApplicationFee = class(TJavaGenericImport<JApplicationFeeClass, JApplicationFee>) end;

  JStripeCollectionClass = interface(JStripeObjectClass)
    ['{8988B0BF-84A0-4342-84A9-759CD773F990}']
    {class} function init: JStripeCollection; cdecl;
  end;

  [JavaSignature('com/stripe/model/StripeCollection')]
  JStripeCollection = interface(JStripeObject)
    ['{AF0FDE8F-9C13-4047-A4D3-D5009D6C0444}']
    function getCount: JInteger; cdecl;
    function getData: JList; cdecl;
    function getHasMore: JBoolean; cdecl;
    function getTotalCount: JInteger; cdecl;
    function getUrl: JString; cdecl;
    procedure setCount(P1: JInteger); cdecl;
    procedure setData(P1: JList); cdecl;
    procedure setHasMore(P1: JBoolean); cdecl;
    procedure setTotalCount(P1: JInteger); cdecl;
    procedure setUrl(P1: JString); cdecl;
  end;
  TJStripeCollection = class(TJavaGenericImport<JStripeCollectionClass, JStripeCollection>) end;

  JApplicationFeeCollectionClass = interface(JStripeCollectionClass)
    ['{BF7B3400-CA37-4444-9928-0F69794962A5}']
    {class} function init: JApplicationFeeCollection; cdecl;//Deprecated
  end;

  [JavaSignature('com/stripe/model/ApplicationFeeCollection')]
  JApplicationFeeCollection = interface(JStripeCollection)
    ['{5CF8488D-B346-49E7-A975-78A2A90DCD19}']
  end;
  TJApplicationFeeCollection = class(TJavaGenericImport<JApplicationFeeCollectionClass, JApplicationFeeCollection>) end;

  JBalanceClass = interface(JAPIResourceClass)
    ['{8FDEFC98-0AC8-4F12-B3FB-6B27A9551E7D}']
    {class} function init: JBalance; cdecl;
    {class} function retrieve: JBalance; cdecl; overload;
    {class} function retrieve(P1: JString): JBalance; cdecl; overload;
  end;

  [JavaSignature('com/stripe/model/Balance')]
  JBalance = interface(JAPIResource)
    ['{F2F9A056-F482-4EE9-9223-AF38D2C7C35F}']
    function getAvailable: JList; cdecl;
    function getLivemode: JBoolean; cdecl;
    function getPending: JList; cdecl;
  end;
  TJBalance = class(TJavaGenericImport<JBalanceClass, JBalance>) end;

  JBalanceTransactionClass = interface(JAPIResourceClass)
    ['{7EE0C25B-D3BF-4A37-9B94-FBFE41EE467E}']
    {class} function all(P1: JMap): JBalanceTransactionCollection; cdecl; overload;
    {class} function all(P1: JMap; P2: JString): JBalanceTransactionCollection; cdecl; overload;
    {class} function init: JBalanceTransaction; cdecl;
    {class} function retrieve(P1: JString): JBalanceTransaction; cdecl; overload;
    {class} function retrieve(P1: JString; P2: JString): JBalanceTransaction; cdecl; overload;
  end;

  [JavaSignature('com/stripe/model/BalanceTransaction')]
  JBalanceTransaction = interface(JAPIResource)
    ['{C7A3B795-6671-4759-8E97-C106DC8860E5}']
    function getAmount: JInteger; cdecl;
    function getAvailableOn: JLong; cdecl;
    function getCreated: JLong; cdecl;
    function getCurrency: JString; cdecl;
    function getDescription: JString; cdecl;
    function getFee: JInteger; cdecl;
    function getFeeDetails: JList; cdecl;
    function getId: JString; cdecl;
    function getNet: JInteger; cdecl;
    function getSource: JString; cdecl;
    function getStatus: JString; cdecl;
    function getType: JString; cdecl;
    procedure setAmount(P1: JInteger); cdecl;
    procedure setAvailableOn(P1: JLong); cdecl;
    procedure setCreated(P1: JLong); cdecl;
    procedure setCurrency(P1: JString); cdecl;
    procedure setDescription(P1: JString); cdecl;
    procedure setFee(P1: JInteger); cdecl;
    procedure setFeeDetails(P1: JList); cdecl;
    procedure setId(P1: JString); cdecl;
    procedure setNet(P1: JInteger); cdecl;
    procedure setSource(P1: JString); cdecl;
    procedure setStatus(P1: JString); cdecl;
    procedure setType(P1: JString); cdecl;
  end;
  TJBalanceTransaction = class(TJavaGenericImport<JBalanceTransactionClass, JBalanceTransaction>) end;

  JBalanceTransactionCollectionClass = interface(JStripeCollectionClass)
    ['{3A513D20-5D8C-4AB5-A0B3-8E0B447C315C}']
    {class} function init: JBalanceTransactionCollection; cdecl;//Deprecated
  end;

  [JavaSignature('com/stripe/model/BalanceTransactionCollection')]
  JBalanceTransactionCollection = interface(JStripeCollection)
    ['{E3F6A988-0E7F-4415-A615-CF387C0727F4}']
  end;
  TJBalanceTransactionCollection = class(TJavaGenericImport<JBalanceTransactionCollectionClass, JBalanceTransactionCollection>) end;

  JBankAccountClass = interface(JStripeObjectClass)
    ['{C0EA27C5-8D1A-4F44-BC77-CA33D5F08FD3}']
    {class} function init: JBankAccount; cdecl;
  end;

  [JavaSignature('com/stripe/model/BankAccount')]
  JBankAccount = interface(JStripeObject)
    ['{3D8ACD59-D473-4AE3-B5EC-EE5EA7131FFC}']
    function getBankName: JString; cdecl;
    function getCountry: JString; cdecl;
    function getLast4: JString; cdecl;
    function getValidated: JBoolean; cdecl;
    procedure setBankName(P1: JString); cdecl;
    procedure setCountry(P1: JString); cdecl;
    procedure setLast4(P1: JString); cdecl;
    procedure setValidated(P1: JBoolean); cdecl;
  end;
  TJBankAccount = class(TJavaGenericImport<JBankAccountClass, JBankAccount>) end;

  JCardClass = interface(JAPIResourceClass)
    ['{70D53012-F8E3-4C15-927C-A240654B462B}']
    {class} function init: JCard; cdecl;
  end;

  [JavaSignature('com/stripe/model/Card')]
  JCard = interface(JAPIResource)
    ['{9801BF86-05B3-4D95-8019-66F564B09341}']
    function delete: JDeletedCard; cdecl; overload;
    function delete(P1: JString): JDeletedCard; cdecl; overload;
    function getAddressCity: JString; cdecl;
    function getAddressCountry: JString; cdecl;
    function getAddressLine1: JString; cdecl;
    function getAddressLine1Check: JString; cdecl;
    function getAddressLine2: JString; cdecl;
    function getAddressState: JString; cdecl;
    function getAddressZip: JString; cdecl;
    function getAddressZipCheck: JString; cdecl;
    function getBrand: JString; cdecl;
    function getCountry: JString; cdecl;
    function getCustomer: JString; cdecl;
    function getCvcCheck: JString; cdecl;
    function getExpMonth: JInteger; cdecl;
    function getExpYear: JInteger; cdecl;
    function getFingerprint: JString; cdecl;
    function getFunding: JString; cdecl;
    function getId: JString; cdecl;
    function getInstanceURL: JString; cdecl;
    function getLast4: JString; cdecl;
    function getName: JString; cdecl;
    function getRecipient: JString; cdecl;
    function getType: JString; cdecl;
    procedure setAddressCity(P1: JString); cdecl;
    procedure setAddressCountry(P1: JString); cdecl;
    procedure setAddressLine1(P1: JString); cdecl;
    procedure setAddressLine1Check(P1: JString); cdecl;
    procedure setAddressLine2(P1: JString); cdecl;
    procedure setAddressState(P1: JString); cdecl;
    procedure setAddressZip(P1: JString); cdecl;
    procedure setAddressZipCheck(P1: JString); cdecl;
    procedure setBrand(P1: JString); cdecl;
    procedure setCountry(P1: JString); cdecl;
    procedure setCustomer(P1: JString); cdecl;
    procedure setCvcCheck(P1: JString); cdecl;
    procedure setExpMonth(P1: JInteger); cdecl;
    procedure setExpYear(P1: JInteger); cdecl;
    procedure setFingerprint(P1: JString); cdecl;
    procedure setFunding(P1: JString); cdecl;
    procedure setId(P1: JString); cdecl;
    procedure setLast4(P1: JString); cdecl;
    procedure setName(P1: JString); cdecl;
    procedure setRecipient(P1: JString); cdecl;
    procedure setType(P1: JString); cdecl;
    function update(P1: JMap): JCard; cdecl; overload;
    function update(P1: JMap; P2: JString): JCard; cdecl; overload;
  end;
  TJCard = class(TJavaGenericImport<JCardClass, JCard>) end;

  JChargeClass = interface(JAPIResourceClass)
    ['{17E741B3-B256-4071-8795-8F7730527D07}']
    {class} function all(P1: JMap): JChargeCollection; cdecl; overload;
    {class} function all(P1: JMap; P2: JString): JChargeCollection; cdecl; overload;
    {class} function create(P1: JMap): JCharge; cdecl; overload;
    {class} function create(P1: JMap; P2: JString): JCharge; cdecl; overload;
    {class} function init: JCharge; cdecl;
    {class} function retrieve(P1: JString): JCharge; cdecl; overload;
    {class} function retrieve(P1: JString; P2: JString): JCharge; cdecl; overload;
  end;

  [JavaSignature('com/stripe/model/Charge')]
  JCharge = interface(JAPIResource)
    ['{342C373A-54C5-4911-9DE4-EC0455AE50E7}']
    function capture: JCharge; cdecl; overload;
    function capture(P1: JMap): JCharge; cdecl; overload;
    function capture(P1: JString): JCharge; cdecl; overload;
    function capture(P1: JMap; P2: JString): JCharge; cdecl; overload;
    function closeDispute: JDispute; cdecl; overload;
    function closeDispute(P1: JString): JDispute; cdecl; overload;
    function getAmount: JInteger; cdecl;
    function getAmountRefunded: JInteger; cdecl;
    function getBalanceTransaction: JString; cdecl;
    function getCaptured: JBoolean; cdecl;
    function getCard: JCard; cdecl;
    function getCreated: JLong; cdecl;
    function getCurrency: JString; cdecl;
    function getCustomer: JString; cdecl;
    function getDescription: JString; cdecl;
    function getDispute: JDispute; cdecl;
    function getDisputed: JBoolean; cdecl;
    function getFailureCode: JString; cdecl;
    function getFailureMessage: JString; cdecl;
    function getId: JString; cdecl;
    function getInvoice: JString; cdecl;
    function getLivemode: JBoolean; cdecl;
    function getMetadata: JMap; cdecl;
    function getPaid: JBoolean; cdecl;
    function getRefunded: JBoolean; cdecl;
    function getRefunds: JChargeRefundCollection; cdecl;
    function getStatementDescription: JString; cdecl;
    function refund: JCharge; cdecl; overload;
    function refund(P1: JString): JCharge; cdecl; overload;
    function refund(P1: JMap): JCharge; cdecl; overload;
    function refund(P1: JMap; P2: JString): JCharge; cdecl; overload;
    procedure setAmount(P1: JInteger); cdecl;
    procedure setAmountRefunded(P1: JInteger); cdecl;
    procedure setBalanceTransaction(P1: JString); cdecl;
    procedure setCaptured(P1: JBoolean); cdecl;
    procedure setCard(P1: JCard); cdecl;
    procedure setCreated(P1: JLong); cdecl;
    procedure setCurrency(P1: JString); cdecl;
    procedure setCustomer(P1: JString); cdecl;
    procedure setDescription(P1: JString); cdecl;
    procedure setDispute(P1: JDispute); cdecl;
    procedure setDisputed(P1: JBoolean); cdecl;
    procedure setFailureCode(P1: JString); cdecl;
    procedure setFailureMessage(P1: JString); cdecl;
    procedure setId(P1: JString); cdecl;
    procedure setInvoice(P1: JString); cdecl;
    procedure setLivemode(P1: JBoolean); cdecl;
    procedure setMetadata(P1: JMap); cdecl;
    procedure setPaid(P1: JBoolean); cdecl;
    procedure setRefunded(P1: JBoolean); cdecl;
    procedure setStatementDescription(P1: JString); cdecl;
    function update(P1: JMap): JCharge; cdecl; overload;
    function update(P1: JMap; P2: JString): JCharge; cdecl; overload;
    function updateDispute(P1: JMap): JDispute; cdecl; overload;
    function updateDispute(P1: JMap; P2: JString): JDispute; cdecl; overload;
  end;
  TJCharge = class(TJavaGenericImport<JChargeClass, JCharge>) end;

  JChargeCollectionClass = interface(JStripeCollectionClass)
    ['{90FCB136-0E9C-47FB-92A6-49E7E4CABFC4}']
    {class} function init: JChargeCollection; cdecl;//Deprecated
  end;

  [JavaSignature('com/stripe/model/ChargeCollection')]
  JChargeCollection = interface(JStripeCollection)
    ['{8082EE75-4B3C-43B1-BEDF-15601EB259F5}']
  end;
  TJChargeCollection = class(TJavaGenericImport<JChargeCollectionClass, JChargeCollection>) end;

  JStripeColllectionAPIResourceClass = interface(JAPIResourceClass)
    ['{4A3A03D3-71DC-4479-92C2-F27043DDF34E}']
    {class} function init: JStripeColllectionAPIResource; cdecl;
  end;

  [JavaSignature('com/stripe/model/StripeColllectionAPIResource')]
  JStripeColllectionAPIResource = interface(JAPIResource)
    ['{F9A79896-9CAD-4A64-8BCF-44734E522B17}']
    function getCount: JInteger; cdecl;
    function getData: JList; cdecl;
    function getHasMore: JBoolean; cdecl;
    function getTotalCount: JInteger; cdecl;
    function getURL: JString; cdecl;
    procedure setCount(P1: JInteger); cdecl;
    procedure setData(P1: JList); cdecl;
    procedure setHasMore(P1: JBoolean); cdecl;
    procedure setTotalCount(P1: JInteger); cdecl;
    procedure setURL(P1: JString); cdecl;
  end;
  TJStripeColllectionAPIResource = class(TJavaGenericImport<JStripeColllectionAPIResourceClass, JStripeColllectionAPIResource>) end;

  JChargeRefundCollectionClass = interface(JStripeColllectionAPIResourceClass)
    ['{986B006C-3C4E-4F69-AE93-5A9EA6E27D42}']
    {class} function init: JChargeRefundCollection; cdecl;//Deprecated
  end;

  [JavaSignature('com/stripe/model/ChargeRefundCollection')]
  JChargeRefundCollection = interface(JStripeColllectionAPIResource)
    ['{A91752AB-F5B7-436B-B569-D04DB97F3259}']
    function all(P1: JMap): JChargeRefundCollection; cdecl; overload;//Deprecated
    function all(P1: JMap; P2: JString): JChargeRefundCollection; cdecl; overload;//Deprecated
    function create(P1: JMap): JRefund; cdecl; overload;//Deprecated
    function create(P1: JMap; P2: JString): JRefund; cdecl; overload;//Deprecated
    function retrieve(P1: JString): JRefund; cdecl; overload;//Deprecated
    function retrieve(P1: JString; P2: JString): JRefund; cdecl; overload;//Deprecated
  end;
  TJChargeRefundCollection = class(TJavaGenericImport<JChargeRefundCollectionClass, JChargeRefundCollection>) end;

  // com.stripe.model.ChargeRefundCollectionDeserializer
  // com.stripe.model.ChargeRefundCollectionDeserializer$1
  JCouponClass = interface(JAPIResourceClass)
    ['{22758254-4180-49FA-BE34-77B2C1587860}']
    {class} function all(P1: JMap): JCouponCollection; cdecl; overload;
    {class} function all(P1: JMap; P2: JString): JCouponCollection; cdecl; overload;
    {class} function create(P1: JMap): JCoupon; cdecl; overload;
    {class} function create(P1: JMap; P2: JString): JCoupon; cdecl; overload;
    {class} function init: JCoupon; cdecl;
    {class} function retrieve(P1: JString): JCoupon; cdecl; overload;
    {class} function retrieve(P1: JString; P2: JString): JCoupon; cdecl; overload;
  end;

  [JavaSignature('com/stripe/model/Coupon')]
  JCoupon = interface(JAPIResource)
    ['{C1B2CC76-90E4-4747-ACEC-4D7C5138D63A}']
    function delete: JDeletedCoupon; cdecl; overload;
    function delete(P1: JString): JDeletedCoupon; cdecl; overload;
    function getAmountOff: JInteger; cdecl;
    function getCurrency: JString; cdecl;
    function getDuration: JString; cdecl;
    function getDurationInMonths: JInteger; cdecl;
    function getId: JString; cdecl;
    function getLivemode: JBoolean; cdecl;
    function getMaxRedemptions: JInteger; cdecl;
    function getPercentOff: JInteger; cdecl;
    function getRedeemBy: JLong; cdecl;
    function getTimesRedeemed: JInteger; cdecl;
    function getValid: JBoolean; cdecl;
    procedure setAmountOff(P1: JInteger); cdecl;
    procedure setCurrency(P1: JString); cdecl;
    procedure setDuration(P1: JString); cdecl;
    procedure setDurationInMonths(P1: JInteger); cdecl;
    procedure setId(P1: JString); cdecl;
    procedure setLivemode(P1: JBoolean); cdecl;
    procedure setMaxRedemptions(P1: JInteger); cdecl;
    procedure setPercentOff(P1: JInteger); cdecl;
    procedure setRedeemBy(P1: JLong); cdecl;
    procedure setTimesRedeemed(P1: JInteger); cdecl;
    procedure setValid(P1: JBoolean); cdecl;
  end;
  TJCoupon = class(TJavaGenericImport<JCouponClass, JCoupon>) end;

  JCouponCollectionClass = interface(JStripeCollectionClass)
    ['{13FCBA9F-2E99-4824-B3D6-1847108EB361}']
    {class} function init: JCouponCollection; cdecl;//Deprecated
  end;

  [JavaSignature('com/stripe/model/CouponCollection')]
  JCouponCollection = interface(JStripeCollection)
    ['{3FCC5A20-19A9-403D-8D72-4FA4D0207F3E}']
  end;
  TJCouponCollection = class(TJavaGenericImport<JCouponCollectionClass, JCouponCollection>) end;

  JCustomerClass = interface(JAPIResourceClass)
    ['{3E7080E8-5ACC-43AC-A9E9-4A9D3E927F08}']
    {class} function all(P1: JMap): JCustomerCollection; cdecl; overload;
    {class} function all(P1: JMap; P2: JString): JCustomerCollection; cdecl; overload;
    {class} function create(P1: JMap): JCustomer; cdecl; overload;
    {class} function create(P1: JMap; P2: JString): JCustomer; cdecl; overload;
    {class} function init: JCustomer; cdecl;
    {class} function retrieve(P1: JString): JCustomer; cdecl; overload;
    {class} function retrieve(P1: JString; P2: JString): JCustomer; cdecl; overload;
  end;

  [JavaSignature('com/stripe/model/Customer')]
  JCustomer = interface(JAPIResource)
    ['{804A4B0F-0B08-47C2-8551-36DB04A6332C}']
    function cancelSubscription: JSubscription; cdecl; overload;
    function cancelSubscription(P1: JMap): JSubscription; cdecl; overload;
    function cancelSubscription(P1: JString): JSubscription; cdecl; overload;
    function cancelSubscription(P1: JMap; P2: JString): JSubscription; cdecl; overload;
    function createCard(P1: JMap): JCard; cdecl; overload;
    function createCard(P1: JString): JCard; cdecl; overload;
    function createCard(P1: JMap; P2: JString): JCard; cdecl; overload;
    function createCard(P1: JString; P2: JString): JCard; cdecl; overload;
    function createSubscription(P1: JMap): JSubscription; cdecl; overload;
    function createSubscription(P1: JMap; P2: JString): JSubscription; cdecl; overload;
    function delete: JDeletedCustomer; cdecl; overload;
    function delete(P1: JString): JDeletedCustomer; cdecl; overload;
    procedure deleteDiscount; cdecl; overload;
    procedure deleteDiscount(P1: JString); cdecl; overload;
    function getAccountBalance: JInteger; cdecl;
    function getCards: JCustomerCardCollection; cdecl;
    function getCreated: JLong; cdecl;
    function getDefaultCard: JString; cdecl;
    function getDeleted: JBoolean; cdecl;
    function getDelinquent: JBoolean; cdecl;
    function getDescription: JString; cdecl;
    function getDiscount: JDiscount; cdecl;
    function getEmail: JString; cdecl;
    function getId: JString; cdecl;
    function getLivemode: JBoolean; cdecl;
    function getMetadata: JMap; cdecl;
    function getNextRecurringCharge: JNextRecurringCharge; cdecl;
    function getSubscription: JSubscription; cdecl;
    function getSubscriptions: JCustomerSubscriptionCollection; cdecl;
    function getTrialEnd: JLong; cdecl;
    procedure setAccountBalance(P1: JInteger); cdecl;
    procedure setCreated(P1: JLong); cdecl;
    procedure setDefaultCard(P1: JString); cdecl;
    procedure setDelinquent(P1: JBoolean); cdecl;
    procedure setDescription(P1: JString); cdecl;
    procedure setDiscount(P1: JDiscount); cdecl;
    procedure setEmail(P1: JString); cdecl;
    procedure setId(P1: JString); cdecl;
    procedure setLivemode(P1: JBoolean); cdecl;
    procedure setMetadata(P1: JMap); cdecl;
    procedure setNextRecurringCharge(P1: JNextRecurringCharge); cdecl;
    procedure setSubscription(P1: JSubscription); cdecl;
    procedure setTrialEnd(P1: JLong); cdecl;
    function update(P1: JMap): JCustomer; cdecl; overload;
    function update(P1: JMap; P2: JString): JCustomer; cdecl; overload;
    function updateSubscription(P1: JMap): JSubscription; cdecl; overload;
    function updateSubscription(P1: JMap; P2: JString): JSubscription; cdecl; overload;
  end;
  TJCustomer = class(TJavaGenericImport<JCustomerClass, JCustomer>) end;

  JCustomerCardCollectionClass = interface(JStripeColllectionAPIResourceClass)
    ['{A506CD07-0196-4637-81D9-1213B02F4314}']
    {class} function init: JCustomerCardCollection; cdecl;//Deprecated
  end;

  [JavaSignature('com/stripe/model/CustomerCardCollection')]
  JCustomerCardCollection = interface(JStripeColllectionAPIResource)
    ['{A095EEB1-9F82-4B35-BA6D-FF1D154FF02A}']
    function all(P1: JMap): JCustomerCardCollection; cdecl; overload;//Deprecated
    function all(P1: JMap; P2: JString): JCustomerCardCollection; cdecl; overload;//Deprecated
    function create(P1: JMap): JCard; cdecl; overload;//Deprecated
    function create(P1: JMap; P2: JString): JCard; cdecl; overload;//Deprecated
    function retrieve(P1: JString): JCard; cdecl; overload;//Deprecated
    function retrieve(P1: JString; P2: JString): JCard; cdecl; overload;//Deprecated
  end;
  TJCustomerCardCollection = class(TJavaGenericImport<JCustomerCardCollectionClass, JCustomerCardCollection>) end;

  JCustomerCollectionClass = interface(JStripeCollectionClass)
    ['{47264156-4381-490F-8307-AA42A06EE53C}']
    {class} function init: JCustomerCollection; cdecl;//Deprecated
  end;

  [JavaSignature('com/stripe/model/CustomerCollection')]
  JCustomerCollection = interface(JStripeCollection)
    ['{B7278366-3B2C-4A0A-95C8-42A3DC2753ED}']
  end;
  TJCustomerCollection = class(TJavaGenericImport<JCustomerCollectionClass, JCustomerCollection>) end;

  JCustomerSubscriptionCollectionClass = interface(JStripeColllectionAPIResourceClass)
    ['{6AE8E601-A669-4B9C-9BEE-6ED95EE76A83}']
    {class} function init: JCustomerSubscriptionCollection; cdecl;//Deprecated
  end;

  [JavaSignature('com/stripe/model/CustomerSubscriptionCollection')]
  JCustomerSubscriptionCollection = interface(JStripeColllectionAPIResource)
    ['{A7B4CC42-012F-4756-B7BF-AA8475A35359}']
    function all(P1: JMap): JCustomerSubscriptionCollection; cdecl; overload;//Deprecated
    function all(P1: JMap; P2: JString): JCustomerSubscriptionCollection; cdecl; overload;//Deprecated
    function create(P1: JMap): JSubscription; cdecl; overload;//Deprecated
    function create(P1: JMap; P2: JString): JSubscription; cdecl; overload;//Deprecated
    function retrieve(P1: JString): JSubscription; cdecl; overload;//Deprecated
    function retrieve(P1: JString; P2: JString): JSubscription; cdecl; overload;//Deprecated
  end;
  TJCustomerSubscriptionCollection = class(TJavaGenericImport<JCustomerSubscriptionCollectionClass, JCustomerSubscriptionCollection>) end;

  JDeletedCardClass = interface(JStripeObjectClass)
    ['{A75FAFFD-EE56-42E3-8363-85C059A591EC}']
    {class} function init: JDeletedCard; cdecl;
  end;

  [JavaSignature('com/stripe/model/DeletedCard')]
  JDeletedCard = interface(JStripeObject)
    ['{7FB7FBC7-052C-4863-BECD-9616C1FEB65B}']
    function getDeleted: JBoolean; cdecl;
    function getId: JString; cdecl;
    procedure setDeleted(P1: JBoolean); cdecl;
    procedure setId(P1: JString); cdecl;
  end;
  TJDeletedCard = class(TJavaGenericImport<JDeletedCardClass, JDeletedCard>) end;

  JDeletedCouponClass = interface(JStripeObjectClass)
    ['{B24CA795-F94F-47ED-855B-E64EFBD82138}']
    {class} function init: JDeletedCoupon; cdecl;
  end;

  [JavaSignature('com/stripe/model/DeletedCoupon')]
  JDeletedCoupon = interface(JStripeObject)
    ['{C7F09918-F269-403B-A52B-1DF8E16746E5}']
    function getDeleted: JBoolean; cdecl;
    function getId: JString; cdecl;
    procedure setDeleted(P1: JBoolean); cdecl;
    procedure setId(P1: JString); cdecl;
  end;
  TJDeletedCoupon = class(TJavaGenericImport<JDeletedCouponClass, JDeletedCoupon>) end;

  JDeletedCustomerClass = interface(JStripeObjectClass)
    ['{1E9F0E43-2AEB-4D2B-ADB5-DBC2B5B20464}']
    {class} function init: JDeletedCustomer; cdecl;
  end;

  [JavaSignature('com/stripe/model/DeletedCustomer')]
  JDeletedCustomer = interface(JStripeObject)
    ['{7F4F2E22-F475-4280-B375-3B0D8636D370}']
    function getDeleted: JBoolean; cdecl;
    function getId: JString; cdecl;
    procedure setDeleted(P1: JBoolean); cdecl;
    procedure setId(P1: JString); cdecl;
  end;
  TJDeletedCustomer = class(TJavaGenericImport<JDeletedCustomerClass, JDeletedCustomer>) end;

  JDeletedInvoiceItemClass = interface(JStripeObjectClass)
    ['{DA7D05A2-34A4-4FA3-B943-95000361F06A}']
    {class} function init: JDeletedInvoiceItem; cdecl;
  end;

  [JavaSignature('com/stripe/model/DeletedInvoiceItem')]
  JDeletedInvoiceItem = interface(JStripeObject)
    ['{BA5798C1-305C-4B99-8632-F019C551D9BD}']
    function getDeleted: JBoolean; cdecl;
    function getId: JString; cdecl;
    procedure setDeleted(P1: JBoolean); cdecl;
    procedure setId(P1: JString); cdecl;
  end;
  TJDeletedInvoiceItem = class(TJavaGenericImport<JDeletedInvoiceItemClass, JDeletedInvoiceItem>) end;

  JDeletedPlanClass = interface(JStripeObjectClass)
    ['{6391BC17-890F-4306-8955-86AE04FB6E5A}']
    {class} function init: JDeletedPlan; cdecl;
  end;

  [JavaSignature('com/stripe/model/DeletedPlan')]
  JDeletedPlan = interface(JStripeObject)
    ['{22AC6534-491D-4B77-B699-B9CC3EBD6F51}']
    function getDeleted: JBoolean; cdecl;
    function getId: JString; cdecl;
    procedure setDeleted(P1: JBoolean); cdecl;
    procedure setId(P1: JString); cdecl;
  end;
  TJDeletedPlan = class(TJavaGenericImport<JDeletedPlanClass, JDeletedPlan>) end;

  JDeletedRecipientClass = interface(JStripeObjectClass)
    ['{BEDCE846-44E6-4614-9865-A3AC2CEE36CC}']
    {class} function init: JDeletedRecipient; cdecl;
  end;

  [JavaSignature('com/stripe/model/DeletedRecipient')]
  JDeletedRecipient = interface(JStripeObject)
    ['{74F36DFC-2D8F-4613-8E70-D1C51F7BAA62}']
    function getDeleted: JBoolean; cdecl;
    function getId: JString; cdecl;
    procedure setDeleted(P1: JBoolean); cdecl;
    procedure setId(P1: JString); cdecl;
  end;
  TJDeletedRecipient = class(TJavaGenericImport<JDeletedRecipientClass, JDeletedRecipient>) end;

  JDiscountClass = interface(JStripeObjectClass)
    ['{F8A47BD0-A050-43A3-89B6-307A2A5EB8AD}']
    {class} function init: JDiscount; cdecl;
  end;

  [JavaSignature('com/stripe/model/Discount')]
  JDiscount = interface(JStripeObject)
    ['{1EC507FE-6FFD-45BA-8D85-C5616DC64B66}']
    function getCoupon: JCoupon; cdecl;
    function getCustomer: JString; cdecl;
    function getEnd: JLong; cdecl;
    function getId: JString; cdecl;
    function getStart: JLong; cdecl;
    function getSubscription: JString; cdecl;
    procedure setCoupon(P1: JCoupon); cdecl;
    procedure setCustomer(P1: JString); cdecl;
    procedure setEnd(P1: JLong); cdecl;
    procedure setId(P1: JString); cdecl;
    procedure setStart(P1: JLong); cdecl;
    procedure setSubscription(P1: JString); cdecl;
  end;
  TJDiscount = class(TJavaGenericImport<JDiscountClass, JDiscount>) end;

  JDisputeClass = interface(JStripeObjectClass)
    ['{60194676-D43E-4CE2-92B9-14963320B6B9}']
    {class} function init: JDispute; cdecl;
  end;

  [JavaSignature('com/stripe/model/Dispute')]
  JDispute = interface(JStripeObject)
    ['{9EDC9491-2E0B-44F1-A450-37DC27AB1E75}']
    function getAmount: JInteger; cdecl;
    function getBalanceTransaction: JString; cdecl;
    function getCharge: JString; cdecl;
    function getCreated: JLong; cdecl;
    function getCurrency: JString; cdecl;
    function getEvidence: JString; cdecl;
    function getEvidenceDueBy: JLong; cdecl;
    function getLivemode: JBoolean; cdecl;
    function getMetadata: JMap; cdecl;
    function getReason: JString; cdecl;
    function getStatus: JString; cdecl;
    procedure setAmount(P1: JInteger); cdecl;
    procedure setBalanceTransaction(P1: JString); cdecl;
    procedure setCharge(P1: JString); cdecl;
    procedure setCreated(P1: JLong); cdecl;
    procedure setCurrency(P1: JString); cdecl;
    procedure setEvidence(P1: JString); cdecl;
    procedure setEvidenceDueBy(P1: JLong); cdecl;
    procedure setLivemode(P1: JBoolean); cdecl;
    procedure setMetadata(P1: JMap); cdecl;
    procedure setReason(P1: JString); cdecl;
    procedure setStatus(P1: JString); cdecl;
  end;
  TJDispute = class(TJavaGenericImport<JDisputeClass, JDispute>) end;

  JEventClass = interface(JAPIResourceClass)
    ['{B1B743E4-2769-4D40-B6A7-B3F16D87F4B7}']
    {class} function all(P1: JMap): JEventCollection; cdecl; overload;
    {class} function all(P1: JMap; P2: JString): JEventCollection; cdecl; overload;
    {class} function init: JEvent; cdecl;
    {class} function retrieve(P1: JString): JEvent; cdecl; overload;
    {class} function retrieve(P1: JString; P2: JString): JEvent; cdecl; overload;
  end;

  [JavaSignature('com/stripe/model/Event')]
  JEvent = interface(JAPIResource)
    ['{37299F2A-0F5B-4372-9110-36278152A2BB}']
    function getCreated: JLong; cdecl;
    function getData: JEventData; cdecl;
    function getId: JString; cdecl;
    function getLivemode: JBoolean; cdecl;
    function getPendingWebhooks: JInteger; cdecl;
    function getRequest: JString; cdecl;
    function getType: JString; cdecl;
    function getUserId: JString; cdecl;
    procedure setCreated(P1: JLong); cdecl;
    procedure setData(P1: JEventData); cdecl;
    procedure setId(P1: JString); cdecl;
    procedure setLivemode(P1: JBoolean); cdecl;
    procedure setPendingWebhooks(P1: JInteger); cdecl;
    procedure setRequest(P1: JString); cdecl;
    procedure setType(P1: JString); cdecl;
    procedure setUserId(P1: JString); cdecl;
  end;
  TJEvent = class(TJavaGenericImport<JEventClass, JEvent>) end;

  JEventCollectionClass = interface(JStripeCollectionClass)
    ['{D376433A-0C0B-48D2-88A6-1FCEE5E364BF}']
    {class} function init: JEventCollection; cdecl;//Deprecated
  end;

  [JavaSignature('com/stripe/model/EventCollection')]
  JEventCollection = interface(JStripeCollection)
    ['{DF1B9EAD-CBEE-4020-998B-8E230B7CE6D4}']
  end;
  TJEventCollection = class(TJavaGenericImport<JEventCollectionClass, JEventCollection>) end;

  JEventDataClass = interface(JStripeObjectClass)
    ['{273DBF32-7382-4EB6-BBB4-07C517D6D8BB}']
    {class} function init: JEventData; cdecl;
  end;

  [JavaSignature('com/stripe/model/EventData')]
  JEventData = interface(JStripeObject)
    ['{55205B04-E713-4DA3-BD15-9633C04ECA83}']
    function getObject: JStripeObject; cdecl;
    function getPreviousAttributes: JMap; cdecl;
    procedure setObject(P1: JStripeObject); cdecl;
    procedure setPreviousAttributes(P1: JMap); cdecl;
  end;
  TJEventData = class(TJavaGenericImport<JEventDataClass, JEventData>) end;

  // com.stripe.model.EventDataDeserializer
  JFeeClass = interface(JAPIResourceClass)
    ['{AC31C188-56D9-4C78-941B-520BF9B6A697}']
    {class} function init: JFee; cdecl;
  end;

  [JavaSignature('com/stripe/model/Fee')]
  JFee = interface(JAPIResource)
    ['{F68673BE-C92A-4C6D-8FF1-B6BD0D26BDE1}']
    function getAmount: JInteger; cdecl;
    function getApplication: JString; cdecl;
    function getCurrency: JString; cdecl;
    function getDescription: JString; cdecl;
    function getType: JString; cdecl;
    procedure setAmount(P1: JInteger); cdecl;
    procedure setApplication(P1: JString); cdecl;
    procedure setCurrency(P1: JString); cdecl;
    procedure setDescription(P1: JString); cdecl;
    procedure setType(P1: JString); cdecl;
  end;
  TJFee = class(TJavaGenericImport<JFeeClass, JFee>) end;

  JFeeRefundClass = interface(JStripeObjectClass)
    ['{0E405598-EC85-42F8-8499-3CD3770782AB}']
    {class} function init: JFeeRefund; cdecl;
  end;

  [JavaSignature('com/stripe/model/FeeRefund')]
  JFeeRefund = interface(JStripeObject)
    ['{045DF1A1-D791-4782-A1AD-8E8F573C9732}']
    function getAmount: JInteger; cdecl;
    function getBalanceTransaction: JString; cdecl;
    function getCreated: JLong; cdecl;
    function getCurrency: JString; cdecl;
    procedure setAmount(P1: JInteger); cdecl;
    procedure setBalanceTransaction(P1: JString); cdecl;
    procedure setCreated(P1: JLong); cdecl;
    procedure setCurrency(P1: JString); cdecl;
  end;
  TJFeeRefund = class(TJavaGenericImport<JFeeRefundClass, JFeeRefund>) end;

  JInvoiceClass = interface(JAPIResourceClass)
    ['{BA62BB9B-4763-429A-A334-E395F73B117C}']
    {class} function all(P1: JMap): JInvoiceCollection; cdecl; overload;
    {class} function all(P1: JMap; P2: JString): JInvoiceCollection; cdecl; overload;
    {class} function create(P1: JMap): JInvoice; cdecl; overload;
    {class} function create(P1: JMap; P2: JString): JInvoice; cdecl; overload;
    {class} function init: JInvoice; cdecl;
    {class} function retrieve(P1: JString): JInvoice; cdecl; overload;
    {class} function retrieve(P1: JString; P2: JString): JInvoice; cdecl; overload;
    {class} function upcoming(P1: JMap): JInvoice; cdecl; overload;
    {class} function upcoming(P1: JMap; P2: JString): JInvoice; cdecl; overload;
  end;

  [JavaSignature('com/stripe/model/Invoice')]
  JInvoice = interface(JAPIResource)
    ['{9898821B-9FEA-4F37-A9D3-8CA3E531221D}']
    function getAmountDue: JInteger; cdecl;
    function getApplicationFee: JLong; cdecl;
    function getAttemptCount: JInteger; cdecl;
    function getAttempted: JBoolean; cdecl;
    function getCharge: JString; cdecl;
    function getClosed: JBoolean; cdecl;
    function getCreated: JLong; cdecl;
    function getCurrency: JString; cdecl;
    function getCustomer: JString; cdecl;
    function getDate: JLong; cdecl;
    function getDiscount: JDiscount; cdecl;
    function getEndingBalance: JInteger; cdecl;
    function getId: JString; cdecl;
    function getLines: JInvoiceLineItemCollection; cdecl;
    function getLivemode: JBoolean; cdecl;
    function getMetadata: JMap; cdecl;
    function getNextPaymentAttempt: JLong; cdecl;
    function getPaid: JBoolean; cdecl;
    function getPeriodEnd: JLong; cdecl;
    function getPeriodStart: JLong; cdecl;
    function getStartingBalance: JInteger; cdecl;
    function getSubscription: JString; cdecl;
    function getSubtotal: JInteger; cdecl;
    function getTotal: JInteger; cdecl;
    function pay: JInvoice; cdecl; overload;
    function pay(P1: JString): JInvoice; cdecl; overload;
    procedure setAmountDue(P1: JInteger); cdecl;
    procedure setApplicationFee(P1: JLong); cdecl;
    procedure setAttemptCount(P1: JInteger); cdecl;
    procedure setAttempted(P1: JBoolean); cdecl;
    procedure setCharge(P1: JString); cdecl;
    procedure setClosed(P1: JBoolean); cdecl;
    procedure setCreated(P1: JLong); cdecl;
    procedure setCurrency(P1: JString); cdecl;
    procedure setCustomer(P1: JString); cdecl;
    procedure setDate(P1: JLong); cdecl;
    procedure setDiscount(P1: JDiscount); cdecl;
    procedure setEndingBalance(P1: JInteger); cdecl;
    procedure setId(P1: JString); cdecl;
    procedure setLivemode(P1: JBoolean); cdecl;
    procedure setMetadata(P1: JMap); cdecl;
    procedure setNextPaymentAttempt(P1: JLong); cdecl;
    procedure setPaid(P1: JBoolean); cdecl;
    procedure setPeriodEnd(P1: JLong); cdecl;
    procedure setPeriodStart(P1: JLong); cdecl;
    procedure setStartingBalance(P1: JInteger); cdecl;
    procedure setSubscription(P1: JString); cdecl;
    procedure setSubtotal(P1: JInteger); cdecl;
    procedure setTotal(P1: JInteger); cdecl;
    function update(P1: JMap): JInvoice; cdecl; overload;
    function update(P1: JMap; P2: JString): JInvoice; cdecl; overload;
  end;
  TJInvoice = class(TJavaGenericImport<JInvoiceClass, JInvoice>) end;

  JInvoiceCollectionClass = interface(JStripeCollectionClass)
    ['{EBED5738-0A18-4963-9D87-BE0FCD549035}']
    {class} function init: JInvoiceCollection; cdecl;//Deprecated
  end;

  [JavaSignature('com/stripe/model/InvoiceCollection')]
  JInvoiceCollection = interface(JStripeCollection)
    ['{CF313F64-8CAB-415E-B056-07F71587E4AD}']
  end;
  TJInvoiceCollection = class(TJavaGenericImport<JInvoiceCollectionClass, JInvoiceCollection>) end;

  JInvoiceItemClass = interface(JAPIResourceClass)
    ['{C86AAE40-81D8-49B4-A9BC-D333D79336C9}']
    {class} function all(P1: JMap): JInvoiceItemCollection; cdecl; overload;
    {class} function all(P1: JMap; P2: JString): JInvoiceItemCollection; cdecl; overload;
    {class} function create(P1: JMap): JInvoiceItem; cdecl; overload;
    {class} function create(P1: JMap; P2: JString): JInvoiceItem; cdecl; overload;
    {class} function init: JInvoiceItem; cdecl;
    {class} function retrieve(P1: JString): JInvoiceItem; cdecl; overload;
    {class} function retrieve(P1: JString; P2: JString): JInvoiceItem; cdecl; overload;
  end;

  [JavaSignature('com/stripe/model/InvoiceItem')]
  JInvoiceItem = interface(JAPIResource)
    ['{71AB0670-5258-409B-A5BD-6EC668948C64}']
    function delete: JDeletedInvoiceItem; cdecl; overload;
    function delete(P1: JString): JDeletedInvoiceItem; cdecl; overload;
    function getAmount: JInteger; cdecl;
    function getCurrency: JString; cdecl;
    function getCustomer: JString; cdecl;
    function getDate: JLong; cdecl;
    function getDescription: JString; cdecl;
    function getId: JString; cdecl;
    function getInvoice: JString; cdecl;
    function getLivemode: JBoolean; cdecl;
    function getMetadata: JMap; cdecl;
    function getSubscription: JString; cdecl;
    procedure setAmount(P1: JInteger); cdecl;
    procedure setCurrency(P1: JString); cdecl;
    procedure setCustomer(P1: JString); cdecl;
    procedure setDate(P1: JLong); cdecl;
    procedure setDescription(P1: JString); cdecl;
    procedure setId(P1: JString); cdecl;
    procedure setInvoice(P1: JString); cdecl;
    procedure setLivemode(P1: JBoolean); cdecl;
    procedure setMetadata(P1: JMap); cdecl;
    procedure setSubscription(P1: JString); cdecl;
    function update(P1: JMap): JInvoiceItem; cdecl; overload;
    function update(P1: JMap; P2: JString): JInvoiceItem; cdecl; overload;
  end;
  TJInvoiceItem = class(TJavaGenericImport<JInvoiceItemClass, JInvoiceItem>) end;

  JInvoiceItemCollectionClass = interface(JStripeCollectionClass)
    ['{5FB4FCCE-B485-496C-9ECE-1B37C25BA361}']
    {class} function init: JInvoiceItemCollection; cdecl;//Deprecated
  end;

  [JavaSignature('com/stripe/model/InvoiceItemCollection')]
  JInvoiceItemCollection = interface(JStripeCollection)
    ['{C0182B2E-E82F-4BAB-8BF1-8B48893BFA49}']
  end;
  TJInvoiceItemCollection = class(TJavaGenericImport<JInvoiceItemCollectionClass, JInvoiceItemCollection>) end;

  JInvoiceLineItemClass = interface(JStripeObjectClass)
    ['{39486A90-41D3-414A-81CB-7AB8AD01A7BB}']
    {class} function init: JInvoiceLineItem; cdecl;
  end;

  [JavaSignature('com/stripe/model/InvoiceLineItem')]
  JInvoiceLineItem = interface(JStripeObject)
    ['{794073F9-881D-4FDE-BA1A-E36A8E986430}']
    function getAmount: JInteger; cdecl;
    function getCurrency: JString; cdecl;
    function getDescription: JString; cdecl;
    function getId: JString; cdecl;
    function getLivemode: JBoolean; cdecl;
    function getMetadata: JMap; cdecl;
    function getPeriod: JInvoiceLineItemPeriod; cdecl;
    function getPlan: JPlan; cdecl;
    function getProration: JBoolean; cdecl;
    function getQuantity: JInteger; cdecl;
    function getType: JString; cdecl;
  end;
  TJInvoiceLineItem = class(TJavaGenericImport<JInvoiceLineItemClass, JInvoiceLineItem>) end;

  JInvoiceLineItemCollectionClass = interface(JStripeColllectionAPIResourceClass)
    ['{FC798121-F1DE-47E7-84D4-61701C9DC5F6}']
    {class} function init: JInvoiceLineItemCollection; cdecl;//Deprecated
  end;

  [JavaSignature('com/stripe/model/InvoiceLineItemCollection')]
  JInvoiceLineItemCollection = interface(JStripeColllectionAPIResource)
    ['{6A23FA83-A9B6-4D8A-9141-05FD14EAD235}']
    function all(P1: JMap): JInvoiceLineItemCollection; cdecl; overload;//Deprecated
    function all(P1: JMap; P2: JString): JInvoiceLineItemCollection; cdecl; overload;//Deprecated
  end;
  TJInvoiceLineItemCollection = class(TJavaGenericImport<JInvoiceLineItemCollectionClass, JInvoiceLineItemCollection>) end;

  JInvoiceLineItemPeriodClass = interface(JStripeObjectClass)
    ['{01B7F57E-7E69-4B28-8899-D154AB5F0F91}']
    {class} function init: JInvoiceLineItemPeriod; cdecl;
  end;

  [JavaSignature('com/stripe/model/InvoiceLineItemPeriod')]
  JInvoiceLineItemPeriod = interface(JStripeObject)
    ['{D8673759-BFED-4F50-ABBF-DC57492105CD}']
    function getEnd: JLong; cdecl;
    function getStart: JLong; cdecl;
    procedure setEnd(P1: JLong); cdecl;
    procedure setStart(P1: JLong); cdecl;
  end;
  TJInvoiceLineItemPeriod = class(TJavaGenericImport<JInvoiceLineItemPeriodClass, JInvoiceLineItemPeriod>) end;

  JMetadataStoreClass = interface(IJavaClass)
    ['{1B52A4C1-73F1-4B1D-A803-2858C2378787}']
  end;

  [JavaSignature('com/stripe/model/MetadataStore')]
  JMetadataStore = interface(IJavaInstance)
    ['{42F0BAEA-AB3E-4416-85BB-28714F0B4F0A}']
    function getMetadata: JMap; cdecl;//Deprecated
    procedure setMetadata(P1: JMap); cdecl;//Deprecated
    function update(P1: JMap): JMetadataStore; cdecl; overload;//Deprecated
    function update(P1: JMap; P2: JString): JMetadataStore; cdecl; overload;//Deprecated
  end;
  TJMetadataStore = class(TJavaGenericImport<JMetadataStoreClass, JMetadataStore>) end;

  JMoneyClass = interface(JObjectClass)
    ['{E84DDFB6-2EC6-47C8-B578-EF0705AC7963}']
    {class} function init: JMoney; cdecl;
  end;

  [JavaSignature('com/stripe/model/Money')]
  JMoney = interface(JObject)
    ['{583CCE63-E0F7-43BD-BAF1-07D56002C0BA}']
    function getAmount: JInteger; cdecl;
    function getCurrency: JString; cdecl;
  end;
  TJMoney = class(TJavaGenericImport<JMoneyClass, JMoney>) end;

  JNextRecurringChargeClass = interface(JStripeObjectClass)
    ['{39B7345D-C23C-4EE0-B6FD-8D7CE26E82DA}']
    {class} function init: JNextRecurringCharge; cdecl;
  end;

  [JavaSignature('com/stripe/model/NextRecurringCharge')]
  JNextRecurringCharge = interface(JStripeObject)
    ['{00A806CC-6646-4888-A8CC-CA5D6BF5C116}']
    function getAmount: JInteger; cdecl;
    function getDate: JString; cdecl;
    procedure setAmount(P1: JInteger); cdecl;
    procedure setDate(P1: JString); cdecl;
  end;
  TJNextRecurringCharge = class(TJavaGenericImport<JNextRecurringChargeClass, JNextRecurringCharge>) end;

  JPlanClass = interface(JAPIResourceClass)
    ['{58653BDD-E2EB-4B11-B92F-9A90DB7EEE53}']
    {class} function all(P1: JMap): JPlanCollection; cdecl; overload;
    {class} function all(P1: JMap; P2: JString): JPlanCollection; cdecl; overload;
    {class} function create(P1: JMap): JPlan; cdecl; overload;
    {class} function create(P1: JMap; P2: JString): JPlan; cdecl; overload;
    {class} function init: JPlan; cdecl;
    {class} function retrieve(P1: JString): JPlan; cdecl; overload;
    {class} function retrieve(P1: JString; P2: JString): JPlan; cdecl; overload;
  end;

  [JavaSignature('com/stripe/model/Plan')]
  JPlan = interface(JAPIResource)
    ['{3C631782-59B3-4400-B048-F6D66B254BCF}']
    function delete: JDeletedPlan; cdecl; overload;
    function delete(P1: JString): JDeletedPlan; cdecl; overload;
    function getAmount: JInteger; cdecl;
    function getCurrency: JString; cdecl;
    function getId: JString; cdecl;
    function getInterval: JString; cdecl;
    function getIntervalCount: JInteger; cdecl;
    function getLivemode: JBoolean; cdecl;
    function getMetadata: JMap; cdecl;
    function getName: JString; cdecl;
    function getStatementDescription: JString; cdecl;
    function getTrialPeriodDays: JInteger; cdecl;
    procedure setAmount(P1: JInteger); cdecl;
    procedure setCurrency(P1: JString); cdecl;
    procedure setId(P1: JString); cdecl;
    procedure setInterval(P1: JString); cdecl;
    procedure setIntervalCount(P1: JInteger); cdecl;
    procedure setLivemode(P1: JBoolean); cdecl;
    procedure setMetadata(P1: JMap); cdecl;
    procedure setName(P1: JString); cdecl;
    procedure setStatementDescription(P1: JString); cdecl;
    procedure setTrialPeriodDays(P1: JInteger); cdecl;
    function update(P1: JMap): JPlan; cdecl; overload;
    function update(P1: JMap; P2: JString): JPlan; cdecl; overload;
  end;
  TJPlan = class(TJavaGenericImport<JPlanClass, JPlan>) end;

  JPlanCollectionClass = interface(JStripeCollectionClass)
    ['{0664ADF4-F774-4FF6-B524-81B385C72661}']
    {class} function init: JPlanCollection; cdecl;//Deprecated
  end;

  [JavaSignature('com/stripe/model/PlanCollection')]
  JPlanCollection = interface(JStripeCollection)
    ['{5296AAB8-5B39-4779-964D-A556406DEFAC}']
  end;
  TJPlanCollection = class(TJavaGenericImport<JPlanCollectionClass, JPlanCollection>) end;

  JRecipientClass = interface(JAPIResourceClass)
    ['{79531653-6D99-46BE-B6AE-213F8CB373A9}']
    {class} function all(P1: JMap): JRecipientCollection; cdecl; overload;
    {class} function all(P1: JMap; P2: JString): JRecipientCollection; cdecl; overload;
    {class} function create(P1: JMap): JRecipient; cdecl; overload;
    {class} function create(P1: JMap; P2: JString): JRecipient; cdecl; overload;
    {class} function init: JRecipient; cdecl;
    {class} function retrieve(P1: JString): JRecipient; cdecl; overload;
    {class} function retrieve(P1: JString; P2: JString): JRecipient; cdecl; overload;
  end;

  [JavaSignature('com/stripe/model/Recipient')]
  JRecipient = interface(JAPIResource)
    ['{97440943-06C3-499B-927B-B5A2F2AE4E0B}']
    function createCard(P1: JString): JCard; cdecl; overload;
    function createCard(P1: JMap): JCard; cdecl; overload;
    function createCard(P1: JMap; P2: JString): JCard; cdecl; overload;
    function createCard(P1: JString; P2: JString): JCard; cdecl; overload;
    function delete: JDeletedRecipient; cdecl; overload;
    function delete(P1: JString): JDeletedRecipient; cdecl; overload;
    function getActiveAccount: JBankAccount; cdecl;
    function getCards: JRecipientCardCollection; cdecl;
    function getCreated: JLong; cdecl;
    function getDefaultCard: JString; cdecl;
    function getDeleted: JBoolean; cdecl;
    function getDescription: JString; cdecl;
    function getEmail: JString; cdecl;
    function getId: JString; cdecl;
    function getLivemode: JBoolean; cdecl;
    function getMetadata: JMap; cdecl;
    function getName: JString; cdecl;
    function getType: JString; cdecl;
    function getVerified: JBoolean; cdecl;
    procedure setActiveAccount(P1: JBankAccount); cdecl;
    procedure setCreated(P1: JLong); cdecl;
    procedure setDefaultCard(P1: JString); cdecl;
    procedure setDescription(P1: JString); cdecl;
    procedure setEmail(P1: JString); cdecl;
    procedure setId(P1: JString); cdecl;
    procedure setLivemode(P1: JBoolean); cdecl;
    procedure setMetadata(P1: JMap); cdecl;
    procedure setName(P1: JString); cdecl;
    procedure setType(P1: JString); cdecl;
    procedure setVerified(P1: JBoolean); cdecl;
    function update(P1: JMap): JRecipient; cdecl; overload;
    function update(P1: JMap; P2: JString): JRecipient; cdecl; overload;
  end;
  TJRecipient = class(TJavaGenericImport<JRecipientClass, JRecipient>) end;

  JRecipientCardCollectionClass = interface(JStripeColllectionAPIResourceClass)
    ['{66F3E30E-51EA-417D-B978-1A75D2DDB8F8}']
    {class} function init: JRecipientCardCollection; cdecl;//Deprecated
  end;

  [JavaSignature('com/stripe/model/RecipientCardCollection')]
  JRecipientCardCollection = interface(JStripeColllectionAPIResource)
    ['{3A0EDC3F-BAE8-4C1D-920C-B2854A6D4525}']
    function all(P1: JMap): JRecipientCardCollection; cdecl; overload;//Deprecated
    function all(P1: JMap; P2: JString): JRecipientCardCollection; cdecl; overload;//Deprecated
    function create(P1: JMap): JRecipientCardCollection; cdecl; overload;//Deprecated
    function create(P1: JMap; P2: JString): JRecipientCardCollection; cdecl; overload;//Deprecated
    function retrieve(P1: JString): JCard; cdecl; overload;//Deprecated
    function retrieve(P1: JString; P2: JString): JCard; cdecl; overload;//Deprecated
  end;
  TJRecipientCardCollection = class(TJavaGenericImport<JRecipientCardCollectionClass, JRecipientCardCollection>) end;

  JRecipientCollectionClass = interface(JStripeCollectionClass)
    ['{45A7277C-5E32-4CCB-BA5D-B093E086322F}']
    {class} function init: JRecipientCollection; cdecl;//Deprecated
  end;

  [JavaSignature('com/stripe/model/RecipientCollection')]
  JRecipientCollection = interface(JStripeCollection)
    ['{78DE6BA5-D47A-4AEA-927A-487070510859}']
  end;
  TJRecipientCollection = class(TJavaGenericImport<JRecipientCollectionClass, JRecipientCollection>) end;

  JRefundClass = interface(JAPIResourceClass)
    ['{CC9889F5-36AD-4730-B9B7-974BF8BEDA0C}']
    {class} function init: JRefund; cdecl;
  end;

  [JavaSignature('com/stripe/model/Refund')]
  JRefund = interface(JAPIResource)
    ['{8E1612F7-F9DE-4664-9921-854B42099C38}']
    function getAmount: JInteger; cdecl;
    function getBalanceTransaction: JString; cdecl;
    function getCharge: JString; cdecl;
    function getCreated: JLong; cdecl;
    function getCurrency: JString; cdecl;
    function getId: JString; cdecl;
    function getInstanceURL: JString; cdecl;
    function getMetadata: JMap; cdecl;
    procedure setAmount(P1: JInteger); cdecl;
    procedure setBalanceTransaction(P1: JString); cdecl;
    procedure setCharge(P1: JString); cdecl;
    procedure setCreated(P1: JLong); cdecl;
    procedure setCurrency(P1: JString); cdecl;
    procedure setMetadata(P1: JMap); cdecl;
    function update(P1: JMap): JRefund; cdecl; overload;
    function update(P1: JMap; P2: JString): JRefund; cdecl; overload;
  end;
  TJRefund = class(TJavaGenericImport<JRefundClass, JRefund>) end;

  JStripeRawJsonObjectClass = interface(JStripeObjectClass)
    ['{818052D1-DAD0-46D3-8A1D-BDC2CFD5495B}']
    {class} function init: JStripeRawJsonObject; cdecl;
  end;

  [JavaSignature('com/stripe/model/StripeRawJsonObject')]
  JStripeRawJsonObject = interface(JStripeObject)
    ['{6C8F0922-02B7-430D-B78E-93F2529D50C1}']
  end;
  TJStripeRawJsonObject = class(TJavaGenericImport<JStripeRawJsonObjectClass, JStripeRawJsonObject>) end;

  // com.stripe.model.StripeRawJsonObjectDeserializer
  JSubscriptionClass = interface(JAPIResourceClass)
    ['{B1A08EE8-CB04-4CF8-A4B7-D8A686D878A8}']
    {class} function init: JSubscription; cdecl;
  end;

  [JavaSignature('com/stripe/model/Subscription')]
  JSubscription = interface(JAPIResource)
    ['{883C3A6D-38DC-479F-AE0C-BF07D3B04300}']
    function cancel(P1: JMap): JSubscription; cdecl; overload;
    function cancel(P1: JMap; P2: JString): JSubscription; cdecl; overload;
    procedure deleteDiscount; cdecl; overload;
    procedure deleteDiscount(P1: JString); cdecl; overload;
    function getApplicationFeePercent: JDouble; cdecl;
    function getCancelAtPeriodEnd: JBoolean; cdecl;
    function getCanceledAt: JLong; cdecl;
    function getCurrentPeriodEnd: JLong; cdecl;
    function getCurrentPeriodStart: JLong; cdecl;
    function getCustomer: JString; cdecl;
    function getDiscount: JDiscount; cdecl;
    function getEndedAt: JLong; cdecl;
    function getId: JString; cdecl;
    function getInstanceURL: JString; cdecl;
    function getMetadata: JMap; cdecl;
    function getPlan: JPlan; cdecl;
    function getQuantity: JInteger; cdecl;
    function getStart: JLong; cdecl;
    function getStatus: JString; cdecl;
    function getTrialEnd: JLong; cdecl;
    function getTrialStart: JLong; cdecl;
    procedure setApplicationFeePercent(P1: JDouble); cdecl;
    procedure setCancelAtPeriodEnd(P1: JBoolean); cdecl;
    procedure setCanceledAt(P1: JLong); cdecl;
    procedure setCurrentPeriodEnd(P1: JLong); cdecl;
    procedure setCurrentPeriodStart(P1: JLong); cdecl;
    procedure setCustomer(P1: JString); cdecl;
    procedure setDiscount(P1: JDiscount); cdecl;
    procedure setEndedAt(P1: JLong); cdecl;
    procedure setId(P1: JString); cdecl;
    procedure setMetadata(P1: JMap); cdecl;
    procedure setPlan(P1: JPlan); cdecl;
    procedure setQuantity(P1: JInteger); cdecl;
    procedure setStart(P1: JLong); cdecl;
    procedure setStatus(P1: JString); cdecl;
    procedure setTrialEnd(P1: JLong); cdecl;
    procedure setTrialStart(P1: JLong); cdecl;
    function update(P1: JMap): JSubscription; cdecl; overload;
    function update(P1: JMap; P2: JString): JSubscription; cdecl; overload;
  end;
  TJSubscription = class(TJavaGenericImport<JSubscriptionClass, JSubscription>) end;

  JSummaryClass = interface(JStripeObjectClass)
    ['{59C41809-F2BA-4166-9136-26D2E01398D6}']
    {class} function init: JSummary; cdecl;
  end;

  [JavaSignature('com/stripe/model/Summary')]
  JSummary = interface(JStripeObject)
    ['{6C2ACFE3-02AF-40D2-A7E2-FDA8C0167AEC}']
    function getAdjustmentCount: JInteger; cdecl;
    function getAdjustmentGross: JInteger; cdecl;
    function getChargeCount: JInteger; cdecl;
    function getChargeFees: JInteger; cdecl;
    function getChargeGross: JInteger; cdecl;
    function getNet: JInteger; cdecl;
    function getRefundCount: JInteger; cdecl;
    function getRefundFees: JInteger; cdecl;
    function getRefundGross: JInteger; cdecl;
    function getValidationCount: JInteger; cdecl;
    function getValidationFees: JInteger; cdecl;
    procedure set_(P1: JInteger); cdecl;
    procedure setAdjustmentCount(P1: JInteger); cdecl;
    procedure setAdjustmentGross(P1: JInteger); cdecl;
    procedure setChargeCount(P1: JInteger); cdecl;
    procedure setChargeFees(P1: JInteger); cdecl;
    procedure setChargeGross(P1: JInteger); cdecl;
    procedure setRefundCount(P1: JInteger); cdecl;
    procedure setRefundFees(P1: JInteger); cdecl;
    procedure setRefundGross(P1: JInteger); cdecl;
    procedure setValidationCount(P1: JInteger); cdecl;
    procedure setValidationFees(P1: JInteger); cdecl;
  end;
  TJSummary = class(TJavaGenericImport<JSummaryClass, JSummary>) end;

  JTokenClass = interface(JAPIResourceClass)
    ['{F35D676F-F7B0-434C-84B6-5835CA64B1FF}']
    {class} function create(P1: JMap): JToken; cdecl; overload;
    {class} function create(P1: JMap; P2: JString): JToken; cdecl; overload;
    {class} function init: JToken; cdecl;
    {class} function retrieve(P1: JString): JToken; cdecl; overload;
    {class} function retrieve(P1: JString; P2: JString): JToken; cdecl; overload;
  end;

  [JavaSignature('com/stripe/model/Token')]
  JToken = interface(JAPIResource)
    ['{6878B7BA-F61C-41A3-9BBE-62D614283125}']
    function getAmount: JInteger; cdecl;
    function getCard: JCard; cdecl;
    function getCreated: JLong; cdecl;
    function getCurrency: JString; cdecl;
    function getId: JString; cdecl;
    function getLivemode: JBoolean; cdecl;
    function getUsed: JBoolean; cdecl;
    procedure setAmount(P1: JInteger); cdecl;
    procedure setCard(P1: JCard); cdecl;
    procedure setCreated(P1: JLong); cdecl;
    procedure setCurrency(P1: JString); cdecl;
    procedure setId(P1: JString); cdecl;
    procedure setLivemode(P1: JBoolean); cdecl;
    procedure setUsed(P1: JBoolean); cdecl;
  end;
  TJToken = class(TJavaGenericImport<JTokenClass, JToken>) end;

  JTransferClass = interface(JAPIResourceClass)
    ['{E0588FF4-D979-4391-B56C-FC45907FFD67}']
    {class} function all(P1: JMap): JTransferCollection; cdecl; overload;
    {class} function all(P1: JMap; P2: JString): JTransferCollection; cdecl; overload;
    {class} function create(P1: JMap): JTransfer; cdecl; overload;
    {class} function create(P1: JMap; P2: JString): JTransfer; cdecl; overload;
    {class} function init: JTransfer; cdecl;
    {class} function retrieve(P1: JString): JTransfer; cdecl; overload;
    {class} function retrieve(P1: JString; P2: JString): JTransfer; cdecl; overload;
  end;

  [JavaSignature('com/stripe/model/Transfer')]
  JTransfer = interface(JAPIResource)
    ['{635F970E-8C9E-4153-AB9A-91E31D963791}']
    function cancel: JTransfer; cdecl; overload;
    function cancel(P1: JString): JTransfer; cdecl; overload;
    function getAccount: JBankAccount; cdecl;
    function getAmount: JInteger; cdecl;
    function getBalanceTransaction: JString; cdecl;
    function getCurrency: JString; cdecl;
    function getDate: JLong; cdecl;
    function getDescription: JString; cdecl;
    function getId: JString; cdecl;
    function getLivemode: JBoolean; cdecl;
    function getMetadata: JMap; cdecl;
    function getOtherTransfers: JList; cdecl;
    function getRecipient: JString; cdecl;
    function getStatementDescriptor: JString; cdecl;
    function getStatus: JString; cdecl;
    function getSummary: JSummary; cdecl;
    procedure setAccount(P1: JBankAccount); cdecl;
    procedure setAmount(P1: JInteger); cdecl;
    procedure setBalanceTransaction(P1: JString); cdecl;
    procedure setCurrency(P1: JString); cdecl;
    procedure setDate(P1: JLong); cdecl;
    procedure setDescription(P1: JString); cdecl;
    procedure setId(P1: JString); cdecl;
    procedure setLivemode(P1: JBoolean); cdecl;
    procedure setMetadata(P1: JMap); cdecl;
    procedure setOtherTransfers(P1: JList); cdecl;
    procedure setRecipient(P1: JString); cdecl;
    procedure setStatementDescriptor(P1: JString); cdecl;
    procedure setStatus(P1: JString); cdecl;
    procedure setSummary(P1: JSummary); cdecl;
    function transactions(P1: JMap): JTransferTransactionCollection; cdecl; overload;
    function transactions(P1: JMap; P2: JString): JTransferTransactionCollection; cdecl; overload;
    function update(P1: JMap): JTransfer; cdecl; overload;
    function update(P1: JMap; P2: JString): JTransfer; cdecl; overload;
  end;
  TJTransfer = class(TJavaGenericImport<JTransferClass, JTransfer>) end;

  JTransferCollectionClass = interface(JStripeCollectionClass)
    ['{B4DC4AD1-E942-4707-BBC4-6681EC0F72EF}']
    {class} function init: JTransferCollection; cdecl;//Deprecated
  end;

  [JavaSignature('com/stripe/model/TransferCollection')]
  JTransferCollection = interface(JStripeCollection)
    ['{641CF378-39E4-4B9D-9403-CEA5135B7A1E}']
  end;
  TJTransferCollection = class(TJavaGenericImport<JTransferCollectionClass, JTransferCollection>) end;

  JTransferTransactionClass = interface(JStripeObjectClass)
    ['{935294FB-CBA1-44A3-91D7-AEEA384AE206}']
    {class} function init: JTransferTransaction; cdecl;
  end;

  [JavaSignature('com/stripe/model/TransferTransaction')]
  JTransferTransaction = interface(JStripeObject)
    ['{69CD3CF9-241B-41C6-B58F-2D97EBA8FDF2}']
    function getAmount: JLong; cdecl;
    function getCreated: JLong; cdecl;
    function getDescription: JString; cdecl;
    function getFee: JLong; cdecl;
    function getId: JString; cdecl;
    function getNet: JLong; cdecl;
    function getType: JString; cdecl;
    procedure setAmount(P1: JLong); cdecl;
    procedure setCreated(P1: JLong); cdecl;
    procedure setDescription(P1: JString); cdecl;
    procedure setFee(P1: JLong); cdecl;
    procedure setId(P1: JString); cdecl;
    procedure setNet(P1: JLong); cdecl;
    procedure setType(P1: JString); cdecl;
  end;
  TJTransferTransaction = class(TJavaGenericImport<JTransferTransactionClass, JTransferTransaction>) end;

  JTransferTransactionCollectionClass = interface(JStripeCollectionClass)
    ['{00ABA3BD-5444-4ABE-9218-BC5CC4A16E4E}']
    {class} function init: JTransferTransactionCollection; cdecl;//Deprecated
  end;

  [JavaSignature('com/stripe/model/TransferTransactionCollection')]
  JTransferTransactionCollection = interface(JStripeCollection)
    ['{B37D315C-8944-434D-9405-8B39E2CCCC4B}']
  end;
  TJTransferTransactionCollection = class(TJavaGenericImport<JTransferTransactionCollectionClass, JTransferTransactionCollection>) end;

  JAPIResource_1Class = interface(JObjectClass)
    ['{7BED3465-79B3-42A1-AD5B-2DC86CE23D55}']
  end;

  [JavaSignature('com/stripe/net/APIResource$1')]
  JAPIResource_1 = interface(JObject)
    ['{38755AF0-4899-448D-82A0-358017E811C0}']
  end;
  TJAPIResource_1 = class(TJavaGenericImport<JAPIResource_1Class, JAPIResource_1>) end;

  JAPIResource_ErrorClass = interface(JObjectClass)
    ['{A5CD22FC-2980-402E-9A10-B625FB1A035F}']
  end;

  [JavaSignature('com/stripe/net/APIResource$Error')]
  JAPIResource_Error = interface(JObject)
    ['{AFC7D685-84A2-4E88-B64C-3978C88EB1A4}']
  end;
  TJAPIResource_Error = class(TJavaGenericImport<JAPIResource_ErrorClass, JAPIResource_Error>) end;

  JAPIResource_ErrorContainerClass = interface(JObjectClass)
    ['{96A2DE29-F4EB-42E3-946F-4E6A92BDE59A}']
  end;

  [JavaSignature('com/stripe/net/APIResource$ErrorContainer')]
  JAPIResource_ErrorContainer = interface(JObject)
    ['{9CB28081-102C-439B-A854-0A131E27B1BF}']
  end;
  TJAPIResource_ErrorContainer = class(TJavaGenericImport<JAPIResource_ErrorContainerClass, JAPIResource_ErrorContainer>) end;

  JAPIResource_RequestMethodClass = interface(JEnumClass)
    ['{4C758E1D-49AD-4679-9014-637EFD8A3C5E}']
    {class} function _GetDELETE: JAPIResource_RequestMethod; cdecl;
    {class} function _GetGET: JAPIResource_RequestMethod; cdecl;
    {class} function _GetPOST: JAPIResource_RequestMethod; cdecl;
    {class} function valueOf(P1: JString): JAPIResource_RequestMethod; cdecl;
    {class} function values: TJavaObjectArray<JAPIResource_RequestMethod>; cdecl;
    {class} property DELETE: JAPIResource_RequestMethod read _GetDELETE;
    {class} property GET: JAPIResource_RequestMethod read _GetGET;
    {class} property POST: JAPIResource_RequestMethod read _GetPOST;
  end;

  [JavaSignature('com/stripe/net/APIResource$RequestMethod')]
  JAPIResource_RequestMethod = interface(JEnum)
    ['{E85DCF86-5B83-48B2-8D8B-3C7478A079BB}']
  end;
  TJAPIResource_RequestMethod = class(TJavaGenericImport<JAPIResource_RequestMethodClass, JAPIResource_RequestMethod>) end;

  JStripeResponseClass = interface(JObjectClass)
    ['{C953DB8D-7D17-4734-A3D9-DF1474294A98}']
    {class} function init(P1: Integer; P2: JString): JStripeResponse; cdecl; overload;
    {class} function init(P1: Integer; P2: JString; P3: JMap): JStripeResponse; cdecl; overload;
  end;

  [JavaSignature('com/stripe/net/StripeResponse')]
  JStripeResponse = interface(JObject)
    ['{6BDF3871-D11A-4A89-B1ED-D1D76298009D}']
    function getResponseBody: JString; cdecl;
    function getResponseCode: Integer; cdecl;
    function getResponseHeaders: JMap; cdecl;
    procedure setResponseBody(P1: JString); cdecl;
    procedure setResponseCode(P1: Integer); cdecl;
  end;
  TJStripeResponse = class(TJavaGenericImport<JStripeResponseClass, JStripeResponse>) end;

implementation

procedure RegisterTypes;
begin
  TRegTypes.RegisterType('java.stripe.JStripe', TypeInfo(java.stripe.JStripe));
  TRegTypes.RegisterType('java.stripe.JStripeException', TypeInfo(java.stripe.JStripeException));
  TRegTypes.RegisterType('java.stripe.JAPIConnectionException', TypeInfo(java.stripe.JAPIConnectionException));
  TRegTypes.RegisterType('java.stripe.JAPIException', TypeInfo(java.stripe.JAPIException));
  TRegTypes.RegisterType('java.stripe.Jexception_AuthenticationException', TypeInfo(java.stripe.Jexception_AuthenticationException));
  TRegTypes.RegisterType('java.stripe.JCardException', TypeInfo(java.stripe.JCardException));
  TRegTypes.RegisterType('java.stripe.JInvalidRequestException', TypeInfo(java.stripe.JInvalidRequestException));
  TRegTypes.RegisterType('java.stripe.JStripeObject', TypeInfo(java.stripe.JStripeObject));
  TRegTypes.RegisterType('java.stripe.JAPIResource', TypeInfo(java.stripe.JAPIResource));
  TRegTypes.RegisterType('java.stripe.Jmodel_Account', TypeInfo(java.stripe.Jmodel_Account));
  TRegTypes.RegisterType('java.stripe.JApplicationFee', TypeInfo(java.stripe.JApplicationFee));
  TRegTypes.RegisterType('java.stripe.JStripeCollection', TypeInfo(java.stripe.JStripeCollection));
  TRegTypes.RegisterType('java.stripe.JApplicationFeeCollection', TypeInfo(java.stripe.JApplicationFeeCollection));
  TRegTypes.RegisterType('java.stripe.JBalance', TypeInfo(java.stripe.JBalance));
  TRegTypes.RegisterType('java.stripe.JBalanceTransaction', TypeInfo(java.stripe.JBalanceTransaction));
  TRegTypes.RegisterType('java.stripe.JBalanceTransactionCollection', TypeInfo(java.stripe.JBalanceTransactionCollection));
  TRegTypes.RegisterType('java.stripe.JBankAccount', TypeInfo(java.stripe.JBankAccount));
  TRegTypes.RegisterType('java.stripe.JCard', TypeInfo(java.stripe.JCard));
  TRegTypes.RegisterType('java.stripe.JCharge', TypeInfo(java.stripe.JCharge));
  TRegTypes.RegisterType('java.stripe.JChargeCollection', TypeInfo(java.stripe.JChargeCollection));
  TRegTypes.RegisterType('java.stripe.JStripeColllectionAPIResource', TypeInfo(java.stripe.JStripeColllectionAPIResource));
  TRegTypes.RegisterType('java.stripe.JChargeRefundCollection', TypeInfo(java.stripe.JChargeRefundCollection));
  //TRegTypes.RegisterType('java.stripe.JChargeRefundCollectionDeserializer', TypeInfo(java.stripe.JChargeRefundCollectionDeserializer));
  //TRegTypes.RegisterType('java.stripe.JChargeRefundCollectionDeserializer_1', TypeInfo(java.stripe.JChargeRefundCollectionDeserializer_1));
  TRegTypes.RegisterType('java.stripe.JCoupon', TypeInfo(java.stripe.JCoupon));
  TRegTypes.RegisterType('java.stripe.JCouponCollection', TypeInfo(java.stripe.JCouponCollection));
  TRegTypes.RegisterType('java.stripe.JCustomer', TypeInfo(java.stripe.JCustomer));
  TRegTypes.RegisterType('java.stripe.JCustomerCardCollection', TypeInfo(java.stripe.JCustomerCardCollection));
  TRegTypes.RegisterType('java.stripe.JCustomerCollection', TypeInfo(java.stripe.JCustomerCollection));
  TRegTypes.RegisterType('java.stripe.JCustomerSubscriptionCollection', TypeInfo(java.stripe.JCustomerSubscriptionCollection));
  TRegTypes.RegisterType('java.stripe.JDeletedCard', TypeInfo(java.stripe.JDeletedCard));
  TRegTypes.RegisterType('java.stripe.JDeletedCoupon', TypeInfo(java.stripe.JDeletedCoupon));
  TRegTypes.RegisterType('java.stripe.JDeletedCustomer', TypeInfo(java.stripe.JDeletedCustomer));
  TRegTypes.RegisterType('java.stripe.JDeletedInvoiceItem', TypeInfo(java.stripe.JDeletedInvoiceItem));
  TRegTypes.RegisterType('java.stripe.JDeletedPlan', TypeInfo(java.stripe.JDeletedPlan));
  TRegTypes.RegisterType('java.stripe.JDeletedRecipient', TypeInfo(java.stripe.JDeletedRecipient));
  TRegTypes.RegisterType('java.stripe.JDiscount', TypeInfo(java.stripe.JDiscount));
  TRegTypes.RegisterType('java.stripe.JDispute', TypeInfo(java.stripe.JDispute));
  TRegTypes.RegisterType('java.stripe.JEvent', TypeInfo(java.stripe.JEvent));
  TRegTypes.RegisterType('java.stripe.JEventCollection', TypeInfo(java.stripe.JEventCollection));
  TRegTypes.RegisterType('java.stripe.JEventData', TypeInfo(java.stripe.JEventData));
  //TRegTypes.RegisterType('java.stripe.JEventDataDeserializer', TypeInfo(java.stripe.JEventDataDeserializer));
  TRegTypes.RegisterType('java.stripe.JFee', TypeInfo(java.stripe.JFee));
  TRegTypes.RegisterType('java.stripe.JFeeRefund', TypeInfo(java.stripe.JFeeRefund));
  TRegTypes.RegisterType('java.stripe.JInvoice', TypeInfo(java.stripe.JInvoice));
  TRegTypes.RegisterType('java.stripe.JInvoiceCollection', TypeInfo(java.stripe.JInvoiceCollection));
  TRegTypes.RegisterType('java.stripe.JInvoiceItem', TypeInfo(java.stripe.JInvoiceItem));
  TRegTypes.RegisterType('java.stripe.JInvoiceItemCollection', TypeInfo(java.stripe.JInvoiceItemCollection));
  TRegTypes.RegisterType('java.stripe.JInvoiceLineItem', TypeInfo(java.stripe.JInvoiceLineItem));
  TRegTypes.RegisterType('java.stripe.JInvoiceLineItemCollection', TypeInfo(java.stripe.JInvoiceLineItemCollection));
  TRegTypes.RegisterType('java.stripe.JInvoiceLineItemPeriod', TypeInfo(java.stripe.JInvoiceLineItemPeriod));
  TRegTypes.RegisterType('java.stripe.JMetadataStore', TypeInfo(java.stripe.JMetadataStore));
  TRegTypes.RegisterType('java.stripe.JMoney', TypeInfo(java.stripe.JMoney));
  TRegTypes.RegisterType('java.stripe.JNextRecurringCharge', TypeInfo(java.stripe.JNextRecurringCharge));
  TRegTypes.RegisterType('java.stripe.JPlan', TypeInfo(java.stripe.JPlan));
  TRegTypes.RegisterType('java.stripe.JPlanCollection', TypeInfo(java.stripe.JPlanCollection));
  TRegTypes.RegisterType('java.stripe.JRecipient', TypeInfo(java.stripe.JRecipient));
  TRegTypes.RegisterType('java.stripe.JRecipientCardCollection', TypeInfo(java.stripe.JRecipientCardCollection));
  TRegTypes.RegisterType('java.stripe.JRecipientCollection', TypeInfo(java.stripe.JRecipientCollection));
  TRegTypes.RegisterType('java.stripe.JRefund', TypeInfo(java.stripe.JRefund));
  TRegTypes.RegisterType('java.stripe.JStripeRawJsonObject', TypeInfo(java.stripe.JStripeRawJsonObject));
  //TRegTypes.RegisterType('java.stripe.JStripeRawJsonObjectDeserializer', TypeInfo(java.stripe.JStripeRawJsonObjectDeserializer));
  TRegTypes.RegisterType('java.stripe.JSubscription', TypeInfo(java.stripe.JSubscription));
  TRegTypes.RegisterType('java.stripe.JSummary', TypeInfo(java.stripe.JSummary));
  TRegTypes.RegisterType('java.stripe.JToken', TypeInfo(java.stripe.JToken));
  TRegTypes.RegisterType('java.stripe.JTransfer', TypeInfo(java.stripe.JTransfer));
  TRegTypes.RegisterType('java.stripe.JTransferCollection', TypeInfo(java.stripe.JTransferCollection));
  TRegTypes.RegisterType('java.stripe.JTransferTransaction', TypeInfo(java.stripe.JTransferTransaction));
  TRegTypes.RegisterType('java.stripe.JTransferTransactionCollection', TypeInfo(java.stripe.JTransferTransactionCollection));
  TRegTypes.RegisterType('java.stripe.JAPIResource_1', TypeInfo(java.stripe.JAPIResource_1));
  TRegTypes.RegisterType('java.stripe.JAPIResource_Error', TypeInfo(java.stripe.JAPIResource_Error));
  TRegTypes.RegisterType('java.stripe.JAPIResource_ErrorContainer', TypeInfo(java.stripe.JAPIResource_ErrorContainer));
  TRegTypes.RegisterType('java.stripe.JAPIResource_RequestMethod', TypeInfo(java.stripe.JAPIResource_RequestMethod));
  TRegTypes.RegisterType('java.stripe.JStripeResponse', TypeInfo(java.stripe.JStripeResponse));
end;

initialization
  RegisterTypes;
end.

