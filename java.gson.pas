
unit java.gson;

interface

uses
  Androidapi.JNIBridge,
  Androidapi.JNI.Java.Net,
  Androidapi.JNI.JavaTypes;

type
// ===== Forward declarations =====

  JJsonSerializer = interface;//com.google.gson.JsonSerializer
  JDefaultDateTypeAdapter = interface;//com.google.gson.DefaultDateTypeAdapter
  JExclusionStrategy = interface;//com.google.gson.ExclusionStrategy
  JFieldAttributes = interface;//com.google.gson.FieldAttributes
  JFieldNamingPolicy = interface;//com.google.gson.FieldNamingPolicy
  JFieldNamingPolicy_1 = interface;//com.google.gson.FieldNamingPolicy$1
  JFieldNamingPolicy_2 = interface;//com.google.gson.FieldNamingPolicy$2
  JFieldNamingPolicy_3 = interface;//com.google.gson.FieldNamingPolicy$3
  JFieldNamingPolicy_4 = interface;//com.google.gson.FieldNamingPolicy$4
  JFieldNamingPolicy_5 = interface;//com.google.gson.FieldNamingPolicy$5
  JFieldNamingStrategy = interface;//com.google.gson.FieldNamingStrategy
  JGson = interface;//com.google.gson.Gson
  JJsonDeserializationContext = interface;//com.google.gson.JsonDeserializationContext
  JGson_1 = interface;//com.google.gson.Gson$1
  JJsonSerializationContext = interface;//com.google.gson.JsonSerializationContext
  JGson_2 = interface;//com.google.gson.Gson$2
  JTypeAdapter = interface;//com.google.gson.TypeAdapter
  JGson_3 = interface;//com.google.gson.Gson$3
  JGson_4 = interface;//com.google.gson.Gson$4
  JGson_5 = interface;//com.google.gson.Gson$5
  JGson_FutureTypeAdapter = interface;//com.google.gson.Gson$FutureTypeAdapter
  JGsonBuilder = interface;//com.google.gson.GsonBuilder
  JInstanceCreator = interface;//com.google.gson.InstanceCreator
  JJsonElement = interface;//com.google.gson.JsonElement
  Jgson_JsonArray = interface;//com.google.gson.JsonArray
  JJsonDeserializer = interface;//com.google.gson.JsonDeserializer
  JJsonParseException = interface;//com.google.gson.JsonParseException
  JJsonIOException = interface;//com.google.gson.JsonIOException
  JJsonNull = interface;//com.google.gson.JsonNull
  Jgson_JsonObject = interface;//com.google.gson.JsonObject
  JJsonParser = interface;//com.google.gson.JsonParser
  JJsonPrimitive = interface;//com.google.gson.JsonPrimitive
  JJsonStreamParser = interface;//com.google.gson.JsonStreamParser
  JJsonSyntaxException = interface;//com.google.gson.JsonSyntaxException
  JLongSerializationPolicy = interface;//com.google.gson.LongSerializationPolicy
  JLongSerializationPolicy_1 = interface;//com.google.gson.LongSerializationPolicy$1
  JLongSerializationPolicy_2 = interface;//com.google.gson.LongSerializationPolicy$2
  JTreeTypeAdapter = interface;//com.google.gson.TreeTypeAdapter
  JTreeTypeAdapter_1 = interface;//com.google.gson.TreeTypeAdapter$1
  JTypeAdapterFactory = interface;//com.google.gson.TypeAdapterFactory
  JTreeTypeAdapter_SingleTypeFactory = interface;//com.google.gson.TreeTypeAdapter$SingleTypeFactory
  JTypeAdapter_1 = interface;//com.google.gson.TypeAdapter$1
  JExpose = interface;//com.google.gson.annotations.Expose
  JSerializedName = interface;//com.google.gson.annotations.SerializedName
  JSince = interface;//com.google.gson.annotations.Since
  JUntil = interface;//com.google.gson.annotations.Until
  JGson_Preconditions = interface;//com.google.gson.internal.$Gson$Preconditions
  JGson_Types = interface;//com.google.gson.internal.$Gson$Types
  JGenericArrayType = interface;//java.lang.reflect.GenericArrayType
  JTypes_GenericArrayTypeImpl = interface;//com.google.gson.internal.$Gson$Types$GenericArrayTypeImpl
  JParameterizedType = interface;//java.lang.reflect.ParameterizedType
  JTypes_ParameterizedTypeImpl = interface;//com.google.gson.internal.$Gson$Types$ParameterizedTypeImpl
  JWildcardType = interface;//java.lang.reflect.WildcardType
  JTypes_WildcardTypeImpl = interface;//com.google.gson.internal.$Gson$Types$WildcardTypeImpl
  JConstructorConstructor = interface;//com.google.gson.internal.ConstructorConstructor
  JObjectConstructor = interface;//com.google.gson.internal.ObjectConstructor
  JConstructorConstructor_1 = interface;//com.google.gson.internal.ConstructorConstructor$1
  JConstructorConstructor_10 = interface;//com.google.gson.internal.ConstructorConstructor$10
  JConstructorConstructor_11 = interface;//com.google.gson.internal.ConstructorConstructor$11
  JConstructorConstructor_12 = interface;//com.google.gson.internal.ConstructorConstructor$12
  JConstructorConstructor_2 = interface;//com.google.gson.internal.ConstructorConstructor$2
  JConstructorConstructor_3 = interface;//com.google.gson.internal.ConstructorConstructor$3
  JConstructorConstructor_4 = interface;//com.google.gson.internal.ConstructorConstructor$4
  JConstructorConstructor_5 = interface;//com.google.gson.internal.ConstructorConstructor$5
  JConstructorConstructor_6 = interface;//com.google.gson.internal.ConstructorConstructor$6
  JConstructorConstructor_7 = interface;//com.google.gson.internal.ConstructorConstructor$7
  JConstructorConstructor_8 = interface;//com.google.gson.internal.ConstructorConstructor$8
  JConstructorConstructor_9 = interface;//com.google.gson.internal.ConstructorConstructor$9
  JExcluder = interface;//com.google.gson.internal.Excluder
  JExcluder_1 = interface;//com.google.gson.internal.Excluder$1
  JJsonReaderInternalAccess = interface;//com.google.gson.internal.JsonReaderInternalAccess
  JLazilyParsedNumber = interface;//com.google.gson.internal.LazilyParsedNumber
  JLinkedTreeMap = interface;//com.google.gson.internal.LinkedTreeMap
  JLinkedTreeMap_1 = interface;//com.google.gson.internal.LinkedTreeMap$1
  JLinkedTreeMap_EntrySet = interface;//com.google.gson.internal.LinkedTreeMap$EntrySet
  JEntrySet_1 = interface;//com.google.gson.internal.LinkedTreeMap$EntrySet$1
  JLinkedTreeMap_KeySet = interface;//com.google.gson.internal.LinkedTreeMap$KeySet
  JKeySet_1 = interface;//com.google.gson.internal.LinkedTreeMap$KeySet$1
  JLinkedTreeMap_LinkedTreeMapIterator = interface;//com.google.gson.internal.LinkedTreeMap$LinkedTreeMapIterator
  JMap_Entry = interface;//java.util.Map$Entry
  JLinkedTreeMap_Node = interface;//com.google.gson.internal.LinkedTreeMap$Node
  JPrimitives = interface;//com.google.gson.internal.Primitives
  JStreams = interface;//com.google.gson.internal.Streams
  JStreams_1 = interface;//com.google.gson.internal.Streams$1
  JStreams_AppendableWriter = interface;//com.google.gson.internal.Streams$AppendableWriter
  JAppendableWriter_CurrentWrite = interface;//com.google.gson.internal.Streams$AppendableWriter$CurrentWrite
  JUnsafeAllocator = interface;//com.google.gson.internal.UnsafeAllocator
  JUnsafeAllocator_1 = interface;//com.google.gson.internal.UnsafeAllocator$1
  JUnsafeAllocator_2 = interface;//com.google.gson.internal.UnsafeAllocator$2
  JUnsafeAllocator_3 = interface;//com.google.gson.internal.UnsafeAllocator$3
  JUnsafeAllocator_4 = interface;//com.google.gson.internal.UnsafeAllocator$4
  JArrayTypeAdapter = interface;//com.google.gson.internal.bind.ArrayTypeAdapter
  JArrayTypeAdapter_1 = interface;//com.google.gson.internal.bind.ArrayTypeAdapter$1
  JCollectionTypeAdapterFactory = interface;//com.google.gson.internal.bind.CollectionTypeAdapterFactory
  JCollectionTypeAdapterFactory_Adapter = interface;//com.google.gson.internal.bind.CollectionTypeAdapterFactory$Adapter
  JDateTypeAdapter = interface;//com.google.gson.internal.bind.DateTypeAdapter
  JDateTypeAdapter_1 = interface;//com.google.gson.internal.bind.DateTypeAdapter$1
  Jstream_JsonReader = interface;//com.google.gson.stream.JsonReader
  JJsonTreeReader = interface;//com.google.gson.internal.bind.JsonTreeReader
  JJsonTreeReader_1 = interface;//com.google.gson.internal.bind.JsonTreeReader$1
  Jstream_JsonWriter = interface;//com.google.gson.stream.JsonWriter
  JJsonTreeWriter = interface;//com.google.gson.internal.bind.JsonTreeWriter
  JJsonTreeWriter_1 = interface;//com.google.gson.internal.bind.JsonTreeWriter$1
  JMapTypeAdapterFactory = interface;//com.google.gson.internal.bind.MapTypeAdapterFactory
  JMapTypeAdapterFactory_Adapter = interface;//com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter
  JObjectTypeAdapter = interface;//com.google.gson.internal.bind.ObjectTypeAdapter
  JObjectTypeAdapter_1 = interface;//com.google.gson.internal.bind.ObjectTypeAdapter$1
  JObjectTypeAdapter_2 = interface;//com.google.gson.internal.bind.ObjectTypeAdapter$2
  JReflectiveTypeAdapterFactory = interface;//com.google.gson.internal.bind.ReflectiveTypeAdapterFactory
  JReflectiveTypeAdapterFactory_BoundField = interface;//com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$BoundField
  JReflectiveTypeAdapterFactory_1 = interface;//com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$1
  JReflectiveTypeAdapterFactory_Adapter = interface;//com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$Adapter
  JSqlDateTypeAdapter = interface;//com.google.gson.internal.bind.SqlDateTypeAdapter
  JSqlDateTypeAdapter_1 = interface;//com.google.gson.internal.bind.SqlDateTypeAdapter$1
  JTimeTypeAdapter = interface;//com.google.gson.internal.bind.TimeTypeAdapter
  JTimeTypeAdapter_1 = interface;//com.google.gson.internal.bind.TimeTypeAdapter$1
  JTypeAdapterRuntimeTypeWrapper = interface;//com.google.gson.internal.bind.TypeAdapterRuntimeTypeWrapper
  JTypeAdapters = interface;//com.google.gson.internal.bind.TypeAdapters
  JTypeAdapters_1 = interface;//com.google.gson.internal.bind.TypeAdapters$1
  JTypeAdapters_10 = interface;//com.google.gson.internal.bind.TypeAdapters$10
  JTypeAdapters_11 = interface;//com.google.gson.internal.bind.TypeAdapters$11
  JTypeAdapters_12 = interface;//com.google.gson.internal.bind.TypeAdapters$12
  JTypeAdapters_13 = interface;//com.google.gson.internal.bind.TypeAdapters$13
  JTypeAdapters_14 = interface;//com.google.gson.internal.bind.TypeAdapters$14
  JTypeAdapters_15 = interface;//com.google.gson.internal.bind.TypeAdapters$15
  JTypeAdapters_16 = interface;//com.google.gson.internal.bind.TypeAdapters$16
  JTypeAdapters_17 = interface;//com.google.gson.internal.bind.TypeAdapters$17
  JTypeAdapters_18 = interface;//com.google.gson.internal.bind.TypeAdapters$18
  JTypeAdapters_19 = interface;//com.google.gson.internal.bind.TypeAdapters$19
  JTypeAdapters_2 = interface;//com.google.gson.internal.bind.TypeAdapters$2
  JTypeAdapters_20 = interface;//com.google.gson.internal.bind.TypeAdapters$20
  JTypeAdapters_21 = interface;//com.google.gson.internal.bind.TypeAdapters$21
  JTypeAdapters_22 = interface;//com.google.gson.internal.bind.TypeAdapters$22
  J22_1 = interface;//com.google.gson.internal.bind.TypeAdapters$22$1
  JTypeAdapters_23 = interface;//com.google.gson.internal.bind.TypeAdapters$23
  JTypeAdapters_24 = interface;//com.google.gson.internal.bind.TypeAdapters$24
  JTypeAdapters_25 = interface;//com.google.gson.internal.bind.TypeAdapters$25
  JTypeAdapters_26 = interface;//com.google.gson.internal.bind.TypeAdapters$26
  JTypeAdapters_27 = interface;//com.google.gson.internal.bind.TypeAdapters$27
  JTypeAdapters_28 = interface;//com.google.gson.internal.bind.TypeAdapters$28
  JTypeAdapters_29 = interface;//com.google.gson.internal.bind.TypeAdapters$29
  JTypeAdapters_3 = interface;//com.google.gson.internal.bind.TypeAdapters$3
  JTypeAdapters_30 = interface;//com.google.gson.internal.bind.TypeAdapters$30
  JTypeAdapters_31 = interface;//com.google.gson.internal.bind.TypeAdapters$31
  JTypeAdapters_32 = interface;//com.google.gson.internal.bind.TypeAdapters$32
  JTypeAdapters_4 = interface;//com.google.gson.internal.bind.TypeAdapters$4
  JTypeAdapters_5 = interface;//com.google.gson.internal.bind.TypeAdapters$5
  JTypeAdapters_6 = interface;//com.google.gson.internal.bind.TypeAdapters$6
  JTypeAdapters_7 = interface;//com.google.gson.internal.bind.TypeAdapters$7
  JTypeAdapters_8 = interface;//com.google.gson.internal.bind.TypeAdapters$8
  JTypeAdapters_9 = interface;//com.google.gson.internal.bind.TypeAdapters$9
  JTypeAdapters_EnumTypeAdapter = interface;//com.google.gson.internal.bind.TypeAdapters$EnumTypeAdapter
  JTypeToken = interface;//com.google.gson.reflect.TypeToken
  JJsonReader_1 = interface;//com.google.gson.stream.JsonReader$1
  JJsonScope = interface;//com.google.gson.stream.JsonScope
  Jstream_JsonToken = interface;//com.google.gson.stream.JsonToken
  Jstream_MalformedJsonException = interface;//com.google.gson.stream.MalformedJsonException
  JAppendable = interface;//java.lang.Appendable
  JCharacter = interface;//java.lang.Character
  JCloneable = interface;//java.lang.Cloneable
  JBigDecimal = interface;//java.math.BigDecimal
  JMathContext = interface;//java.math.MathContext
  JRoundingMode = interface;//java.math.RoundingMode
  Jsql_Date = interface;//java.sql.Date
  JTime = interface;//java.sql.Time
  JTimestamp = interface;//java.sql.Timestamp
  JCharacterIterator = interface;//java.text.CharacterIterator
  JAttributedCharacterIterator = interface;//java.text.AttributedCharacterIterator
  JAttributedCharacterIterator_Attribute = interface;//java.text.AttributedCharacterIterator$Attribute
  JFormat = interface;//java.text.Format
  Jtext_DateFormat = interface;//java.text.DateFormat
  JFieldPosition = interface;//java.text.FieldPosition
  JFormat_Field = interface;//java.text.Format$Field
  JNumberFormat = interface;//java.text.NumberFormat
  JParsePosition = interface;//java.text.ParsePosition
  JCurrency = interface;//java.util.Currency

