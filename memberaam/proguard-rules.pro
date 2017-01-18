    # Add project specific ProGuard rules here.
    # By default, the flags in this file are appended to flags specified
    # in C:/android_sdk/tools/proguard/proguard-android.txt
    # You can edit the include path and order by changing the proguardFiles
    # directive in build.gradle.
    #
    # For more details, see
    #   http://developer.android.com/guide/developing/tools/proguard.html

    # Add any project specific keep options here:

    # If your project uses WebView with JS, uncomment the following
    # and specify the fully qualified class name to the JavaScript interface
    # class:
    #-keepclassmembers class fqcn.of.javascript.interface.for.webview {
    #   public *;
    #}
         -ignorewarnings
         #Picasso
             -dontwarn com.squareup.okhttp.**

        #SnappyDB
        -keep class com.iam.nearer.model.** {
          public protected *;
        }

                -keepattributes *Annotation*
                -keep class retrofit.** { *; }
                -keepclasseswithmembers class * {
                @retrofit.http.* <methods>; }
                -keepattributes Signature

                -keep class com.memberaam.android.db.model.**{*;}
                -keep class com.memberaam.android.obj.**{*;}
                      -keep class org.telegram.**{*;}

    #            -keep class  com.richardradics.core.** { *; }
    #            -keep interface com.richardradics.core.** { *; }
    #
    #            -keep class  com.richardradics.commons.** { *; }
    #            -keep interface com.richardradics.commons.** { *; }
    #
    #            -keep class  com.balysv.** { *; }
    #            -keep interface com.balysv.** { *; }
    #
    #            -keep class  com.pnikosis.** { *; }
    #            -keep interface com.pnikosis.** { *; }
    #
    #            -keep class  javax.annotation.** { *; }
    #            -keep interface javax.annotation.** { *; }
    #
    #            -keep class  com.esotericsoftware.kryo.** { *; }
    #            -keep interface com.esotericsoftware.kryo.** { *; }
    #
    #            -keep class  uk.co.chrisjenx.** { *; }
    #            -keep interface uk.co.chrisjenx.** { *; }
    #
    #            -keep class  com.nispok.** { *; }
    #            -keep interface com.nispok.** { *; }
    #
    #            -keep class  com.github.traex.expandablelayout.** { *; }
    #            -keep interface com.github.traex.expandablelayout.** { *; }
    #
    #            -keep class  org.androidannotations.** { *; }
    #            -keep interface org.androidannotations.** { *; }
    #
    #            -keep class  org.apache.commons.** { *; }
    #            -keep interface org.apache.commons.** { *; }
    #
    #            -keep class  com.marvinlabs.** { *; }
    #            -keep interface com.marvinlabs.** { *; }
    #
    #            -keep class  com.nineoldandroids.** { *; }
    #            -keep interface com.nineoldandroids.** { *; }
    #
    #            -keep class  com.joanzapata.pdfview.** { *; }
    #            -keep interface com.joanzapata.pdfview.** { *; }
    #
    #            -keep class  org.apache.commons.** { *; }
    #            -keep interface org.apache.commons.** { *; }
    -keep class com.crashlytics.** { *; }
    -keep class com.crashlytics.android.**

     # ActiveAndroid
     -keep class com.activeandroid.** { *; }
     -keep class com.activeandroid.**.** { *; }
     -keep class * extends com.activeandroid.Model
     -keep class * extends com.activeandroid.serializer.TypeSerializer

     -keep class com.mobsandgeeks.saripaar.** {*;}
     -keep @com.mobsandgeeks.saripaar.annotation.ValidateUsing class * {*;}

     -keep class cn.trinea.android.** { *; }
     -keepclassmembers class cn.trinea.android.** { *; }
     -dontwarn cn.trinea.android.**

# Parse
-dontwarn com.parse.**
   -keep class com.parse.** { *; }






-keep public class ir.adad.client.** {
   *;
}

-keep class com.android.vending.billing


#telegram prograurd role
-keep public class com.google.android.gms.* { public *; }
-keepnames @com.google.android.gms.common.annotation.KeepName class *
-keepclassmembernames class * {
    @com.google.android.gms.common.annotation.KeepName *;
}
-dontwarn com.google.android.gms.**
-dontwarn com.google.common.cache.**
-dontwarn com.google.common.primitives.**








  -dontwarn com.malinskiy.superrecyclerview.SwipeDismissRecyclerViewTouchListener*
  -keepclassmembers class ** {
      public void onEvent*(***);
  }

  # Only required if you use AsyncExecutor
  -keepclassmembers class * extends de.greenrobot.event.util.ThrowableFailureEvent {
      <init>(java.lang.Throwable);
  }


#  below code use for sqlcipher
#  -libraryjars libs/sqlcipher.jar

  -optimizationpasses 5
  -dontusemixedcaseclassnames
  -dontskipnonpubliclibraryclasses
  -dontskipnonpubliclibraryclassmembers
  -dontpreverify
  -verbose
  -optimizations !code/simplification/arithmetic,!field/*,!class/merging/*,!code/allocation/variable

  -keep public class * extends android.app.Activity
  -keep public class * extends android.app.Application

  -dontwarn javax.annotation.**

  -dontwarn android.app.**
  -dontwarn android.support.**
  -dontwarn android.view.**
  -dontwarn android.widget.**

  -dontwarn com.google.common.primitives.**

  -dontwarn **CompatHoneycomb
  -dontwarn **CompatHoneycombMR2
  -dontwarn **CompatCreatorHoneycombMR2

  -keepclasseswithmembernames class * {
      native <methods>;
  }

  -keepclasseswithmembers class * {
      public <init>(android.content.Context, android.util.AttributeSet);
  }

  -keepclasseswithmembers class * {
      public <init>(android.content.Context, android.util.AttributeSet, int);
  }

  -keepclassmembers class * extends android.app.Activity {
     public void *(android.view.View);
  }

  -keepclassmembers enum * {
      public static **[] values();
      public static ** valueOf(java.lang.String);
  }

  -keep class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
  }

  -keepclassmembers class **.R$* {
      public static <fields>;
  }

  -keep class net.sqlcipher.** {
      *;
  }