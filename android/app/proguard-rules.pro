# Tap-Ducky ProGuard / R8 Rules

# Flutter Wrapper
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.** { *; }
-keep class io.flutter.util.** { *; }
-keep class io.flutter.view.** { *; }
-keep class io.flutter.** { *; }
-keep class io.flutter.plugins.** { *; }

# Keep TapDucky native classes, methods, and reflection entrypoints
-keep class org.kaijinlab.tap_ducky.** { *; }
-keepclassmembers class org.kaijinlab.tap_ducky.** { *; }

# Preserve annotations and signatures
-keepattributes *Annotation*
-keepattributes Signature
-keepattributes InnerClasses
-keepattributes EnclosingMethod

# Suppress common warnings from third-party libraries
-dontwarn io.flutter.**