// ===== Interface declarations =====

  JJsonSerializerClass = interface(IJavaClass)
    ['{D8BF73A6-7490-4077-8EED-8F2103193ACC}']
    {class} function serialize(P1: JObject; P2: Jreflect_Type; P3: JJsonSerializationContext): JJsonElement; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/JsonSerializer')]
  JJsonSerializer = interface(IJavaInstance)
    ['{71F28074-11AC-4D5A-B3EB-4D4C4FBB7DD0}']
  end;
  TJJsonSerializer = class(TJavaGenericImport<JJsonSerializerClass, JJsonSerializer>) end;

  JDefaultDateTypeAdapterClass = interface(JJsonSerializerClass)
    ['{DBEA6E15-74EC-410F-83EE-1AB6312FE9C4}']
    {class} function deserialize(P1: JJsonElement; P2: Jreflect_Type; P3: JJsonDeserializationContext): JDate; cdecl;//Deprecated
    {class} function init(P1: Integer; P2: Integer): JDefaultDateTypeAdapter; cdecl; overload;//Deprecated
    {class} function serialize(P1: JObject; P2: Jreflect_Type; P3: JJsonSerializationContext): JJsonElement; cdecl; overload;//Deprecated
    {class} function serialize(P1: JDate; P2: Jreflect_Type; P3: JJsonSerializationContext): JJsonElement; cdecl; overload;//Deprecated
    {class} function toString: JString; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/DefaultDateTypeAdapter')]
  JDefaultDateTypeAdapter = interface(JJsonSerializer)
    ['{D5F315B7-FE1A-403B-94EF-2DE2E4EAF3FC}']
  end;
  TJDefaultDateTypeAdapter = class(TJavaGenericImport<JDefaultDateTypeAdapterClass, JDefaultDateTypeAdapter>) end;

  JExclusionStrategyClass = interface(IJavaClass)
    ['{E56CB15B-F7BD-4131-8F63-DDE65FC8C61E}']
    {class} function shouldSkipClass(P1: Jlang_Class): Boolean; cdecl;//Deprecated
    {class} function shouldSkipField(P1: JFieldAttributes): Boolean; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/ExclusionStrategy')]
  JExclusionStrategy = interface(IJavaInstance)
    ['{B93BF4C5-6EB3-4774-954C-176073ED88E5}']
  end;
  TJExclusionStrategy = class(TJavaGenericImport<JExclusionStrategyClass, JExclusionStrategy>) end;

  JFieldAttributesClass = interface(JObjectClass)
    ['{54C86C50-567B-4DDC-BF57-1F8220AC8138}']
    {class} function getAnnotation(P1: Jlang_Class): JAnnotation; cdecl;//Deprecated
    {class} function getAnnotations: JCollection; cdecl;//Deprecated
    {class} function getDeclaredClass: Jlang_Class; cdecl;//Deprecated
    {class} function getDeclaredType: Jreflect_Type; cdecl;//Deprecated
    {class} function getDeclaringClass: Jlang_Class; cdecl;//Deprecated
    {class} function getName: JString; cdecl;//Deprecated
    {class} function hasModifier(P1: Integer): Boolean; cdecl;//Deprecated
    {class} function init(P1: JField): JFieldAttributes; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/FieldAttributes')]
  JFieldAttributes = interface(JObject)
    ['{9A3236B3-CC3C-4EB9-8D3A-D2DC26D745B1}']
  end;
  TJFieldAttributes = class(TJavaGenericImport<JFieldAttributesClass, JFieldAttributes>) end;

  JFieldNamingPolicyClass = interface(JEnumClass)
    ['{3ADB498D-DFE2-4D08-9EAF-600F5AC913D0}']
    {class} function _GetIDENTITY: JFieldNamingPolicy; cdecl;
    {class} function _GetLOWER_CASE_WITH_DASHES: JFieldNamingPolicy; cdecl;
    {class} function _GetLOWER_CASE_WITH_UNDERSCORES: JFieldNamingPolicy; cdecl;
    {class} function _GetUPPER_CAMEL_CASE: JFieldNamingPolicy; cdecl;
    {class} function _GetUPPER_CAMEL_CASE_WITH_SPACES: JFieldNamingPolicy; cdecl;
    {class} function valueOf(P1: JString): JFieldNamingPolicy; cdecl;
    {class} function values: TJavaObjectArray<JFieldNamingPolicy>; cdecl;
    {class} property IDENTITY: JFieldNamingPolicy read _GetIDENTITY;
    {class} property LOWER_CASE_WITH_DASHES: JFieldNamingPolicy read _GetLOWER_CASE_WITH_DASHES;
    {class} property LOWER_CASE_WITH_UNDERSCORES: JFieldNamingPolicy read _GetLOWER_CASE_WITH_UNDERSCORES;
    {class} property UPPER_CAMEL_CASE: JFieldNamingPolicy read _GetUPPER_CAMEL_CASE;
    {class} property UPPER_CAMEL_CASE_WITH_SPACES: JFieldNamingPolicy read _GetUPPER_CAMEL_CASE_WITH_SPACES;
  end;

  [JavaSignature('com/google/gson/FieldNamingPolicy')]
  JFieldNamingPolicy = interface(JEnum)
    ['{886AE263-A59F-462F-9F8F-28040AABA3A5}']
  end;
  TJFieldNamingPolicy = class(TJavaGenericImport<JFieldNamingPolicyClass, JFieldNamingPolicy>) end;

  JFieldNamingPolicy_1Class = interface(JFieldNamingPolicyClass)
    ['{9B86788E-5FA3-4445-85A1-851319838E77}']
    {class} function translateName(P1: JField): JString; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/FieldNamingPolicy$1')]
  JFieldNamingPolicy_1 = interface(JFieldNamingPolicy)
    ['{9F366BAE-E5BE-4865-8553-6161AE53AEF4}']
  end;
  TJFieldNamingPolicy_1 = class(TJavaGenericImport<JFieldNamingPolicy_1Class, JFieldNamingPolicy_1>) end;

  JFieldNamingPolicy_2Class = interface(JFieldNamingPolicyClass)
    ['{A96696A9-DC3B-45A9-B95D-6CD187E81018}']
    {class} function translateName(P1: JField): JString; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/FieldNamingPolicy$2')]
  JFieldNamingPolicy_2 = interface(JFieldNamingPolicy)
    ['{13D2A54D-9F96-4DCE-B130-68295191DF1A}']
  end;
  TJFieldNamingPolicy_2 = class(TJavaGenericImport<JFieldNamingPolicy_2Class, JFieldNamingPolicy_2>) end;

  JFieldNamingPolicy_3Class = interface(JFieldNamingPolicyClass)
    ['{5BA718D6-3E02-4837-A02C-D942307CE46D}']
    {class} function translateName(P1: JField): JString; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/FieldNamingPolicy$3')]
  JFieldNamingPolicy_3 = interface(JFieldNamingPolicy)
    ['{9F829263-89E3-4A83-ABE1-74B2E5463089}']
  end;
  TJFieldNamingPolicy_3 = class(TJavaGenericImport<JFieldNamingPolicy_3Class, JFieldNamingPolicy_3>) end;

  JFieldNamingPolicy_4Class = interface(JFieldNamingPolicyClass)
    ['{F8C5A2E0-7054-477D-8D8B-613D15FA64D9}']
    {class} function translateName(P1: JField): JString; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/FieldNamingPolicy$4')]
  JFieldNamingPolicy_4 = interface(JFieldNamingPolicy)
    ['{678EBBCB-629C-41B5-A7FB-8DDA817A4114}']
  end;
  TJFieldNamingPolicy_4 = class(TJavaGenericImport<JFieldNamingPolicy_4Class, JFieldNamingPolicy_4>) end;

  JFieldNamingPolicy_5Class = interface(JFieldNamingPolicyClass)
    ['{DA6957B8-DE7B-494D-8DED-70AA0011842E}']
    {class} function translateName(P1: JField): JString; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/FieldNamingPolicy$5')]
  JFieldNamingPolicy_5 = interface(JFieldNamingPolicy)
    ['{DFBE03B7-C3A3-4BA1-910B-7C8218B6C110}']
  end;
  TJFieldNamingPolicy_5 = class(TJavaGenericImport<JFieldNamingPolicy_5Class, JFieldNamingPolicy_5>) end;

  JFieldNamingStrategyClass = interface(IJavaClass)
    ['{9FEB528D-9A55-4513-92FE-1F8378D82FF0}']
    {class} function translateName(P1: JField): JString; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/FieldNamingStrategy')]
  JFieldNamingStrategy = interface(IJavaInstance)
    ['{2404FEB4-726D-4008-9E7F-5C35D5179436}']
  end;
  TJFieldNamingStrategy = class(TJavaGenericImport<JFieldNamingStrategyClass, JFieldNamingStrategy>) end;

  JGsonClass = interface(JObjectClass)
    ['{D30CD5CF-45C4-4FAC-8B80-958AB6DDBA6E}']
    {class} function init: JGson; cdecl; overload;
  end;

  [JavaSignature('com/google/gson/Gson')]
  JGson = interface(JObject)
    ['{55624FA4-632F-4944-BB11-4FA1BABDF8ED}']
    function fromJson(P1: JString; P2: Jreflect_Type): JObject; cdecl; overload;
    function fromJson(P1: JReader; P2: Jlang_Class): JObject; cdecl; overload;
    function fromJson(P1: JJsonElement; P2: Jlang_Class): JObject; cdecl; overload;
    function fromJson(P1: JString; P2: Jlang_Class): JObject; cdecl; overload;
    function fromJson(P1: JReader; P2: Jreflect_Type): JObject; cdecl; overload;
    function fromJson(P1: Jstream_JsonReader; P2: Jreflect_Type): JObject; cdecl; overload;
    function fromJson(P1: JJsonElement; P2: Jreflect_Type): JObject; cdecl; overload;
    function getAdapter(P1: Jlang_Class): JTypeAdapter; cdecl; overload;
    function getAdapter(P1: JTypeToken): JTypeAdapter; cdecl; overload;
    function getDelegateAdapter(P1: JTypeAdapterFactory; P2: JTypeToken): JTypeAdapter; cdecl;
    function toJson(P1: JObject): JString; cdecl; overload;
    function toJson(P1: JJsonElement): JString; cdecl; overload;
    procedure toJson(P1: JJsonElement; P2: Jstream_JsonWriter); cdecl; overload;
    function toJson(P1: JObject; P2: Jreflect_Type): JString; cdecl; overload;
    procedure toJson(P1: JObject; P2: JAppendable); cdecl; overload;
    procedure toJson(P1: JJsonElement; P2: JAppendable); cdecl; overload;
    procedure toJson(P1: JObject; P2: Jreflect_Type; P3: JAppendable); cdecl; overload;
    procedure toJson(P1: JObject; P2: Jreflect_Type; P3: Jstream_JsonWriter); cdecl; overload;
    function toJsonTree(P1: JObject): JJsonElement; cdecl; overload;
    function toJsonTree(P1: JObject; P2: Jreflect_Type): JJsonElement; cdecl; overload;
    function toString: JString; cdecl;
  end;
  TJGson = class(TJavaGenericImport<JGsonClass, JGson>) end;

  JJsonDeserializationContextClass = interface(IJavaClass)
    ['{8218E137-A8E4-4E83-B31A-32811A905E07}']
    {class} function deserialize(P1: JJsonElement; P2: Jreflect_Type): JObject; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/JsonDeserializationContext')]
  JJsonDeserializationContext = interface(IJavaInstance)
    ['{C1EF4C87-CCAB-4BAD-9EB4-3A628AE73B73}']
  end;
  TJJsonDeserializationContext = class(TJavaGenericImport<JJsonDeserializationContextClass, JJsonDeserializationContext>) end;

  JGson_1Class = interface(JJsonDeserializationContextClass)
    ['{072CB16B-F164-4DD3-B6B1-A365E86718F2}']
  end;

  [JavaSignature('com/google/gson/Gson$1')]
  JGson_1 = interface(JJsonDeserializationContext)
    ['{B225452E-21D7-4CF5-BD85-4150D4459B4A}']
    function deserialize(P1: JJsonElement; P2: Jreflect_Type): JObject; cdecl;
  end;
  TJGson_1 = class(TJavaGenericImport<JGson_1Class, JGson_1>) end;

  JJsonSerializationContextClass = interface(IJavaClass)
    ['{AB622012-F0DA-4217-A7C6-132634EA231C}']
    {class} function serialize(P1: JObject): JJsonElement; cdecl; overload;//Deprecated
    {class} function serialize(P1: JObject; P2: Jreflect_Type): JJsonElement; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/JsonSerializationContext')]
  JJsonSerializationContext = interface(IJavaInstance)
    ['{116C859E-129D-422E-86AF-295E68585456}']
  end;
  TJJsonSerializationContext = class(TJavaGenericImport<JJsonSerializationContextClass, JJsonSerializationContext>) end;

  JGson_2Class = interface(JJsonSerializationContextClass)
    ['{B6785BF8-E6A4-4646-A835-9CE6955328CA}']
  end;

  [JavaSignature('com/google/gson/Gson$2')]
  JGson_2 = interface(JJsonSerializationContext)
    ['{7555D9B0-B435-4163-98C5-0C3D6B39E8AF}']
    function serialize(P1: JObject): JJsonElement; cdecl; overload;
    function serialize(P1: JObject; P2: Jreflect_Type): JJsonElement; cdecl; overload;
  end;
  TJGson_2 = class(TJavaGenericImport<JGson_2Class, JGson_2>) end;

  JTypeAdapterClass = interface(JObjectClass)
    ['{0C411118-31A2-4832-A881-F907AE8E86AA}']
    {class} function fromJson(P1: JString): JObject; cdecl; overload;//Deprecated
    {class} function fromJson(P1: JReader): JObject; cdecl; overload;//Deprecated
    {class} function fromJsonTree(P1: JJsonElement): JObject; cdecl;//Deprecated
    {class} function init: JTypeAdapter; cdecl;//Deprecated
    {class} function nullSafe: JTypeAdapter; cdecl;//Deprecated
    {class} function read(P1: Jstream_JsonReader): JObject; cdecl;//Deprecated
    {class} function toJson(P1: JObject): JString; cdecl; overload;//Deprecated
    {class} procedure toJson(P1: JWriter; P2: JObject); cdecl; overload;//Deprecated
    {class} function toJsonTree(P1: JObject): JJsonElement; cdecl;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/TypeAdapter')]
  JTypeAdapter = interface(JObject)
    ['{80C1B115-D1CD-4028-B32C-E3F48E1D0654}']
  end;
  TJTypeAdapter = class(TJavaGenericImport<JTypeAdapterClass, JTypeAdapter>) end;

  JGson_3Class = interface(JTypeAdapterClass)
    ['{9112BA2A-0870-4E6E-B8B2-D4B8ACEE20C7}']
  end;

  [JavaSignature('com/google/gson/Gson$3')]
  JGson_3 = interface(JTypeAdapter)
    ['{4E90A163-2495-45AC-81E8-7BED009315ED}']
    function read(P1: Jstream_JsonReader): JDouble; cdecl;
    procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;
    procedure write(P1: Jstream_JsonWriter; P2: JNumber); cdecl; overload;
  end;
  TJGson_3 = class(TJavaGenericImport<JGson_3Class, JGson_3>) end;

  JGson_4Class = interface(JTypeAdapterClass)
    ['{15473A87-0443-4C01-AAD2-D9FB17615CE8}']
  end;

  [JavaSignature('com/google/gson/Gson$4')]
  JGson_4 = interface(JTypeAdapter)
    ['{6D8105C3-6F48-4CD7-96F7-A3D37637D2E1}']
    function read(P1: Jstream_JsonReader): JFloat; cdecl;
    procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;
    procedure write(P1: Jstream_JsonWriter; P2: JNumber); cdecl; overload;
  end;
  TJGson_4 = class(TJavaGenericImport<JGson_4Class, JGson_4>) end;

  JGson_5Class = interface(JTypeAdapterClass)
    ['{07FB1AC2-BBE8-4528-B245-6421F81F087D}']
  end;

  [JavaSignature('com/google/gson/Gson$5')]
  JGson_5 = interface(JTypeAdapter)
    ['{8175B1DC-5EB3-4A2F-9BC7-2E60BA0CA2E5}']
    function read(P1: Jstream_JsonReader): JNumber; cdecl;
    procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;
    procedure write(P1: Jstream_JsonWriter; P2: JNumber); cdecl; overload;
  end;
  TJGson_5 = class(TJavaGenericImport<JGson_5Class, JGson_5>) end;

  JGson_FutureTypeAdapterClass = interface(JTypeAdapterClass)
    ['{4919D259-6A99-462A-9CC3-59E712536E68}']
    {class} function read(P1: Jstream_JsonReader): JObject; cdecl;//Deprecated
    {class} procedure setDelegate(P1: JTypeAdapter); cdecl;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/Gson$FutureTypeAdapter')]
  JGson_FutureTypeAdapter = interface(JTypeAdapter)
    ['{5C2686F7-FE55-4DEC-959E-CD5D654D0CF4}']
  end;
  TJGson_FutureTypeAdapter = class(TJavaGenericImport<JGson_FutureTypeAdapterClass, JGson_FutureTypeAdapter>) end;

  JGsonBuilderClass = interface(JObjectClass)
    ['{D127FE6A-294B-40C7-BA8C-68BDAF655D48}']
    {class} function addDeserializationExclusionStrategy(P1: JExclusionStrategy): JGsonBuilder; cdecl;//Deprecated
    {class} function addSerializationExclusionStrategy(P1: JExclusionStrategy): JGsonBuilder; cdecl;//Deprecated
    {class} function create: JGson; cdecl;//Deprecated
    {class} function disableHtmlEscaping: JGsonBuilder; cdecl;//Deprecated
    {class} function disableInnerClassSerialization: JGsonBuilder; cdecl;//Deprecated
    {class} function enableComplexMapKeySerialization: JGsonBuilder; cdecl;//Deprecated
    {class} function excludeFieldsWithoutExposeAnnotation: JGsonBuilder; cdecl;//Deprecated
    {class} function generateNonExecutableJson: JGsonBuilder; cdecl;//Deprecated
    {class} function init: JGsonBuilder; cdecl;//Deprecated
    {class} function registerTypeAdapter(P1: Jreflect_Type; P2: JObject): JGsonBuilder; cdecl;//Deprecated
    {class} function registerTypeAdapterFactory(P1: JTypeAdapterFactory): JGsonBuilder; cdecl;//Deprecated
    {class} function registerTypeHierarchyAdapter(P1: Jlang_Class; P2: JObject): JGsonBuilder; cdecl;//Deprecated
    {class} function serializeNulls: JGsonBuilder; cdecl;//Deprecated
    {class} function serializeSpecialFloatingPointValues: JGsonBuilder; cdecl;//Deprecated
    {class} function setDateFormat(P1: Integer): JGsonBuilder; cdecl; overload;//Deprecated
    {class} function setDateFormat(P1: JString): JGsonBuilder; cdecl; overload;//Deprecated
    {class} function setDateFormat(P1: Integer; P2: Integer): JGsonBuilder; cdecl; overload;//Deprecated
    {class} function setFieldNamingPolicy(P1: JFieldNamingPolicy): JGsonBuilder; cdecl;//Deprecated
    {class} function setFieldNamingStrategy(P1: JFieldNamingStrategy): JGsonBuilder; cdecl;//Deprecated
    {class} function setLongSerializationPolicy(P1: JLongSerializationPolicy): JGsonBuilder; cdecl;//Deprecated
    {class} function setPrettyPrinting: JGsonBuilder; cdecl;//Deprecated
    {class} function setVersion(P1: Double): JGsonBuilder; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/GsonBuilder')]
  JGsonBuilder = interface(JObject)
    ['{862EEE77-FD61-476C-BEC3-E6F3D88E0914}']
  end;
  TJGsonBuilder = class(TJavaGenericImport<JGsonBuilderClass, JGsonBuilder>) end;

  JInstanceCreatorClass = interface(IJavaClass)
    ['{5F037EF1-E14D-4E2B-BA66-9813B1C46227}']
    {class} function createInstance(P1: Jreflect_Type): JObject; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/InstanceCreator')]
  JInstanceCreator = interface(IJavaInstance)
    ['{56405987-CA32-4526-A084-FE31D52C8E30}']
  end;
  TJInstanceCreator = class(TJavaGenericImport<JInstanceCreatorClass, JInstanceCreator>) end;

  JJsonElementClass = interface(JObjectClass)
    ['{DC487CD1-A05D-4507-88D3-88818353DB99}']
    {class} function getAsBigDecimal: JBigDecimal; cdecl;//Deprecated
    {class} function getAsBigInteger: JBigInteger; cdecl;//Deprecated
    {class} function getAsBoolean: Boolean; cdecl;//Deprecated
    {class} function getAsByte: Byte; cdecl;//Deprecated
    {class} function getAsCharacter: Char; cdecl;//Deprecated
    {class} function getAsDouble: Double; cdecl;//Deprecated
    {class} function getAsFloat: Single; cdecl;//Deprecated
    {class} function getAsInt: Integer; cdecl;//Deprecated
    {class} function getAsJsonArray: Jgson_JsonArray; cdecl;//Deprecated
    {class} function getAsJsonNull: JJsonNull; cdecl;//Deprecated
    {class} function getAsJsonObject: Jgson_JsonObject; cdecl;//Deprecated
    {class} function getAsJsonPrimitive: JJsonPrimitive; cdecl;//Deprecated
    {class} function getAsLong: Int64; cdecl;//Deprecated
    {class} function getAsNumber: JNumber; cdecl;//Deprecated
    {class} function getAsShort: SmallInt; cdecl;//Deprecated
    {class} function getAsString: JString; cdecl;//Deprecated
    {class} function init: JJsonElement; cdecl;//Deprecated
    {class} function isJsonArray: Boolean; cdecl;//Deprecated
    {class} function isJsonNull: Boolean; cdecl;//Deprecated
    {class} function isJsonObject: Boolean; cdecl;//Deprecated
    {class} function isJsonPrimitive: Boolean; cdecl;//Deprecated
    {class} function toString: JString; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/JsonElement')]
  JJsonElement = interface(JObject)
    ['{BDA0C659-614E-451C-8BBA-09DEAA0766C0}']
  end;
  TJJsonElement = class(TJavaGenericImport<JJsonElementClass, JJsonElement>) end;

  Jgson_JsonArrayClass = interface(JJsonElementClass)
    ['{63904718-48D2-4B3F-8D5A-D4F56E42DF60}']
    {class} procedure add(P1: JJsonElement); cdecl;//Deprecated
    {class} procedure addAll(P1: Jgson_JsonArray); cdecl;//Deprecated
    {class} function equals(P1: JObject): Boolean; cdecl;//Deprecated
    {class} function get(P1: Integer): JJsonElement; cdecl;//Deprecated
    {class} function getAsBigDecimal: JBigDecimal; cdecl;//Deprecated
    {class} function getAsBigInteger: JBigInteger; cdecl;//Deprecated
    {class} function getAsBoolean: Boolean; cdecl;//Deprecated
    {class} function getAsByte: Byte; cdecl;//Deprecated
    {class} function getAsCharacter: Char; cdecl;//Deprecated
    {class} function getAsDouble: Double; cdecl;//Deprecated
    {class} function getAsFloat: Single; cdecl;//Deprecated
    {class} function getAsInt: Integer; cdecl;//Deprecated
    {class} function getAsLong: Int64; cdecl;//Deprecated
    {class} function getAsNumber: JNumber; cdecl;//Deprecated
    {class} function getAsShort: SmallInt; cdecl;//Deprecated
    {class} function getAsString: JString; cdecl;//Deprecated
    {class} function hashCode: Integer; cdecl;//Deprecated
    {class} function init: Jgson_JsonArray; cdecl;//Deprecated
    {class} function iterator: JIterator; cdecl;//Deprecated
    {class} function size: Integer; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/JsonArray')]
  Jgson_JsonArray = interface(JJsonElement)
    ['{D9371301-3C32-4ED6-9271-91220E619295}']
  end;
  TJgson_JsonArray = class(TJavaGenericImport<Jgson_JsonArrayClass, Jgson_JsonArray>) end;

  JJsonDeserializerClass = interface(IJavaClass)
    ['{C638A9F8-A2A5-4F29-99B7-21812E90E1EA}']
    {class} function deserialize(P1: JJsonElement; P2: Jreflect_Type; P3: JJsonDeserializationContext): JObject; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/JsonDeserializer')]
  JJsonDeserializer = interface(IJavaInstance)
    ['{C7926AC8-9B88-4ED3-9C2B-632D5DADC09D}']
  end;
  TJJsonDeserializer = class(TJavaGenericImport<JJsonDeserializerClass, JJsonDeserializer>) end;

  JJsonParseExceptionClass = interface(JRuntimeExceptionClass)
    ['{78FBA049-1224-4363-A0D9-1EF9EF37A838}']
    {class} function init(P1: JThrowable): JJsonParseException; cdecl; overload;
    {class} function init(P1: JString): JJsonParseException; cdecl; overload;
    {class} function init(P1: JString; P2: JThrowable): JJsonParseException; cdecl; overload;
  end;

  [JavaSignature('com/google/gson/JsonParseException')]
  JJsonParseException = interface(JRuntimeException)
    ['{50824DAA-CBD3-48C1-99A0-98495882E052}']
  end;
  TJJsonParseException = class(TJavaGenericImport<JJsonParseExceptionClass, JJsonParseException>) end;

  JJsonIOExceptionClass = interface(JJsonParseExceptionClass)
    ['{D0021E26-91CB-4448-88C7-2EAE2B750620}']
    {class} function init(P1: JThrowable): JJsonIOException; cdecl; overload;//Deprecated
    {class} function init(P1: JString): JJsonIOException; cdecl; overload;//Deprecated
    {class} function init(P1: JString; P2: JThrowable): JJsonIOException; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/JsonIOException')]
  JJsonIOException = interface(JJsonParseException)
    ['{88DBA3D1-D74A-41D8-AD56-B7C4D0478771}']
  end;
  TJJsonIOException = class(TJavaGenericImport<JJsonIOExceptionClass, JJsonIOException>) end;

  JJsonNullClass = interface(JJsonElementClass)
    ['{EB4F85F1-042C-46FF-9A81-4E22BEC10D0B}']
    {class} function _GetINSTANCE: JJsonNull; cdecl;
    {class} function init: JJsonNull; cdecl;
    {class} property INSTANCE: JJsonNull read _GetINSTANCE;
  end;

  [JavaSignature('com/google/gson/JsonNull')]
  JJsonNull = interface(JJsonElement)
    ['{0858B52C-F7A3-4E3C-B959-F99D0C59B3F3}']
    function equals(P1: JObject): Boolean; cdecl;
    function hashCode: Integer; cdecl;
  end;
  TJJsonNull = class(TJavaGenericImport<JJsonNullClass, JJsonNull>) end;

  Jgson_JsonObjectClass = interface(JJsonElementClass)
    ['{5142602F-1B7C-47FB-9244-EA4577AEC743}']
    {class} procedure add(P1: JString; P2: JJsonElement); cdecl;//Deprecated
    {class} procedure addProperty(P1: JString; P2: JNumber); cdecl; overload;//Deprecated
    {class} procedure addProperty(P1: JString; P2: JCharacter); cdecl; overload;//Deprecated
    {class} procedure addProperty(P1: JString; P2: JBoolean); cdecl; overload;//Deprecated
    {class} procedure addProperty(P1: JString; P2: JString); cdecl; overload;//Deprecated
    {class} function entrySet: JSet; cdecl;//Deprecated
    {class} function equals(P1: JObject): Boolean; cdecl;//Deprecated
    {class} function get(P1: JString): JJsonElement; cdecl;//Deprecated
    {class} function getAsJsonArray(P1: JString): Jgson_JsonArray; cdecl;//Deprecated
    {class} function getAsJsonObject(P1: JString): Jgson_JsonObject; cdecl;//Deprecated
    {class} function getAsJsonPrimitive(P1: JString): JJsonPrimitive; cdecl;//Deprecated
    {class} function has(P1: JString): Boolean; cdecl;//Deprecated
    {class} function hashCode: Integer; cdecl;//Deprecated
    {class} function init: Jgson_JsonObject; cdecl;//Deprecated
    {class} function remove(P1: JString): JJsonElement; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/JsonObject')]
  Jgson_JsonObject = interface(JJsonElement)
    ['{0FFE4E58-1E00-4635-B349-1480AACA4736}']
  end;
  TJgson_JsonObject = class(TJavaGenericImport<Jgson_JsonObjectClass, Jgson_JsonObject>) end;

  JJsonParserClass = interface(JObjectClass)
    ['{EE0F0012-8C8B-4304-86CD-B82869184ACD}']
    {class} function init: JJsonParser; cdecl;//Deprecated
    {class} function parse(P1: Jstream_JsonReader): JJsonElement; cdecl; overload;//Deprecated
    {class} function parse(P1: JReader): JJsonElement; cdecl; overload;//Deprecated
    {class} function parse(P1: JString): JJsonElement; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/JsonParser')]
  JJsonParser = interface(JObject)
    ['{315856C3-8CCC-4882-B4CF-2CF7315C8CFD}']
  end;
  TJJsonParser = class(TJavaGenericImport<JJsonParserClass, JJsonParser>) end;

  JJsonPrimitiveClass = interface(JJsonElementClass)
    ['{BFC93922-6E62-4D19-9E40-6F825F9E5CE6}']
    {class} function equals(P1: JObject): Boolean; cdecl;//Deprecated
    {class} function getAsBigDecimal: JBigDecimal; cdecl;//Deprecated
    {class} function getAsBigInteger: JBigInteger; cdecl;//Deprecated
    {class} function getAsBoolean: Boolean; cdecl;//Deprecated
    {class} function getAsByte: Byte; cdecl;//Deprecated
    {class} function getAsCharacter: Char; cdecl;//Deprecated
    {class} function getAsDouble: Double; cdecl;//Deprecated
    {class} function getAsFloat: Single; cdecl;//Deprecated
    {class} function getAsInt: Integer; cdecl;//Deprecated
    {class} function getAsLong: Int64; cdecl;//Deprecated
    {class} function getAsNumber: JNumber; cdecl;//Deprecated
    {class} function getAsShort: SmallInt; cdecl;//Deprecated
    {class} function getAsString: JString; cdecl;//Deprecated
    {class} function hashCode: Integer; cdecl;//Deprecated
    {class} function init(P1: JString): JJsonPrimitive; cdecl; overload;//Deprecated
    {class} function init(P1: JBoolean): JJsonPrimitive; cdecl; overload;//Deprecated
    {class} function init(P1: JNumber): JJsonPrimitive; cdecl; overload;//Deprecated
    {class} function init(P1: JCharacter): JJsonPrimitive; cdecl; overload;//Deprecated
    {class} function isBoolean: Boolean; cdecl;//Deprecated
    {class} function isNumber: Boolean; cdecl;//Deprecated
    {class} function isString: Boolean; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/JsonPrimitive')]
  JJsonPrimitive = interface(JJsonElement)
    ['{F4541230-6708-4111-8F9C-7622DA45E51E}']
  end;
  TJJsonPrimitive = class(TJavaGenericImport<JJsonPrimitiveClass, JJsonPrimitive>) end;

  JJsonStreamParserClass = interface(JIteratorClass)
    ['{AD0CEF29-CB80-44AB-8DEE-3F3F3E44890B}']
    {class} function hasNext: Boolean; cdecl;//Deprecated
    {class} function init(P1: JReader): JJsonStreamParser; cdecl; overload;//Deprecated
    {class} function init(P1: JString): JJsonStreamParser; cdecl; overload;//Deprecated
    {class} function next: JJsonElement; cdecl;//Deprecated
    {class} procedure remove; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/JsonStreamParser')]
  JJsonStreamParser = interface(JIterator)
    ['{B7ED4208-57AA-411F-BA96-17BAF5E89876}']
  end;
  TJJsonStreamParser = class(TJavaGenericImport<JJsonStreamParserClass, JJsonStreamParser>) end;

  JJsonSyntaxExceptionClass = interface(JJsonParseExceptionClass)
    ['{ECCC9F31-486E-43AA-BF9D-C40E95A36C25}']
    {class} function init(P1: JThrowable): JJsonSyntaxException; cdecl; overload;//Deprecated
    {class} function init(P1: JString): JJsonSyntaxException; cdecl; overload;//Deprecated
    {class} function init(P1: JString; P2: JThrowable): JJsonSyntaxException; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/JsonSyntaxException')]
  JJsonSyntaxException = interface(JJsonParseException)
    ['{80F85BF3-E3B3-478A-B9BE-0E53B36EB7F7}']
  end;
  TJJsonSyntaxException = class(TJavaGenericImport<JJsonSyntaxExceptionClass, JJsonSyntaxException>) end;

  JLongSerializationPolicyClass = interface(JEnumClass)
    ['{F76F5AAE-BE72-4CD0-9478-738366D0B820}']
    {class} function _GetDEFAULT: JLongSerializationPolicy; cdecl;
    {class} function _GetSTRING: JLongSerializationPolicy; cdecl;
    {class} function valueOf(P1: JString): JLongSerializationPolicy; cdecl;
    {class} function values: TJavaObjectArray<JLongSerializationPolicy>; cdecl;
    {class} property DEFAULT: JLongSerializationPolicy read _GetDEFAULT;
    {class} property STRING: JLongSerializationPolicy read _GetSTRING;
  end;

  [JavaSignature('com/google/gson/LongSerializationPolicy')]
  JLongSerializationPolicy = interface(JEnum)
    ['{BB2BE179-B036-43AE-9A36-679AA8B7B0B9}']
    function serialize(P1: JLong): JJsonElement; cdecl;
  end;
  TJLongSerializationPolicy = class(TJavaGenericImport<JLongSerializationPolicyClass, JLongSerializationPolicy>) end;

  JLongSerializationPolicy_1Class = interface(JLongSerializationPolicyClass)
    ['{85FE3B92-57DD-4B8B-814C-73DD4E645F51}']
    {class} function serialize(P1: JLong): JJsonElement; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/LongSerializationPolicy$1')]
  JLongSerializationPolicy_1 = interface(JLongSerializationPolicy)
    ['{7B8D4B68-9C89-4EBE-ABB4-3B3EFC758D66}']
  end;
  TJLongSerializationPolicy_1 = class(TJavaGenericImport<JLongSerializationPolicy_1Class, JLongSerializationPolicy_1>) end;

  JLongSerializationPolicy_2Class = interface(JLongSerializationPolicyClass)
    ['{4765D23D-9C9F-45C3-91D1-1B5179C7BF08}']
    {class} function serialize(P1: JLong): JJsonElement; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/LongSerializationPolicy$2')]
  JLongSerializationPolicy_2 = interface(JLongSerializationPolicy)
    ['{5CE1BEEC-DCE2-4408-A2B5-14756E3E17BD}']
  end;
  TJLongSerializationPolicy_2 = class(TJavaGenericImport<JLongSerializationPolicy_2Class, JLongSerializationPolicy_2>) end;

  JTreeTypeAdapterClass = interface(JTypeAdapterClass)
    ['{30C27780-3F34-4DCA-BAE0-A5A8A58E6F73}']
    {class} function newFactory(P1: JTypeToken; P2: JObject): JTypeAdapterFactory; cdecl;//Deprecated
    {class} function newFactoryWithMatchRawType(P1: JTypeToken; P2: JObject): JTypeAdapterFactory; cdecl;//Deprecated
    {class} function newTypeHierarchyFactory(P1: Jlang_Class; P2: JObject): JTypeAdapterFactory; cdecl;//Deprecated
    {class} function read(P1: Jstream_JsonReader): JObject; cdecl;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/TreeTypeAdapter')]
  JTreeTypeAdapter = interface(JTypeAdapter)
    ['{B7CA0C01-BC0B-42FE-99B7-302F71EFDCAC}']
  end;
  TJTreeTypeAdapter = class(TJavaGenericImport<JTreeTypeAdapterClass, JTreeTypeAdapter>) end;

  JTreeTypeAdapter_1Class = interface(JObjectClass)
    ['{FAF4FBB7-96B0-4DD0-A03D-6619759240B3}']
  end;

  [JavaSignature('com/google/gson/TreeTypeAdapter$1')]
  JTreeTypeAdapter_1 = interface(JObject)
    ['{A9C7A356-F5E3-428E-9055-8A0092FD54FE}']
  end;
  TJTreeTypeAdapter_1 = class(TJavaGenericImport<JTreeTypeAdapter_1Class, JTreeTypeAdapter_1>) end;

  JTypeAdapterFactoryClass = interface(IJavaClass)
    ['{C0F02D38-CFCE-4E48-B6A9-A40CC6401550}']
    {class} function create(P1: JGson; P2: JTypeToken): JTypeAdapter; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/TypeAdapterFactory')]
  JTypeAdapterFactory = interface(IJavaInstance)
    ['{3CF82D02-415F-44B8-A7B5-DFDDA2173B20}']
  end;
  TJTypeAdapterFactory = class(TJavaGenericImport<JTypeAdapterFactoryClass, JTypeAdapterFactory>) end;

  JTreeTypeAdapter_SingleTypeFactoryClass = interface(JTypeAdapterFactoryClass)
    ['{497AC0DD-44D4-4FD3-A4CC-3D0AAEE00FE3}']
    {class} function create(P1: JGson; P2: JTypeToken): JTypeAdapter; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/TreeTypeAdapter$SingleTypeFactory')]
  JTreeTypeAdapter_SingleTypeFactory = interface(JTypeAdapterFactory)
    ['{71689EA5-A6B5-4401-9C82-22E769C6CE6C}']
  end;
  TJTreeTypeAdapter_SingleTypeFactory = class(TJavaGenericImport<JTreeTypeAdapter_SingleTypeFactoryClass, JTreeTypeAdapter_SingleTypeFactory>) end;

  JTypeAdapter_1Class = interface(JTypeAdapterClass)
    ['{CCEA4773-3E34-4F80-A9AE-165256DE9C67}']
  end;

  [JavaSignature('com/google/gson/TypeAdapter$1')]
  JTypeAdapter_1 = interface(JTypeAdapter)
    ['{98877B10-18E6-4EDA-99FC-06BFFF028384}']
    function read(P1: Jstream_JsonReader): JObject; cdecl;
    procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl;
  end;
  TJTypeAdapter_1 = class(TJavaGenericImport<JTypeAdapter_1Class, JTypeAdapter_1>) end;

  JExposeClass = interface(JAnnotationClass)
    ['{55313ABB-DC5B-4C4B-8922-836F115EB618}']
    {class} function deserialize: Boolean; cdecl;//Deprecated
    {class} function serialize: Boolean; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/annotations/Expose')]
  JExpose = interface(JAnnotation)
    ['{79C60B3D-B1C1-40F7-A21E-578CEC13B345}']
  end;
  TJExpose = class(TJavaGenericImport<JExposeClass, JExpose>) end;

  JSerializedNameClass = interface(JAnnotationClass)
    ['{3BDAEE89-E2C6-4B11-A10A-B37530162A4F}']
    {class} function value: JString; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/annotations/SerializedName')]
  JSerializedName = interface(JAnnotation)
    ['{87D3CB90-0F10-47A0-ACFA-86633B8C64CC}']
  end;
  TJSerializedName = class(TJavaGenericImport<JSerializedNameClass, JSerializedName>) end;

  JSinceClass = interface(JAnnotationClass)
    ['{A7ECA22B-4BAD-4B1A-BDA0-C7B38E5F5684}']
    {class} function value: Double; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/annotations/Since')]
  JSince = interface(JAnnotation)
    ['{2A231E4B-E303-40BF-BA1C-18500EA0ED10}']
  end;
  TJSince = class(TJavaGenericImport<JSinceClass, JSince>) end;

  JUntilClass = interface(JAnnotationClass)
    ['{F84851F8-CB18-4F5B-BBF3-A31D5943DEB9}']
    {class} function value: Double; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/annotations/Until')]
  JUntil = interface(JAnnotation)
    ['{020E9C73-66DA-46DB-80B7-10B2D52B0FE7}']
  end;
  TJUntil = class(TJavaGenericImport<JUntilClass, JUntil>) end;

  JGson_PreconditionsClass = interface(JObjectClass)
    ['{54880469-75FD-48A8-9CE5-D975D110E3C4}']
    {class} procedure checkArgument(P1: Boolean); cdecl;//Deprecated
    {class} function checkNotNull(P1: JObject): JObject; cdecl;//Deprecated
    {class} function init: JGson_Preconditions; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/$Gson$Preconditions')]
  JGson_Preconditions = interface(JObject)
    ['{6A544175-A82D-463C-A681-712C24951E83}']
  end;
  TJGson_Preconditions = class(TJavaGenericImport<JGson_PreconditionsClass, JGson_Preconditions>) end;

  JGson_TypesClass = interface(JObjectClass)
    ['{0A1845A9-44B3-4892-A93B-F4B0A3E301B4}']
    {class} function arrayOf(P1: Jreflect_Type): JGenericArrayType; cdecl;
    {class} function canonicalize(P1: Jreflect_Type): Jreflect_Type; cdecl;
    {class} function equals(P1: Jreflect_Type; P2: Jreflect_Type): Boolean; cdecl;
    {class} function getArrayComponentType(P1: Jreflect_Type): Jreflect_Type; cdecl;
    {class} function getCollectionElementType(P1: Jreflect_Type; P2: Jlang_Class): Jreflect_Type; cdecl;
    {class} function getMapKeyAndValueTypes(P1: Jreflect_Type; P2: Jlang_Class): TJavaObjectArray<Jreflect_Type>; cdecl;
    {class} function getRawType(P1: Jreflect_Type): Jlang_Class; cdecl;
    {class} function resolve(P1: Jreflect_Type; P2: Jlang_Class; P3: Jreflect_Type): Jreflect_Type; cdecl;
    {class} function subtypeOf(P1: Jreflect_Type): JWildcardType; cdecl;
    {class} function supertypeOf(P1: Jreflect_Type): JWildcardType; cdecl;
    {class} function typeToString(P1: Jreflect_Type): JString; cdecl;
  end;

  [JavaSignature('com/google/gson/internal/$Gson$Types')]
  JGson_Types = interface(JObject)
    ['{BA6D4C10-6BCF-49FE-A9DC-9D86F84960D2}']
  end;
  TJGson_Types = class(TJavaGenericImport<JGson_TypesClass, JGson_Types>) end;

  JGenericArrayTypeClass = interface(Jreflect_TypeClass)
    ['{BC1E6361-3964-4781-8E47-7E753EA2C3C3}']
  end;

  [JavaSignature('java/lang/reflect/GenericArrayType')]
  JGenericArrayType = interface(Jreflect_Type)
    ['{0329030A-A192-4456-AB90-BFBAA54CCE02}']
    function getGenericComponentType: Jreflect_Type; cdecl;
  end;
  TJGenericArrayType = class(TJavaGenericImport<JGenericArrayTypeClass, JGenericArrayType>) end;

  JTypes_GenericArrayTypeImplClass = interface(JGenericArrayTypeClass)
    ['{069241AA-67A5-4AC8-B651-C7AD41D241E9}']
    {class} function equals(P1: JObject): Boolean; cdecl;//Deprecated
    {class} function getGenericComponentType: Jreflect_Type; cdecl;//Deprecated
    {class} function hashCode: Integer; cdecl;//Deprecated
    {class} function init(P1: Jreflect_Type): JTypes_GenericArrayTypeImpl; cdecl;//Deprecated
    {class} function toString: JString; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/$Gson$Types$GenericArrayTypeImpl')]
  JTypes_GenericArrayTypeImpl = interface(JGenericArrayType)
    ['{DB7ABE9B-2CB7-48EA-B5C9-4EA0E1E9CCD8}']
  end;
  TJTypes_GenericArrayTypeImpl = class(TJavaGenericImport<JTypes_GenericArrayTypeImplClass, JTypes_GenericArrayTypeImpl>) end;

  JParameterizedTypeClass = interface(Jreflect_TypeClass)
    ['{4C465943-6F66-4277-BB2C-11230CE5F252}']
    {class} function getOwnerType: Jreflect_Type; cdecl;
    {class} function getRawType: Jreflect_Type; cdecl;
  end;

  [JavaSignature('java/lang/reflect/ParameterizedType')]
  JParameterizedType = interface(Jreflect_Type)
    ['{C42D4154-E5B2-49BF-BE99-2E74F90851C5}']
    function getActualTypeArguments: TJavaObjectArray<Jreflect_Type>; cdecl;
  end;
  TJParameterizedType = class(TJavaGenericImport<JParameterizedTypeClass, JParameterizedType>) end;

  JTypes_ParameterizedTypeImplClass = interface(JParameterizedTypeClass)
    ['{21386A26-4F9B-4B2A-9392-86F8D9566C16}']
    {class} function equals(P1: JObject): Boolean; cdecl;//Deprecated
    {class} function getActualTypeArguments: TJavaObjectArray<Jreflect_Type>; cdecl;//Deprecated
    {class} function getOwnerType: Jreflect_Type; cdecl;//Deprecated
    {class} function getRawType: Jreflect_Type; cdecl;//Deprecated
    {class} function hashCode: Integer; cdecl;//Deprecated
    {class} function toString: JString; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/$Gson$Types$ParameterizedTypeImpl')]
  JTypes_ParameterizedTypeImpl = interface(JParameterizedType)
    ['{6AC1B656-29C7-4D8D-9DAD-7591D54E54B3}']
  end;
  TJTypes_ParameterizedTypeImpl = class(TJavaGenericImport<JTypes_ParameterizedTypeImplClass, JTypes_ParameterizedTypeImpl>) end;

  JWildcardTypeClass = interface(Jreflect_TypeClass)
    ['{DD252B1B-321F-453B-8506-D27228E75F23}']
  end;

  [JavaSignature('java/lang/reflect/WildcardType')]
  JWildcardType = interface(Jreflect_Type)
    ['{7B802C28-AE7D-4494-A4DB-D8723CDFD462}']
    function getLowerBounds: TJavaObjectArray<Jreflect_Type>; cdecl;
    function getUpperBounds: TJavaObjectArray<Jreflect_Type>; cdecl;
  end;
  TJWildcardType = class(TJavaGenericImport<JWildcardTypeClass, JWildcardType>) end;

  JTypes_WildcardTypeImplClass = interface(JWildcardTypeClass)
    ['{4AEEE31F-1D6A-4561-BECB-19582AAC7500}']
    {class} function equals(P1: JObject): Boolean; cdecl;//Deprecated
    {class} function getLowerBounds: TJavaObjectArray<Jreflect_Type>; cdecl;//Deprecated
    {class} function getUpperBounds: TJavaObjectArray<Jreflect_Type>; cdecl;//Deprecated
    {class} function hashCode: Integer; cdecl;//Deprecated
    {class} function init(P1: TJavaObjectArray<Jreflect_Type>; P2: TJavaObjectArray<Jreflect_Type>): JTypes_WildcardTypeImpl; cdecl;//Deprecated
    {class} function toString: JString; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/$Gson$Types$WildcardTypeImpl')]
  JTypes_WildcardTypeImpl = interface(JWildcardType)
    ['{8EE1A52B-5227-4579-A71C-8368BB9A1F46}']
  end;
  TJTypes_WildcardTypeImpl = class(TJavaGenericImport<JTypes_WildcardTypeImplClass, JTypes_WildcardTypeImpl>) end;

  JConstructorConstructorClass = interface(JObjectClass)
    ['{2B6A35CD-4649-4438-A8F0-665B4B896E49}']
    {class} function get(P1: JTypeToken): JObjectConstructor; cdecl;//Deprecated
    {class} function init(P1: JMap): JConstructorConstructor; cdecl;//Deprecated
    {class} function toString: JString; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/ConstructorConstructor')]
  JConstructorConstructor = interface(JObject)
    ['{6906060F-D2AF-4218-B919-AC6FD9EF732D}']
  end;
  TJConstructorConstructor = class(TJavaGenericImport<JConstructorConstructorClass, JConstructorConstructor>) end;

  JObjectConstructorClass = interface(IJavaClass)
    ['{16D40262-42E7-4753-AB43-520F78E3A5C1}']
    {class} function construct: JObject; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/ObjectConstructor')]
  JObjectConstructor = interface(IJavaInstance)
    ['{531AF056-AE87-44E4-B6CB-E68C02EE8666}']
  end;
  TJObjectConstructor = class(TJavaGenericImport<JObjectConstructorClass, JObjectConstructor>) end;

  JConstructorConstructor_1Class = interface(JObjectConstructorClass)
    ['{2FF6E82C-262B-4133-9D36-9E63444F80EB}']
  end;

  [JavaSignature('com/google/gson/internal/ConstructorConstructor$1')]
  JConstructorConstructor_1 = interface(JObjectConstructor)
    ['{7EC22756-407B-4FC5-9554-1564F2617F1B}']
    function construct: JObject; cdecl;
  end;
  TJConstructorConstructor_1 = class(TJavaGenericImport<JConstructorConstructor_1Class, JConstructorConstructor_1>) end;

  JConstructorConstructor_10Class = interface(JObjectConstructorClass)
    ['{89DFB88B-1146-41E3-AB9A-F96C4C63ABB9}']
  end;

  [JavaSignature('com/google/gson/internal/ConstructorConstructor$10')]
  JConstructorConstructor_10 = interface(JObjectConstructor)
    ['{53F62E91-8225-49ED-BA3D-1C16D5C41F81}']
    function construct: JObject; cdecl;
  end;
  TJConstructorConstructor_10 = class(TJavaGenericImport<JConstructorConstructor_10Class, JConstructorConstructor_10>) end;

  JConstructorConstructor_11Class = interface(JObjectConstructorClass)
    ['{F24F55D2-B1EC-4AEF-BC1E-34EC5A845BA8}']
  end;

  [JavaSignature('com/google/gson/internal/ConstructorConstructor$11')]
  JConstructorConstructor_11 = interface(JObjectConstructor)
    ['{F53DC1D7-DB4B-4AC7-81A6-53130F53AFCC}']
    function construct: JObject; cdecl;
  end;
  TJConstructorConstructor_11 = class(TJavaGenericImport<JConstructorConstructor_11Class, JConstructorConstructor_11>) end;

  JConstructorConstructor_12Class = interface(JObjectConstructorClass)
    ['{06CDC94F-1B69-4BC7-B2A3-B6522E7F0D90}']
  end;

  [JavaSignature('com/google/gson/internal/ConstructorConstructor$12')]
  JConstructorConstructor_12 = interface(JObjectConstructor)
    ['{F4734031-EE83-431F-87FA-F0671BEFA212}']
    function construct: JObject; cdecl;
  end;
  TJConstructorConstructor_12 = class(TJavaGenericImport<JConstructorConstructor_12Class, JConstructorConstructor_12>) end;

  JConstructorConstructor_2Class = interface(JObjectConstructorClass)
    ['{E825A59C-EA68-4060-8207-33F522784CBF}']
  end;

  [JavaSignature('com/google/gson/internal/ConstructorConstructor$2')]
  JConstructorConstructor_2 = interface(JObjectConstructor)
    ['{E034330D-44FE-44F8-85A5-18819F8A36D9}']
    function construct: JObject; cdecl;
  end;
  TJConstructorConstructor_2 = class(TJavaGenericImport<JConstructorConstructor_2Class, JConstructorConstructor_2>) end;

  JConstructorConstructor_3Class = interface(JObjectConstructorClass)
    ['{406D57C0-9879-4DE9-B522-B28D7E328640}']
  end;

  [JavaSignature('com/google/gson/internal/ConstructorConstructor$3')]
  JConstructorConstructor_3 = interface(JObjectConstructor)
    ['{2A64CEDE-CD46-4688-AC05-81E843030708}']
    function construct: JObject; cdecl;
  end;
  TJConstructorConstructor_3 = class(TJavaGenericImport<JConstructorConstructor_3Class, JConstructorConstructor_3>) end;

  JConstructorConstructor_4Class = interface(JObjectConstructorClass)
    ['{5B216671-5566-401B-B1FF-432A44513D58}']
  end;

  [JavaSignature('com/google/gson/internal/ConstructorConstructor$4')]
  JConstructorConstructor_4 = interface(JObjectConstructor)
    ['{E8DA29D6-8443-42B8-9E87-E0B4986D28CB}']
    function construct: JObject; cdecl;
  end;
  TJConstructorConstructor_4 = class(TJavaGenericImport<JConstructorConstructor_4Class, JConstructorConstructor_4>) end;

  JConstructorConstructor_5Class = interface(JObjectConstructorClass)
    ['{8D3DD3E2-5083-47AF-BD49-EEC97687ED16}']
  end;

  [JavaSignature('com/google/gson/internal/ConstructorConstructor$5')]
  JConstructorConstructor_5 = interface(JObjectConstructor)
    ['{D625F7B8-5DBE-4E4C-AA44-2A129315AC3B}']
    function construct: JObject; cdecl;
  end;
  TJConstructorConstructor_5 = class(TJavaGenericImport<JConstructorConstructor_5Class, JConstructorConstructor_5>) end;

  JConstructorConstructor_6Class = interface(JObjectConstructorClass)
    ['{DE5EB0F5-7CC7-45CD-91EE-706EDB073B5E}']
  end;

  [JavaSignature('com/google/gson/internal/ConstructorConstructor$6')]
  JConstructorConstructor_6 = interface(JObjectConstructor)
    ['{38FEB97D-70C8-4470-866B-54E28B687823}']
    function construct: JObject; cdecl;
  end;
  TJConstructorConstructor_6 = class(TJavaGenericImport<JConstructorConstructor_6Class, JConstructorConstructor_6>) end;

  JConstructorConstructor_7Class = interface(JObjectConstructorClass)
    ['{976E4B53-0717-4C07-B4D2-4710DD680290}']
  end;

  [JavaSignature('com/google/gson/internal/ConstructorConstructor$7')]
  JConstructorConstructor_7 = interface(JObjectConstructor)
    ['{22D82DEF-BFE9-46AF-9E83-A39DB0F8EC88}']
    function construct: JObject; cdecl;
  end;
  TJConstructorConstructor_7 = class(TJavaGenericImport<JConstructorConstructor_7Class, JConstructorConstructor_7>) end;

  JConstructorConstructor_8Class = interface(JObjectConstructorClass)
    ['{09E06B55-9881-48C5-9A83-60A9B565F371}']
  end;

  [JavaSignature('com/google/gson/internal/ConstructorConstructor$8')]
  JConstructorConstructor_8 = interface(JObjectConstructor)
    ['{9D2DF852-106F-4719-9D4C-0A5AAF74DCCD}']
    function construct: JObject; cdecl;
  end;
  TJConstructorConstructor_8 = class(TJavaGenericImport<JConstructorConstructor_8Class, JConstructorConstructor_8>) end;

  JConstructorConstructor_9Class = interface(JObjectConstructorClass)
    ['{B79B3B15-BCE9-4B2E-85B8-4DF6403EA4E0}']
  end;

  [JavaSignature('com/google/gson/internal/ConstructorConstructor$9')]
  JConstructorConstructor_9 = interface(JObjectConstructor)
    ['{D17073D7-9FED-482D-8B82-0B42EEA39186}']
    function construct: JObject; cdecl;
  end;
  TJConstructorConstructor_9 = class(TJavaGenericImport<JConstructorConstructor_9Class, JConstructorConstructor_9>) end;

  JExcluderClass = interface(JTypeAdapterFactoryClass)
    ['{44E2A642-31BF-4298-9679-80437E279282}']
    {class} function _GetDEFAULT: JExcluder; cdecl;
    {class} function init: JExcluder; cdecl;
    {class} property DEFAULT: JExcluder read _GetDEFAULT;
  end;

  [JavaSignature('com/google/gson/internal/Excluder')]
  JExcluder = interface(JTypeAdapterFactory)
    ['{62184835-9E66-4B10-B7E5-733F346E0088}']
    function create(P1: JGson; P2: JTypeToken): JTypeAdapter; cdecl;
    function disableInnerClassSerialization: JExcluder; cdecl;
    function excludeClass(P1: Jlang_Class; P2: Boolean): Boolean; cdecl;
    function excludeField(P1: JField; P2: Boolean): Boolean; cdecl;
    function excludeFieldsWithoutExposeAnnotation: JExcluder; cdecl;
    function withExclusionStrategy(P1: JExclusionStrategy; P2: Boolean; P3: Boolean): JExcluder; cdecl;
    function withVersion(P1: Double): JExcluder; cdecl;
  end;
  TJExcluder = class(TJavaGenericImport<JExcluderClass, JExcluder>) end;

  JExcluder_1Class = interface(JTypeAdapterClass)
    ['{79B295E2-F3E2-4BFC-A76D-FC394927408C}']
  end;

  [JavaSignature('com/google/gson/internal/Excluder$1')]
  JExcluder_1 = interface(JTypeAdapter)
    ['{7BB31732-89C5-4713-A5B8-98D8CBBC2B4B}']
    function read(P1: Jstream_JsonReader): JObject; cdecl;
    procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl;
  end;
  TJExcluder_1 = class(TJavaGenericImport<JExcluder_1Class, JExcluder_1>) end;

  JJsonReaderInternalAccessClass = interface(JObjectClass)
    ['{89AA1210-5086-45CD-8884-D69733CC27C7}']
    {class} function _GetINSTANCE: JJsonReaderInternalAccess; cdecl;
    {class} function init: JJsonReaderInternalAccess; cdecl;
    {class} property INSTANCE: JJsonReaderInternalAccess read _GetINSTANCE;
  end;

  [JavaSignature('com/google/gson/internal/JsonReaderInternalAccess')]
  JJsonReaderInternalAccess = interface(JObject)
    ['{A9EACF0F-45C0-42D9-AD8E-CDAE35EE1F84}']
    procedure promoteNameToValue(P1: Jstream_JsonReader); cdecl;
  end;
  TJJsonReaderInternalAccess = class(TJavaGenericImport<JJsonReaderInternalAccessClass, JJsonReaderInternalAccess>) end;

  JLazilyParsedNumberClass = interface(JNumberClass)
    ['{F85DB693-4323-4351-89FC-207B65462151}']
    {class} function doubleValue: Double; cdecl;//Deprecated
    {class} function floatValue: Single; cdecl;//Deprecated
    {class} function init(P1: JString): JLazilyParsedNumber; cdecl;//Deprecated
    {class} function intValue: Integer; cdecl;//Deprecated
    {class} function longValue: Int64; cdecl;//Deprecated
    {class} function toString: JString; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/LazilyParsedNumber')]
  JLazilyParsedNumber = interface(JNumber)
    ['{2D565059-992B-4B78-843D-1EA4983EC9D2}']
  end;
  TJLazilyParsedNumber = class(TJavaGenericImport<JLazilyParsedNumberClass, JLazilyParsedNumber>) end;

  JLinkedTreeMapClass = interface(JAbstractMapClass)
    ['{FCC2092D-EAD8-40DF-A121-B5857422B3FD}']
    {class} function init: JLinkedTreeMap; cdecl; overload;
    {class} function init(P1: JComparator): JLinkedTreeMap; cdecl; overload;
  end;

  [JavaSignature('com/google/gson/internal/LinkedTreeMap')]
  JLinkedTreeMap = interface(JAbstractMap)
    ['{8D2EAF06-F01F-4BDE-B6F8-45FA3B49DDE0}']
    procedure clear; cdecl;
    function containsKey(P1: JObject): Boolean; cdecl;
    function entrySet: JSet; cdecl;
    function get(P1: JObject): JObject; cdecl;
    function keySet: JSet; cdecl;
    function put(P1: JObject; P2: JObject): JObject; cdecl;
    function remove(P1: JObject): JObject; cdecl;
    function size: Integer; cdecl;
  end;
  TJLinkedTreeMap = class(TJavaGenericImport<JLinkedTreeMapClass, JLinkedTreeMap>) end;

  JLinkedTreeMap_1Class = interface(JComparatorClass)
    ['{0958A79D-E829-4189-9E95-EC2EEEC5BDEC}']
    {class} function compare(P1: JObject; P2: JObject): Integer; cdecl; overload;//Deprecated
    {class} function compare(P1: JComparable; P2: JComparable): Integer; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/LinkedTreeMap$1')]
  JLinkedTreeMap_1 = interface(JComparator)
    ['{D44EEBE0-D0C4-478D-884B-A9BF29DEF169}']
  end;
  TJLinkedTreeMap_1 = class(TJavaGenericImport<JLinkedTreeMap_1Class, JLinkedTreeMap_1>) end;

  JLinkedTreeMap_EntrySetClass = interface(JAbstractSetClass)
    ['{75731A01-8040-47FB-B102-7A9E04587BE6}']
  end;

  [JavaSignature('com/google/gson/internal/LinkedTreeMap$EntrySet')]
  JLinkedTreeMap_EntrySet = interface(JAbstractSet)
    ['{C9B9AAD9-B66E-4656-8ADA-355305A4EC5C}']
    procedure clear; cdecl;
    function contains(P1: JObject): Boolean; cdecl;
    function iterator: JIterator; cdecl;
    function remove(P1: JObject): Boolean; cdecl;
    function size: Integer; cdecl;
  end;
  TJLinkedTreeMap_EntrySet = class(TJavaGenericImport<JLinkedTreeMap_EntrySetClass, JLinkedTreeMap_EntrySet>) end;

  JEntrySet_1Class = interface(JLinkedTreeMapClass)
    ['{0B81FDD4-FB72-4B20-90D2-3943070EC2BE}']
  end;

  [JavaSignature('com/google/gson/internal/LinkedTreeMap$EntrySet$1')]
  JEntrySet_1 = interface(JLinkedTreeMap)
    ['{D67B2B55-1603-4E31-AB80-AE2811432E33}']
    function next: JMap_Entry; cdecl;
  end;
  TJEntrySet_1 = class(TJavaGenericImport<JEntrySet_1Class, JEntrySet_1>) end;

  JLinkedTreeMap_KeySetClass = interface(JAbstractSetClass)
    ['{12ED41E9-966A-4DF4-982E-A8B5EC169D06}']
  end;

  [JavaSignature('com/google/gson/internal/LinkedTreeMap$KeySet')]
  JLinkedTreeMap_KeySet = interface(JAbstractSet)
    ['{CFA8435C-8A4C-4BA7-85B3-26CA43DC896B}']
    procedure clear; cdecl;
    function contains(P1: JObject): Boolean; cdecl;
    function iterator: JIterator; cdecl;
    function remove(P1: JObject): Boolean; cdecl;
    function size: Integer; cdecl;
  end;
  TJLinkedTreeMap_KeySet = class(TJavaGenericImport<JLinkedTreeMap_KeySetClass, JLinkedTreeMap_KeySet>) end;

  JKeySet_1Class = interface(JLinkedTreeMapClass)
    ['{8FAA3534-717F-49EA-86E8-BDE81AB83126}']
  end;

  [JavaSignature('com/google/gson/internal/LinkedTreeMap$KeySet$1')]
  JKeySet_1 = interface(JLinkedTreeMap)
    ['{D15AB582-00D7-4B43-AA68-2B2D2C41F06F}']
    function next: JObject; cdecl;
  end;
  TJKeySet_1 = class(TJavaGenericImport<JKeySet_1Class, JKeySet_1>) end;

  JLinkedTreeMap_LinkedTreeMapIteratorClass = interface(JIteratorClass)
    ['{D5F6E2A4-EBF0-48E0-B7E6-A9C959056771}']
  end;

  [JavaSignature('com/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator')]
  JLinkedTreeMap_LinkedTreeMapIterator = interface(JIterator)
    ['{87826D91-CF1F-4284-99F2-ECCFF8E2F236}']
    function hasNext: Boolean; cdecl;
    procedure remove; cdecl;
  end;
  TJLinkedTreeMap_LinkedTreeMapIterator = class(TJavaGenericImport<JLinkedTreeMap_LinkedTreeMapIteratorClass, JLinkedTreeMap_LinkedTreeMapIterator>) end;

  JMap_EntryClass = interface(IJavaClass)
    ['{CC37442E-BEA1-4D74-827E-0C89FA654831}']
    {class} function getKey: JObject; cdecl;//Deprecated
    {class} function getValue: JObject; cdecl;//Deprecated
    {class} function hashCode: Integer; cdecl;//Deprecated
  end;

  [JavaSignature('java/util/Map$Entry')]
  JMap_Entry = interface(IJavaInstance)
    ['{9D6A0684-A3FC-4629-A08A-36EDDA31753D}']
    function equals(object: JObject): Boolean; cdecl;//Deprecated
    function setValue(object: JObject): JObject; cdecl;//Deprecated
  end;
  TJMap_Entry = class(TJavaGenericImport<JMap_EntryClass, JMap_Entry>) end;

  JLinkedTreeMap_NodeClass = interface(JMap_EntryClass)
    ['{63148CED-3766-43C2-BAB2-F84CDB20684D}']
  end;

  [JavaSignature('com/google/gson/internal/LinkedTreeMap$Node')]
  JLinkedTreeMap_Node = interface(JMap_Entry)
    ['{1D0A9D74-856F-4F3E-A261-C52C0E7EDD0F}']
    function equals(P1: JObject): Boolean; cdecl;
    function first: JLinkedTreeMap_Node; cdecl;
    function getKey: JObject; cdecl;
    function getValue: JObject; cdecl;
    function hashCode: Integer; cdecl;
    function last: JLinkedTreeMap_Node; cdecl;
    function setValue(P1: JObject): JObject; cdecl;
    function toString: JString; cdecl;
  end;
  TJLinkedTreeMap_Node = class(TJavaGenericImport<JLinkedTreeMap_NodeClass, JLinkedTreeMap_Node>) end;

  JPrimitivesClass = interface(JObjectClass)
    ['{105B47B2-204F-4919-B553-9D2677BDD4C5}']
    {class} function isPrimitive(P1: Jreflect_Type): Boolean; cdecl;//Deprecated
    {class} function isWrapperType(P1: Jreflect_Type): Boolean; cdecl;//Deprecated
    {class} function unwrap(P1: Jlang_Class): Jlang_Class; cdecl;//Deprecated
    {class} function wrap(P1: Jlang_Class): Jlang_Class; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/Primitives')]
  JPrimitives = interface(JObject)
    ['{E5171AAA-AFD5-4014-AEC8-C768C9DDA9A6}']
  end;
  TJPrimitives = class(TJavaGenericImport<JPrimitivesClass, JPrimitives>) end;

  JStreamsClass = interface(JObjectClass)
    ['{99BC5DB3-4AA1-466C-AC2B-03039A1CC7D3}']
    {class} function init: JStreams; cdecl;//Deprecated
    {class} function parse(P1: Jstream_JsonReader): JJsonElement; cdecl;//Deprecated
    {class} procedure write(P1: JJsonElement; P2: Jstream_JsonWriter); cdecl;//Deprecated
    {class} function writerForAppendable(P1: JAppendable): JWriter; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/Streams')]
  JStreams = interface(JObject)
    ['{FB284512-348C-40E6-9929-E0590C4C8BC6}']
  end;
  TJStreams = class(TJavaGenericImport<JStreamsClass, JStreams>) end;

  JStreams_1Class = interface(JObjectClass)
    ['{EA8F748D-6133-483E-A3FE-E46B20C0CE67}']
  end;

  [JavaSignature('com/google/gson/internal/Streams$1')]
  JStreams_1 = interface(JObject)
    ['{7807FE3E-88CA-446A-9658-AC11A9497C97}']
  end;
  TJStreams_1 = class(TJavaGenericImport<JStreams_1Class, JStreams_1>) end;

  JStreams_AppendableWriterClass = interface(JWriterClass)
    ['{4FFA9DBA-DC1E-4549-A7DC-16B085D332BC}']
    {class} procedure close; cdecl;//Deprecated
    {class} procedure flush; cdecl;//Deprecated
    {class} procedure write(P1: Integer); cdecl; overload;//Deprecated
    {class} procedure write(P1: TJavaArray<Char>; P2: Integer; P3: Integer); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/Streams$AppendableWriter')]
  JStreams_AppendableWriter = interface(JWriter)
    ['{9C2C3577-0938-4625-B703-1BB4077B11EE}']
  end;
  TJStreams_AppendableWriter = class(TJavaGenericImport<JStreams_AppendableWriterClass, JStreams_AppendableWriter>) end;

  JAppendableWriter_CurrentWriteClass = interface(JCharSequenceClass)
    ['{5916CE61-69FF-4911-99DC-CE8632399AB1}']
  end;

  [JavaSignature('com/google/gson/internal/Streams$AppendableWriter$CurrentWrite')]
  JAppendableWriter_CurrentWrite = interface(JCharSequence)
    ['{39AA0284-8F32-4B7B-9A97-017F6F646759}']
    function charAt(P1: Integer): Char; cdecl;
    function length: Integer; cdecl;
    function subSequence(P1: Integer; P2: Integer): JCharSequence; cdecl;
  end;
  TJAppendableWriter_CurrentWrite = class(TJavaGenericImport<JAppendableWriter_CurrentWriteClass, JAppendableWriter_CurrentWrite>) end;

  JUnsafeAllocatorClass = interface(JObjectClass)
    ['{D3990DE9-130C-44E7-9ACB-7F8E2CBCAABA}']
    {class} function create: JUnsafeAllocator; cdecl;//Deprecated
    {class} function init: JUnsafeAllocator; cdecl;//Deprecated
    {class} function newInstance(P1: Jlang_Class): JObject; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/UnsafeAllocator')]
  JUnsafeAllocator = interface(JObject)
    ['{1FDBA069-5CC1-4D3C-BEA9-E0B7E4305FEE}']
  end;
  TJUnsafeAllocator = class(TJavaGenericImport<JUnsafeAllocatorClass, JUnsafeAllocator>) end;

  JUnsafeAllocator_1Class = interface(JUnsafeAllocatorClass)
    ['{AB4FC6F4-F571-442B-BF87-C6C627AF9263}']
  end;

  [JavaSignature('com/google/gson/internal/UnsafeAllocator$1')]
  JUnsafeAllocator_1 = interface(JUnsafeAllocator)
    ['{B474D453-D6B4-4844-B15F-5F0CEEE217D3}']
    function newInstance(P1: Jlang_Class): JObject; cdecl;
  end;
  TJUnsafeAllocator_1 = class(TJavaGenericImport<JUnsafeAllocator_1Class, JUnsafeAllocator_1>) end;

  JUnsafeAllocator_2Class = interface(JUnsafeAllocatorClass)
    ['{6D370E99-096E-4B86-AE1D-CC0F7744929F}']
  end;

  [JavaSignature('com/google/gson/internal/UnsafeAllocator$2')]
  JUnsafeAllocator_2 = interface(JUnsafeAllocator)
    ['{03A14538-5B65-4617-B58A-92A60C6DDC29}']
    function newInstance(P1: Jlang_Class): JObject; cdecl;
  end;
  TJUnsafeAllocator_2 = class(TJavaGenericImport<JUnsafeAllocator_2Class, JUnsafeAllocator_2>) end;

  JUnsafeAllocator_3Class = interface(JUnsafeAllocatorClass)
    ['{9826051D-A81A-48DE-B8D7-ACDCB087DC3D}']
  end;

  [JavaSignature('com/google/gson/internal/UnsafeAllocator$3')]
  JUnsafeAllocator_3 = interface(JUnsafeAllocator)
    ['{4CC88883-0988-4CEA-AF74-27D2477EEA3E}']
    function newInstance(P1: Jlang_Class): JObject; cdecl;
  end;
  TJUnsafeAllocator_3 = class(TJavaGenericImport<JUnsafeAllocator_3Class, JUnsafeAllocator_3>) end;

  JUnsafeAllocator_4Class = interface(JUnsafeAllocatorClass)
    ['{FCDA9A27-C2E6-4AC6-8BC2-1C4441EE9EF7}']
    {class} function newInstance(P1: Jlang_Class): JObject; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/UnsafeAllocator$4')]
  JUnsafeAllocator_4 = interface(JUnsafeAllocator)
    ['{2067A70A-E52D-4A59-AEA1-D14D41634367}']
  end;
  TJUnsafeAllocator_4 = class(TJavaGenericImport<JUnsafeAllocator_4Class, JUnsafeAllocator_4>) end;

  JArrayTypeAdapterClass = interface(JTypeAdapterClass)
    ['{F9805E80-C124-436F-B844-C977191405BF}']
    {class} function _GetFACTORY: JTypeAdapterFactory; cdecl;
    {class} function init(P1: JGson; P2: JTypeAdapter; P3: Jlang_Class): JArrayTypeAdapter; cdecl;
    {class} property FACTORY: JTypeAdapterFactory read _GetFACTORY;
  end;

  [JavaSignature('com/google/gson/internal/bind/ArrayTypeAdapter')]
  JArrayTypeAdapter = interface(JTypeAdapter)
    ['{89304A1F-D0BB-471A-AF95-49DD11985599}']
    function read(P1: Jstream_JsonReader): JObject; cdecl;
    procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl;
  end;
  TJArrayTypeAdapter = class(TJavaGenericImport<JArrayTypeAdapterClass, JArrayTypeAdapter>) end;

  JArrayTypeAdapter_1Class = interface(JTypeAdapterFactoryClass)
    ['{3EEA3A29-4787-4BE4-AD8E-260064892A86}']
    {class} function create(P1: JGson; P2: JTypeToken): JTypeAdapter; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/ArrayTypeAdapter$1')]
  JArrayTypeAdapter_1 = interface(JTypeAdapterFactory)
    ['{C044FCE8-8647-48D1-A376-CBD65896F697}']
  end;
  TJArrayTypeAdapter_1 = class(TJavaGenericImport<JArrayTypeAdapter_1Class, JArrayTypeAdapter_1>) end;

  JCollectionTypeAdapterFactoryClass = interface(JTypeAdapterFactoryClass)
    ['{76D1CBD1-3249-4749-8D2A-727DAE045C36}']
    {class} function create(P1: JGson; P2: JTypeToken): JTypeAdapter; cdecl;//Deprecated
    {class} function init(P1: JConstructorConstructor): JCollectionTypeAdapterFactory; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/CollectionTypeAdapterFactory')]
  JCollectionTypeAdapterFactory = interface(JTypeAdapterFactory)
    ['{7122A9BE-A2A0-47B2-AD55-32C10ABA5697}']
  end;
  TJCollectionTypeAdapterFactory = class(TJavaGenericImport<JCollectionTypeAdapterFactoryClass, JCollectionTypeAdapterFactory>) end;

  JCollectionTypeAdapterFactory_AdapterClass = interface(JTypeAdapterClass)
    ['{7F204E47-EE2D-453B-AE87-8864B6561AC8}']
    {class} function init(P1: JGson; P2: Jreflect_Type; P3: JTypeAdapter; P4: JObjectConstructor): JCollectionTypeAdapterFactory_Adapter; cdecl;//Deprecated
    {class} function read(P1: Jstream_JsonReader): JCollection; cdecl;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JCollection); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter')]
  JCollectionTypeAdapterFactory_Adapter = interface(JTypeAdapter)
    ['{CF5DBF82-3554-495F-9C02-6765001AF9A7}']
  end;
  TJCollectionTypeAdapterFactory_Adapter = class(TJavaGenericImport<JCollectionTypeAdapterFactory_AdapterClass, JCollectionTypeAdapterFactory_Adapter>) end;

  JDateTypeAdapterClass = interface(JTypeAdapterClass)
    ['{CE9EE050-6542-4B91-BA88-C52097D44B52}']
    {class} function _GetFACTORY: JTypeAdapterFactory; cdecl;
    {class} function init: JDateTypeAdapter; cdecl;
    {class} property FACTORY: JTypeAdapterFactory read _GetFACTORY;
  end;

  [JavaSignature('com/google/gson/internal/bind/DateTypeAdapter')]
  JDateTypeAdapter = interface(JTypeAdapter)
    ['{0AE8BB6E-D7D1-41AB-9535-9D2230277B5F}']
    function read(P1: Jstream_JsonReader): JDate; cdecl;
    procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;
    procedure write(P1: Jstream_JsonWriter; P2: JDate); cdecl; overload;
  end;
  TJDateTypeAdapter = class(TJavaGenericImport<JDateTypeAdapterClass, JDateTypeAdapter>) end;

  JDateTypeAdapter_1Class = interface(JTypeAdapterFactoryClass)
    ['{C013302C-6CB3-40A5-AEC4-AF918C0F2A00}']
    {class} function create(P1: JGson; P2: JTypeToken): JTypeAdapter; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/DateTypeAdapter$1')]
  JDateTypeAdapter_1 = interface(JTypeAdapterFactory)
    ['{93BCE528-05BC-4ECA-817D-7B15BCEF60DC}']
  end;
  TJDateTypeAdapter_1 = class(TJavaGenericImport<JDateTypeAdapter_1Class, JDateTypeAdapter_1>) end;

  Jstream_JsonReaderClass = interface(JCloseableClass)
    ['{2402C559-F0B9-48D8-A696-0B0FAA908446}']
    {class} procedure beginArray; cdecl;//Deprecated
    {class} procedure beginObject; cdecl;//Deprecated
    {class} procedure close; cdecl;//Deprecated
    {class} procedure endArray; cdecl;//Deprecated
    {class} procedure endObject; cdecl;//Deprecated
    {class} function hasNext: Boolean; cdecl;//Deprecated
    {class} function init(P1: JReader): Jstream_JsonReader; cdecl;//Deprecated
    {class} function isLenient: Boolean; cdecl;//Deprecated
    {class} function nextBoolean: Boolean; cdecl;//Deprecated
    {class} function nextDouble: Double; cdecl;//Deprecated
    {class} function nextInt: Integer; cdecl;//Deprecated
    {class} function nextLong: Int64; cdecl;//Deprecated
    {class} function nextName: JString; cdecl;//Deprecated
    {class} procedure nextNull; cdecl;//Deprecated
    {class} function nextString: JString; cdecl;//Deprecated
    {class} function peek: Jstream_JsonToken; cdecl;//Deprecated
    {class} procedure setLenient(P1: Boolean); cdecl;//Deprecated
    {class} procedure skipValue; cdecl;//Deprecated
    {class} function toString: JString; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/stream/JsonReader')]
  Jstream_JsonReader = interface(JCloseable)
    ['{D63FFB11-DBA8-4F89-9AD4-A487CA860197}']
  end;
  TJstream_JsonReader = class(TJavaGenericImport<Jstream_JsonReaderClass, Jstream_JsonReader>) end;

  JJsonTreeReaderClass = interface(Jstream_JsonReaderClass)
    ['{719A6037-835A-4C5D-B791-DD04141E0C4D}']
    {class} procedure beginArray; cdecl;//Deprecated
    {class} procedure beginObject; cdecl;//Deprecated
    {class} procedure close; cdecl;//Deprecated
    {class} procedure endArray; cdecl;//Deprecated
    {class} procedure endObject; cdecl;//Deprecated
    {class} function hasNext: Boolean; cdecl;//Deprecated
    {class} function init(P1: JJsonElement): JJsonTreeReader; cdecl;//Deprecated
    {class} function nextBoolean: Boolean; cdecl;//Deprecated
    {class} function nextDouble: Double; cdecl;//Deprecated
    {class} function nextInt: Integer; cdecl;//Deprecated
    {class} function nextLong: Int64; cdecl;//Deprecated
    {class} function nextName: JString; cdecl;//Deprecated
    {class} procedure nextNull; cdecl;//Deprecated
    {class} function nextString: JString; cdecl;//Deprecated
    {class} function peek: Jstream_JsonToken; cdecl;//Deprecated
    {class} procedure promoteNameToValue; cdecl;//Deprecated
    {class} procedure skipValue; cdecl;//Deprecated
    {class} function toString: JString; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/JsonTreeReader')]
  JJsonTreeReader = interface(Jstream_JsonReader)
    ['{9DAD6AAB-5A05-4205-BE1F-93867C0F539F}']
  end;
  TJJsonTreeReader = class(TJavaGenericImport<JJsonTreeReaderClass, JJsonTreeReader>) end;

  JJsonTreeReader_1Class = interface(JReaderClass)
    ['{E3AB7F1A-41CC-4F7E-B1E2-8A48F31FD48A}']
    {class} procedure close; cdecl;//Deprecated
    {class} function read(P1: TJavaArray<Char>; P2: Integer; P3: Integer): Integer; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/JsonTreeReader$1')]
  JJsonTreeReader_1 = interface(JReader)
    ['{CC01CE51-0323-4715-B5A7-341620E7AFEE}']
  end;
  TJJsonTreeReader_1 = class(TJavaGenericImport<JJsonTreeReader_1Class, JJsonTreeReader_1>) end;

  Jstream_JsonWriterClass = interface(JCloseableClass)
    ['{35B6AA06-3087-42B7-A5AE-BB128C5DAF39}']
    {class} function beginArray: Jstream_JsonWriter; cdecl;//Deprecated
    {class} function beginObject: Jstream_JsonWriter; cdecl;//Deprecated
    {class} procedure close; cdecl;//Deprecated
    {class} function endArray: Jstream_JsonWriter; cdecl;//Deprecated
    {class} function endObject: Jstream_JsonWriter; cdecl;//Deprecated
    {class} procedure flush; cdecl;//Deprecated
    {class} function getSerializeNulls: Boolean; cdecl;//Deprecated
    {class} function init(P1: JWriter): Jstream_JsonWriter; cdecl;//Deprecated
    {class} function isHtmlSafe: Boolean; cdecl;//Deprecated
    {class} function isLenient: Boolean; cdecl;//Deprecated
    {class} function name(P1: JString): Jstream_JsonWriter; cdecl;//Deprecated
    {class} function nullValue: Jstream_JsonWriter; cdecl;//Deprecated
    {class} procedure setHtmlSafe(P1: Boolean); cdecl;//Deprecated
    {class} procedure setIndent(P1: JString); cdecl;//Deprecated
    {class} procedure setLenient(P1: Boolean); cdecl;//Deprecated
    {class} procedure setSerializeNulls(P1: Boolean); cdecl;//Deprecated
    {class} function value(P1: JNumber): Jstream_JsonWriter; cdecl; overload;//Deprecated
    {class} function value(P1: Int64): Jstream_JsonWriter; cdecl; overload;//Deprecated
    {class} function value(P1: JString): Jstream_JsonWriter; cdecl; overload;//Deprecated
    {class} function value(P1: Boolean): Jstream_JsonWriter; cdecl; overload;//Deprecated
    {class} function value(P1: Double): Jstream_JsonWriter; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/stream/JsonWriter')]
  Jstream_JsonWriter = interface(JCloseable)
    ['{6DAE67A5-F73E-44EE-B8EC-5D01101101C3}']
  end;
  TJstream_JsonWriter = class(TJavaGenericImport<Jstream_JsonWriterClass, Jstream_JsonWriter>) end;

  JJsonTreeWriterClass = interface(Jstream_JsonWriterClass)
    ['{7B9EB668-E8CB-42EB-B344-E6C930C7F42D}']
    {class} function beginArray: Jstream_JsonWriter; cdecl;//Deprecated
    {class} function beginObject: Jstream_JsonWriter; cdecl;//Deprecated
    {class} procedure close; cdecl;//Deprecated
    {class} function endArray: Jstream_JsonWriter; cdecl;//Deprecated
    {class} function endObject: Jstream_JsonWriter; cdecl;//Deprecated
    {class} procedure flush; cdecl;//Deprecated
    {class} function get: JJsonElement; cdecl;//Deprecated
    {class} function init: JJsonTreeWriter; cdecl;//Deprecated
    {class} function name(P1: JString): Jstream_JsonWriter; cdecl;//Deprecated
    {class} function nullValue: Jstream_JsonWriter; cdecl;//Deprecated
    {class} function value(P1: JNumber): Jstream_JsonWriter; cdecl; overload;//Deprecated
    {class} function value(P1: Int64): Jstream_JsonWriter; cdecl; overload;//Deprecated
    {class} function value(P1: JString): Jstream_JsonWriter; cdecl; overload;//Deprecated
    {class} function value(P1: Boolean): Jstream_JsonWriter; cdecl; overload;//Deprecated
    {class} function value(P1: Double): Jstream_JsonWriter; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/JsonTreeWriter')]
  JJsonTreeWriter = interface(Jstream_JsonWriter)
    ['{6E87B8AE-E65A-4128-8675-277759E896AC}']
  end;
  TJJsonTreeWriter = class(TJavaGenericImport<JJsonTreeWriterClass, JJsonTreeWriter>) end;

  JJsonTreeWriter_1Class = interface(JWriterClass)
    ['{303978E4-40A6-4CDC-BAF8-A7659EA3C4BA}']
    {class} procedure close; cdecl;//Deprecated
    {class} procedure flush; cdecl;//Deprecated
    {class} procedure write(P1: TJavaArray<Char>; P2: Integer; P3: Integer); cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/JsonTreeWriter$1')]
  JJsonTreeWriter_1 = interface(JWriter)
    ['{1FC1DEC6-953A-4B66-84DF-F2009B26762D}']
  end;
  TJJsonTreeWriter_1 = class(TJavaGenericImport<JJsonTreeWriter_1Class, JJsonTreeWriter_1>) end;

  JMapTypeAdapterFactoryClass = interface(JTypeAdapterFactoryClass)
    ['{4644C57A-9BFA-4F7D-8BDC-359C0D8EA868}']
    {class} function create(P1: JGson; P2: JTypeToken): JTypeAdapter; cdecl;//Deprecated
    {class} function init(P1: JConstructorConstructor; P2: Boolean): JMapTypeAdapterFactory; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/MapTypeAdapterFactory')]
  JMapTypeAdapterFactory = interface(JTypeAdapterFactory)
    ['{289798B7-1E31-4A85-95F1-3596BD21EB2A}']
  end;
  TJMapTypeAdapterFactory = class(TJavaGenericImport<JMapTypeAdapterFactoryClass, JMapTypeAdapterFactory>) end;

  JMapTypeAdapterFactory_AdapterClass = interface(JTypeAdapterClass)
    ['{F96719F2-9037-46F7-8EA3-B82B4C5AEF3B}']
    {class} function init(P1: JGson; P2: Jreflect_Type; P3: JTypeAdapter; P4: Jreflect_Type; P5: JTypeAdapter; P6: JObjectConstructor): JMapTypeAdapterFactory_Adapter; cdecl;
  end;

  [JavaSignature('com/google/gson/internal/bind/MapTypeAdapterFactory$Adapter')]
  JMapTypeAdapterFactory_Adapter = interface(JTypeAdapter)
    ['{BB5F5D3D-B69F-419F-A74A-E6E2C3E4C49A}']
    function read(P1: Jstream_JsonReader): JMap; cdecl;
    procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;
    procedure write(P1: Jstream_JsonWriter; P2: JMap); cdecl; overload;
  end;
  TJMapTypeAdapterFactory_Adapter = class(TJavaGenericImport<JMapTypeAdapterFactory_AdapterClass, JMapTypeAdapterFactory_Adapter>) end;

  JObjectTypeAdapterClass = interface(JTypeAdapterClass)
    ['{7364D6E6-A43A-436C-ADD1-DDE1F17B8088}']
    {class} function _GetFACTORY: JTypeAdapterFactory; cdecl;
    {class} property FACTORY: JTypeAdapterFactory read _GetFACTORY;
  end;

  [JavaSignature('com/google/gson/internal/bind/ObjectTypeAdapter')]
  JObjectTypeAdapter = interface(JTypeAdapter)
    ['{7AAA5426-226C-458F-BCAF-2A0E151F20A3}']
    function read(P1: Jstream_JsonReader): JObject; cdecl;
    procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl;
  end;
  TJObjectTypeAdapter = class(TJavaGenericImport<JObjectTypeAdapterClass, JObjectTypeAdapter>) end;

  JObjectTypeAdapter_1Class = interface(JTypeAdapterFactoryClass)
    ['{CF734D52-E053-41A1-85A1-0BFA988FB7B9}']
    {class} function create(P1: JGson; P2: JTypeToken): JTypeAdapter; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/ObjectTypeAdapter$1')]
  JObjectTypeAdapter_1 = interface(JTypeAdapterFactory)
    ['{804056F7-3CDB-46E2-8197-43AD214AA5EC}']
  end;
  TJObjectTypeAdapter_1 = class(TJavaGenericImport<JObjectTypeAdapter_1Class, JObjectTypeAdapter_1>) end;

  JObjectTypeAdapter_2Class = interface(JObjectClass)
    ['{CE63F78D-FE33-45E4-BB76-D86447B18447}']
  end;

  [JavaSignature('com/google/gson/internal/bind/ObjectTypeAdapter$2')]
  JObjectTypeAdapter_2 = interface(JObject)
    ['{913191DD-E1EF-48C0-8FFD-6582D3691BCF}']
  end;
  TJObjectTypeAdapter_2 = class(TJavaGenericImport<JObjectTypeAdapter_2Class, JObjectTypeAdapter_2>) end;

  JReflectiveTypeAdapterFactoryClass = interface(JTypeAdapterFactoryClass)
    ['{E137136C-5975-4DFA-AE1A-B9743A08A9AC}']
    {class} function create(P1: JGson; P2: JTypeToken): JTypeAdapter; cdecl;//Deprecated
    {class} function excludeField(P1: JField; P2: Boolean): Boolean; cdecl;//Deprecated
    {class} function init(P1: JConstructorConstructor; P2: JFieldNamingStrategy; P3: JExcluder): JReflectiveTypeAdapterFactory; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/ReflectiveTypeAdapterFactory')]
  JReflectiveTypeAdapterFactory = interface(JTypeAdapterFactory)
    ['{09D9E677-785E-498E-B9E2-F71D5B33A7F5}']
  end;
  TJReflectiveTypeAdapterFactory = class(TJavaGenericImport<JReflectiveTypeAdapterFactoryClass, JReflectiveTypeAdapterFactory>) end;

  JReflectiveTypeAdapterFactory_BoundFieldClass = interface(JObjectClass)
    ['{C7354753-8790-49C1-8D60-90BA7724345F}']
  end;

  [JavaSignature('com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField')]
  JReflectiveTypeAdapterFactory_BoundField = interface(JObject)
    ['{3F168379-6A7B-447E-8423-EA008403807D}']
  end;
  TJReflectiveTypeAdapterFactory_BoundField = class(TJavaGenericImport<JReflectiveTypeAdapterFactory_BoundFieldClass, JReflectiveTypeAdapterFactory_BoundField>) end;

  JReflectiveTypeAdapterFactory_1Class = interface(JReflectiveTypeAdapterFactory_BoundFieldClass)
    ['{1D378BC2-0C68-40B2-8B02-F2DB251EEA15}']
  end;

  [JavaSignature('com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1')]
  JReflectiveTypeAdapterFactory_1 = interface(JReflectiveTypeAdapterFactory_BoundField)
    ['{FC609D13-F910-4E0F-9311-B091A776E082}']
  end;
  TJReflectiveTypeAdapterFactory_1 = class(TJavaGenericImport<JReflectiveTypeAdapterFactory_1Class, JReflectiveTypeAdapterFactory_1>) end;

  JReflectiveTypeAdapterFactory_AdapterClass = interface(JTypeAdapterClass)
    ['{B21A90D6-0021-4BC7-9875-35618B694287}']
    {class} function read(P1: Jstream_JsonReader): JObject; cdecl;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter')]
  JReflectiveTypeAdapterFactory_Adapter = interface(JTypeAdapter)
    ['{2C0BE762-5246-4ACF-AF14-2DF3981170F6}']
  end;
  TJReflectiveTypeAdapterFactory_Adapter = class(TJavaGenericImport<JReflectiveTypeAdapterFactory_AdapterClass, JReflectiveTypeAdapterFactory_Adapter>) end;

  JSqlDateTypeAdapterClass = interface(JTypeAdapterClass)
    ['{3732FD6B-98C1-4224-9ADC-AD6A0BCAFB72}']
    {class} function _GetFACTORY: JTypeAdapterFactory; cdecl;
    {class} function init: JSqlDateTypeAdapter; cdecl;
    {class} property FACTORY: JTypeAdapterFactory read _GetFACTORY;
  end;

  [JavaSignature('com/google/gson/internal/bind/SqlDateTypeAdapter')]
  JSqlDateTypeAdapter = interface(JTypeAdapter)
    ['{D439D4B4-ADB8-470E-975F-BD1A38A52501}']
    function read(P1: Jstream_JsonReader): Jsql_Date; cdecl;
    procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;
    procedure write(P1: Jstream_JsonWriter; P2: Jsql_Date); cdecl; overload;
  end;
  TJSqlDateTypeAdapter = class(TJavaGenericImport<JSqlDateTypeAdapterClass, JSqlDateTypeAdapter>) end;

  JSqlDateTypeAdapter_1Class = interface(JTypeAdapterFactoryClass)
    ['{1E61438B-EAEF-4DC4-ACF2-674A8DA5CEEF}']
    {class} function create(P1: JGson; P2: JTypeToken): JTypeAdapter; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/SqlDateTypeAdapter$1')]
  JSqlDateTypeAdapter_1 = interface(JTypeAdapterFactory)
    ['{06ACF15B-0896-4C15-AA51-8A03FE391A4E}']
  end;
  TJSqlDateTypeAdapter_1 = class(TJavaGenericImport<JSqlDateTypeAdapter_1Class, JSqlDateTypeAdapter_1>) end;

  JTimeTypeAdapterClass = interface(JTypeAdapterClass)
    ['{43270D65-C860-44AA-AAF7-2995CAEA250E}']
    {class} function _GetFACTORY: JTypeAdapterFactory; cdecl;
    {class} function init: JTimeTypeAdapter; cdecl;
    {class} property FACTORY: JTypeAdapterFactory read _GetFACTORY;
  end;

  [JavaSignature('com/google/gson/internal/bind/TimeTypeAdapter')]
  JTimeTypeAdapter = interface(JTypeAdapter)
    ['{32BCA9DB-32EF-48A7-91B7-F659EFF75562}']
    function read(P1: Jstream_JsonReader): JTime; cdecl;
    procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;
    procedure write(P1: Jstream_JsonWriter; P2: JTime); cdecl; overload;
  end;
  TJTimeTypeAdapter = class(TJavaGenericImport<JTimeTypeAdapterClass, JTimeTypeAdapter>) end;

  JTimeTypeAdapter_1Class = interface(JTypeAdapterFactoryClass)
    ['{DC6D5F07-0314-4198-8855-3697DECFE997}']
    {class} function create(P1: JGson; P2: JTypeToken): JTypeAdapter; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/TimeTypeAdapter$1')]
  JTimeTypeAdapter_1 = interface(JTypeAdapterFactory)
    ['{DAB0F6FB-2E3C-45E1-9B13-5664F2CBC337}']
  end;
  TJTimeTypeAdapter_1 = class(TJavaGenericImport<JTimeTypeAdapter_1Class, JTimeTypeAdapter_1>) end;

  JTypeAdapterRuntimeTypeWrapperClass = interface(JTypeAdapterClass)
    ['{2AE45F2D-2441-4921-937F-8E3491C3C688}']
    {class} function read(P1: Jstream_JsonReader): JObject; cdecl;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper')]
  JTypeAdapterRuntimeTypeWrapper = interface(JTypeAdapter)
    ['{4ADFDE64-62AB-4FD6-AF57-50759AF7258B}']
  end;
  TJTypeAdapterRuntimeTypeWrapper = class(TJavaGenericImport<JTypeAdapterRuntimeTypeWrapperClass, JTypeAdapterRuntimeTypeWrapper>) end;

  JTypeAdaptersClass = interface(JObjectClass)
    ['{2776D6E7-D81C-4C21-9331-AD8CAA5439F0}']
    {class} function _GetBIG_DECIMAL: JTypeAdapter; cdecl;
    {class} function _GetBIG_INTEGER: JTypeAdapter; cdecl;
    {class} function _GetBIT_SET: JTypeAdapter; cdecl;
    {class} function _GetBIT_SET_FACTORY: JTypeAdapterFactory; cdecl;
    {class} function _GetBOOLEAN: JTypeAdapter; cdecl;
    {class} function _GetBOOLEAN_AS_STRING: JTypeAdapter; cdecl;
    {class} function _GetBOOLEAN_FACTORY: JTypeAdapterFactory; cdecl;
    {class} function _GetBYTE: JTypeAdapter; cdecl;
    {class} function _GetBYTE_FACTORY: JTypeAdapterFactory; cdecl;
    {class} function _GetCALENDAR: JTypeAdapter; cdecl;
    {class} function _GetCALENDAR_FACTORY: JTypeAdapterFactory; cdecl;
    {class} function _GetCHARACTER: JTypeAdapter; cdecl;
    {class} function _GetCHARACTER_FACTORY: JTypeAdapterFactory; cdecl;
    {class} function _GetCLASS: JTypeAdapter; cdecl;
    {class} function _GetCLASS_FACTORY: JTypeAdapterFactory; cdecl;
    {class} function _GetDOUBLE: JTypeAdapter; cdecl;
    {class} function _GetENUM_FACTORY: JTypeAdapterFactory; cdecl;
    {class} function _GetFLOAT: JTypeAdapter; cdecl;
    {class} function _GetINET_ADDRESS: JTypeAdapter; cdecl;
    {class} function _GetINET_ADDRESS_FACTORY: JTypeAdapterFactory; cdecl;
    {class} function _GetINTEGER: JTypeAdapter; cdecl;
    {class} function _GetINTEGER_FACTORY: JTypeAdapterFactory; cdecl;
    {class} function _GetJSON_ELEMENT: JTypeAdapter; cdecl;
    {class} function _GetJSON_ELEMENT_FACTORY: JTypeAdapterFactory; cdecl;
    {class} function _GetLOCALE: JTypeAdapter; cdecl;
    {class} function _GetLOCALE_FACTORY: JTypeAdapterFactory; cdecl;
    {class} function _GetLONG: JTypeAdapter; cdecl;
    {class} function _GetNUMBER: JTypeAdapter; cdecl;
    {class} function _GetNUMBER_FACTORY: JTypeAdapterFactory; cdecl;
    {class} function _GetSHORT: JTypeAdapter; cdecl;
    {class} function _GetSHORT_FACTORY: JTypeAdapterFactory; cdecl;
    {class} function _GetSTRING: JTypeAdapter; cdecl;
    {class} function _GetSTRING_BUFFER: JTypeAdapter; cdecl;
    {class} function _GetSTRING_BUFFER_FACTORY: JTypeAdapterFactory; cdecl;
    {class} function _GetSTRING_BUILDER: JTypeAdapter; cdecl;
    {class} function _GetSTRING_BUILDER_FACTORY: JTypeAdapterFactory; cdecl;
    {class} function _GetSTRING_FACTORY: JTypeAdapterFactory; cdecl;
    {class} function _GetTIMESTAMP_FACTORY: JTypeAdapterFactory; cdecl;
    {class} function _GetURI: JTypeAdapter; cdecl;
    {class} function _GetURI_FACTORY: JTypeAdapterFactory; cdecl;
    {class} function _GetURL: JTypeAdapter; cdecl;
    {class} function _GetURL_FACTORY: JTypeAdapterFactory; cdecl;
    {class} function _GetUUID: JTypeAdapter; cdecl;
    {class} function _GetUUID_FACTORY: JTypeAdapterFactory; cdecl;
    {class} function newEnumTypeHierarchyFactory: JTypeAdapterFactory; cdecl;
    {class} function newFactory(P1: Jlang_Class; P2: JTypeAdapter): JTypeAdapterFactory; cdecl; overload;
    {class} function newFactory(P1: JTypeToken; P2: JTypeAdapter): JTypeAdapterFactory; cdecl; overload;
    {class} function newFactory(P1: Jlang_Class; P2: Jlang_Class; P3: JTypeAdapter): JTypeAdapterFactory; cdecl; overload;
    {class} function newFactoryForMultipleTypes(P1: Jlang_Class; P2: Jlang_Class; P3: JTypeAdapter): JTypeAdapterFactory; cdecl;
    {class} function newTypeHierarchyFactory(P1: Jlang_Class; P2: JTypeAdapter): JTypeAdapterFactory; cdecl;
    {class} property BIG_DECIMAL: JTypeAdapter read _GetBIG_DECIMAL;
    {class} property BIG_INTEGER: JTypeAdapter read _GetBIG_INTEGER;
    {class} property BIT_SET: JTypeAdapter read _GetBIT_SET;
    {class} property BIT_SET_FACTORY: JTypeAdapterFactory read _GetBIT_SET_FACTORY;
    {class} property BOOLEAN: JTypeAdapter read _GetBOOLEAN;
    {class} property BOOLEAN_AS_STRING: JTypeAdapter read _GetBOOLEAN_AS_STRING;
    {class} property BOOLEAN_FACTORY: JTypeAdapterFactory read _GetBOOLEAN_FACTORY;
    {class} property BYTE: JTypeAdapter read _GetBYTE;
    {class} property BYTE_FACTORY: JTypeAdapterFactory read _GetBYTE_FACTORY;
    {class} property CALENDAR: JTypeAdapter read _GetCALENDAR;
    {class} property CALENDAR_FACTORY: JTypeAdapterFactory read _GetCALENDAR_FACTORY;
    {class} property CHARACTER: JTypeAdapter read _GetCHARACTER;
    {class} property CHARACTER_FACTORY: JTypeAdapterFactory read _GetCHARACTER_FACTORY;
    {class} property CLASS: JTypeAdapter read _GetCLASS;
    {class} property CLASS_FACTORY: JTypeAdapterFactory read _GetCLASS_FACTORY;
    {class} property DOUBLE: JTypeAdapter read _GetDOUBLE;
    {class} property ENUM_FACTORY: JTypeAdapterFactory read _GetENUM_FACTORY;
    {class} property FLOAT: JTypeAdapter read _GetFLOAT;
    {class} property INET_ADDRESS: JTypeAdapter read _GetINET_ADDRESS;
    {class} property INET_ADDRESS_FACTORY: JTypeAdapterFactory read _GetINET_ADDRESS_FACTORY;
    {class} property INTEGER: JTypeAdapter read _GetINTEGER;
    {class} property INTEGER_FACTORY: JTypeAdapterFactory read _GetINTEGER_FACTORY;
    {class} property JSON_ELEMENT: JTypeAdapter read _GetJSON_ELEMENT;
    {class} property JSON_ELEMENT_FACTORY: JTypeAdapterFactory read _GetJSON_ELEMENT_FACTORY;
    {class} property LOCALE: JTypeAdapter read _GetLOCALE;
    {class} property LOCALE_FACTORY: JTypeAdapterFactory read _GetLOCALE_FACTORY;
    {class} property LONG: JTypeAdapter read _GetLONG;
    {class} property NUMBER: JTypeAdapter read _GetNUMBER;
    {class} property NUMBER_FACTORY: JTypeAdapterFactory read _GetNUMBER_FACTORY;
    {class} property SHORT: JTypeAdapter read _GetSHORT;
    {class} property SHORT_FACTORY: JTypeAdapterFactory read _GetSHORT_FACTORY;
    {class} property STRING: JTypeAdapter read _GetSTRING;
    {class} property STRING_BUFFER: JTypeAdapter read _GetSTRING_BUFFER;
    {class} property STRING_BUFFER_FACTORY: JTypeAdapterFactory read _GetSTRING_BUFFER_FACTORY;
    {class} property STRING_BUILDER: JTypeAdapter read _GetSTRING_BUILDER;
    {class} property STRING_BUILDER_FACTORY: JTypeAdapterFactory read _GetSTRING_BUILDER_FACTORY;
    {class} property STRING_FACTORY: JTypeAdapterFactory read _GetSTRING_FACTORY;
    {class} property TIMESTAMP_FACTORY: JTypeAdapterFactory read _GetTIMESTAMP_FACTORY;
    {class} property URI: JTypeAdapter read _GetURI;
    {class} property URI_FACTORY: JTypeAdapterFactory read _GetURI_FACTORY;
    {class} property URL: JTypeAdapter read _GetURL;
    {class} property URL_FACTORY: JTypeAdapterFactory read _GetURL_FACTORY;
    {class} property UUID: JTypeAdapter read _GetUUID;
    {class} property UUID_FACTORY: JTypeAdapterFactory read _GetUUID_FACTORY;
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters')]
  JTypeAdapters = interface(JObject)
    ['{F9F1674B-8624-491C-97D0-060031C29B1B}']
  end;
  TJTypeAdapters = class(TJavaGenericImport<JTypeAdaptersClass, JTypeAdapters>) end;

  JTypeAdapters_1Class = interface(JTypeAdapterClass)
    ['{6BAD73EC-B4D0-4D5D-A56E-1E20032E97F8}']
    {class} function read(P1: Jstream_JsonReader): Jlang_Class; cdecl;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: Jlang_Class); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$1')]
  JTypeAdapters_1 = interface(JTypeAdapter)
    ['{74D652F6-FE10-4AFF-85A6-1680F82B9703}']
  end;
  TJTypeAdapters_1 = class(TJavaGenericImport<JTypeAdapters_1Class, JTypeAdapters_1>) end;

  JTypeAdapters_10Class = interface(JTypeAdapterClass)
    ['{799461E3-C7D1-4D63-85DF-976A7A7EBF74}']
    {class} function read(P1: Jstream_JsonReader): JNumber; cdecl;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JNumber); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$10')]
  JTypeAdapters_10 = interface(JTypeAdapter)
    ['{DD6CD37F-536D-4B81-8163-061026C836D8}']
  end;
  TJTypeAdapters_10 = class(TJavaGenericImport<JTypeAdapters_10Class, JTypeAdapters_10>) end;

  JTypeAdapters_11Class = interface(JTypeAdapterClass)
    ['{FE5B1EDB-6D1D-4622-A62C-A49E4A64BFDA}']
    {class} function read(P1: Jstream_JsonReader): JNumber; cdecl;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JNumber); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$11')]
  JTypeAdapters_11 = interface(JTypeAdapter)
    ['{AAF09D09-6766-4A15-A19E-5A2905211AF4}']
  end;
  TJTypeAdapters_11 = class(TJavaGenericImport<JTypeAdapters_11Class, JTypeAdapters_11>) end;

  JTypeAdapters_12Class = interface(JTypeAdapterClass)
    ['{7A2957A6-DA9A-4C2B-9A14-DE1B9D27811B}']
    {class} function read(P1: Jstream_JsonReader): JCharacter; cdecl;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JCharacter); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$12')]
  JTypeAdapters_12 = interface(JTypeAdapter)
    ['{F3D747C8-7B7B-4941-A749-78F227DE40C2}']
  end;
  TJTypeAdapters_12 = class(TJavaGenericImport<JTypeAdapters_12Class, JTypeAdapters_12>) end;

  JTypeAdapters_13Class = interface(JTypeAdapterClass)
    ['{83D0D7EE-2590-4417-ABDC-41F36F917E7C}']
    {class} function read(P1: Jstream_JsonReader): JString; cdecl;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JString); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$13')]
  JTypeAdapters_13 = interface(JTypeAdapter)
    ['{CC3F81CD-13A6-46D3-A0DD-1C976D594D6C}']
  end;
  TJTypeAdapters_13 = class(TJavaGenericImport<JTypeAdapters_13Class, JTypeAdapters_13>) end;

  JTypeAdapters_14Class = interface(JTypeAdapterClass)
    ['{67127244-9E1B-4A4E-A680-E1E59E5321E5}']
    {class} function read(P1: Jstream_JsonReader): JBigDecimal; cdecl;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JBigDecimal); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$14')]
  JTypeAdapters_14 = interface(JTypeAdapter)
    ['{B0C217DB-DDCF-438B-A2DF-A5E1AFAC153A}']
  end;
  TJTypeAdapters_14 = class(TJavaGenericImport<JTypeAdapters_14Class, JTypeAdapters_14>) end;

  JTypeAdapters_15Class = interface(JTypeAdapterClass)
    ['{82B6A8CA-9D79-47BF-8649-1241FA16D912}']
    {class} function read(P1: Jstream_JsonReader): JBigInteger; cdecl;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JBigInteger); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$15')]
  JTypeAdapters_15 = interface(JTypeAdapter)
    ['{298D71DF-5CE9-4DF3-BCF6-6475FDF029D3}']
  end;
  TJTypeAdapters_15 = class(TJavaGenericImport<JTypeAdapters_15Class, JTypeAdapters_15>) end;

  JTypeAdapters_16Class = interface(JTypeAdapterClass)
    ['{3C236451-7B01-4387-B728-DA8A5573CAAC}']
    {class} function read(P1: Jstream_JsonReader): JStringBuilder; cdecl;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JStringBuilder); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$16')]
  JTypeAdapters_16 = interface(JTypeAdapter)
    ['{66C305C1-D669-48FE-8E03-69650A01EB1E}']
  end;
  TJTypeAdapters_16 = class(TJavaGenericImport<JTypeAdapters_16Class, JTypeAdapters_16>) end;

  JTypeAdapters_17Class = interface(JTypeAdapterClass)
    ['{B64522C7-B000-4A74-9C13-553D1AB52EA8}']
    {class} function read(P1: Jstream_JsonReader): JStringBuffer; cdecl;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JStringBuffer); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$17')]
  JTypeAdapters_17 = interface(JTypeAdapter)
    ['{0FAF7A37-3CBC-4642-B9EC-55C66D1C7D55}']
  end;
  TJTypeAdapters_17 = class(TJavaGenericImport<JTypeAdapters_17Class, JTypeAdapters_17>) end;

  JTypeAdapters_18Class = interface(JTypeAdapterClass)
    ['{CF9DEA7C-0C4E-4A70-B950-8C121E2B8AFA}']
    {class} function read(P1: Jstream_JsonReader): JURL; cdecl;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JURL); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$18')]
  JTypeAdapters_18 = interface(JTypeAdapter)
    ['{34226A6E-ECCD-4C62-B3D9-35F8A19EBB85}']
  end;
  TJTypeAdapters_18 = class(TJavaGenericImport<JTypeAdapters_18Class, JTypeAdapters_18>) end;

  JTypeAdapters_19Class = interface(JTypeAdapterClass)
    ['{B9F70FE3-D313-49A7-8587-35A4290947B9}']
    {class} function read(P1: Jstream_JsonReader): JURI; cdecl;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JURI); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$19')]
  JTypeAdapters_19 = interface(JTypeAdapter)
    ['{E667339F-72DF-49EC-9A8C-76E8A20D3EAD}']
  end;
  TJTypeAdapters_19 = class(TJavaGenericImport<JTypeAdapters_19Class, JTypeAdapters_19>) end;

  JTypeAdapters_2Class = interface(JTypeAdapterClass)
    ['{58F3B4AD-DE34-4BFA-900D-B3DE6AB325B9}']
    {class} function read(P1: Jstream_JsonReader): JBitSet; cdecl;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JBitSet); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$2')]
  JTypeAdapters_2 = interface(JTypeAdapter)
    ['{533351EF-2097-469C-A7EE-BC59D97D83D1}']
  end;
  TJTypeAdapters_2 = class(TJavaGenericImport<JTypeAdapters_2Class, JTypeAdapters_2>) end;

  JTypeAdapters_20Class = interface(JTypeAdapterClass)
    ['{C4AF2FD1-E9D5-4B83-9B06-EE364C96EF6C}']
    {class} function read(P1: Jstream_JsonReader): JInetAddress; cdecl;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JInetAddress); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$20')]
  JTypeAdapters_20 = interface(JTypeAdapter)
    ['{43CBDDBB-73D9-4C20-A337-4DE8234F72C0}']
  end;
  TJTypeAdapters_20 = class(TJavaGenericImport<JTypeAdapters_20Class, JTypeAdapters_20>) end;

  JTypeAdapters_21Class = interface(JTypeAdapterClass)
    ['{2A40E679-3DF0-4B3C-A8FB-8B8CCA58B702}']
    {class} function read(P1: Jstream_JsonReader): JUUID; cdecl;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JUUID); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$21')]
  JTypeAdapters_21 = interface(JTypeAdapter)
    ['{A72EFB0C-5D89-4195-A0A4-73727397D946}']
  end;
  TJTypeAdapters_21 = class(TJavaGenericImport<JTypeAdapters_21Class, JTypeAdapters_21>) end;

  JTypeAdapters_22Class = interface(JTypeAdapterFactoryClass)
    ['{43753914-42AA-4AC2-82F0-ED0B8D9811A3}']
    {class} function create(P1: JGson; P2: JTypeToken): JTypeAdapter; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$22')]
  JTypeAdapters_22 = interface(JTypeAdapterFactory)
    ['{1CA03F89-E663-4331-AD42-7FB7B006DC70}']
  end;
  TJTypeAdapters_22 = class(TJavaGenericImport<JTypeAdapters_22Class, JTypeAdapters_22>) end;

  J22_1Class = interface(JTypeAdapterClass)
    ['{A158B1D3-B848-4255-8AD0-27C175D090E0}']
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$22$1')]
  J22_1 = interface(JTypeAdapter)
    ['{51166901-6BA5-4324-B771-AC417D0476E0}']
    function read(P1: Jstream_JsonReader): JTimestamp; cdecl;
    procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;
    procedure write(P1: Jstream_JsonWriter; P2: JTimestamp); cdecl; overload;
  end;
  TJ22_1 = class(TJavaGenericImport<J22_1Class, J22_1>) end;

  JTypeAdapters_23Class = interface(JTypeAdapterClass)
    ['{DE9A1EE0-396E-41B0-80E9-C86ED83A63AF}']
    {class} function read(P1: Jstream_JsonReader): JCalendar; cdecl;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JCalendar); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$23')]
  JTypeAdapters_23 = interface(JTypeAdapter)
    ['{271947E5-65D4-42EB-8C42-E8EADFC017CC}']
  end;
  TJTypeAdapters_23 = class(TJavaGenericImport<JTypeAdapters_23Class, JTypeAdapters_23>) end;

  JTypeAdapters_24Class = interface(JTypeAdapterClass)
    ['{64FD60CB-08E9-4C2D-AFD2-44472D5869E2}']
    {class} function read(P1: Jstream_JsonReader): JLocale; cdecl;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JLocale); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$24')]
  JTypeAdapters_24 = interface(JTypeAdapter)
    ['{6BBBF3F9-FC59-4A4E-A57E-B4F0D9F6B668}']
  end;
  TJTypeAdapters_24 = class(TJavaGenericImport<JTypeAdapters_24Class, JTypeAdapters_24>) end;

  JTypeAdapters_25Class = interface(JTypeAdapterClass)
    ['{7ADDA69A-60A2-4E91-9500-3771462DC605}']
    {class} function read(P1: Jstream_JsonReader): JJsonElement; cdecl;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JJsonElement); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$25')]
  JTypeAdapters_25 = interface(JTypeAdapter)
    ['{1D4E31E1-2236-42B6-A508-6809CBC7AFEA}']
  end;
  TJTypeAdapters_25 = class(TJavaGenericImport<JTypeAdapters_25Class, JTypeAdapters_25>) end;

  JTypeAdapters_26Class = interface(JTypeAdapterFactoryClass)
    ['{76083C0F-BB15-4AB8-938F-8153E438006E}']
    {class} function create(P1: JGson; P2: JTypeToken): JTypeAdapter; cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$26')]
  JTypeAdapters_26 = interface(JTypeAdapterFactory)
    ['{6FCA23E5-82F2-4101-9C65-E151010A8524}']
  end;
  TJTypeAdapters_26 = class(TJavaGenericImport<JTypeAdapters_26Class, JTypeAdapters_26>) end;

  JTypeAdapters_27Class = interface(JTypeAdapterFactoryClass)
    ['{ADE3BBB8-59D8-4F74-85F3-568F75A13DF9}']
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$27')]
  JTypeAdapters_27 = interface(JTypeAdapterFactory)
    ['{97B408DB-FA81-4D57-B119-00FB51E69FC4}']
    function create(P1: JGson; P2: JTypeToken): JTypeAdapter; cdecl;
  end;
  TJTypeAdapters_27 = class(TJavaGenericImport<JTypeAdapters_27Class, JTypeAdapters_27>) end;

  JTypeAdapters_28Class = interface(JTypeAdapterFactoryClass)
    ['{44CA1193-4649-4075-B256-4A96DE70E38B}']
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$28')]
  JTypeAdapters_28 = interface(JTypeAdapterFactory)
    ['{9F29184E-8FAB-40F4-9B17-6AF9F623E905}']
    function create(P1: JGson; P2: JTypeToken): JTypeAdapter; cdecl;
    function toString: JString; cdecl;
  end;
  TJTypeAdapters_28 = class(TJavaGenericImport<JTypeAdapters_28Class, JTypeAdapters_28>) end;

  JTypeAdapters_29Class = interface(JTypeAdapterFactoryClass)
    ['{4505E808-5708-42E7-9DDB-128FA9DBBA7C}']
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$29')]
  JTypeAdapters_29 = interface(JTypeAdapterFactory)
    ['{8A3D2AFE-77C0-4248-AEB0-012C3CE3EA86}']
    function create(P1: JGson; P2: JTypeToken): JTypeAdapter; cdecl;
    function toString: JString; cdecl;
  end;
  TJTypeAdapters_29 = class(TJavaGenericImport<JTypeAdapters_29Class, JTypeAdapters_29>) end;

  JTypeAdapters_3Class = interface(JTypeAdapterClass)
    ['{4C375D02-6F6E-4CCE-817E-660711893D2E}']
    {class} function read(P1: Jstream_JsonReader): JBoolean; cdecl;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JBoolean); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$3')]
  JTypeAdapters_3 = interface(JTypeAdapter)
    ['{CC66872E-7269-4251-AFB2-E59407D9B697}']
  end;
  TJTypeAdapters_3 = class(TJavaGenericImport<JTypeAdapters_3Class, JTypeAdapters_3>) end;

  JTypeAdapters_30Class = interface(JTypeAdapterFactoryClass)
    ['{0B3AD7AA-3FDA-4500-AAEE-9A1106A67288}']
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$30')]
  JTypeAdapters_30 = interface(JTypeAdapterFactory)
    ['{5010BAD0-CBBD-4EB2-875C-50ABD68EB04E}']
    function create(P1: JGson; P2: JTypeToken): JTypeAdapter; cdecl;
    function toString: JString; cdecl;
  end;
  TJTypeAdapters_30 = class(TJavaGenericImport<JTypeAdapters_30Class, JTypeAdapters_30>) end;

  JTypeAdapters_31Class = interface(JTypeAdapterFactoryClass)
    ['{4E8A2A1A-100A-4B9D-9B0E-ABC5B1FDCDBF}']
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$31')]
  JTypeAdapters_31 = interface(JTypeAdapterFactory)
    ['{FAFC179E-05B7-46E1-BFAD-8ED4BD2C120E}']
    function create(P1: JGson; P2: JTypeToken): JTypeAdapter; cdecl;
    function toString: JString; cdecl;
  end;
  TJTypeAdapters_31 = class(TJavaGenericImport<JTypeAdapters_31Class, JTypeAdapters_31>) end;

  JTypeAdapters_32Class = interface(JObjectClass)
    ['{5FC6062E-E204-4946-9DC2-1D769A1B9926}']
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$32')]
  JTypeAdapters_32 = interface(JObject)
    ['{7BF6A96C-D6BA-4A29-ADC4-7A234C6D8696}']
  end;
  TJTypeAdapters_32 = class(TJavaGenericImport<JTypeAdapters_32Class, JTypeAdapters_32>) end;

  JTypeAdapters_4Class = interface(JTypeAdapterClass)
    ['{A243B4B9-5962-42C0-9993-C7F2C19FFB31}']
    {class} function read(P1: Jstream_JsonReader): JBoolean; cdecl;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JBoolean); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$4')]
  JTypeAdapters_4 = interface(JTypeAdapter)
    ['{830224AB-FE81-4825-B8DD-156CE1B949EB}']
  end;
  TJTypeAdapters_4 = class(TJavaGenericImport<JTypeAdapters_4Class, JTypeAdapters_4>) end;

  JTypeAdapters_5Class = interface(JTypeAdapterClass)
    ['{A6E6A8FF-BD71-4DEA-B2B1-2846EB5291DB}']
    {class} function read(P1: Jstream_JsonReader): JNumber; cdecl;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JNumber); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$5')]
  JTypeAdapters_5 = interface(JTypeAdapter)
    ['{C4E62519-0510-4B11-BAC4-829B51655CBF}']
  end;
  TJTypeAdapters_5 = class(TJavaGenericImport<JTypeAdapters_5Class, JTypeAdapters_5>) end;

  JTypeAdapters_6Class = interface(JTypeAdapterClass)
    ['{7DB50B06-D411-434A-AE7B-E22F0BB42862}']
    {class} function read(P1: Jstream_JsonReader): JNumber; cdecl;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JNumber); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$6')]
  JTypeAdapters_6 = interface(JTypeAdapter)
    ['{565385ED-918F-4CB9-B759-C58CFD2E1EB5}']
  end;
  TJTypeAdapters_6 = class(TJavaGenericImport<JTypeAdapters_6Class, JTypeAdapters_6>) end;

  JTypeAdapters_7Class = interface(JTypeAdapterClass)
    ['{991C43CA-16DF-4D6A-B69A-70400B3E1FC8}']
    {class} function read(P1: Jstream_JsonReader): JNumber; cdecl;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JNumber); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$7')]
  JTypeAdapters_7 = interface(JTypeAdapter)
    ['{42FA60C4-0606-4F40-AB76-83268F287C96}']
  end;
  TJTypeAdapters_7 = class(TJavaGenericImport<JTypeAdapters_7Class, JTypeAdapters_7>) end;

  JTypeAdapters_8Class = interface(JTypeAdapterClass)
    ['{C13B07EB-5672-456E-8F26-87678DFD868B}']
    {class} function read(P1: Jstream_JsonReader): JNumber; cdecl;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JNumber); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$8')]
  JTypeAdapters_8 = interface(JTypeAdapter)
    ['{B032500D-ADD7-4022-80C4-6191B9011CB1}']
  end;
  TJTypeAdapters_8 = class(TJavaGenericImport<JTypeAdapters_8Class, JTypeAdapters_8>) end;

  JTypeAdapters_9Class = interface(JTypeAdapterClass)
    ['{A435ACA3-3E69-4FA2-861D-145F371B28E7}']
    {class} function read(P1: Jstream_JsonReader): JNumber; cdecl;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JNumber); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$9')]
  JTypeAdapters_9 = interface(JTypeAdapter)
    ['{DE7F475C-C1E1-4176-800B-01275A7FDA96}']
  end;
  TJTypeAdapters_9 = class(TJavaGenericImport<JTypeAdapters_9Class, JTypeAdapters_9>) end;

  JTypeAdapters_EnumTypeAdapterClass = interface(JTypeAdapterClass)
    ['{E8EF16ED-F6B2-4786-82C8-9DDE326EFF96}']
    {class} function init(P1: Jlang_Class): JTypeAdapters_EnumTypeAdapter; cdecl;//Deprecated
    {class} function read(P1: Jstream_JsonReader): JEnum; cdecl;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JObject); cdecl; overload;//Deprecated
    {class} procedure write(P1: Jstream_JsonWriter; P2: JEnum); cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter')]
  JTypeAdapters_EnumTypeAdapter = interface(JTypeAdapter)
    ['{33397C69-FB5D-4D8C-A35A-343BA15B1A2A}']
  end;
  TJTypeAdapters_EnumTypeAdapter = class(TJavaGenericImport<JTypeAdapters_EnumTypeAdapterClass, JTypeAdapters_EnumTypeAdapter>) end;

  JTypeTokenClass = interface(JObjectClass)
    ['{A6FFBF71-279E-4C08-97AE-993A99503931}']
    {class} function get(P1: Jlang_Class): JTypeToken; cdecl; overload;
    {class} function get(P1: Jreflect_Type): JTypeToken; cdecl; overload;
  end;

  [JavaSignature('com/google/gson/reflect/TypeToken')]
  JTypeToken = interface(JObject)
    ['{BC18D7C6-E41B-449D-931C-7346955F8A6C}']
    function equals(P1: JObject): Boolean; cdecl;
    function getRawType: Jlang_Class; cdecl;
    function getType: Jreflect_Type; cdecl;
    function hashCode: Integer; cdecl;
    function isAssignableFrom(P1: Jreflect_Type): Boolean; cdecl; overload;
    function isAssignableFrom(P1: Jlang_Class): Boolean; cdecl; overload;
    function isAssignableFrom(P1: JTypeToken): Boolean; cdecl; overload;
    function toString: JString; cdecl;
  end;
  TJTypeToken = class(TJavaGenericImport<JTypeTokenClass, JTypeToken>) end;

  JJsonReader_1Class = interface(JJsonReaderInternalAccessClass)
    ['{26C626B1-E9FA-4622-8F0E-4B8E0C13E1A3}']
    {class} procedure promoteNameToValue(P1: Jstream_JsonReader); cdecl;//Deprecated
  end;

  [JavaSignature('com/google/gson/stream/JsonReader$1')]
  JJsonReader_1 = interface(JJsonReaderInternalAccess)
    ['{C1F948F3-C40E-496F-ACD1-81E6BA2C4C05}']
  end;
  TJJsonReader_1 = class(TJavaGenericImport<JJsonReader_1Class, JJsonReader_1>) end;

  JJsonScopeClass = interface(JObjectClass)
    ['{DDEA7593-EC63-4949-AEFE-8D161D7CE339}']
  end;

  [JavaSignature('com/google/gson/stream/JsonScope')]
  JJsonScope = interface(JObject)
    ['{7A1CA18C-9BDA-4DAC-AF88-9FF518EA3FA9}']
  end;
  TJJsonScope = class(TJavaGenericImport<JJsonScopeClass, JJsonScope>) end;

  Jstream_JsonTokenClass = interface(JEnumClass)
    ['{D762C98A-517C-474F-B15A-B5A162323EF0}']
    {class} function _GetBEGIN_ARRAY: Jstream_JsonToken; cdecl;
    {class} function _GetBEGIN_OBJECT: Jstream_JsonToken; cdecl;
    {class} function _GetBOOLEAN: Jstream_JsonToken; cdecl;
    {class} function _GetEND_ARRAY: Jstream_JsonToken; cdecl;
    {class} function _GetEND_DOCUMENT: Jstream_JsonToken; cdecl;
    {class} function _GetEND_OBJECT: Jstream_JsonToken; cdecl;
    {class} function _GetNAME: Jstream_JsonToken; cdecl;
    {class} function _GetNULL: Jstream_JsonToken; cdecl;
    {class} function _GetNUMBER: Jstream_JsonToken; cdecl;
    {class} function _GetSTRING: Jstream_JsonToken; cdecl;
    {class} function valueOf(P1: JString): Jstream_JsonToken; cdecl;
    {class} function values: TJavaObjectArray<Jstream_JsonToken>; cdecl;
    {class} property BEGIN_ARRAY: Jstream_JsonToken read _GetBEGIN_ARRAY;
    {class} property BEGIN_OBJECT: Jstream_JsonToken read _GetBEGIN_OBJECT;
    {class} property BOOLEAN: Jstream_JsonToken read _GetBOOLEAN;
    {class} property END_ARRAY: Jstream_JsonToken read _GetEND_ARRAY;
    {class} property END_DOCUMENT: Jstream_JsonToken read _GetEND_DOCUMENT;
    {class} property END_OBJECT: Jstream_JsonToken read _GetEND_OBJECT;
    {class} property NAME: Jstream_JsonToken read _GetNAME;
    {class} property NULL: Jstream_JsonToken read _GetNULL;
    {class} property NUMBER: Jstream_JsonToken read _GetNUMBER;
    {class} property STRING: Jstream_JsonToken read _GetSTRING;
  end;

  [JavaSignature('com/google/gson/stream/JsonToken')]
  Jstream_JsonToken = interface(JEnum)
    ['{FCBE4214-1FB7-4DAF-8784-05F179455F48}']
  end;
  TJstream_JsonToken = class(TJavaGenericImport<Jstream_JsonTokenClass, Jstream_JsonToken>) end;

  Jstream_MalformedJsonExceptionClass = interface(JIOExceptionClass)
    ['{3991DCB5-9968-4DAE-B9A1-8AA43541300B}']
    {class} function init(P1: JThrowable): Jstream_MalformedJsonException; cdecl; overload;//Deprecated
    {class} function init(P1: JString): Jstream_MalformedJsonException; cdecl; overload;//Deprecated
    {class} function init(P1: JString; P2: JThrowable): Jstream_MalformedJsonException; cdecl; overload;//Deprecated
  end;

  [JavaSignature('com/google/gson/stream/MalformedJsonException')]
  Jstream_MalformedJsonException = interface(JIOException)
    ['{9A935430-B76C-4D61-A344-A183BEAC48A1}']
  end;
  TJstream_MalformedJsonException = class(TJavaGenericImport<Jstream_MalformedJsonExceptionClass, Jstream_MalformedJsonException>) end;

  JAppendableClass = interface(IJavaClass)
    ['{B34AA52A-C9D0-4E5C-AB21-D5D644536B6C}']
    {class} function append(c: Char): JAppendable; cdecl; overload;//Deprecated
    {class} function append(csq: JCharSequence): JAppendable; cdecl; overload;//Deprecated
    {class} function append(csq: JCharSequence; start: Integer; end: Integer): JAppendable; cdecl; overload;//Deprecated
  end;

  [JavaSignature('java/lang/Appendable')]
  JAppendable = interface(IJavaInstance)
    ['{A8613E4E-753A-417E-8F1C-0075F4F35D09}']
  end;
  TJAppendable = class(TJavaGenericImport<JAppendableClass, JAppendable>) end;

  JCharacterClass = interface(JObjectClass)
    ['{590BEB72-6057-4249-BB6F-993BE3B2FBAC}']
    {class} function _GetCOMBINING_SPACING_MARK: Byte; cdecl;
    {class} function _GetCONNECTOR_PUNCTUATION: Byte; cdecl;
    {class} function _GetCONTROL: Byte; cdecl;
    {class} function _GetCURRENCY_SYMBOL: Byte; cdecl;
    {class} function _GetDASH_PUNCTUATION: Byte; cdecl;
    {class} function _GetDECIMAL_DIGIT_NUMBER: Byte; cdecl;
    {class} function _GetDIRECTIONALITY_ARABIC_NUMBER: Byte; cdecl;
    {class} function _GetDIRECTIONALITY_BOUNDARY_NEUTRAL: Byte; cdecl;
    {class} function _GetDIRECTIONALITY_COMMON_NUMBER_SEPARATOR: Byte; cdecl;
    {class} function _GetDIRECTIONALITY_EUROPEAN_NUMBER: Byte; cdecl;
    {class} function _GetDIRECTIONALITY_EUROPEAN_NUMBER_SEPARATOR: Byte; cdecl;
    {class} function _GetDIRECTIONALITY_EUROPEAN_NUMBER_TERMINATOR: Byte; cdecl;
    {class} function _GetDIRECTIONALITY_LEFT_TO_RIGHT: Byte; cdecl;
    {class} function _GetDIRECTIONALITY_LEFT_TO_RIGHT_EMBEDDING: Byte; cdecl;
    {class} function _GetDIRECTIONALITY_LEFT_TO_RIGHT_OVERRIDE: Byte; cdecl;
    {class} function _GetDIRECTIONALITY_NONSPACING_MARK: Byte; cdecl;
    {class} function _GetDIRECTIONALITY_OTHER_NEUTRALS: Byte; cdecl;
    {class} function _GetDIRECTIONALITY_PARAGRAPH_SEPARATOR: Byte; cdecl;
    {class} function _GetDIRECTIONALITY_POP_DIRECTIONAL_FORMAT: Byte; cdecl;
    {class} function _GetDIRECTIONALITY_RIGHT_TO_LEFT: Byte; cdecl;
    {class} function _GetDIRECTIONALITY_RIGHT_TO_LEFT_ARABIC: Byte; cdecl;
    {class} function _GetDIRECTIONALITY_RIGHT_TO_LEFT_EMBEDDING: Byte; cdecl;
    {class} function _GetDIRECTIONALITY_RIGHT_TO_LEFT_OVERRIDE: Byte; cdecl;
    {class} function _GetDIRECTIONALITY_SEGMENT_SEPARATOR: Byte; cdecl;
    {class} function _GetDIRECTIONALITY_UNDEFINED: Byte; cdecl;
    {class} function _GetDIRECTIONALITY_WHITESPACE: Byte; cdecl;
    {class} function _GetENCLOSING_MARK: Byte; cdecl;
    {class} function _GetEND_PUNCTUATION: Byte; cdecl;
    {class} function _GetFINAL_QUOTE_PUNCTUATION: Byte; cdecl;
    {class} function _GetFORMAT: Byte; cdecl;
    {class} function _GetINITIAL_QUOTE_PUNCTUATION: Byte; cdecl;
    {class} function _GetLETTER_NUMBER: Byte; cdecl;
    {class} function _GetLINE_SEPARATOR: Byte; cdecl;
    {class} function _GetLOWERCASE_LETTER: Byte; cdecl;
    {class} function _GetMATH_SYMBOL: Byte; cdecl;
    {class} function _GetMAX_CODE_POINT: Integer; cdecl;
    {class} function _GetMAX_HIGH_SURROGATE: Char; cdecl;
    {class} function _GetMAX_LOW_SURROGATE: Char; cdecl;
    {class} function _GetMAX_RADIX: Integer; cdecl;
    {class} function _GetMAX_SURROGATE: Char; cdecl;
    {class} function _GetMAX_VALUE: Char; cdecl;
    {class} function _GetMIN_CODE_POINT: Integer; cdecl;
    {class} function _GetMIN_HIGH_SURROGATE: Char; cdecl;
    {class} function _GetMIN_LOW_SURROGATE: Char; cdecl;
    {class} function _GetMIN_RADIX: Integer; cdecl;
    {class} function _GetMIN_SUPPLEMENTARY_CODE_POINT: Integer; cdecl;
    {class} function _GetMIN_SURROGATE: Char; cdecl;
    {class} function _GetMIN_VALUE: Char; cdecl;
    {class} function _GetMODIFIER_LETTER: Byte; cdecl;
    {class} function _GetMODIFIER_SYMBOL: Byte; cdecl;
    {class} function _GetNON_SPACING_MARK: Byte; cdecl;
    {class} function _GetOTHER_LETTER: Byte; cdecl;
    {class} function _GetOTHER_NUMBER: Byte; cdecl;
    {class} function _GetOTHER_PUNCTUATION: Byte; cdecl;
    {class} function _GetOTHER_SYMBOL: Byte; cdecl;
    {class} function _GetPARAGRAPH_SEPARATOR: Byte; cdecl;
    {class} function _GetPRIVATE_USE: Byte; cdecl;
    {class} function _GetSIZE: Integer; cdecl;
    {class} function _GetSPACE_SEPARATOR: Byte; cdecl;
    {class} function _GetSTART_PUNCTUATION: Byte; cdecl;
    {class} function _GetSURROGATE: Byte; cdecl;
    {class} function _GetTITLECASE_LETTER: Byte; cdecl;
    {class} function _GetTYPE: Jlang_Class; cdecl;
    {class} function _GetUNASSIGNED: Byte; cdecl;
    {class} function _GetUPPERCASE_LETTER: Byte; cdecl;
    {class} function init(value: Char): JCharacter; cdecl;
    {class} function charCount(codePoint: Integer): Integer; cdecl;//Deprecated
    {class} function charValue: Char; cdecl;//Deprecated
    {class} function codePointAt(seq: JCharSequence; index: Integer): Integer; cdecl; overload;//Deprecated
    {class} function codePointAt(seq: TJavaArray<Char>; index: Integer): Integer; cdecl; overload;//Deprecated
    {class} function codePointAt(seq: TJavaArray<Char>; index: Integer; limit: Integer): Integer; cdecl; overload;//Deprecated
    {class} function codePointBefore(seq: JCharSequence; index: Integer): Integer; cdecl; overload;//Deprecated
    {class} function codePointBefore(seq: TJavaArray<Char>; index: Integer): Integer; cdecl; overload;//Deprecated
    {class} function codePointBefore(seq: TJavaArray<Char>; index: Integer; start: Integer): Integer; cdecl; overload;//Deprecated
    {class} function codePointCount(seq: JCharSequence; beginIndex: Integer; endIndex: Integer): Integer; cdecl; overload;//Deprecated
    {class} function codePointCount(seq: TJavaArray<Char>; offset: Integer; count: Integer): Integer; cdecl; overload;
    {class} function compare(lhs: Char; rhs: Char): Integer; cdecl;
    {class} function digit(c: Char; radix: Integer): Integer; cdecl; overload;
    {class} function digit(codePoint: Integer; radix: Integer): Integer; cdecl; overload;
    {class} function equals(object: JObject): Boolean; cdecl;
    {class} function forDigit(digit: Integer; radix: Integer): Char; cdecl;
    {class} function getDirectionality(c: Char): Byte; cdecl; overload;
    {class} function getDirectionality(codePoint: Integer): Byte; cdecl; overload;
    {class} function getName(codePoint: Integer): JString; cdecl;
    {class} function getNumericValue(c: Char): Integer; cdecl; overload;
    {class} function getNumericValue(codePoint: Integer): Integer; cdecl; overload;
    {class} function getType(c: Char): Integer; cdecl; overload;
    {class} function getType(codePoint: Integer): Integer; cdecl; overload;
    {class} function highSurrogate(codePoint: Integer): Char; cdecl;
    {class} function isAlphabetic(codePoint: Integer): Boolean; cdecl;
    {class} function isBmpCodePoint(codePoint: Integer): Boolean; cdecl;
    {class} function isDefined(c: Char): Boolean; cdecl; overload;
    {class} function isDefined(codePoint: Integer): Boolean; cdecl; overload;
    {class} function isDigit(c: Char): Boolean; cdecl; overload;
    {class} function isDigit(codePoint: Integer): Boolean; cdecl; overload;
    {class} function isHighSurrogate(ch: Char): Boolean; cdecl;
    {class} function isISOControl(c: Char): Boolean; cdecl; overload;
    {class} function isISOControl(c: Integer): Boolean; cdecl; overload;//Deprecated
    {class} function isIdentifierIgnorable(c: Char): Boolean; cdecl; overload;//Deprecated
    {class} function isIdentifierIgnorable(codePoint: Integer): Boolean; cdecl; overload;//Deprecated
    {class} function isIdeographic(codePoint: Integer): Boolean; cdecl;//Deprecated
    {class} function isJavaIdentifierPart(c: Char): Boolean; cdecl; overload;//Deprecated
    {class} function isJavaIdentifierPart(codePoint: Integer): Boolean; cdecl; overload;//Deprecated
    {class} function isJavaIdentifierStart(c: Char): Boolean; cdecl; overload;//Deprecated
    {class} function isJavaIdentifierStart(codePoint: Integer): Boolean; cdecl; overload;//Deprecated
    {class} function isJavaLetter(c: Char): Boolean; cdecl;//Deprecated
    {class} function isJavaLetterOrDigit(c: Char): Boolean; cdecl;//Deprecated
    {class} function isLetter(c: Char): Boolean; cdecl; overload;//Deprecated
    {class} function isLetter(codePoint: Integer): Boolean; cdecl; overload;//Deprecated
    {class} function isLetterOrDigit(c: Char): Boolean; cdecl; overload;//Deprecated
    {class} function isLetterOrDigit(codePoint: Integer): Boolean; cdecl; overload;//Deprecated
    {class} function isLowSurrogate(ch: Char): Boolean; cdecl;//Deprecated
    {class} function isLowerCase(c: Char): Boolean; cdecl; overload;//Deprecated
    {class} function isLowerCase(codePoint: Integer): Boolean; cdecl; overload;//Deprecated
    {class} function isMirrored(c: Char): Boolean; cdecl; overload;//Deprecated
    {class} function isMirrored(codePoint: Integer): Boolean; cdecl; overload;//Deprecated
    {class} function isSpace(c: Char): Boolean; cdecl;//Deprecated
    {class} function isSpaceChar(c: Char): Boolean; cdecl; overload;//Deprecated
    {class} function isSpaceChar(codePoint: Integer): Boolean; cdecl; overload;//Deprecated
    {class} function isSupplementaryCodePoint(codePoint: Integer): Boolean; cdecl;//Deprecated
    {class} function isSurrogate(ch: Char): Boolean; cdecl;
    {class} function isSurrogatePair(high: Char; low: Char): Boolean; cdecl;
    {class} function isTitleCase(c: Char): Boolean; cdecl; overload;
    {class} function isTitleCase(codePoint: Integer): Boolean; cdecl; overload;
    {class} function isUnicodeIdentifierPart(c: Char): Boolean; cdecl; overload;
    {class} function isUnicodeIdentifierPart(codePoint: Integer): Boolean; cdecl; overload;
    {class} function isUnicodeIdentifierStart(c: Char): Boolean; cdecl; overload;
    {class} function isUnicodeIdentifierStart(codePoint: Integer): Boolean; cdecl; overload;
    {class} function isUpperCase(c: Char): Boolean; cdecl; overload;
    {class} function isUpperCase(codePoint: Integer): Boolean; cdecl; overload;
    {class} function isValidCodePoint(codePoint: Integer): Boolean; cdecl;
    {class} function isWhitespace(c: Char): Boolean; cdecl; overload;
    {class} function isWhitespace(codePoint: Integer): Boolean; cdecl; overload;
    {class} function lowSurrogate(codePoint: Integer): Char; cdecl;
    {class} function offsetByCodePoints(seq: JCharSequence; index: Integer; codePointOffset: Integer): Integer; cdecl; overload;
    {class} function offsetByCodePoints(seq: TJavaArray<Char>; start: Integer; count: Integer; index: Integer; codePointOffset: Integer): Integer; cdecl; overload;
    {class} function reverseBytes(c: Char): Char; cdecl;
    {class} function toChars(codePoint: Integer; dst: TJavaArray<Char>; dstIndex: Integer): Integer; cdecl; overload;
    {class} function toChars(codePoint: Integer): TJavaArray<Char>; cdecl; overload;
    {class} function toCodePoint(high: Char; low: Char): Integer; cdecl;
    {class} function toLowerCase(c: Char): Char; cdecl; overload;
    {class} function toLowerCase(codePoint: Integer): Integer; cdecl; overload;
    {class} function toString: JString; cdecl; overload;
    {class} function toString(value: Char): JString; cdecl; overload;//Deprecated
    {class} function toTitleCase(c: Char): Char; cdecl; overload;//Deprecated
    {class} function toTitleCase(codePoint: Integer): Integer; cdecl; overload;//Deprecated
    {class} function toUpperCase(c: Char): Char; cdecl; overload;//Deprecated
    {class} function toUpperCase(codePoint: Integer): Integer; cdecl; overload;//Deprecated
    {class} function valueOf(c: Char): JCharacter; cdecl;//Deprecated
    {class} property COMBINING_SPACING_MARK: Byte read _GetCOMBINING_SPACING_MARK;
    {class} property CONNECTOR_PUNCTUATION: Byte read _GetCONNECTOR_PUNCTUATION;
    {class} property CONTROL: Byte read _GetCONTROL;
    {class} property CURRENCY_SYMBOL: Byte read _GetCURRENCY_SYMBOL;
    {class} property DASH_PUNCTUATION: Byte read _GetDASH_PUNCTUATION;
    {class} property DECIMAL_DIGIT_NUMBER: Byte read _GetDECIMAL_DIGIT_NUMBER;
    {class} property DIRECTIONALITY_ARABIC_NUMBER: Byte read _GetDIRECTIONALITY_ARABIC_NUMBER;
    {class} property DIRECTIONALITY_BOUNDARY_NEUTRAL: Byte read _GetDIRECTIONALITY_BOUNDARY_NEUTRAL;
    {class} property DIRECTIONALITY_COMMON_NUMBER_SEPARATOR: Byte read _GetDIRECTIONALITY_COMMON_NUMBER_SEPARATOR;
    {class} property DIRECTIONALITY_EUROPEAN_NUMBER: Byte read _GetDIRECTIONALITY_EUROPEAN_NUMBER;
    {class} property DIRECTIONALITY_EUROPEAN_NUMBER_SEPARATOR: Byte read _GetDIRECTIONALITY_EUROPEAN_NUMBER_SEPARATOR;
    {class} property DIRECTIONALITY_EUROPEAN_NUMBER_TERMINATOR: Byte read _GetDIRECTIONALITY_EUROPEAN_NUMBER_TERMINATOR;
    {class} property DIRECTIONALITY_LEFT_TO_RIGHT: Byte read _GetDIRECTIONALITY_LEFT_TO_RIGHT;
    {class} property DIRECTIONALITY_LEFT_TO_RIGHT_EMBEDDING: Byte read _GetDIRECTIONALITY_LEFT_TO_RIGHT_EMBEDDING;
    {class} property DIRECTIONALITY_LEFT_TO_RIGHT_OVERRIDE: Byte read _GetDIRECTIONALITY_LEFT_TO_RIGHT_OVERRIDE;
    {class} property DIRECTIONALITY_NONSPACING_MARK: Byte read _GetDIRECTIONALITY_NONSPACING_MARK;
    {class} property DIRECTIONALITY_OTHER_NEUTRALS: Byte read _GetDIRECTIONALITY_OTHER_NEUTRALS;
    {class} property DIRECTIONALITY_PARAGRAPH_SEPARATOR: Byte read _GetDIRECTIONALITY_PARAGRAPH_SEPARATOR;
    {class} property DIRECTIONALITY_POP_DIRECTIONAL_FORMAT: Byte read _GetDIRECTIONALITY_POP_DIRECTIONAL_FORMAT;
    {class} property DIRECTIONALITY_RIGHT_TO_LEFT: Byte read _GetDIRECTIONALITY_RIGHT_TO_LEFT;
    {class} property DIRECTIONALITY_RIGHT_TO_LEFT_ARABIC: Byte read _GetDIRECTIONALITY_RIGHT_TO_LEFT_ARABIC;
    {class} property DIRECTIONALITY_RIGHT_TO_LEFT_EMBEDDING: Byte read _GetDIRECTIONALITY_RIGHT_TO_LEFT_EMBEDDING;
    {class} property DIRECTIONALITY_RIGHT_TO_LEFT_OVERRIDE: Byte read _GetDIRECTIONALITY_RIGHT_TO_LEFT_OVERRIDE;
    {class} property DIRECTIONALITY_SEGMENT_SEPARATOR: Byte read _GetDIRECTIONALITY_SEGMENT_SEPARATOR;
    {class} property DIRECTIONALITY_UNDEFINED: Byte read _GetDIRECTIONALITY_UNDEFINED;
    {class} property DIRECTIONALITY_WHITESPACE: Byte read _GetDIRECTIONALITY_WHITESPACE;
    {class} property ENCLOSING_MARK: Byte read _GetENCLOSING_MARK;
    {class} property END_PUNCTUATION: Byte read _GetEND_PUNCTUATION;
    {class} property FINAL_QUOTE_PUNCTUATION: Byte read _GetFINAL_QUOTE_PUNCTUATION;
    {class} property FORMAT: Byte read _GetFORMAT;
    {class} property INITIAL_QUOTE_PUNCTUATION: Byte read _GetINITIAL_QUOTE_PUNCTUATION;
    {class} property LETTER_NUMBER: Byte read _GetLETTER_NUMBER;
    {class} property LINE_SEPARATOR: Byte read _GetLINE_SEPARATOR;
    {class} property LOWERCASE_LETTER: Byte read _GetLOWERCASE_LETTER;
    {class} property MATH_SYMBOL: Byte read _GetMATH_SYMBOL;
    {class} property MAX_CODE_POINT: Integer read _GetMAX_CODE_POINT;
    {class} property MAX_HIGH_SURROGATE: Char read _GetMAX_HIGH_SURROGATE;
    {class} property MAX_LOW_SURROGATE: Char read _GetMAX_LOW_SURROGATE;
    {class} property MAX_RADIX: Integer read _GetMAX_RADIX;
    {class} property MAX_SURROGATE: Char read _GetMAX_SURROGATE;
    {class} property MAX_VALUE: Char read _GetMAX_VALUE;
    {class} property MIN_CODE_POINT: Integer read _GetMIN_CODE_POINT;
    {class} property MIN_HIGH_SURROGATE: Char read _GetMIN_HIGH_SURROGATE;
    {class} property MIN_LOW_SURROGATE: Char read _GetMIN_LOW_SURROGATE;
    {class} property MIN_RADIX: Integer read _GetMIN_RADIX;
    {class} property MIN_SUPPLEMENTARY_CODE_POINT: Integer read _GetMIN_SUPPLEMENTARY_CODE_POINT;
    {class} property MIN_SURROGATE: Char read _GetMIN_SURROGATE;
    {class} property MIN_VALUE: Char read _GetMIN_VALUE;
    {class} property MODIFIER_LETTER: Byte read _GetMODIFIER_LETTER;
    {class} property MODIFIER_SYMBOL: Byte read _GetMODIFIER_SYMBOL;
    {class} property NON_SPACING_MARK: Byte read _GetNON_SPACING_MARK;
    {class} property OTHER_LETTER: Byte read _GetOTHER_LETTER;
    {class} property OTHER_NUMBER: Byte read _GetOTHER_NUMBER;
    {class} property OTHER_PUNCTUATION: Byte read _GetOTHER_PUNCTUATION;
    {class} property OTHER_SYMBOL: Byte read _GetOTHER_SYMBOL;
    {class} property PARAGRAPH_SEPARATOR: Byte read _GetPARAGRAPH_SEPARATOR;
    {class} property PRIVATE_USE: Byte read _GetPRIVATE_USE;
    {class} property SIZE: Integer read _GetSIZE;
    {class} property SPACE_SEPARATOR: Byte read _GetSPACE_SEPARATOR;
    {class} property START_PUNCTUATION: Byte read _GetSTART_PUNCTUATION;
    {class} property SURROGATE: Byte read _GetSURROGATE;
    {class} property TITLECASE_LETTER: Byte read _GetTITLECASE_LETTER;
    {class} property TYPE: Jlang_Class read _GetTYPE;
    {class} property UNASSIGNED: Byte read _GetUNASSIGNED;
    {class} property UPPERCASE_LETTER: Byte read _GetUPPERCASE_LETTER;
  end;

  [JavaSignature('java/lang/Character')]
  JCharacter = interface(JObject)
    ['{2CEB00FB-7D04-4FA3-B1F7-71D151B7D02B}']
    function compareTo(c: JCharacter): Integer; cdecl;
    function hashCode: Integer; cdecl;
  end;
  TJCharacter = class(TJavaGenericImport<JCharacterClass, JCharacter>) end;

  JCloneableClass = interface(IJavaClass)
    ['{0E9E456D-6AA1-4C39-8466-0FC2809B0004}']
  end;

  [JavaSignature('java/lang/Cloneable')]
  JCloneable = interface(IJavaInstance)
    ['{44D68986-0DF0-43AF-8D4C-3AB3381328CF}']
  end;
  TJCloneable = class(TJavaGenericImport<JCloneableClass, JCloneable>) end;

  JBigDecimalClass = interface(JNumberClass)
    ['{9009797E-6E36-4AD2-A8D6-A058B4E1E586}']
    {class} function _GetONE: JBigDecimal; cdecl;
    {class} function _GetROUND_CEILING: Integer; cdecl;
    {class} function _GetROUND_DOWN: Integer; cdecl;
    {class} function _GetROUND_FLOOR: Integer; cdecl;
    {class} function _GetROUND_HALF_DOWN: Integer; cdecl;
    {class} function _GetROUND_HALF_EVEN: Integer; cdecl;
    {class} function _GetROUND_HALF_UP: Integer; cdecl;
    {class} function _GetROUND_UNNECESSARY: Integer; cdecl;
    {class} function _GetROUND_UP: Integer; cdecl;
    {class} function _GetTEN: JBigDecimal; cdecl;
    {class} function _GetZERO: JBigDecimal; cdecl;
    {class} function init(in: TJavaArray<Char>; offset: Integer; len: Integer): JBigDecimal; cdecl; overload;
    {class} function init(in: TJavaArray<Char>; offset: Integer; len: Integer; mc: JMathContext): JBigDecimal; cdecl; overload;
    {class} function init(in: TJavaArray<Char>): JBigDecimal; cdecl; overload;
    {class} function init(in: TJavaArray<Char>; mc: JMathContext): JBigDecimal; cdecl; overload;
    {class} function init(val: JString): JBigDecimal; cdecl; overload;
    {class} function init(val: JString; mc: JMathContext): JBigDecimal; cdecl; overload;
    {class} function init(val: Double): JBigDecimal; cdecl; overload;
    {class} function init(val: Double; mc: JMathContext): JBigDecimal; cdecl; overload;
    {class} function init(val: JBigInteger): JBigDecimal; cdecl; overload;
    {class} function init(val: JBigInteger; mc: JMathContext): JBigDecimal; cdecl; overload;
    {class} function init(unscaledVal: JBigInteger; scale: Integer): JBigDecimal; cdecl; overload;
    {class} function init(unscaledVal: JBigInteger; scale: Integer; mc: JMathContext): JBigDecimal; cdecl; overload;
    {class} function init(val: Integer): JBigDecimal; cdecl; overload;
    {class} function init(val: Integer; mc: JMathContext): JBigDecimal; cdecl; overload;
    {class} function init(val: Int64): JBigDecimal; cdecl; overload;
    {class} function init(val: Int64; mc: JMathContext): JBigDecimal; cdecl; overload;
    {class} function abs(mc: JMathContext): JBigDecimal; cdecl; overload;//Deprecated
    {class} function add(augend: JBigDecimal): JBigDecimal; cdecl; overload;//Deprecated
    {class} function add(augend: JBigDecimal; mc: JMathContext): JBigDecimal; cdecl; overload;//Deprecated
    {class} function divide(divisor: JBigDecimal; scale: Integer; roundingMode: JRoundingMode): JBigDecimal; cdecl; overload;//Deprecated
    {class} function divide(divisor: JBigDecimal; roundingMode: Integer): JBigDecimal; cdecl; overload;//Deprecated
    {class} function divide(divisor: JBigDecimal; roundingMode: JRoundingMode): JBigDecimal; cdecl; overload;//Deprecated
    {class} function divideAndRemainder(divisor: JBigDecimal; mc: JMathContext): TJavaObjectArray<JBigDecimal>; cdecl; overload;//Deprecated
    {class} function divideToIntegralValue(divisor: JBigDecimal): JBigDecimal; cdecl; overload;//Deprecated
    {class} function floatValue: Single; cdecl;
    {class} function hashCode: Integer; cdecl;
    {class} function intValue: Integer; cdecl;
    {class} function max(val: JBigDecimal): JBigDecimal; cdecl;
    {class} function min(val: JBigDecimal): JBigDecimal; cdecl;
    {class} function movePointLeft(n: Integer): JBigDecimal; cdecl;
    {class} function negate: JBigDecimal; cdecl; overload;
    {class} function negate(mc: JMathContext): JBigDecimal; cdecl; overload;
    {class} function plus: JBigDecimal; cdecl; overload;
    {class} function precision: Integer; cdecl;
    {class} function remainder(divisor: JBigDecimal): JBigDecimal; cdecl; overload;
    {class} function remainder(divisor: JBigDecimal; mc: JMathContext): JBigDecimal; cdecl; overload;
    {class} function setScale(newScale: Integer; roundingMode: JRoundingMode): JBigDecimal; cdecl; overload;//Deprecated
    {class} function setScale(newScale: Integer; roundingMode: Integer): JBigDecimal; cdecl; overload;//Deprecated
    {class} function setScale(newScale: Integer): JBigDecimal; cdecl; overload;//Deprecated
    {class} function stripTrailingZeros: JBigDecimal; cdecl;//Deprecated
    {class} function subtract(subtrahend: JBigDecimal): JBigDecimal; cdecl; overload;//Deprecated
    {class} function subtract(subtrahend: JBigDecimal; mc: JMathContext): JBigDecimal; cdecl; overload;//Deprecated
    {class} function toPlainString: JString; cdecl;//Deprecated
    {class} function toString: JString; cdecl;//Deprecated
    {class} function ulp: JBigDecimal; cdecl;//Deprecated
    {class} function valueOf(unscaledVal: Int64; scale: Integer): JBigDecimal; cdecl; overload;//Deprecated
    {class} function valueOf(unscaledVal: Int64): JBigDecimal; cdecl; overload;//Deprecated
    {class} function valueOf(val: Double): JBigDecimal; cdecl; overload;//Deprecated
    {class} property ONE: JBigDecimal read _GetONE;
    {class} property ROUND_CEILING: Integer read _GetROUND_CEILING;
    {class} property ROUND_DOWN: Integer read _GetROUND_DOWN;
    {class} property ROUND_FLOOR: Integer read _GetROUND_FLOOR;
    {class} property ROUND_HALF_DOWN: Integer read _GetROUND_HALF_DOWN;
    {class} property ROUND_HALF_EVEN: Integer read _GetROUND_HALF_EVEN;
    {class} property ROUND_HALF_UP: Integer read _GetROUND_HALF_UP;
    {class} property ROUND_UNNECESSARY: Integer read _GetROUND_UNNECESSARY;
    {class} property ROUND_UP: Integer read _GetROUND_UP;
    {class} property TEN: JBigDecimal read _GetTEN;
    {class} property ZERO: JBigDecimal read _GetZERO;
  end;

  [JavaSignature('java/math/BigDecimal')]
  JBigDecimal = interface(JNumber)
    ['{5DD69CCE-D7AC-4C6C-9133-44AF78FD4CB0}']
    function abs: JBigDecimal; cdecl; overload;//Deprecated
    function byteValueExact: Byte; cdecl;//Deprecated
    function compareTo(val: JBigDecimal): Integer; cdecl;//Deprecated
    function divide(divisor: JBigDecimal; scale: Integer; roundingMode: Integer): JBigDecimal; cdecl; overload;//Deprecated
    function divide(divisor: JBigDecimal): JBigDecimal; cdecl; overload;//Deprecated
    function divide(divisor: JBigDecimal; mc: JMathContext): JBigDecimal; cdecl; overload;//Deprecated
    function divideAndRemainder(divisor: JBigDecimal): TJavaObjectArray<JBigDecimal>; cdecl; overload;//Deprecated
    function divideToIntegralValue(divisor: JBigDecimal; mc: JMathContext): JBigDecimal; cdecl; overload;
    function doubleValue: Double; cdecl;
    function equals(x: JObject): Boolean; cdecl;
    function intValueExact: Integer; cdecl;
    function longValue: Int64; cdecl;
    function longValueExact: Int64; cdecl;
    function movePointRight(n: Integer): JBigDecimal; cdecl;
    function multiply(multiplicand: JBigDecimal): JBigDecimal; cdecl; overload;
    function multiply(multiplicand: JBigDecimal; mc: JMathContext): JBigDecimal; cdecl; overload;
    function plus(mc: JMathContext): JBigDecimal; cdecl; overload;
    function pow(n: Integer): JBigDecimal; cdecl; overload;
    function pow(n: Integer; mc: JMathContext): JBigDecimal; cdecl; overload;
    function round(mc: JMathContext): JBigDecimal; cdecl;//Deprecated
    function scale: Integer; cdecl;//Deprecated
    function scaleByPowerOfTen(n: Integer): JBigDecimal; cdecl;//Deprecated
    function shortValueExact: SmallInt; cdecl;//Deprecated
    function signum: Integer; cdecl;//Deprecated
    function toBigInteger: JBigInteger; cdecl;//Deprecated
    function toBigIntegerExact: JBigInteger; cdecl;//Deprecated
    function toEngineeringString: JString; cdecl;//Deprecated
    function unscaledValue: JBigInteger; cdecl;//Deprecated
  end;
  TJBigDecimal = class(TJavaGenericImport<JBigDecimalClass, JBigDecimal>) end;

  JMathContextClass = interface(JObjectClass)
    ['{7BA456B9-E218-4B5E-8E75-DD5303C10587}']
    {class} function _GetDECIMAL128: JMathContext; cdecl;
    {class} function _GetDECIMAL32: JMathContext; cdecl;
    {class} function _GetDECIMAL64: JMathContext; cdecl;
    {class} function _GetUNLIMITED: JMathContext; cdecl;
    {class} function init(precision: Integer): JMathContext; cdecl; overload;
    {class} function init(precision: Integer; roundingMode: JRoundingMode): JMathContext; cdecl; overload;
    {class} function init(s: JString): JMathContext; cdecl; overload;
    {class} function equals(x: JObject): Boolean; cdecl;
    {class} function getPrecision: Integer; cdecl;
    {class} function getRoundingMode: JRoundingMode; cdecl;
    {class} property DECIMAL128: JMathContext read _GetDECIMAL128;
    {class} property DECIMAL32: JMathContext read _GetDECIMAL32;
    {class} property DECIMAL64: JMathContext read _GetDECIMAL64;
    {class} property UNLIMITED: JMathContext read _GetUNLIMITED;
  end;

  [JavaSignature('java/math/MathContext')]
  JMathContext = interface(JObject)
    ['{9AC8FD30-F111-4D18-AF6B-1FB0F8B44CC7}']
    function hashCode: Integer; cdecl;
    function toString: JString; cdecl;
  end;
  TJMathContext = class(TJavaGenericImport<JMathContextClass, JMathContext>) end;

  JRoundingModeClass = interface(JEnumClass)
    ['{832C09BF-E862-4B62-82F4-875D0E27BEAC}']
    {class} function _GetCEILING: JRoundingMode; cdecl;
    {class} function _GetDOWN: JRoundingMode; cdecl;
    {class} function _GetFLOOR: JRoundingMode; cdecl;
    {class} function _GetHALF_DOWN: JRoundingMode; cdecl;
    {class} function _GetHALF_EVEN: JRoundingMode; cdecl;
    {class} function _GetHALF_UP: JRoundingMode; cdecl;
    {class} function _GetUNNECESSARY: JRoundingMode; cdecl;
    {class} function _GetUP: JRoundingMode; cdecl;
    {class} function valueOf(name: JString): JRoundingMode; cdecl; overload;//Deprecated
    {class} function valueOf(mode: Integer): JRoundingMode; cdecl; overload;//Deprecated
    {class} function values: TJavaObjectArray<JRoundingMode>; cdecl;//Deprecated
    {class} property CEILING: JRoundingMode read _GetCEILING;
    {class} property DOWN: JRoundingMode read _GetDOWN;
    {class} property FLOOR: JRoundingMode read _GetFLOOR;
    {class} property HALF_DOWN: JRoundingMode read _GetHALF_DOWN;
    {class} property HALF_EVEN: JRoundingMode read _GetHALF_EVEN;
    {class} property HALF_UP: JRoundingMode read _GetHALF_UP;
    {class} property UNNECESSARY: JRoundingMode read _GetUNNECESSARY;
    {class} property UP: JRoundingMode read _GetUP;
  end;

  [JavaSignature('java/math/RoundingMode')]
  JRoundingMode = interface(JEnum)
    ['{6C96FF9E-74EE-4135-9310-847B4AC4929C}']
  end;
  TJRoundingMode = class(TJavaGenericImport<JRoundingModeClass, JRoundingMode>) end;

  Jsql_DateClass = interface(JDateClass)
    ['{857EA4F1-0CF9-47B7-ACD6-AA331D327779}']
    {class} function init(theYear: Integer; theMonth: Integer; theDay: Integer): Jsql_Date; cdecl; overload;//Deprecated
    {class} function init(theDate: Int64): Jsql_Date; cdecl; overload;
    {class} function getSeconds: Integer; cdecl;//Deprecated
    {class} procedure setHours(theHours: Integer); cdecl;//Deprecated
    {class} procedure setMinutes(theMinutes: Integer); cdecl;//Deprecated
    {class} function valueOf(dateString: JString): Jsql_Date; cdecl;
  end;

  [JavaSignature('java/sql/Date')]
  Jsql_Date = interface(JDate)
    ['{1DDE9710-15E6-40EF-9005-BEC97C478CBD}']
    function getHours: Integer; cdecl;//Deprecated
    function getMinutes: Integer; cdecl;//Deprecated
    procedure setSeconds(theSeconds: Integer); cdecl;//Deprecated
    procedure setTime(theTime: Int64); cdecl;
    function toString: JString; cdecl;
  end;
  TJsql_Date = class(TJavaGenericImport<Jsql_DateClass, Jsql_Date>) end;

  JTimeClass = interface(JDateClass)
    ['{8839D41D-5501-460F-8471-780E201B0BE0}']
    {class} function init(theHour: Integer; theMinute: Integer; theSecond: Integer): JTime; cdecl; overload;//Deprecated
    {class} function init(theTime: Int64): JTime; cdecl; overload;
    {class} function getDay: Integer; cdecl;//Deprecated
    {class} function getMonth: Integer; cdecl;//Deprecated
    {class} function getYear: Integer; cdecl;//Deprecated
    {class} procedure setYear(i: Integer); cdecl;//Deprecated
    {class} function toString: JString; cdecl;//Deprecated
    {class} function valueOf(timeString: JString): JTime; cdecl;//Deprecated
  end;

  [JavaSignature('java/sql/Time')]
  JTime = interface(JDate)
    ['{371FAE57-2444-4341-9E31-A7D860497AFA}']
    function getDate: Integer; cdecl;//Deprecated
    procedure setDate(i: Integer); cdecl;//Deprecated
    procedure setMonth(i: Integer); cdecl;//Deprecated
    procedure setTime(time: Int64); cdecl;//Deprecated
  end;
  TJTime = class(TJavaGenericImport<JTimeClass, JTime>) end;

  JTimestampClass = interface(JDateClass)
    ['{67763CBF-1ECB-4D6E-987A-47655E46EB1D}']
    {class} function init(theYear: Integer; theMonth: Integer; theDate: Integer; theHour: Integer; theMinute: Integer; theSecond: Integer; theNano: Integer): JTimestamp; cdecl; overload;//Deprecated
    {class} function init(theTime: Int64): JTimestamp; cdecl; overload;
    {class} function after(theTimestamp: JTimestamp): Boolean; cdecl;
    {class} function equals(theObject: JObject): Boolean; cdecl; overload;
    {class} function equals(theTimestamp: JTimestamp): Boolean; cdecl; overload;
    {class} function getNanos: Integer; cdecl;
    {class} function toString: JString; cdecl;
    {class} function valueOf(s: JString): JTimestamp; cdecl;
  end;

  [JavaSignature('java/sql/Timestamp')]
  JTimestamp = interface(JDate)
    ['{D8479ADD-7417-44D7-80A5-730468B0ED78}']
    function before(theTimestamp: JTimestamp): Boolean; cdecl;
    function compareTo(theObject: JDate): Integer; cdecl; overload;
    function compareTo(theTimestamp: JTimestamp): Integer; cdecl; overload;
    function getTime: Int64; cdecl;
    procedure setNanos(n: Integer); cdecl;
    procedure setTime(theTime: Int64); cdecl;
  end;
  TJTimestamp = class(TJavaGenericImport<JTimestampClass, JTimestamp>) end;

  JCharacterIteratorClass = interface(JCloneableClass)
    ['{1E5C976F-2309-499B-8A65-FEC351115AEE}']
    {class} function _GetDONE: Char; cdecl;
    {class} function getBeginIndex: Integer; cdecl;
    {class} function getEndIndex: Integer; cdecl;
    {class} function getIndex: Integer; cdecl;
    {class} function setIndex(location: Integer): Char; cdecl;
    {class} property DONE: Char read _GetDONE;
  end;

  [JavaSignature('java/text/CharacterIterator')]
  JCharacterIterator = interface(JCloneable)
    ['{E5B9E473-76E7-4041-97A5-A1642D9010AF}']
    function clone: JObject; cdecl;
    function current: Char; cdecl;
    function first: Char; cdecl;
    function last: Char; cdecl;
    function next: Char; cdecl;
    function previous: Char; cdecl;
  end;
  TJCharacterIterator = class(TJavaGenericImport<JCharacterIteratorClass, JCharacterIterator>) end;

  JAttributedCharacterIteratorClass = interface(JCharacterIteratorClass)
    ['{6594E2E5-2893-4511-92FE-65045681414C}']
    {class} function getAttribute(attribute: JAttributedCharacterIterator_Attribute): JObject; cdecl;
    {class} function getAttributes: JMap; cdecl;
    {class} function getRunLimit: Integer; cdecl; overload;
    {class} function getRunStart: Integer; cdecl; overload;
    {class} function getRunStart(attribute: JAttributedCharacterIterator_Attribute): Integer; cdecl; overload;
    {class} function getRunStart(attributes: JSet): Integer; cdecl; overload;
  end;

  [JavaSignature('java/text/AttributedCharacterIterator')]
  JAttributedCharacterIterator = interface(JCharacterIterator)
    ['{CAC4C1F7-69A7-4AF1-85CF-28B7AC6C174E}']
    function getAllAttributeKeys: JSet; cdecl;
    function getRunLimit(attribute: JAttributedCharacterIterator_Attribute): Integer; cdecl; overload;
    function getRunLimit(attributes: JSet): Integer; cdecl; overload;
  end;
  TJAttributedCharacterIterator = class(TJavaGenericImport<JAttributedCharacterIteratorClass, JAttributedCharacterIterator>) end;

  JAttributedCharacterIterator_AttributeClass = interface(JObjectClass)
    ['{2A4E44E3-1055-47D3-9D7C-306D8FC1B7B5}']
    {class} function _GetINPUT_METHOD_SEGMENT: JAttributedCharacterIterator_Attribute; cdecl;
    {class} function _GetLANGUAGE: JAttributedCharacterIterator_Attribute; cdecl;
    {class} function _GetREADING: JAttributedCharacterIterator_Attribute; cdecl;
    {class} property INPUT_METHOD_SEGMENT: JAttributedCharacterIterator_Attribute read _GetINPUT_METHOD_SEGMENT;
    {class} property LANGUAGE: JAttributedCharacterIterator_Attribute read _GetLANGUAGE;
    {class} property READING: JAttributedCharacterIterator_Attribute read _GetREADING;
  end;

  [JavaSignature('java/text/AttributedCharacterIterator$Attribute')]
  JAttributedCharacterIterator_Attribute = interface(JObject)
    ['{18526153-8CA3-4BDA-AC30-F568F5361582}']
    function equals(object: JObject): Boolean; cdecl;//Deprecated
    function hashCode: Integer; cdecl;//Deprecated
    function toString: JString; cdecl;//Deprecated
  end;
  TJAttributedCharacterIterator_Attribute = class(TJavaGenericImport<JAttributedCharacterIterator_AttributeClass, JAttributedCharacterIterator_Attribute>) end;

  JFormatClass = interface(JObjectClass)
    ['{B3360D82-FFC6-472C-B0C7-DA4B605FA6C7}']
    {class} function format(object: JObject): JString; cdecl; overload;//Deprecated
    {class} function format(object: JObject; buffer: JStringBuffer; field: JFieldPosition): JStringBuffer; cdecl; overload;//Deprecated
  end;

  [JavaSignature('java/text/Format')]
  JFormat = interface(JObject)
    ['{621A5512-28D0-465D-A17C-D91BA62AC2BC}']
    function clone: JObject; cdecl;//Deprecated
    function formatToCharacterIterator(object: JObject): JAttributedCharacterIterator; cdecl;//Deprecated
    function parseObject(string: JString): JObject; cdecl; overload;//Deprecated
    function parseObject(string: JString; position: JParsePosition): JObject; cdecl; overload;//Deprecated
  end;
  TJFormat = class(TJavaGenericImport<JFormatClass, JFormat>) end;

  Jtext_DateFormatClass = interface(JFormatClass)
    ['{41D4091B-A501-4CE1-809A-DCFDCC6A70F7}']
    {class} function _GetAM_PM_FIELD: Integer; cdecl;
    {class} function _GetDATE_FIELD: Integer; cdecl;
    {class} function _GetDAY_OF_WEEK_FIELD: Integer; cdecl;
    {class} function _GetDAY_OF_WEEK_IN_MONTH_FIELD: Integer; cdecl;
    {class} function _GetDAY_OF_YEAR_FIELD: Integer; cdecl;
    {class} function _GetDEFAULT: Integer; cdecl;
    {class} function _GetERA_FIELD: Integer; cdecl;
    {class} function _GetFULL: Integer; cdecl;
    {class} function _GetHOUR0_FIELD: Integer; cdecl;
    {class} function _GetHOUR1_FIELD: Integer; cdecl;
    {class} function _GetHOUR_OF_DAY0_FIELD: Integer; cdecl;
    {class} function _GetHOUR_OF_DAY1_FIELD: Integer; cdecl;
    {class} function _GetLONG: Integer; cdecl;
    {class} function _GetMEDIUM: Integer; cdecl;
    {class} function _GetMILLISECOND_FIELD: Integer; cdecl;
    {class} function _GetMINUTE_FIELD: Integer; cdecl;
    {class} function _GetMONTH_FIELD: Integer; cdecl;
    {class} function _GetSECOND_FIELD: Integer; cdecl;
    {class} function _GetSHORT: Integer; cdecl;
    {class} function _GetTIMEZONE_FIELD: Integer; cdecl;
    {class} function _GetWEEK_OF_MONTH_FIELD: Integer; cdecl;
    {class} function _GetWEEK_OF_YEAR_FIELD: Integer; cdecl;
    {class} function _GetYEAR_FIELD: Integer; cdecl;
    {class} function format(date: JDate): JString; cdecl; overload;//Deprecated
    {class} function format(date: JDate; buffer: JStringBuffer; field: JFieldPosition): JStringBuffer; cdecl; overload;//Deprecated
    {class} function getAvailableLocales: TJavaObjectArray<JLocale>; cdecl;
    {class} function getDateInstance: Jtext_DateFormat; cdecl; overload;
    {class} function getDateInstance(style: Integer): Jtext_DateFormat; cdecl; overload;
    {class} function getDateInstance(style: Integer; locale: JLocale): Jtext_DateFormat; cdecl; overload;
    {class} function getDateTimeInstance: Jtext_DateFormat; cdecl; overload;
    {class} function getDateTimeInstance(dateStyle: Integer; timeStyle: Integer): Jtext_DateFormat; cdecl; overload;
    {class} function getDateTimeInstance(dateStyle: Integer; timeStyle: Integer; locale: JLocale): Jtext_DateFormat; cdecl; overload;
    {class} function getInstance: Jtext_DateFormat; cdecl;
    {class} function getNumberFormat: JNumberFormat; cdecl;
    {class} function getTimeInstance: Jtext_DateFormat; cdecl; overload;
    {class} function getTimeInstance(style: Integer): Jtext_DateFormat; cdecl; overload;
    {class} function getTimeInstance(style: Integer; locale: JLocale): Jtext_DateFormat; cdecl; overload;//Deprecated
    {class} function isLenient: Boolean; cdecl;//Deprecated
    {class} function parse(string: JString): JDate; cdecl; overload;//Deprecated
    {class} function parse(string: JString; position: JParsePosition): JDate; cdecl; overload;//Deprecated
    {class} procedure setNumberFormat(format: JNumberFormat); cdecl;//Deprecated
    {class} procedure setTimeZone(timezone: JTimeZone); cdecl;//Deprecated
    {class} property AM_PM_FIELD: Integer read _GetAM_PM_FIELD;
    {class} property DATE_FIELD: Integer read _GetDATE_FIELD;
    {class} property DAY_OF_WEEK_FIELD: Integer read _GetDAY_OF_WEEK_FIELD;
    {class} property DAY_OF_WEEK_IN_MONTH_FIELD: Integer read _GetDAY_OF_WEEK_IN_MONTH_FIELD;
    {class} property DAY_OF_YEAR_FIELD: Integer read _GetDAY_OF_YEAR_FIELD;
    {class} property DEFAULT: Integer read _GetDEFAULT;
    {class} property ERA_FIELD: Integer read _GetERA_FIELD;
    {class} property FULL: Integer read _GetFULL;
    {class} property HOUR0_FIELD: Integer read _GetHOUR0_FIELD;
    {class} property HOUR1_FIELD: Integer read _GetHOUR1_FIELD;
    {class} property HOUR_OF_DAY0_FIELD: Integer read _GetHOUR_OF_DAY0_FIELD;
    {class} property HOUR_OF_DAY1_FIELD: Integer read _GetHOUR_OF_DAY1_FIELD;
    {class} property LONG: Integer read _GetLONG;
    {class} property MEDIUM: Integer read _GetMEDIUM;
    {class} property MILLISECOND_FIELD: Integer read _GetMILLISECOND_FIELD;
    {class} property MINUTE_FIELD: Integer read _GetMINUTE_FIELD;
    {class} property MONTH_FIELD: Integer read _GetMONTH_FIELD;
    {class} property SECOND_FIELD: Integer read _GetSECOND_FIELD;
    {class} property SHORT: Integer read _GetSHORT;
    {class} property TIMEZONE_FIELD: Integer read _GetTIMEZONE_FIELD;
    {class} property WEEK_OF_MONTH_FIELD: Integer read _GetWEEK_OF_MONTH_FIELD;
    {class} property WEEK_OF_YEAR_FIELD: Integer read _GetWEEK_OF_YEAR_FIELD;
    {class} property YEAR_FIELD: Integer read _GetYEAR_FIELD;
  end;

  [JavaSignature('java/text/DateFormat')]
  Jtext_DateFormat = interface(JFormat)
    ['{5340AD79-1BFF-4A08-9D2B-365E852F7C98}']
    function clone: JObject; cdecl;//Deprecated
    function equals(object: JObject): Boolean; cdecl;//Deprecated
    function format(object: JObject; buffer: JStringBuffer; field: JFieldPosition): JStringBuffer; cdecl; overload;//Deprecated
    function getCalendar: JCalendar; cdecl;
    function getTimeZone: JTimeZone; cdecl;//Deprecated
    function hashCode: Integer; cdecl;//Deprecated
    function parseObject(string: JString; position: JParsePosition): JObject; cdecl;//Deprecated
    procedure setCalendar(cal: JCalendar); cdecl;//Deprecated
    procedure setLenient(value: Boolean); cdecl;//Deprecated
  end;
  TJtext_DateFormat = class(TJavaGenericImport<Jtext_DateFormatClass, Jtext_DateFormat>) end;

  JFieldPositionClass = interface(JObjectClass)
    ['{F58B6EC9-95AC-427C-9E49-18A65DCC6A3D}']
    {class} function init(field: Integer): JFieldPosition; cdecl; overload;
    {class} function init(attribute: JFormat_Field): JFieldPosition; cdecl; overload;
    {class} function init(attribute: JFormat_Field; field: Integer): JFieldPosition; cdecl; overload;
    {class} function getBeginIndex: Integer; cdecl;
    {class} function getEndIndex: Integer; cdecl;
    {class} function getField: Integer; cdecl;
    {class} procedure setEndIndex(index: Integer); cdecl;
    {class} function toString: JString; cdecl;
  end;

  [JavaSignature('java/text/FieldPosition')]
  JFieldPosition = interface(JObject)
    ['{10819166-C974-4752-BD60-DC299ECF476E}']
    function equals(object: JObject): Boolean; cdecl;
    function getFieldAttribute: JFormat_Field; cdecl;
    function hashCode: Integer; cdecl;
    procedure setBeginIndex(index: Integer); cdecl;
  end;
  TJFieldPosition = class(TJavaGenericImport<JFieldPositionClass, JFieldPosition>) end;

  JFormat_FieldClass = interface(JAttributedCharacterIterator_AttributeClass)
    ['{5A479036-DED0-43F9-9F53-BFBA7EB3D38E}']
  end;

  [JavaSignature('java/text/Format$Field')]
  JFormat_Field = interface(JAttributedCharacterIterator_Attribute)
    ['{B776B5A5-CA40-43FB-8222-CFBF9C422DF9}']
  end;
  TJFormat_Field = class(TJavaGenericImport<JFormat_FieldClass, JFormat_Field>) end;

  JNumberFormatClass = interface(JFormatClass)
    ['{F72B5D5E-A330-4F41-A802-B8837E05164D}']
    {class} function _GetFRACTION_FIELD: Integer; cdecl;
    {class} function _GetINTEGER_FIELD: Integer; cdecl;
    {class} function clone: JObject; cdecl;//Deprecated
    {class} function format(value: Int64): JString; cdecl; overload;//Deprecated
    {class} function format(value: Int64; buffer: JStringBuffer; field: JFieldPosition): JStringBuffer; cdecl; overload;//Deprecated
    {class} function format(object: JObject; buffer: JStringBuffer; field: JFieldPosition): JStringBuffer; cdecl; overload;//Deprecated
    {class} function getAvailableLocales: TJavaObjectArray<JLocale>; cdecl;
    {class} function getCurrencyInstance: JNumberFormat; cdecl; overload;
    {class} function getCurrencyInstance(locale: JLocale): JNumberFormat; cdecl; overload;
    {class} function getInstance: JNumberFormat; cdecl; overload;
    {class} function getInstance(locale: JLocale): JNumberFormat; cdecl; overload;
    {class} function getIntegerInstance: JNumberFormat; cdecl; overload;
    {class} function getIntegerInstance(locale: JLocale): JNumberFormat; cdecl; overload;
    {class} function getMaximumFractionDigits: Integer; cdecl;
    {class} function getMaximumIntegerDigits: Integer; cdecl;
    {class} function getMinimumFractionDigits: Integer; cdecl;
    {class} function getNumberInstance: JNumberFormat; cdecl; overload;
    {class} function getNumberInstance(locale: JLocale): JNumberFormat; cdecl; overload;
    {class} function getPercentInstance: JNumberFormat; cdecl; overload;
    {class} function getPercentInstance(locale: JLocale): JNumberFormat; cdecl; overload;
    {class} function getRoundingMode: JRoundingMode; cdecl;
    {class} function parse(string: JString): JNumber; cdecl; overload;
    {class} function parse(string: JString; position: JParsePosition): JNumber; cdecl; overload;
    {class} function parseObject(string: JString; position: JParsePosition): JObject; cdecl;
    {class} procedure setMaximumIntegerDigits(value: Integer); cdecl;//Deprecated
    {class} procedure setMinimumFractionDigits(value: Integer); cdecl;//Deprecated
    {class} procedure setMinimumIntegerDigits(value: Integer); cdecl;//Deprecated
    {class} property FRACTION_FIELD: Integer read _GetFRACTION_FIELD;
    {class} property INTEGER_FIELD: Integer read _GetINTEGER_FIELD;
  end;

  [JavaSignature('java/text/NumberFormat')]
  JNumberFormat = interface(JFormat)
    ['{4C770B91-BD41-4070-A7C3-6CF3BF099AC4}']
    function equals(object: JObject): Boolean; cdecl;//Deprecated
    function format(value: Double): JString; cdecl; overload;//Deprecated
    function format(value: Double; buffer: JStringBuffer; field: JFieldPosition): JStringBuffer; cdecl; overload;//Deprecated
    function getCurrency: JCurrency; cdecl;
    function getMinimumIntegerDigits: Integer; cdecl;
    function hashCode: Integer; cdecl;
    function isGroupingUsed: Boolean; cdecl;
    function isParseIntegerOnly: Boolean; cdecl;
    procedure setCurrency(currency: JCurrency); cdecl;//Deprecated
    procedure setGroupingUsed(value: Boolean); cdecl;//Deprecated
    procedure setMaximumFractionDigits(value: Integer); cdecl;//Deprecated
    procedure setParseIntegerOnly(value: Boolean); cdecl;//Deprecated
    procedure setRoundingMode(roundingMode: JRoundingMode); cdecl;//Deprecated
  end;
  TJNumberFormat = class(TJavaGenericImport<JNumberFormatClass, JNumberFormat>) end;

  JParsePositionClass = interface(JObjectClass)
    ['{0724101A-25F5-4AC4-BD4D-261CAD09EEB7}']
    {class} function init(index: Integer): JParsePosition; cdecl;
    {class} function equals(object: JObject): Boolean; cdecl;//Deprecated
    {class} procedure setErrorIndex(index: Integer); cdecl;//Deprecated
    {class} procedure setIndex(index: Integer); cdecl;//Deprecated
    {class} function toString: JString; cdecl;//Deprecated
  end;

  [JavaSignature('java/text/ParsePosition')]
  JParsePosition = interface(JObject)
    ['{A9807DE3-9CD3-4E13-8AAC-C04A36AD7FBD}']
    function getErrorIndex: Integer; cdecl;//Deprecated
    function getIndex: Integer; cdecl;//Deprecated
    function hashCode: Integer; cdecl;//Deprecated
  end;
  TJParsePosition = class(TJavaGenericImport<JParsePositionClass, JParsePosition>) end;

  JCurrencyClass = interface(JObjectClass)
    ['{819E7837-91D5-4FC1-9934-90AE60501BC4}']
    {class} function getAvailableCurrencies: JSet; cdecl;
    {class} function getCurrencyCode: JString; cdecl;
    {class} function getDefaultFractionDigits: Integer; cdecl;
    {class} function getDisplayName: JString; cdecl; overload;
    {class} function getInstance(currencyCode: JString): JCurrency; cdecl; overload;
    {class} function getInstance(locale: JLocale): JCurrency; cdecl; overload;
    {class} function getSymbol: JString; cdecl; overload;
    {class} function getSymbol(locale: JLocale): JString; cdecl; overload;
    {class} function toString: JString; cdecl;
  end;

  [JavaSignature('java/util/Currency')]
  JCurrency = interface(JObject)
    ['{484CC272-21BF-49BD-B8D8-6BEB10DFFDE0}']
    function getDisplayName(locale: JLocale): JString; cdecl; overload;
  end;
  TJCurrency = class(TJavaGenericImport<JCurrencyClass, JCurrency>) end;

