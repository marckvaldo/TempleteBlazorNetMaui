; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [141 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [282 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 51
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 140
	i64 131669012237370309, ; 2: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 56
	i64 196720943101637631, ; 3: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 105
	i64 210515253464952879, ; 4: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 63
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 80
	i64 560278790331054453, ; 6: System.Reflection.Primitives => 0x7c6829760de3975 => 118
	i64 683390398661839228, ; 7: Microsoft.Extensions.FileProviders.Embedded => 0x97be3f26326c97c => 45
	i64 750875890346172408, ; 8: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 130
	i64 799765834175365804, ; 9: System.ComponentModel.dll => 0xb1956c9f18442ac => 95
	i64 805302231655005164, ; 10: hu\Microsoft.Maui.Controls.resources.dll => 0xb2d021ceea03bec => 12
	i64 872800313462103108, ; 11: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 68
	i64 1010599046655515943, ; 12: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 118
	i64 1120440138749646132, ; 13: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 84
	i64 1268860745194512059, ; 14: System.Drawing.dll => 0x119be62002c19ebb => 101
	i64 1369545283391376210, ; 15: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 76
	i64 1404195534211153682, ; 16: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 104
	i64 1476839205573959279, ; 17: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 109
	i64 1486715745332614827, ; 18: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 53
	i64 1513467482682125403, ; 19: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 139
	i64 1537168428375924959, ; 20: System.Threading.Thread.dll => 0x15551e8a954ae0df => 130
	i64 1624659445732251991, ; 21: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 61
	i64 1628611045998245443, ; 22: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 73
	i64 1731380447121279447, ; 23: Newtonsoft.Json => 0x18071957e9b889d7 => 58
	i64 1743969030606105336, ; 24: System.Memory.dll => 0x1833d297e88f2af8 => 107
	i64 1767386781656293639, ; 25: System.Private.Uri.dll => 0x188704e9f5582107 => 113
	i64 1776954265264967804, ; 26: Microsoft.JSInterop.dll => 0x18a9027d533bd07c => 52
	i64 1795316252682057001, ; 27: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 60
	i64 1835311033149317475, ; 28: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 6
	i64 1836611346387731153, ; 29: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 80
	i64 1875417405349196092, ; 30: System.Drawing.Primitives => 0x1a06d2319b6c713c => 100
	i64 1881198190668717030, ; 31: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 28
	i64 1920760634179481754, ; 32: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 54
	i64 1981742497975770890, ; 33: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 72
	i64 2102659300918482391, ; 34: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 100
	i64 2133195048986300728, ; 35: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 58
	i64 2262844636196693701, ; 36: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 68
	i64 2287834202362508563, ; 37: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 89
	i64 2295368378960711535, ; 38: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x1fdac961189e0f6f => 38
	i64 2329709569556905518, ; 39: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 71
	i64 2335503487726329082, ; 40: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 127
	i64 2470498323731680442, ; 41: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 64
	i64 2497223385847772520, ; 42: System.Runtime => 0x22a7eb7046413568 => 124
	i64 2547086958574651984, ; 43: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 59
	i64 2602673633151553063, ; 44: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 27
	i64 2656907746661064104, ; 45: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 41
	i64 2662981627730767622, ; 46: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 2
	i64 2781169761569919449, ; 47: Microsoft.JSInterop => 0x2698b329b26ed1d9 => 52
	i64 2895129759130297543, ; 48: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 7
	i64 3017704767998173186, ; 49: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 84
	i64 3289520064315143713, ; 50: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 70
	i64 3311221304742556517, ; 51: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 111
	i64 3325875462027654285, ; 52: System.Runtime.Numerics => 0x2e27e21c8958b48d => 121
	i64 3344514922410554693, ; 53: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 86
	i64 3396143930648122816, ; 54: Microsoft.Extensions.FileProviders.Abstractions => 0x2f2186e9506155c0 => 43
	i64 3429672777697402584, ; 55: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 56
	i64 3494946837667399002, ; 56: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 39
	i64 3522470458906976663, ; 57: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 81
	i64 3551103847008531295, ; 58: System.Private.CoreLib.dll => 0x31480e226177735f => 137
	i64 3567343442040498961, ; 59: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 22
	i64 3571415421602489686, ; 60: System.Runtime.dll => 0x319037675df7e556 => 124
	i64 3638003163729360188, ; 61: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 40
	i64 3647754201059316852, ; 62: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 134
	i64 3655542548057982301, ; 63: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 39
	i64 3727469159507183293, ; 64: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 79
	i64 3753897248517198740, ; 65: Microsoft.AspNetCore.Components.WebView.dll => 0x341885a8952f1394 => 37
	i64 3869221888984012293, ; 66: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 48
	i64 3889433610606858880, ; 67: Microsoft.Extensions.FileProviders.Physical.dll => 0x35fa0b4301afd280 => 46
	i64 3890352374528606784, ; 68: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 54
	i64 3933965368022646939, ; 69: System.Net.Requests => 0x369840a8bfadc09b => 110
	i64 3966267475168208030, ; 70: System.Memory => 0x370b03412596249e => 107
	i64 4009997192427317104, ; 71: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 123
	i64 4070326265757318011, ; 72: da\Microsoft.Maui.Controls.resources.dll => 0x387cb42c56683b7b => 3
	i64 4073500526318903918, ; 73: System.Private.Xml.dll => 0x3887fb25779ae26e => 115
	i64 4120493066591692148, ; 74: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 33
	i64 4154383907710350974, ; 75: System.ComponentModel => 0x39a7562737acb67e => 95
	i64 4187479170553454871, ; 76: System.Linq.Expressions => 0x3a1cea1e912fa117 => 105
	i64 4205801962323029395, ; 77: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 94
	i64 4360412976914417659, ; 78: tr\Microsoft.Maui.Controls.resources.dll => 0x3c834c8002fcc7fb => 28
	i64 4477672992252076438, ; 79: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 132
	i64 4672453897036726049, ; 80: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 104
	i64 4794310189461587505, ; 81: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 59
	i64 4795410492532947900, ; 82: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 81
	i64 4809057822547766521, ; 83: System.Drawing => 0x42bd349c3145ecf9 => 101
	i64 4853321196694829351, ; 84: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 120
	i64 4871824391508510238, ; 85: nb\Microsoft.Maui.Controls.resources.dll => 0x439c3278d7f2c61e => 18
	i64 4953714692329509532, ; 86: sv\Microsoft.Maui.Controls.resources.dll => 0x44bf21444aef129c => 26
	i64 5103417709280584325, ; 87: System.Collections.Specialized => 0x46d2fb5e161b6285 => 91
	i64 5182934613077526976, ; 88: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 91
	i64 5197073077358930460, ; 89: Microsoft.AspNetCore.Components.Web.dll => 0x481fb66db7b9aa1c => 36
	i64 5290786973231294105, ; 90: System.Runtime.Loader => 0x496ca6b869b72699 => 120
	i64 5471532531798518949, ; 91: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 26
	i64 5522859530602327440, ; 92: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 29
	i64 5570799893513421663, ; 93: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 102
	i64 5573260873512690141, ; 94: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 125
	i64 5692067934154308417, ; 95: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 83
	i64 6200764641006662125, ; 96: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 23
	i64 6222399776351216807, ; 97: System.Text.Json.dll => 0x565a67a0ffe264a7 => 128
	i64 6284145129771520194, ; 98: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 116
	i64 6300676701234028427, ; 99: es\Microsoft.Maui.Controls.resources.dll => 0x57708013cda25f8b => 6
	i64 6357457916754632952, ; 100: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 34
	i64 6401687960814735282, ; 101: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 71
	i64 6471714727257221498, ; 102: fi\Microsoft.Maui.Controls.resources.dll => 0x59d026417dd4a97a => 7
	i64 6478287442656530074, ; 103: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 11
	i64 6548213210057960872, ; 104: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 67
	i64 6560151584539558821, ; 105: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 50
	i64 6743165466166707109, ; 106: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 19
	i64 6786606130239981554, ; 107: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 99
	i64 6814185388980153342, ; 108: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 135
	i64 6876862101832370452, ; 109: System.Xml.Linq => 0x5f6f85a57d108914 => 133
	i64 6894844156784520562, ; 110: System.Numerics.Vectors => 0x5faf683aead1ad72 => 111
	i64 6920570528939222495, ; 111: Microsoft.AspNetCore.Components.WebView => 0x600ace3ab475a5df => 37
	i64 7083547580668757502, ; 112: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 114
	i64 7270811800166795866, ; 113: System.Linq => 0x64e71ccf51a90a5a => 106
	i64 7377312882064240630, ; 114: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 94
	i64 7488575175965059935, ; 115: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 133
	i64 7489048572193775167, ; 116: System.ObjectModel => 0x67ee71ff6b419e3f => 112
	i64 7654504624184590948, ; 117: System.Net.Http => 0x6a3a4366801b8264 => 108
	i64 7714652370974252055, ; 118: System.Private.CoreLib => 0x6b0ff375198b9c17 => 137
	i64 7735176074855944702, ; 119: Microsoft.CSharp => 0x6b58dda848e391fe => 88
	i64 7735352534559001595, ; 120: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 85
	i64 7742555799473854801, ; 121: it\Microsoft.Maui.Controls.resources.dll => 0x6b73157a51479951 => 14
	i64 7836164640616011524, ; 122: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 61
	i64 7975724199463739455, ; 123: sk\Microsoft.Maui.Controls.resources.dll => 0x6eaf76e6f785e03f => 25
	i64 8064050204834738623, ; 124: System.Collections.dll => 0x6fe942efa61731bf => 92
	i64 8083354569033831015, ; 125: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 70
	i64 8087206902342787202, ; 126: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 98
	i64 8108129031893776750, ; 127: ko\Microsoft.Maui.Controls.resources.dll => 0x7085dc65530f796e => 16
	i64 8167236081217502503, ; 128: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 138
	i64 8185542183669246576, ; 129: System.Collections => 0x7198e33f4794aa70 => 92
	i64 8246048515196606205, ; 130: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 57
	i64 8368701292315763008, ; 131: System.Security.Cryptography => 0x7423997c6fd56140 => 125
	i64 8386351099740279196, ; 132: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x74624de475b9d19c => 31
	i64 8400357532724379117, ; 133: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 78
	i64 8410671156615598628, ; 134: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 117
	i64 8563666267364444763, ; 135: System.Private.Uri => 0x76d841191140ca5b => 113
	i64 8626175481042262068, ; 136: Java.Interop => 0x77b654e585b55834 => 138
	i64 8638972117149407195, ; 137: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 88
	i64 8639588376636138208, ; 138: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 77
	i64 8677882282824630478, ; 139: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 21
	i64 8725526185868997716, ; 140: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 98
	i64 8941376889969657626, ; 141: System.Xml.XDocument => 0x7c1626e87187471a => 135
	i64 9045785047181495996, ; 142: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 31
	i64 9312692141327339315, ; 143: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 83
	i64 9324707631942237306, ; 144: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 60
	i64 9363564275759486853, ; 145: el\Microsoft.Maui.Controls.resources.dll => 0x81f21019382e9785 => 5
	i64 9551379474083066910, ; 146: uk\Microsoft.Maui.Controls.resources.dll => 0x848d5106bbadb41e => 29
	i64 9659729154652888475, ; 147: System.Text.RegularExpressions => 0x860e407c9991dd9b => 129
	i64 9678050649315576968, ; 148: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 64
	i64 9702891218465930390, ; 149: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 90
	i64 9773637193738963987, ; 150: ca\Microsoft.Maui.Controls.resources.dll => 0x87a2ef3ea85b4c13 => 1
	i64 9808709177481450983, ; 151: Mono.Android.dll => 0x881f890734e555e7 => 140
	i64 9956195530459977388, ; 152: Microsoft.Maui => 0x8a2b8315b36616ac => 55
	i64 10038780035334861115, ; 153: System.Net.Http.dll => 0x8b50e941206af13b => 108
	i64 10051358222726253779, ; 154: System.Private.Xml => 0x8b7d990c97ccccd3 => 115
	i64 10092835686693276772, ; 155: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 53
	i64 10143853363526200146, ; 156: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 3
	i64 10209869394718195525, ; 157: nl\Microsoft.Maui.Controls.resources.dll => 0x8db0be1ecb4f7f45 => 19
	i64 10229024438826829339, ; 158: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 67
	i64 10245369515835430794, ; 159: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 117
	i64 10364469296367737616, ; 160: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 116
	i64 10406448008575299332, ; 161: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 86
	i64 10430153318873392755, ; 162: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 65
	i64 10506226065143327199, ; 163: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 1
	i64 10734191584620811116, ; 164: Microsoft.Extensions.FileProviders.Embedded.dll => 0x94f7825fc04f936c => 45
	i64 10761706286639228993, ; 165: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0x955942d988382841 => 33
	i64 10785150219063592792, ; 166: System.Net.Primitives => 0x95ac8cfb68830758 => 109
	i64 11002576679268595294, ; 167: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 49
	i64 11009005086950030778, ; 168: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 55
	i64 11051904132540108364, ; 169: Microsoft.Extensions.FileProviders.Composite.dll => 0x99604040c7b98e4c => 44
	i64 11103970607964515343, ; 170: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 12
	i64 11156122287428000958, ; 171: th\Microsoft.Maui.Controls.resources.dll => 0x9ad2821cdcf6dcbe => 27
	i64 11157797727133427779, ; 172: fr\Microsoft.Maui.Controls.resources.dll => 0x9ad875ea9172e843 => 8
	i64 11162124722117608902, ; 173: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 82
	i64 11218356222449480316, ; 174: Microsoft.AspNetCore.Components => 0x9baf9b8c02e4f27c => 35
	i64 11220793807500858938, ; 175: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 15
	i64 11226290749488709958, ; 176: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 50
	i64 11340910727871153756, ; 177: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 66
	i64 11485890710487134646, ; 178: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 119
	i64 11518296021396496455, ; 179: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 13
	i64 11529969570048099689, ; 180: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 82
	i64 11530571088791430846, ; 181: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 48
	i64 11855031688536399763, ; 182: vi\Microsoft.Maui.Controls.resources.dll => 0xa485888294361f93 => 30
	i64 12048689113179125827, ; 183: Microsoft.Extensions.FileProviders.Physical => 0xa7358ae968287843 => 46
	i64 12058074296353848905, ; 184: Microsoft.Extensions.FileSystemGlobbing.dll => 0xa756e2afa5707e49 => 47
	i64 12145679461940342714, ; 185: System.Text.Json => 0xa88e1f1ebcb62fba => 128
	i64 12201331334810686224, ; 186: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 123
	i64 12223102731383550426, ; 187: PDV.dll => 0xa9a12f2c653931da => 87
	i64 12451044538927396471, ; 188: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 69
	i64 12466513435562512481, ; 189: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 74
	i64 12475113361194491050, ; 190: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 34
	i64 12517810545449516888, ; 191: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 99
	i64 12538491095302438457, ; 192: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 62
	i64 12550732019250633519, ; 193: System.IO.Compression => 0xae2d28465e8e1b2f => 103
	i64 12652889750419835874, ; 194: PDV => 0xaf981830abf48be2 => 87
	i64 12700543734426720211, ; 195: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 63
	i64 12708922737231849740, ; 196: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 126
	i64 12843321153144804894, ; 197: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 51
	i64 12989346753972519995, ; 198: ar\Microsoft.Maui.Controls.resources.dll => 0xb4436e0d5ee7c43b => 0
	i64 13003699287675270979, ; 199: Microsoft.AspNetCore.Components.WebView.Maui => 0xb4766b9b07e27743 => 38
	i64 13005833372463390146, ; 200: pt-BR\Microsoft.Maui.Controls.resources.dll => 0xb47e008b5d99ddc2 => 21
	i64 13068258254871114833, ; 201: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 122
	i64 13343850469010654401, ; 202: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 139
	i64 13381594904270902445, ; 203: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 9
	i64 13465488254036897740, ; 204: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 85
	i64 13540124433173649601, ; 205: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 30
	i64 13550417756503177631, ; 206: Microsoft.Extensions.FileProviders.Abstractions.dll => 0xbc0cc1280684799f => 43
	i64 13572454107664307259, ; 207: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 79
	i64 13717397318615465333, ; 208: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 93
	i64 13881769479078963060, ; 209: System.Console.dll => 0xc0a5f3cade5c6774 => 96
	i64 13959074834287824816, ; 210: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 69
	i64 14124974489674258913, ; 211: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 62
	i64 14125464355221830302, ; 212: System.Threading.dll => 0xc407bafdbc707a9e => 131
	i64 14254574811015963973, ; 213: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 126
	i64 14349907877893689639, ; 214: ro\Microsoft.Maui.Controls.resources.dll => 0xc7251d2f956ed127 => 23
	i64 14461014870687870182, ; 215: System.Net.Requests.dll => 0xc8afd8683afdece6 => 110
	i64 14464374589798375073, ; 216: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 24
	i64 14491877563792607819, ; 217: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0xc91d7ddcee4fca4b => 32
	i64 14551742072151931844, ; 218: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 127
	i64 14610046442689856844, ; 219: cs\Microsoft.Maui.Controls.resources.dll => 0xcac14fd5107d054c => 2
	i64 14622043554576106986, ; 220: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 122
	i64 14669215534098758659, ; 221: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 41
	i64 14690985099581930927, ; 222: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 132
	i64 14705122255218365489, ; 223: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 16
	i64 14735017007120366644, ; 224: ja\Microsoft.Maui.Controls.resources.dll => 0xcc7d4be604bfbc34 => 15
	i64 14744092281598614090, ; 225: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 32
	i64 14852515768018889994, ; 226: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 66
	i64 14904040806490515477, ; 227: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 0
	i64 14954917835170835695, ; 228: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 42
	i64 14987728460634540364, ; 229: System.IO.Compression.dll => 0xcfff1ba06622494c => 103
	i64 15076659072870671916, ; 230: System.ObjectModel.dll => 0xd13b0d8c1620662c => 112
	i64 15111608613780139878, ; 231: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 17
	i64 15115185479366240210, ; 232: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 102
	i64 15133485256822086103, ; 233: System.Linq.dll => 0xd204f0a9127dd9d7 => 106
	i64 15203009853192377507, ; 234: pt\Microsoft.Maui.Controls.resources.dll => 0xd2fbf0e9984b94a3 => 22
	i64 15227001540531775957, ; 235: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 40
	i64 15370334346939861994, ; 236: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 65
	i64 15391712275433856905, ; 237: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 42
	i64 15427448221306938193, ; 238: Microsoft.AspNetCore.Components.Web => 0xd6194e6b4dbb6351 => 36
	i64 15481710163200268842, ; 239: Microsoft.Extensions.FileProviders.Composite => 0xd6da155e291b5a2a => 44
	i64 15527772828719725935, ; 240: System.Console => 0xd77dbb1e38cd3d6f => 96
	i64 15536481058354060254, ; 241: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 4
	i64 15582737692548360875, ; 242: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 73
	i64 15609085926864131306, ; 243: System.dll => 0xd89e9cf3334914ea => 136
	i64 15661133872274321916, ; 244: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 134
	i64 15783653065526199428, ; 245: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 5
	i64 16056281320585338352, ; 246: ru\Microsoft.Maui.Controls.resources.dll => 0xded35eca8f3a9df0 => 24
	i64 16154507427712707110, ; 247: System => 0xe03056ea4e39aa26 => 136
	i64 16288847719894691167, ; 248: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 18
	i64 16321164108206115771, ; 249: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 49
	i64 16649148416072044166, ; 250: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 57
	i64 16677317093839702854, ; 251: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 78
	i64 16803648858859583026, ; 252: ms\Microsoft.Maui.Controls.resources.dll => 0xe9328d9b8ab93632 => 17
	i64 16856067890322379635, ; 253: System.Data.Common.dll => 0xe9ecc87060889373 => 97
	i64 16890310621557459193, ; 254: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 129
	i64 16942731696432749159, ; 255: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 25
	i64 16998075588627545693, ; 256: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 76
	i64 17008137082415910100, ; 257: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 90
	i64 17031351772568316411, ; 258: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 75
	i64 17062143951396181894, ; 259: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 93
	i64 17079998892748052666, ; 260: Microsoft.AspNetCore.Components.dll => 0xed08587fce5018ba => 35
	i64 17203614576212522419, ; 261: pl\Microsoft.Maui.Controls.resources.dll => 0xeebf844ef3e135b3 => 20
	i64 17205988430934219272, ; 262: Microsoft.Extensions.FileSystemGlobbing => 0xeec7f35113509a08 => 47
	i64 17230721278011714856, ; 263: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 114
	i64 17260702271250283638, ; 264: System.Data.Common => 0xef8a5543bba6bc76 => 97
	i64 17310278548634113468, ; 265: hi\Microsoft.Maui.Controls.resources.dll => 0xf03a76a04e6695bc => 10
	i64 17342750010158924305, ; 266: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 10
	i64 17514990004910432069, ; 267: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 8
	i64 17623389608345532001, ; 268: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 20
	i64 17704177640604968747, ; 269: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 74
	i64 17710060891934109755, ; 270: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 72
	i64 17712670374920797664, ; 271: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 119
	i64 17777860260071588075, ; 272: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 121
	i64 17827813215687577648, ; 273: hr\Microsoft.Maui.Controls.resources.dll => 0xf7691da9f3129030 => 11
	i64 17942426894774770628, ; 274: de\Microsoft.Maui.Controls.resources.dll => 0xf9004e329f771bc4 => 4
	i64 18025913125965088385, ; 275: System.Threading => 0xfa28e87b91334681 => 131
	i64 18121036031235206392, ; 276: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 75
	i64 18245806341561545090, ; 277: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 89
	i64 18305135509493619199, ; 278: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 77
	i64 18324163916253801303, ; 279: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 14
	i64 18342408478508122430, ; 280: id\Microsoft.Maui.Controls.resources.dll => 0xfe8d53543697013e => 13
	i64 18358161419737137786 ; 281: he\Microsoft.Maui.Controls.resources.dll => 0xfec54a8ba8b6827a => 9
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [282 x i32] [
	i32 51, ; 0
	i32 140, ; 1
	i32 56, ; 2
	i32 105, ; 3
	i32 63, ; 4
	i32 80, ; 5
	i32 118, ; 6
	i32 45, ; 7
	i32 130, ; 8
	i32 95, ; 9
	i32 12, ; 10
	i32 68, ; 11
	i32 118, ; 12
	i32 84, ; 13
	i32 101, ; 14
	i32 76, ; 15
	i32 104, ; 16
	i32 109, ; 17
	i32 53, ; 18
	i32 139, ; 19
	i32 130, ; 20
	i32 61, ; 21
	i32 73, ; 22
	i32 58, ; 23
	i32 107, ; 24
	i32 113, ; 25
	i32 52, ; 26
	i32 60, ; 27
	i32 6, ; 28
	i32 80, ; 29
	i32 100, ; 30
	i32 28, ; 31
	i32 54, ; 32
	i32 72, ; 33
	i32 100, ; 34
	i32 58, ; 35
	i32 68, ; 36
	i32 89, ; 37
	i32 38, ; 38
	i32 71, ; 39
	i32 127, ; 40
	i32 64, ; 41
	i32 124, ; 42
	i32 59, ; 43
	i32 27, ; 44
	i32 41, ; 45
	i32 2, ; 46
	i32 52, ; 47
	i32 7, ; 48
	i32 84, ; 49
	i32 70, ; 50
	i32 111, ; 51
	i32 121, ; 52
	i32 86, ; 53
	i32 43, ; 54
	i32 56, ; 55
	i32 39, ; 56
	i32 81, ; 57
	i32 137, ; 58
	i32 22, ; 59
	i32 124, ; 60
	i32 40, ; 61
	i32 134, ; 62
	i32 39, ; 63
	i32 79, ; 64
	i32 37, ; 65
	i32 48, ; 66
	i32 46, ; 67
	i32 54, ; 68
	i32 110, ; 69
	i32 107, ; 70
	i32 123, ; 71
	i32 3, ; 72
	i32 115, ; 73
	i32 33, ; 74
	i32 95, ; 75
	i32 105, ; 76
	i32 94, ; 77
	i32 28, ; 78
	i32 132, ; 79
	i32 104, ; 80
	i32 59, ; 81
	i32 81, ; 82
	i32 101, ; 83
	i32 120, ; 84
	i32 18, ; 85
	i32 26, ; 86
	i32 91, ; 87
	i32 91, ; 88
	i32 36, ; 89
	i32 120, ; 90
	i32 26, ; 91
	i32 29, ; 92
	i32 102, ; 93
	i32 125, ; 94
	i32 83, ; 95
	i32 23, ; 96
	i32 128, ; 97
	i32 116, ; 98
	i32 6, ; 99
	i32 34, ; 100
	i32 71, ; 101
	i32 7, ; 102
	i32 11, ; 103
	i32 67, ; 104
	i32 50, ; 105
	i32 19, ; 106
	i32 99, ; 107
	i32 135, ; 108
	i32 133, ; 109
	i32 111, ; 110
	i32 37, ; 111
	i32 114, ; 112
	i32 106, ; 113
	i32 94, ; 114
	i32 133, ; 115
	i32 112, ; 116
	i32 108, ; 117
	i32 137, ; 118
	i32 88, ; 119
	i32 85, ; 120
	i32 14, ; 121
	i32 61, ; 122
	i32 25, ; 123
	i32 92, ; 124
	i32 70, ; 125
	i32 98, ; 126
	i32 16, ; 127
	i32 138, ; 128
	i32 92, ; 129
	i32 57, ; 130
	i32 125, ; 131
	i32 31, ; 132
	i32 78, ; 133
	i32 117, ; 134
	i32 113, ; 135
	i32 138, ; 136
	i32 88, ; 137
	i32 77, ; 138
	i32 21, ; 139
	i32 98, ; 140
	i32 135, ; 141
	i32 31, ; 142
	i32 83, ; 143
	i32 60, ; 144
	i32 5, ; 145
	i32 29, ; 146
	i32 129, ; 147
	i32 64, ; 148
	i32 90, ; 149
	i32 1, ; 150
	i32 140, ; 151
	i32 55, ; 152
	i32 108, ; 153
	i32 115, ; 154
	i32 53, ; 155
	i32 3, ; 156
	i32 19, ; 157
	i32 67, ; 158
	i32 117, ; 159
	i32 116, ; 160
	i32 86, ; 161
	i32 65, ; 162
	i32 1, ; 163
	i32 45, ; 164
	i32 33, ; 165
	i32 109, ; 166
	i32 49, ; 167
	i32 55, ; 168
	i32 44, ; 169
	i32 12, ; 170
	i32 27, ; 171
	i32 8, ; 172
	i32 82, ; 173
	i32 35, ; 174
	i32 15, ; 175
	i32 50, ; 176
	i32 66, ; 177
	i32 119, ; 178
	i32 13, ; 179
	i32 82, ; 180
	i32 48, ; 181
	i32 30, ; 182
	i32 46, ; 183
	i32 47, ; 184
	i32 128, ; 185
	i32 123, ; 186
	i32 87, ; 187
	i32 69, ; 188
	i32 74, ; 189
	i32 34, ; 190
	i32 99, ; 191
	i32 62, ; 192
	i32 103, ; 193
	i32 87, ; 194
	i32 63, ; 195
	i32 126, ; 196
	i32 51, ; 197
	i32 0, ; 198
	i32 38, ; 199
	i32 21, ; 200
	i32 122, ; 201
	i32 139, ; 202
	i32 9, ; 203
	i32 85, ; 204
	i32 30, ; 205
	i32 43, ; 206
	i32 79, ; 207
	i32 93, ; 208
	i32 96, ; 209
	i32 69, ; 210
	i32 62, ; 211
	i32 131, ; 212
	i32 126, ; 213
	i32 23, ; 214
	i32 110, ; 215
	i32 24, ; 216
	i32 32, ; 217
	i32 127, ; 218
	i32 2, ; 219
	i32 122, ; 220
	i32 41, ; 221
	i32 132, ; 222
	i32 16, ; 223
	i32 15, ; 224
	i32 32, ; 225
	i32 66, ; 226
	i32 0, ; 227
	i32 42, ; 228
	i32 103, ; 229
	i32 112, ; 230
	i32 17, ; 231
	i32 102, ; 232
	i32 106, ; 233
	i32 22, ; 234
	i32 40, ; 235
	i32 65, ; 236
	i32 42, ; 237
	i32 36, ; 238
	i32 44, ; 239
	i32 96, ; 240
	i32 4, ; 241
	i32 73, ; 242
	i32 136, ; 243
	i32 134, ; 244
	i32 5, ; 245
	i32 24, ; 246
	i32 136, ; 247
	i32 18, ; 248
	i32 49, ; 249
	i32 57, ; 250
	i32 78, ; 251
	i32 17, ; 252
	i32 97, ; 253
	i32 129, ; 254
	i32 25, ; 255
	i32 76, ; 256
	i32 90, ; 257
	i32 75, ; 258
	i32 93, ; 259
	i32 35, ; 260
	i32 20, ; 261
	i32 47, ; 262
	i32 114, ; 263
	i32 97, ; 264
	i32 10, ; 265
	i32 10, ; 266
	i32 8, ; 267
	i32 20, ; 268
	i32 74, ; 269
	i32 72, ; 270
	i32 119, ; 271
	i32 121, ; 272
	i32 11, ; 273
	i32 4, ; 274
	i32 131, ; 275
	i32 75, ; 276
	i32 89, ; 277
	i32 77, ; 278
	i32 14, ; 279
	i32 13, ; 280
	i32 9 ; 281
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ f1b7113872c8db3dfee70d11925e81bb752dc8d0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
