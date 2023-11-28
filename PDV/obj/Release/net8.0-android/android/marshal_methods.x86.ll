; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [141 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [282 x i32] [
	i32 38948123, ; 0: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 0
	i32 39109920, ; 1: Newtonsoft.Json.dll => 0x254c520 => 58
	i32 42244203, ; 2: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 9
	i32 42639949, ; 3: System.Threading.Thread => 0x28aa24d => 130
	i32 67008169, ; 4: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 5: Microsoft.Maui.Graphics.dll => 0x44bb714 => 57
	i32 83839681, ; 6: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 17
	i32 117431740, ; 7: System.Runtime.InteropServices => 0x6ffddbc => 119
	i32 136584136, ; 8: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 32
	i32 140062828, ; 9: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 25
	i32 165246403, ; 10: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 63
	i32 182336117, ; 11: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 81
	i32 205061960, ; 12: System.ComponentModel => 0xc38ff48 => 95
	i32 230752869, ; 13: Microsoft.CSharp.dll => 0xdc10265 => 88
	i32 246610117, ; 14: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 117
	i32 254259026, ; 15: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 35
	i32 317674968, ; 16: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 17: Xamarin.AndroidX.Activity.dll => 0x13031348 => 59
	i32 321963286, ; 18: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 8
	i32 342366114, ; 19: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 70
	i32 379916513, ; 20: System.Threading.Thread.dll => 0x16a510e1 => 130
	i32 385762202, ; 21: System.Memory.dll => 0x16fe439a => 107
	i32 395744057, ; 22: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 409257351, ; 23: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 28
	i32 442565967, ; 24: System.Collections => 0x1a61054f => 92
	i32 450948140, ; 25: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 69
	i32 456227837, ; 26: System.Web.HttpUtility.dll => 0x1b317bfd => 132
	i32 459347974, ; 27: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 123
	i32 469710990, ; 28: System.dll => 0x1bff388e => 136
	i32 489220957, ; 29: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 6
	i32 498788369, ; 30: System.ObjectModel => 0x1dbae811 => 112
	i32 513247710, ; 31: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 51
	i32 538707440, ; 32: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 27
	i32 539058512, ; 33: Microsoft.Extensions.Logging => 0x20216150 => 48
	i32 571435654, ; 34: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 45
	i32 627609679, ; 35: Xamarin.AndroidX.CustomView => 0x2568904f => 67
	i32 627931235, ; 36: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 662205335, ; 37: System.Text.Encodings.Web.dll => 0x27787397 => 127
	i32 672442732, ; 38: System.Collections.Concurrent => 0x2814a96c => 89
	i32 690569205, ; 39: System.Xml.Linq.dll => 0x29293ff5 => 133
	i32 722857257, ; 40: System.Runtime.Loader.dll => 0x2b15ed29 => 120
	i32 759454413, ; 41: System.Net.Requests => 0x2d445acd => 110
	i32 775507847, ; 42: System.IO.Compression => 0x2e394f87 => 103
	i32 777317022, ; 43: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 44: Microsoft.Extensions.Options => 0x2f0980eb => 50
	i32 804008546, ; 45: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 38
	i32 804715423, ; 46: System.Data.Common => 0x2ff6fb9f => 97
	i32 823281589, ; 47: System.Private.Uri.dll => 0x311247b5 => 113
	i32 830298997, ; 48: System.IO.Compression.Brotli => 0x317d5b75 => 102
	i32 869139383, ; 49: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 10
	i32 880668424, ; 50: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 24
	i32 904024072, ; 51: System.ComponentModel.Primitives.dll => 0x35e25008 => 93
	i32 918734561, ; 52: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 21
	i32 955402788, ; 53: Newtonsoft.Json => 0x38f24a24 => 58
	i32 961460050, ; 54: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 14
	i32 967690846, ; 55: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 70
	i32 975874589, ; 56: System.Xml.XDocument => 0x3a2aaa1d => 135
	i32 981363845, ; 57: PDV => 0x3a7e6c85 => 87
	i32 990727110, ; 58: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 23
	i32 992768348, ; 59: System.Collections.dll => 0x3b2c715c => 92
	i32 999186168, ; 60: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 47
	i32 1012816738, ; 61: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 80
	i32 1019214401, ; 62: System.Drawing => 0x3cbffa41 => 101
	i32 1028951442, ; 63: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 42
	i32 1035644815, ; 64: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 60
	i32 1036536393, ; 65: System.Drawing.Primitives.dll => 0x3dc84a49 => 100
	i32 1043950537, ; 66: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 4
	i32 1044663988, ; 67: System.Linq.Expressions.dll => 0x3e444eb4 => 105
	i32 1052210849, ; 68: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 72
	i32 1082857460, ; 69: System.ComponentModel.TypeConverter => 0x408b17f4 => 94
	i32 1084122840, ; 70: Xamarin.Kotlin.StdLib => 0x409e66d8 => 85
	i32 1098259244, ; 71: System => 0x41761b2c => 136
	i32 1108272742, ; 72: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 26
	i32 1117529484, ; 73: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 20
	i32 1118262833, ; 74: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 75: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1173126369, ; 76: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 43
	i32 1178241025, ; 77: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 77
	i32 1260983243, ; 78: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 79: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 68
	i32 1308624726, ; 80: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 11
	i32 1324164729, ; 81: System.Linq => 0x4eed2679 => 106
	i32 1336711579, ; 82: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 31
	i32 1373134921, ; 83: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 84: Xamarin.AndroidX.SavedState => 0x52114ed3 => 80
	i32 1378286284, ; 85: PDV.dll => 0x5226facc => 87
	i32 1406073936, ; 86: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 64
	i32 1408764838, ; 87: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 122
	i32 1430672901, ; 88: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1454105418, ; 89: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 44
	i32 1461004990, ; 90: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1462112819, ; 91: System.IO.Compression.dll => 0x57261233 => 103
	i32 1469204771, ; 92: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 61
	i32 1470490898, ; 93: Microsoft.Extensions.Primitives => 0x57a5e912 => 51
	i32 1480492111, ; 94: System.IO.Compression.Brotli.dll => 0x583e844f => 102
	i32 1521091094, ; 95: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 47
	i32 1526286932, ; 96: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 30
	i32 1543031311, ; 97: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 129
	i32 1546581739, ; 98: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 38
	i32 1622152042, ; 99: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 74
	i32 1624863272, ; 100: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 83
	i32 1636350590, ; 101: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 66
	i32 1639515021, ; 102: System.Net.Http.dll => 0x61b9038d => 108
	i32 1639986890, ; 103: System.Text.RegularExpressions => 0x61c036ca => 129
	i32 1654881142, ; 104: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 37
	i32 1657153582, ; 105: System.Runtime => 0x62c6282e => 124
	i32 1658251792, ; 106: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 84
	i32 1677501392, ; 107: System.Net.Primitives.dll => 0x63fca3d0 => 109
	i32 1679769178, ; 108: System.Security.Cryptography => 0x641f3e5a => 125
	i32 1729485958, ; 109: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 62
	i32 1743415430, ; 110: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1760259689, ; 111: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 36
	i32 1763938596, ; 112: System.Diagnostics.TraceSource.dll => 0x69239124 => 99
	i32 1766324549, ; 113: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 81
	i32 1770582343, ; 114: Microsoft.Extensions.Logging.dll => 0x6988f147 => 48
	i32 1780572499, ; 115: Mono.Android.Runtime.dll => 0x6a216153 => 139
	i32 1782862114, ; 116: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 117: Xamarin.AndroidX.Fragment => 0x6a96652d => 69
	i32 1793755602, ; 118: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 119: Xamarin.AndroidX.Loader => 0x6bcd3296 => 74
	i32 1813058853, ; 120: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 85
	i32 1813201214, ; 121: Xamarin.Google.Android.Material => 0x6c13413e => 84
	i32 1818569960, ; 122: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 78
	i32 1824175904, ; 123: System.Text.Encoding.Extensions => 0x6cbab720 => 126
	i32 1824722060, ; 124: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 122
	i32 1828688058, ; 125: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 49
	i32 1853025655, ; 126: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 127: System.Linq.Expressions => 0x6ec71a65 => 105
	i32 1870277092, ; 128: System.Reflection.Primitives => 0x6f7a29e4 => 118
	i32 1875935024, ; 129: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1893218855, ; 130: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 2
	i32 1910275211, ; 131: System.Collections.NonGeneric.dll => 0x71dc7c8b => 90
	i32 1939592360, ; 132: System.Private.Xml.Linq => 0x739bd4a8 => 114
	i32 1953182387, ; 133: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 13
	i32 1968388702, ; 134: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 39
	i32 2003115576, ; 135: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 136: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 72
	i32 2045470958, ; 137: System.Private.Xml => 0x79eb68ee => 115
	i32 2055257422, ; 138: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 71
	i32 2066184531, ; 139: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 140: System.Diagnostics.TraceSource => 0x7b6f419e => 99
	i32 2072397586, ; 141: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 46
	i32 2079903147, ; 142: System.Runtime.dll => 0x7bf8cdab => 124
	i32 2090596640, ; 143: System.Numerics.Vectors => 0x7c9bf920 => 111
	i32 2127167465, ; 144: System.Console => 0x7ec9ffe9 => 96
	i32 2142473426, ; 145: System.Collections.Specialized => 0x7fb38cd2 => 91
	i32 2159891885, ; 146: Microsoft.Maui => 0x80bd55ad => 55
	i32 2169148018, ; 147: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 148: Microsoft.Extensions.Options.dll => 0x820d22b3 => 50
	i32 2192057212, ; 149: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 49
	i32 2193016926, ; 150: System.ObjectModel.dll => 0x82b6c85e => 112
	i32 2201107256, ; 151: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 86
	i32 2201231467, ; 152: System.Net.Http => 0x8334206b => 108
	i32 2207618523, ; 153: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 154: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 40
	i32 2279755925, ; 155: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 79
	i32 2303942373, ; 156: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 157: System.Private.CoreLib.dll => 0x896b7878 => 137
	i32 2353062107, ; 158: System.Net.Primitives => 0x8c40e0db => 109
	i32 2366048013, ; 159: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 12
	i32 2368005991, ; 160: System.Xml.ReaderWriter.dll => 0x8d24e767 => 134
	i32 2371007202, ; 161: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 39
	i32 2395872292, ; 162: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2401565422, ; 163: System.Web.HttpUtility => 0x8f24faee => 132
	i32 2411328690, ; 164: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 35
	i32 2427813419, ; 165: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 166: System.Console.dll => 0x912896e5 => 96
	i32 2442556106, ; 167: Microsoft.JSInterop.dll => 0x919672ca => 52
	i32 2475788418, ; 168: Java.Interop.dll => 0x93918882 => 138
	i32 2480646305, ; 169: Microsoft.Maui.Controls => 0x93dba8a1 => 53
	i32 2503351294, ; 170: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 16
	i32 2538310050, ; 171: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 117
	i32 2550873716, ; 172: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2562349572, ; 173: Microsoft.CSharp => 0x98ba5a04 => 88
	i32 2570120770, ; 174: System.Text.Encodings.Web => 0x9930ee42 => 127
	i32 2576534780, ; 175: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 15
	i32 2585220780, ; 176: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 126
	i32 2592341985, ; 177: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 43
	i32 2593496499, ; 178: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 179: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 86
	i32 2617129537, ; 180: System.Private.Xml.dll => 0x9bfe3a41 => 115
	i32 2620871830, ; 181: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 66
	i32 2626831493, ; 182: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 183: System.Runtime.Loader => 0x9ec4cf01 => 120
	i32 2664396074, ; 184: System.Xml.XDocument.dll => 0x9ecf752a => 135
	i32 2665622720, ; 185: System.Drawing.Primitives => 0x9ee22cc0 => 100
	i32 2676780864, ; 186: System.Data.Common.dll => 0x9f8c6f40 => 97
	i32 2692077919, ; 187: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 37
	i32 2724373263, ; 188: System.Runtime.Numerics.dll => 0xa262a30f => 121
	i32 2732626843, ; 189: Xamarin.AndroidX.Activity => 0xa2e0939b => 59
	i32 2737747696, ; 190: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 61
	i32 2740698338, ; 191: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 1
	i32 2752995522, ; 192: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 193: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 54
	i32 2764765095, ; 194: Microsoft.Maui.dll => 0xa4caf7a7 => 55
	i32 2778768386, ; 195: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 82
	i32 2785988530, ; 196: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 197: Microsoft.Maui.Graphics => 0xa7008e0b => 57
	i32 2810250172, ; 198: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 64
	i32 2853208004, ; 199: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 82
	i32 2861189240, ; 200: Microsoft.Maui.Essentials => 0xaa8a4878 => 56
	i32 2892341533, ; 201: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 36
	i32 2909740682, ; 202: System.Private.CoreLib => 0xad6f1e8a => 137
	i32 2911054922, ; 203: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 46
	i32 2916838712, ; 204: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 83
	i32 2919462931, ; 205: System.Numerics.Vectors.dll => 0xae037813 => 111
	i32 2959614098, ; 206: System.ComponentModel.dll => 0xb0682092 => 95
	i32 2978675010, ; 207: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 68
	i32 3038032645, ; 208: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3053864966, ; 209: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 7
	i32 3057625584, ; 210: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 75
	i32 3059408633, ; 211: Mono.Android.Runtime => 0xb65adef9 => 139
	i32 3059793426, ; 212: System.ComponentModel.Primitives => 0xb660be12 => 93
	i32 3159123045, ; 213: System.Reflection.Primitives.dll => 0xbc4c6465 => 118
	i32 3178803400, ; 214: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 76
	i32 3220365878, ; 215: System.Threading => 0xbff2e236 => 131
	i32 3258312781, ; 216: Xamarin.AndroidX.CardView => 0xc235e84d => 62
	i32 3305363605, ; 217: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 218: System.Net.Requests.dll => 0xc5b097e4 => 110
	i32 3317135071, ; 219: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 67
	i32 3346324047, ; 220: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 77
	i32 3357674450, ; 221: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3358260929, ; 222: System.Text.Json => 0xc82afec1 => 128
	i32 3362522851, ; 223: Xamarin.AndroidX.Core => 0xc86c06e3 => 65
	i32 3366347497, ; 224: Java.Interop => 0xc8a662e9 => 138
	i32 3374999561, ; 225: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 79
	i32 3381016424, ; 226: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3406629867, ; 227: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 44
	i32 3428513518, ; 228: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 41
	i32 3458724246, ; 229: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 22
	i32 3471940407, ; 230: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 94
	i32 3476120550, ; 231: Mono.Android => 0xcf3163e6 => 140
	i32 3484440000, ; 232: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3485117614, ; 233: System.Text.Json.dll => 0xcfbaacae => 128
	i32 3500000672, ; 234: Microsoft.JSInterop => 0xd09dc5a0 => 52
	i32 3509114376, ; 235: System.Xml.Linq => 0xd128d608 => 133
	i32 3580758918, ; 236: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3592228221, ; 237: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 33
	i32 3608519521, ; 238: System.Linq.dll => 0xd715a361 => 106
	i32 3641597786, ; 239: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 71
	i32 3643446276, ; 240: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 241: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 76
	i32 3657292374, ; 242: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 40
	i32 3672681054, ; 243: Mono.Android.dll => 0xdae8aa5e => 140
	i32 3724971120, ; 244: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 75
	i32 3748608112, ; 245: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 98
	i32 3751619990, ; 246: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 3
	i32 3786282454, ; 247: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 63
	i32 3792276235, ; 248: System.Collections.NonGeneric => 0xe2098b0b => 90
	i32 3802395368, ; 249: System.Collections.Specialized.dll => 0xe2a3f2e8 => 91
	i32 3823082795, ; 250: System.Security.Cryptography.dll => 0xe3df9d2b => 125
	i32 3841636137, ; 251: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 42
	i32 3849253459, ; 252: System.Runtime.InteropServices.dll => 0xe56ef253 => 119
	i32 3896106733, ; 253: System.Collections.Concurrent.dll => 0xe839deed => 89
	i32 3896760992, ; 254: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 65
	i32 3920221145, ; 255: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 19
	i32 3928044579, ; 256: System.Xml.ReaderWriter => 0xea213423 => 134
	i32 3931092270, ; 257: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 78
	i32 3955647286, ; 258: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 60
	i32 4025784931, ; 259: System.Memory => 0xeff49a63 => 107
	i32 4046471985, ; 260: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 54
	i32 4054681211, ; 261: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 116
	i32 4068434129, ; 262: System.Private.Xml.Linq.dll => 0xf27f60d1 => 114
	i32 4073602200, ; 263: System.Threading.dll => 0xf2ce3c98 => 131
	i32 4091086043, ; 264: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 5
	i32 4094352644, ; 265: Microsoft.Maui.Essentials.dll => 0xf40add04 => 56
	i32 4099507663, ; 266: System.Drawing.dll => 0xf45985cf => 101
	i32 4100113165, ; 267: System.Private.Uri => 0xf462c30d => 113
	i32 4103439459, ; 268: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 29
	i32 4126470640, ; 269: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 41
	i32 4127667938, ; 270: System.IO.FileSystem.Watcher => 0xf60736e2 => 104
	i32 4147896353, ; 271: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 116
	i32 4150914736, ; 272: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4164802419, ; 273: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 104
	i32 4181436372, ; 274: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 123
	i32 4182413190, ; 275: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 73
	i32 4213026141, ; 276: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 98
	i32 4249188766, ; 277: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 18
	i32 4271975918, ; 278: Microsoft.Maui.Controls.dll => 0xfea12dee => 53
	i32 4274976490, ; 279: System.Runtime.Numerics => 0xfecef6ea => 121
	i32 4292120959, ; 280: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 73
	i32 4294648842 ; 281: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 45
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [282 x i32] [
	i32 0, ; 0
	i32 58, ; 1
	i32 9, ; 2
	i32 130, ; 3
	i32 33, ; 4
	i32 57, ; 5
	i32 17, ; 6
	i32 119, ; 7
	i32 32, ; 8
	i32 25, ; 9
	i32 63, ; 10
	i32 81, ; 11
	i32 95, ; 12
	i32 88, ; 13
	i32 117, ; 14
	i32 35, ; 15
	i32 30, ; 16
	i32 59, ; 17
	i32 8, ; 18
	i32 70, ; 19
	i32 130, ; 20
	i32 107, ; 21
	i32 34, ; 22
	i32 28, ; 23
	i32 92, ; 24
	i32 69, ; 25
	i32 132, ; 26
	i32 123, ; 27
	i32 136, ; 28
	i32 6, ; 29
	i32 112, ; 30
	i32 51, ; 31
	i32 27, ; 32
	i32 48, ; 33
	i32 45, ; 34
	i32 67, ; 35
	i32 19, ; 36
	i32 127, ; 37
	i32 89, ; 38
	i32 133, ; 39
	i32 120, ; 40
	i32 110, ; 41
	i32 103, ; 42
	i32 25, ; 43
	i32 50, ; 44
	i32 38, ; 45
	i32 97, ; 46
	i32 113, ; 47
	i32 102, ; 48
	i32 10, ; 49
	i32 24, ; 50
	i32 93, ; 51
	i32 21, ; 52
	i32 58, ; 53
	i32 14, ; 54
	i32 70, ; 55
	i32 135, ; 56
	i32 87, ; 57
	i32 23, ; 58
	i32 92, ; 59
	i32 47, ; 60
	i32 80, ; 61
	i32 101, ; 62
	i32 42, ; 63
	i32 60, ; 64
	i32 100, ; 65
	i32 4, ; 66
	i32 105, ; 67
	i32 72, ; 68
	i32 94, ; 69
	i32 85, ; 70
	i32 136, ; 71
	i32 26, ; 72
	i32 20, ; 73
	i32 16, ; 74
	i32 22, ; 75
	i32 43, ; 76
	i32 77, ; 77
	i32 2, ; 78
	i32 68, ; 79
	i32 11, ; 80
	i32 106, ; 81
	i32 31, ; 82
	i32 32, ; 83
	i32 80, ; 84
	i32 87, ; 85
	i32 64, ; 86
	i32 122, ; 87
	i32 0, ; 88
	i32 44, ; 89
	i32 6, ; 90
	i32 103, ; 91
	i32 61, ; 92
	i32 51, ; 93
	i32 102, ; 94
	i32 47, ; 95
	i32 30, ; 96
	i32 129, ; 97
	i32 38, ; 98
	i32 74, ; 99
	i32 83, ; 100
	i32 66, ; 101
	i32 108, ; 102
	i32 129, ; 103
	i32 37, ; 104
	i32 124, ; 105
	i32 84, ; 106
	i32 109, ; 107
	i32 125, ; 108
	i32 62, ; 109
	i32 1, ; 110
	i32 36, ; 111
	i32 99, ; 112
	i32 81, ; 113
	i32 48, ; 114
	i32 139, ; 115
	i32 17, ; 116
	i32 69, ; 117
	i32 9, ; 118
	i32 74, ; 119
	i32 85, ; 120
	i32 84, ; 121
	i32 78, ; 122
	i32 126, ; 123
	i32 122, ; 124
	i32 49, ; 125
	i32 26, ; 126
	i32 105, ; 127
	i32 118, ; 128
	i32 8, ; 129
	i32 2, ; 130
	i32 90, ; 131
	i32 114, ; 132
	i32 13, ; 133
	i32 39, ; 134
	i32 5, ; 135
	i32 72, ; 136
	i32 115, ; 137
	i32 71, ; 138
	i32 4, ; 139
	i32 99, ; 140
	i32 46, ; 141
	i32 124, ; 142
	i32 111, ; 143
	i32 96, ; 144
	i32 91, ; 145
	i32 55, ; 146
	i32 12, ; 147
	i32 50, ; 148
	i32 49, ; 149
	i32 112, ; 150
	i32 86, ; 151
	i32 108, ; 152
	i32 14, ; 153
	i32 40, ; 154
	i32 79, ; 155
	i32 18, ; 156
	i32 137, ; 157
	i32 109, ; 158
	i32 12, ; 159
	i32 134, ; 160
	i32 39, ; 161
	i32 13, ; 162
	i32 132, ; 163
	i32 35, ; 164
	i32 10, ; 165
	i32 96, ; 166
	i32 52, ; 167
	i32 138, ; 168
	i32 53, ; 169
	i32 16, ; 170
	i32 117, ; 171
	i32 11, ; 172
	i32 88, ; 173
	i32 127, ; 174
	i32 15, ; 175
	i32 126, ; 176
	i32 43, ; 177
	i32 20, ; 178
	i32 86, ; 179
	i32 115, ; 180
	i32 66, ; 181
	i32 15, ; 182
	i32 120, ; 183
	i32 135, ; 184
	i32 100, ; 185
	i32 97, ; 186
	i32 37, ; 187
	i32 121, ; 188
	i32 59, ; 189
	i32 61, ; 190
	i32 1, ; 191
	i32 21, ; 192
	i32 54, ; 193
	i32 55, ; 194
	i32 82, ; 195
	i32 27, ; 196
	i32 57, ; 197
	i32 64, ; 198
	i32 82, ; 199
	i32 56, ; 200
	i32 36, ; 201
	i32 137, ; 202
	i32 46, ; 203
	i32 83, ; 204
	i32 111, ; 205
	i32 95, ; 206
	i32 68, ; 207
	i32 34, ; 208
	i32 7, ; 209
	i32 75, ; 210
	i32 139, ; 211
	i32 93, ; 212
	i32 118, ; 213
	i32 76, ; 214
	i32 131, ; 215
	i32 62, ; 216
	i32 7, ; 217
	i32 110, ; 218
	i32 67, ; 219
	i32 77, ; 220
	i32 24, ; 221
	i32 128, ; 222
	i32 65, ; 223
	i32 138, ; 224
	i32 79, ; 225
	i32 3, ; 226
	i32 44, ; 227
	i32 41, ; 228
	i32 22, ; 229
	i32 94, ; 230
	i32 140, ; 231
	i32 23, ; 232
	i32 128, ; 233
	i32 52, ; 234
	i32 133, ; 235
	i32 31, ; 236
	i32 33, ; 237
	i32 106, ; 238
	i32 71, ; 239
	i32 28, ; 240
	i32 76, ; 241
	i32 40, ; 242
	i32 140, ; 243
	i32 75, ; 244
	i32 98, ; 245
	i32 3, ; 246
	i32 63, ; 247
	i32 90, ; 248
	i32 91, ; 249
	i32 125, ; 250
	i32 42, ; 251
	i32 119, ; 252
	i32 89, ; 253
	i32 65, ; 254
	i32 19, ; 255
	i32 134, ; 256
	i32 78, ; 257
	i32 60, ; 258
	i32 107, ; 259
	i32 54, ; 260
	i32 116, ; 261
	i32 114, ; 262
	i32 131, ; 263
	i32 5, ; 264
	i32 56, ; 265
	i32 101, ; 266
	i32 113, ; 267
	i32 29, ; 268
	i32 41, ; 269
	i32 104, ; 270
	i32 116, ; 271
	i32 29, ; 272
	i32 104, ; 273
	i32 123, ; 274
	i32 73, ; 275
	i32 98, ; 276
	i32 18, ; 277
	i32 53, ; 278
	i32 121, ; 279
	i32 73, ; 280
	i32 45 ; 281
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

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
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ f1b7113872c8db3dfee70d11925e81bb752dc8d0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