implementation

procedure RegisterTypes;
begin
  TRegTypes.RegisterType('java.gson.JJsonSerializer', TypeInfo(java.gson.JJsonSerializer));
  TRegTypes.RegisterType('java.gson.JDefaultDateTypeAdapter', TypeInfo(java.gson.JDefaultDateTypeAdapter));
  TRegTypes.RegisterType('java.gson.JExclusionStrategy', TypeInfo(java.gson.JExclusionStrategy));
  TRegTypes.RegisterType('java.gson.JFieldAttributes', TypeInfo(java.gson.JFieldAttributes));
  TRegTypes.RegisterType('java.gson.JFieldNamingPolicy', TypeInfo(java.gson.JFieldNamingPolicy));
  TRegTypes.RegisterType('java.gson.JFieldNamingPolicy_1', TypeInfo(java.gson.JFieldNamingPolicy_1));
  TRegTypes.RegisterType('java.gson.JFieldNamingPolicy_2', TypeInfo(java.gson.JFieldNamingPolicy_2));
  TRegTypes.RegisterType('java.gson.JFieldNamingPolicy_3', TypeInfo(java.gson.JFieldNamingPolicy_3));
  TRegTypes.RegisterType('java.gson.JFieldNamingPolicy_4', TypeInfo(java.gson.JFieldNamingPolicy_4));
  TRegTypes.RegisterType('java.gson.JFieldNamingPolicy_5', TypeInfo(java.gson.JFieldNamingPolicy_5));
  TRegTypes.RegisterType('java.gson.JFieldNamingStrategy', TypeInfo(java.gson.JFieldNamingStrategy));
  TRegTypes.RegisterType('java.gson.JGson', TypeInfo(java.gson.JGson));
  TRegTypes.RegisterType('java.gson.JJsonDeserializationContext', TypeInfo(java.gson.JJsonDeserializationContext));
  TRegTypes.RegisterType('java.gson.JGson_1', TypeInfo(java.gson.JGson_1));
  TRegTypes.RegisterType('java.gson.JJsonSerializationContext', TypeInfo(java.gson.JJsonSerializationContext));
  TRegTypes.RegisterType('java.gson.JGson_2', TypeInfo(java.gson.JGson_2));
  TRegTypes.RegisterType('java.gson.JTypeAdapter', TypeInfo(java.gson.JTypeAdapter));
  TRegTypes.RegisterType('java.gson.JGson_3', TypeInfo(java.gson.JGson_3));
  TRegTypes.RegisterType('java.gson.JGson_4', TypeInfo(java.gson.JGson_4));
  TRegTypes.RegisterType('java.gson.JGson_5', TypeInfo(java.gson.JGson_5));
  TRegTypes.RegisterType('java.gson.JGson_FutureTypeAdapter', TypeInfo(java.gson.JGson_FutureTypeAdapter));
  TRegTypes.RegisterType('java.gson.JGsonBuilder', TypeInfo(java.gson.JGsonBuilder));
  TRegTypes.RegisterType('java.gson.JInstanceCreator', TypeInfo(java.gson.JInstanceCreator));
  TRegTypes.RegisterType('java.gson.JJsonElement', TypeInfo(java.gson.JJsonElement));
  TRegTypes.RegisterType('java.gson.Jgson_JsonArray', TypeInfo(java.gson.Jgson_JsonArray));
  TRegTypes.RegisterType('java.gson.JJsonDeserializer', TypeInfo(java.gson.JJsonDeserializer));
  TRegTypes.RegisterType('java.gson.JJsonParseException', TypeInfo(java.gson.JJsonParseException));
  TRegTypes.RegisterType('java.gson.JJsonIOException', TypeInfo(java.gson.JJsonIOException));
  TRegTypes.RegisterType('java.gson.JJsonNull', TypeInfo(java.gson.JJsonNull));
  TRegTypes.RegisterType('java.gson.Jgson_JsonObject', TypeInfo(java.gson.Jgson_JsonObject));
  TRegTypes.RegisterType('java.gson.JJsonParser', TypeInfo(java.gson.JJsonParser));
  TRegTypes.RegisterType('java.gson.JJsonPrimitive', TypeInfo(java.gson.JJsonPrimitive));
  TRegTypes.RegisterType('java.gson.JJsonStreamParser', TypeInfo(java.gson.JJsonStreamParser));
  TRegTypes.RegisterType('java.gson.JJsonSyntaxException', TypeInfo(java.gson.JJsonSyntaxException));
  TRegTypes.RegisterType('java.gson.JLongSerializationPolicy', TypeInfo(java.gson.JLongSerializationPolicy));
  TRegTypes.RegisterType('java.gson.JLongSerializationPolicy_1', TypeInfo(java.gson.JLongSerializationPolicy_1));
  TRegTypes.RegisterType('java.gson.JLongSerializationPolicy_2', TypeInfo(java.gson.JLongSerializationPolicy_2));
  TRegTypes.RegisterType('java.gson.JTreeTypeAdapter', TypeInfo(java.gson.JTreeTypeAdapter));
  TRegTypes.RegisterType('java.gson.JTreeTypeAdapter_1', TypeInfo(java.gson.JTreeTypeAdapter_1));
  TRegTypes.RegisterType('java.gson.JTypeAdapterFactory', TypeInfo(java.gson.JTypeAdapterFactory));
  TRegTypes.RegisterType('java.gson.JTreeTypeAdapter_SingleTypeFactory', TypeInfo(java.gson.JTreeTypeAdapter_SingleTypeFactory));
  TRegTypes.RegisterType('java.gson.JTypeAdapter_1', TypeInfo(java.gson.JTypeAdapter_1));
  TRegTypes.RegisterType('java.gson.JExpose', TypeInfo(java.gson.JExpose));
  TRegTypes.RegisterType('java.gson.JSerializedName', TypeInfo(java.gson.JSerializedName));
  TRegTypes.RegisterType('java.gson.JSince', TypeInfo(java.gson.JSince));
  TRegTypes.RegisterType('java.gson.JUntil', TypeInfo(java.gson.JUntil));
  TRegTypes.RegisterType('java.gson.JGson_Preconditions', TypeInfo(java.gson.JGson_Preconditions));
  TRegTypes.RegisterType('java.gson.JGson_Types', TypeInfo(java.gson.JGson_Types));
  TRegTypes.RegisterType('java.gson.JGenericArrayType', TypeInfo(java.gson.JGenericArrayType));
  TRegTypes.RegisterType('java.gson.JTypes_GenericArrayTypeImpl', TypeInfo(java.gson.JTypes_GenericArrayTypeImpl));
  TRegTypes.RegisterType('java.gson.JParameterizedType', TypeInfo(java.gson.JParameterizedType));
  TRegTypes.RegisterType('java.gson.JTypes_ParameterizedTypeImpl', TypeInfo(java.gson.JTypes_ParameterizedTypeImpl));
  TRegTypes.RegisterType('java.gson.JWildcardType', TypeInfo(java.gson.JWildcardType));
  TRegTypes.RegisterType('java.gson.JTypes_WildcardTypeImpl', TypeInfo(java.gson.JTypes_WildcardTypeImpl));
  TRegTypes.RegisterType('java.gson.JConstructorConstructor', TypeInfo(java.gson.JConstructorConstructor));
  TRegTypes.RegisterType('java.gson.JObjectConstructor', TypeInfo(java.gson.JObjectConstructor));
  TRegTypes.RegisterType('java.gson.JConstructorConstructor_1', TypeInfo(java.gson.JConstructorConstructor_1));
  TRegTypes.RegisterType('java.gson.JConstructorConstructor_10', TypeInfo(java.gson.JConstructorConstructor_10));
  TRegTypes.RegisterType('java.gson.JConstructorConstructor_11', TypeInfo(java.gson.JConstructorConstructor_11));
  TRegTypes.RegisterType('java.gson.JConstructorConstructor_12', TypeInfo(java.gson.JConstructorConstructor_12));
  TRegTypes.RegisterType('java.gson.JConstructorConstructor_2', TypeInfo(java.gson.JConstructorConstructor_2));
  TRegTypes.RegisterType('java.gson.JConstructorConstructor_3', TypeInfo(java.gson.JConstructorConstructor_3));
  TRegTypes.RegisterType('java.gson.JConstructorConstructor_4', TypeInfo(java.gson.JConstructorConstructor_4));
  TRegTypes.RegisterType('java.gson.JConstructorConstructor_5', TypeInfo(java.gson.JConstructorConstructor_5));
  TRegTypes.RegisterType('java.gson.JConstructorConstructor_6', TypeInfo(java.gson.JConstructorConstructor_6));
  TRegTypes.RegisterType('java.gson.JConstructorConstructor_7', TypeInfo(java.gson.JConstructorConstructor_7));
  TRegTypes.RegisterType('java.gson.JConstructorConstructor_8', TypeInfo(java.gson.JConstructorConstructor_8));
  TRegTypes.RegisterType('java.gson.JConstructorConstructor_9', TypeInfo(java.gson.JConstructorConstructor_9));
  TRegTypes.RegisterType('java.gson.JExcluder', TypeInfo(java.gson.JExcluder));
  TRegTypes.RegisterType('java.gson.JExcluder_1', TypeInfo(java.gson.JExcluder_1));
  TRegTypes.RegisterType('java.gson.JJsonReaderInternalAccess', TypeInfo(java.gson.JJsonReaderInternalAccess));
  TRegTypes.RegisterType('java.gson.JLazilyParsedNumber', TypeInfo(java.gson.JLazilyParsedNumber));
  TRegTypes.RegisterType('java.gson.JLinkedTreeMap', TypeInfo(java.gson.JLinkedTreeMap));
  TRegTypes.RegisterType('java.gson.JLinkedTreeMap_1', TypeInfo(java.gson.JLinkedTreeMap_1));
  TRegTypes.RegisterType('java.gson.JLinkedTreeMap_EntrySet', TypeInfo(java.gson.JLinkedTreeMap_EntrySet));
  TRegTypes.RegisterType('java.gson.JEntrySet_1', TypeInfo(java.gson.JEntrySet_1));
  TRegTypes.RegisterType('java.gson.JLinkedTreeMap_KeySet', TypeInfo(java.gson.JLinkedTreeMap_KeySet));
  TRegTypes.RegisterType('java.gson.JKeySet_1', TypeInfo(java.gson.JKeySet_1));
  TRegTypes.RegisterType('java.gson.JLinkedTreeMap_LinkedTreeMapIterator', TypeInfo(java.gson.JLinkedTreeMap_LinkedTreeMapIterator));
  TRegTypes.RegisterType('java.gson.JMap_Entry', TypeInfo(java.gson.JMap_Entry));
  TRegTypes.RegisterType('java.gson.JLinkedTreeMap_Node', TypeInfo(java.gson.JLinkedTreeMap_Node));
  TRegTypes.RegisterType('java.gson.JPrimitives', TypeInfo(java.gson.JPrimitives));
  TRegTypes.RegisterType('java.gson.JStreams', TypeInfo(java.gson.JStreams));
  TRegTypes.RegisterType('java.gson.JStreams_1', TypeInfo(java.gson.JStreams_1));
  TRegTypes.RegisterType('java.gson.JStreams_AppendableWriter', TypeInfo(java.gson.JStreams_AppendableWriter));
  TRegTypes.RegisterType('java.gson.JAppendableWriter_CurrentWrite', TypeInfo(java.gson.JAppendableWriter_CurrentWrite));
  TRegTypes.RegisterType('java.gson.JUnsafeAllocator', TypeInfo(java.gson.JUnsafeAllocator));
  TRegTypes.RegisterType('java.gson.JUnsafeAllocator_1', TypeInfo(java.gson.JUnsafeAllocator_1));
  TRegTypes.RegisterType('java.gson.JUnsafeAllocator_2', TypeInfo(java.gson.JUnsafeAllocator_2));
  TRegTypes.RegisterType('java.gson.JUnsafeAllocator_3', TypeInfo(java.gson.JUnsafeAllocator_3));
  TRegTypes.RegisterType('java.gson.JUnsafeAllocator_4', TypeInfo(java.gson.JUnsafeAllocator_4));
  TRegTypes.RegisterType('java.gson.JArrayTypeAdapter', TypeInfo(java.gson.JArrayTypeAdapter));
  TRegTypes.RegisterType('java.gson.JArrayTypeAdapter_1', TypeInfo(java.gson.JArrayTypeAdapter_1));
  TRegTypes.RegisterType('java.gson.JCollectionTypeAdapterFactory', TypeInfo(java.gson.JCollectionTypeAdapterFactory));
  TRegTypes.RegisterType('java.gson.JCollectionTypeAdapterFactory_Adapter', TypeInfo(java.gson.JCollectionTypeAdapterFactory_Adapter));
  TRegTypes.RegisterType('java.gson.JDateTypeAdapter', TypeInfo(java.gson.JDateTypeAdapter));
  TRegTypes.RegisterType('java.gson.JDateTypeAdapter_1', TypeInfo(java.gson.JDateTypeAdapter_1));
  TRegTypes.RegisterType('java.gson.Jstream_JsonReader', TypeInfo(java.gson.Jstream_JsonReader));
  TRegTypes.RegisterType('java.gson.JJsonTreeReader', TypeInfo(java.gson.JJsonTreeReader));
  TRegTypes.RegisterType('java.gson.JJsonTreeReader_1', TypeInfo(java.gson.JJsonTreeReader_1));
  TRegTypes.RegisterType('java.gson.Jstream_JsonWriter', TypeInfo(java.gson.Jstream_JsonWriter));
  TRegTypes.RegisterType('java.gson.JJsonTreeWriter', TypeInfo(java.gson.JJsonTreeWriter));
  TRegTypes.RegisterType('java.gson.JJsonTreeWriter_1', TypeInfo(java.gson.JJsonTreeWriter_1));
  TRegTypes.RegisterType('java.gson.JMapTypeAdapterFactory', TypeInfo(java.gson.JMapTypeAdapterFactory));
  TRegTypes.RegisterType('java.gson.JMapTypeAdapterFactory_Adapter', TypeInfo(java.gson.JMapTypeAdapterFactory_Adapter));
  TRegTypes.RegisterType('java.gson.JObjectTypeAdapter', TypeInfo(java.gson.JObjectTypeAdapter));
  TRegTypes.RegisterType('java.gson.JObjectTypeAdapter_1', TypeInfo(java.gson.JObjectTypeAdapter_1));
  TRegTypes.RegisterType('java.gson.JObjectTypeAdapter_2', TypeInfo(java.gson.JObjectTypeAdapter_2));
  TRegTypes.RegisterType('java.gson.JReflectiveTypeAdapterFactory', TypeInfo(java.gson.JReflectiveTypeAdapterFactory));
  TRegTypes.RegisterType('java.gson.JReflectiveTypeAdapterFactory_BoundField', TypeInfo(java.gson.JReflectiveTypeAdapterFactory_BoundField));
  TRegTypes.RegisterType('java.gson.JReflectiveTypeAdapterFactory_1', TypeInfo(java.gson.JReflectiveTypeAdapterFactory_1));
  TRegTypes.RegisterType('java.gson.JReflectiveTypeAdapterFactory_Adapter', TypeInfo(java.gson.JReflectiveTypeAdapterFactory_Adapter));
  TRegTypes.RegisterType('java.gson.JSqlDateTypeAdapter', TypeInfo(java.gson.JSqlDateTypeAdapter));
  TRegTypes.RegisterType('java.gson.JSqlDateTypeAdapter_1', TypeInfo(java.gson.JSqlDateTypeAdapter_1));
  TRegTypes.RegisterType('java.gson.JTimeTypeAdapter', TypeInfo(java.gson.JTimeTypeAdapter));
  TRegTypes.RegisterType('java.gson.JTimeTypeAdapter_1', TypeInfo(java.gson.JTimeTypeAdapter_1));
  TRegTypes.RegisterType('java.gson.JTypeAdapterRuntimeTypeWrapper', TypeInfo(java.gson.JTypeAdapterRuntimeTypeWrapper));
  TRegTypes.RegisterType('java.gson.JTypeAdapters', TypeInfo(java.gson.JTypeAdapters));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_1', TypeInfo(java.gson.JTypeAdapters_1));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_10', TypeInfo(java.gson.JTypeAdapters_10));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_11', TypeInfo(java.gson.JTypeAdapters_11));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_12', TypeInfo(java.gson.JTypeAdapters_12));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_13', TypeInfo(java.gson.JTypeAdapters_13));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_14', TypeInfo(java.gson.JTypeAdapters_14));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_15', TypeInfo(java.gson.JTypeAdapters_15));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_16', TypeInfo(java.gson.JTypeAdapters_16));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_17', TypeInfo(java.gson.JTypeAdapters_17));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_18', TypeInfo(java.gson.JTypeAdapters_18));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_19', TypeInfo(java.gson.JTypeAdapters_19));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_2', TypeInfo(java.gson.JTypeAdapters_2));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_20', TypeInfo(java.gson.JTypeAdapters_20));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_21', TypeInfo(java.gson.JTypeAdapters_21));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_22', TypeInfo(java.gson.JTypeAdapters_22));
  TRegTypes.RegisterType('java.gson.J22_1', TypeInfo(java.gson.J22_1));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_23', TypeInfo(java.gson.JTypeAdapters_23));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_24', TypeInfo(java.gson.JTypeAdapters_24));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_25', TypeInfo(java.gson.JTypeAdapters_25));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_26', TypeInfo(java.gson.JTypeAdapters_26));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_27', TypeInfo(java.gson.JTypeAdapters_27));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_28', TypeInfo(java.gson.JTypeAdapters_28));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_29', TypeInfo(java.gson.JTypeAdapters_29));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_3', TypeInfo(java.gson.JTypeAdapters_3));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_30', TypeInfo(java.gson.JTypeAdapters_30));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_31', TypeInfo(java.gson.JTypeAdapters_31));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_32', TypeInfo(java.gson.JTypeAdapters_32));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_4', TypeInfo(java.gson.JTypeAdapters_4));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_5', TypeInfo(java.gson.JTypeAdapters_5));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_6', TypeInfo(java.gson.JTypeAdapters_6));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_7', TypeInfo(java.gson.JTypeAdapters_7));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_8', TypeInfo(java.gson.JTypeAdapters_8));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_9', TypeInfo(java.gson.JTypeAdapters_9));
  TRegTypes.RegisterType('java.gson.JTypeAdapters_EnumTypeAdapter', TypeInfo(java.gson.JTypeAdapters_EnumTypeAdapter));
  TRegTypes.RegisterType('java.gson.JTypeToken', TypeInfo(java.gson.JTypeToken));
  TRegTypes.RegisterType('java.gson.JJsonReader_1', TypeInfo(java.gson.JJsonReader_1));
  TRegTypes.RegisterType('java.gson.JJsonScope', TypeInfo(java.gson.JJsonScope));
  TRegTypes.RegisterType('java.gson.Jstream_JsonToken', TypeInfo(java.gson.Jstream_JsonToken));
  TRegTypes.RegisterType('java.gson.Jstream_MalformedJsonException', TypeInfo(java.gson.Jstream_MalformedJsonException));
  TRegTypes.RegisterType('java.gson.JAppendable', TypeInfo(java.gson.JAppendable));
  TRegTypes.RegisterType('java.gson.JCharacter', TypeInfo(java.gson.JCharacter));
  TRegTypes.RegisterType('java.gson.JCloneable', TypeInfo(java.gson.JCloneable));
  TRegTypes.RegisterType('java.gson.JBigDecimal', TypeInfo(java.gson.JBigDecimal));
  TRegTypes.RegisterType('java.gson.JMathContext', TypeInfo(java.gson.JMathContext));
  TRegTypes.RegisterType('java.gson.JRoundingMode', TypeInfo(java.gson.JRoundingMode));
  TRegTypes.RegisterType('java.gson.Jsql_Date', TypeInfo(java.gson.Jsql_Date));
  TRegTypes.RegisterType('java.gson.JTime', TypeInfo(java.gson.JTime));
  TRegTypes.RegisterType('java.gson.JTimestamp', TypeInfo(java.gson.JTimestamp));
  TRegTypes.RegisterType('java.gson.JCharacterIterator', TypeInfo(java.gson.JCharacterIterator));
  TRegTypes.RegisterType('java.gson.JAttributedCharacterIterator', TypeInfo(java.gson.JAttributedCharacterIterator));
  TRegTypes.RegisterType('java.gson.JAttributedCharacterIterator_Attribute', TypeInfo(java.gson.JAttributedCharacterIterator_Attribute));
  TRegTypes.RegisterType('java.gson.JFormat', TypeInfo(java.gson.JFormat));
  TRegTypes.RegisterType('java.gson.Jtext_DateFormat', TypeInfo(java.gson.Jtext_DateFormat));
  TRegTypes.RegisterType('java.gson.JFieldPosition', TypeInfo(java.gson.JFieldPosition));
  TRegTypes.RegisterType('java.gson.JFormat_Field', TypeInfo(java.gson.JFormat_Field));
  TRegTypes.RegisterType('java.gson.JNumberFormat', TypeInfo(java.gson.JNumberFormat));
  TRegTypes.RegisterType('java.gson.JParsePosition', TypeInfo(java.gson.JParsePosition));
  TRegTypes.RegisterType('java.gson.JCurrency', TypeInfo(java.gson.JCurrency));
end;

initialization
  RegisterTypes;
end.

