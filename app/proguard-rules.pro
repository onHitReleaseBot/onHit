-optimizationpasses 8
-allowaccessmodification
-overloadaggressively
-dontskipnonpubliclibraryclasses
-dontpreverify
-renamesourcefileattribute SourceFile
-keepattributes SourceFile,LineNumberTable

-keep class mba.vm.onhit.MainHook {
    <init>();
    void handleLoadPackage(...);
    void initZygote(...);
}

-assumenosideeffects class android.util.Log {
    public static *** i(...);
    public static *** d(...);
    public static *** v(...);
    public static *** w(...);
    public static *** e(...);
    public static *** println(...);
}