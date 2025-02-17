-keep class org.webrtc.* { *; }
-keep class org.webrtc.audio.* { *; }
-keep class org.webrtc.voiceengine.* { *; }
-keep class org.telegram.tgnet.RequestDelegateInternal { *; }
-keep class org.telegram.tgnet.RequestTimeDelegate { *; }
-keep class org.telegram.tgnet.RequestDelegate { *; }
-keep class org.telegram.tgnet.QuickAckDelegate { *; }
-keep class org.telegram.tgnet.WriteToSocketDelegate { *; }
-keep class com.google.android.exoplayer2.ext.** { *; }
-keep class com.google.android.exoplayer2.util.FlacStreamMetadata { *; }
-keep class com.google.android.exoplayer2.metadata.flac.PictureFrame { *; }
-keep class com.google.android.exoplayer2.decoder.SimpleOutputBuffer { *; }

# https://developers.google.com/ml-kit/known-issues#android_issues
-keep class com.google.mlkit.nl.languageid.internal.ThickLanguageIdentifier { *; }

# Constant folding for resource integers may mean that a resource passed to this method appears to be unused. Keep the method to prevent this from happening.
-keep class com.google.android.exoplayer2.upstream.RawResourceDataSource {
  public static android.net.Uri buildRawResourceUri(int);
}

# Methods accessed via reflection in DefaultExtractorsFactory
-dontnote com.google.android.exoplayer2.ext.flac.FlacLibrary
-keepclassmembers class com.google.android.exoplayer2.ext.flac.FlacLibrary {

}

# Some members of this class are being accessed from native methods. Keep them unobfuscated.
-keep class com.google.android.exoplayer2.video.VideoDecoderOutputBuffer {
  *;
}

-dontnote com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer
-keepclassmembers class com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer {
  <init>(android.os.Handler, com.google.android.exoplayer2.audio.AudioRendererEventListener, com.google.android.exoplayer2.audio.AudioProcessor[]);
}
-dontnote com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer
-keepclassmembers class com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer {
  <init>(android.os.Handler, com.google.android.exoplayer2.audio.AudioRendererEventListener, com.google.android.exoplayer2.audio.AudioProcessor[]);
}
-dontnote com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer
-keepclassmembers class com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer {
  <init>(android.os.Handler, com.google.android.exoplayer2.audio.AudioRendererEventListener, com.google.android.exoplayer2.audio.AudioProcessor[]);
}

# Constructors accessed via reflection in DefaultExtractorsFactory
-dontnote com.google.android.exoplayer2.ext.flac.FlacExtractor
-keepclassmembers class com.google.android.exoplayer2.ext.flac.FlacExtractor {
  <init>();
}

# Constructors accessed via reflection in DefaultDownloaderFactory
-dontnote com.google.android.exoplayer2.source.dash.offline.DashDownloader
-keepclassmembers class com.google.android.exoplayer2.source.dash.offline.DashDownloader {
  <init>(android.net.Uri, java.util.List, com.google.android.exoplayer2.offline.DownloaderConstructorHelper);
}
-dontnote com.google.android.exoplayer2.source.hls.offline.HlsDownloader
-keepclassmembers class com.google.android.exoplayer2.source.hls.offline.HlsDownloader {
  <init>(android.net.Uri, java.util.List, com.google.android.exoplayer2.offline.DownloaderConstructorHelper);
}
-dontnote com.google.android.exoplayer2.source.smoothstreaming.offline.SsDownloader
-keepclassmembers class com.google.android.exoplayer2.source.smoothstreaming.offline.SsDownloader {
  <init>(android.net.Uri, java.util.List, com.google.android.exoplayer2.offline.DownloaderConstructorHelper);
}

# Constructors accessed via reflection in DownloadHelper
-dontnote com.google.android.exoplayer2.source.dash.DashMediaSource$Factory
-keepclasseswithmembers class com.google.android.exoplayer2.source.dash.DashMediaSource$Factory {
  <init>(com.google.android.exoplayer2.upstream.DataSource$Factory);
}
-dontnote com.google.android.exoplayer2.source.hls.HlsMediaSource$Factory
-keepclasseswithmembers class com.google.android.exoplayer2.source.hls.HlsMediaSource$Factory {
  <init>(com.google.android.exoplayer2.upstream.DataSource$Factory);
}
-dontnote com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource$Factory
-keepclasseswithmembers class com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource$Factory {
  <init>(com.google.android.exoplayer2.upstream.DataSource$Factory);
}

-keep class org.telegram.messenger.voip.* { *; }
-keep class org.telegram.messenger.AnimatedFileDrawableStream { <methods>; }
-keep class org.telegram.SQLite.SQLiteException { <methods>; }
-keep class org.telegram.tgnet.ConnectionsManager { <methods>; }
-keep class org.telegram.tgnet.NativeByteBuffer { <methods>; }
-keepnames class org.telegram.tgnet.TLRPC$TL_* {}
-keepclassmembernames class org.telegram.ui.* { <fields>; }
-keepclassmembernames class org.telegram.ui.Cells.* { <fields>; }
-keepclassmembernames class org.telegram.ui.Components.* { <fields>; }

# Huawei Services
-keep class com.huawei.hianalytics.**{ *; }
-keep class com.huawei.updatesdk.**{ *; }
-keep class com.huawei.hms.**{ *; }

# Keep OwlConfig fields name
-keepnames class it.owlgram.android.OwlConfig { <fields>; }

# Keep all classes of Apache Commons
-keep class org.apache.commons.text.** { *; }

# Keep all class member names of CameraX
-keep class androidx.camera.extensions.impl.* { *; }
-keep class androidx.camera.camera2.internal.* { *; }
-keep class androidx.camera.camera2.interop.* { *; }
-keep class androidx.camera.core.* { *; }
-keep class androidx.camera.core.impl.* { *; }

-keepclassmembernames class androidx.core.widget.NestedScrollView {
    private android.widget.OverScroller mScroller;
    private void abortAnimatedScroll();
}

-keepclasseswithmembernames,includedescriptorclasses class * {
    native <methods>;
}
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}

-assumenosideeffects class android.util.Log {
    public static *** v(...);
    public static *** d(...);
}

-dontwarn org.jetbrains.annotations.NotNull
-dontwarn org.jetbrains.annotations.Nullable
-dontwarn androidx.camera.extensions.impl.AutoImageCaptureExtenderImpl
-dontwarn androidx.camera.extensions.impl.AutoPreviewExtenderImpl
-dontwarn androidx.camera.extensions.impl.BeautyImageCaptureExtenderImpl
-dontwarn androidx.camera.extensions.impl.BeautyPreviewExtenderImpl
-dontwarn androidx.camera.extensions.impl.BokehImageCaptureExtenderImpl
-dontwarn androidx.camera.extensions.impl.BokehPreviewExtenderImpl
-dontwarn androidx.camera.extensions.impl.CaptureProcessorImpl
-dontwarn androidx.camera.extensions.impl.CaptureStageImpl
-dontwarn androidx.camera.extensions.impl.ExtensionVersionImpl
-dontwarn androidx.camera.extensions.impl.HdrImageCaptureExtenderImpl
-dontwarn androidx.camera.extensions.impl.HdrPreviewExtenderImpl
-dontwarn androidx.camera.extensions.impl.ImageCaptureExtenderImpl
-dontwarn androidx.camera.extensions.impl.InitializerImpl$OnExtensionsDeinitializedCallback
-dontwarn androidx.camera.extensions.impl.InitializerImpl$OnExtensionsInitializedCallback
-dontwarn androidx.camera.extensions.impl.InitializerImpl
-dontwarn androidx.camera.extensions.impl.NightImageCaptureExtenderImpl
-dontwarn androidx.camera.extensions.impl.NightPreviewExtenderImpl
-dontwarn androidx.camera.extensions.impl.PreviewExtenderImpl$ProcessorType
-dontwarn androidx.camera.extensions.impl.PreviewExtenderImpl
-dontwarn androidx.camera.extensions.impl.PreviewImageProcessorImpl
-dontwarn androidx.camera.extensions.impl.ProcessorImpl
-dontwarn androidx.camera.extensions.impl.RequestUpdateProcessorImpl
-dontwarn androidx.camera.extensions.impl.advanced.AdvancedExtenderImpl
-dontwarn androidx.camera.extensions.impl.advanced.AutoAdvancedExtenderImpl
-dontwarn androidx.camera.extensions.impl.advanced.BeautyAdvancedExtenderImpl
-dontwarn androidx.camera.extensions.impl.advanced.BokehAdvancedExtenderImpl
-dontwarn androidx.camera.extensions.impl.advanced.Camera2OutputConfigImpl
-dontwarn androidx.camera.extensions.impl.advanced.Camera2SessionConfigImpl
-dontwarn androidx.camera.extensions.impl.advanced.HdrAdvancedExtenderImpl
-dontwarn androidx.camera.extensions.impl.advanced.ImageReaderOutputConfigImpl
-dontwarn androidx.camera.extensions.impl.advanced.MultiResolutionImageReaderOutputConfigImpl
-dontwarn androidx.camera.extensions.impl.advanced.NightAdvancedExtenderImpl
-dontwarn androidx.camera.extensions.impl.advanced.OutputSurfaceImpl
-dontwarn androidx.camera.extensions.impl.advanced.RequestProcessorImpl
-dontwarn androidx.camera.extensions.impl.advanced.SessionProcessorImpl$CaptureCallback
-dontwarn androidx.camera.extensions.impl.advanced.SessionProcessorImpl
-dontwarn androidx.camera.extensions.impl.advanced.SurfaceOutputConfigImpl
-dontwarn javax.script.ScriptEngine
-dontwarn javax.script.ScriptEngineManager

-repackageclasses
-allowaccessmodification
-overloadaggressively
-keepattributes SourceFile,LineNumberTable
-renamesourcefileattribute SourceFile