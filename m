Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F11BB894F32
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 11:54:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34C4E10FBE8;
	Tue,  2 Apr 2024 09:54:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BRqht2Qt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F73A10FBE8
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 09:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712051695; x=1743587695;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=a6gyWXTaDtFel9TU5tOOzMTFG5ZgM+ZbyNL+X67swjs=;
 b=BRqht2QtgzTaaQZiO/X0+rL6qmmmFOKVPVl5aMT+rvGFCzOVR8Q08PNW
 mRFtKyAF+kJRpRAzPWGAshIfgwt8VAWAnHSNC7Fy2sZBfSv+4Iec/sPeh
 akjk7goExB+8wnxQ5nIrWr2IbzbUzAWvTYuwDD+kfD6EOEWDjtKBIqEc5
 d8SZrBR0AizF/xlleaL5vSYPrr5vzaBRAQb+WbtK+DZcWi4DPvIjHHuyQ
 8ZtxSy1QSuGzRnD0de9u9+14qqAl6RAeMHeywOLuHmXbVPy9QahWnnxJ5
 3yD9kIZP+riXifPTeR9aVyGtf8Oc6kB7hijdP+VvHP3O57fENSsnH4feY Q==;
X-CSE-ConnectionGUID: kGx9FgHgSQy+CdEdm0m2qA==
X-CSE-MsgGUID: bgYa+HlATaSqL/pmPAQnqA==
X-IronPort-AV: E=McAfee;i="6600,9927,11031"; a="7423031"
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; 
   d="scan'208";a="7423031"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 02:54:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="22694284"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Apr 2024 02:54:53 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 2 Apr 2024 02:54:54 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 2 Apr 2024 02:54:53 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 2 Apr 2024 02:54:53 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 2 Apr 2024 02:54:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JxK0DB6DBUzwHBMxWmUedH5bbtq5obPqmvHDl5icVJx2DiJ2BhCDb0bJ4NMGP00TrcPySF32jdJ6ione5ivlRy/haCRFo2e8qjOKN8gvk8faUzRi+uUkcX6HMud6QeELkZO+RaC9kDdRuF8oCSRHyYNIo0G12qiyxKsKy5etz9G+Yvai8Fd9jhcRL76YoM5lXwG0vbngOku5E89M+7LDIP1wRWezMtsW0KsGO53w7DeP6Dxrf0RSBwvfs27UM16SWSG60Zfb2mqY1WMNvj1ZD0dfKV0WCnJ+sRtshOOfSL4i4q2chtvhd2AN1MKJMCJhCGBPtc5gqA3eyycT19njZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a6gyWXTaDtFel9TU5tOOzMTFG5ZgM+ZbyNL+X67swjs=;
 b=Ia2w9b7HJECulpfew9bmxvgiqwujtJKWenG+hPdPq0cF5+QB50XSfv7fuwTE8CDjQNiSjZK8m2k8rAtJdvJHFHcQ+v8So40YAujdiFuC9pSfUEeKgx1yye2SYSaR9wbsugTEXCfUkuIiMf7J8cYxk4GbmwQ4XrAzQvBpudnsPnTrTX1iMhtHESsLs3P/UgSdmOtQpQbJlWzqeOWpV5GhZR1B5Jzj1seRAqTw/vHVMnG+RmB7h8hOLoQGWZqwitDBWrU1iXu6vRAO37ILm8LvajZFn1YHW6qVhch0pXphErdRYPMm7uS8UsOERmY2aPy2M5oFdNgOxfz3C9GoPnS2hQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA2PR11MB5050.namprd11.prod.outlook.com (2603:10b6:806:fb::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7452.26; Tue, 2 Apr 2024 09:54:46 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::bccd:7928:80ae:179f]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::bccd:7928:80ae:179f%5]) with mapi id 15.20.7452.019; Tue, 2 Apr 2024
 09:54:46 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 04/21] drm/i915/psr: Rename intel_psr_enabled
Thread-Topic: [PATCH v3 04/21] drm/i915/psr: Rename intel_psr_enabled
Thread-Index: AQHaSr/OEBqMaXw32ke1rVGjHJJGubD2vuUAgAADqICABIWaAIBZ6e6A
Date: Tue, 2 Apr 2024 09:54:46 +0000
Message-ID: <c63aee6e64affef2a3a3d347916a4d0da9ec5113.camel@intel.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
 <20240119101024.1060812-5-jouni.hogander@intel.com>
 <PH7PR11MB598157598A12DF5A023F23A3F9422@PH7PR11MB5981.namprd11.prod.outlook.com>
 <2b47355d9c1e2e4037b295b50ea25ab4d65115ff.camel@intel.com>
 <PH7PR11MB598110DE2F9FFBF9558432F0F9472@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB598110DE2F9FFBF9558432F0F9472@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA2PR11MB5050:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ccU/9krNTJOYDMDrmNgc+Izrm79c6X+qpfNN2A6HGo6jkjzW5oRk3ui/qVUpDP4TWK/kWmPh5GP0ll8b40MlSnYh4eu5ZaRQjt3QPQVYV4Kvxw5I67rklN1Swt0Lr9vBMlTr4UccCSR1N+/FjmfQYCwT3ygzgGuAI/DF3dOFHE+gGld+2GA77Qw2JbRiSufIpfPQDic39vtaRVogFuJLOcxMBXL4ZW9rj3Sb8r3BIwiFBsS4KVbWQ8gng+JhUXO2/E+rgPL+e1jSk068YDpWtGwwnYqFlmYwEWD40BKPxmZ1hyxMvRDBHchRgLKvVwgNtVHmha+b1GerC3drJIjcuz+EObEx9p1UGjxmbfhSwS00imhFFicsEkkVinzt6//vijYVQyd+Or/6jkaxDC/uRps5AK5kg5jC1XkmzIRKiHbd6qG25mAMyufMJzNcytlPDtXvLP73mxFsk0T7sJ/Jl+37QTvWtXUUSX+b3dA6hSLulDfdOvWtv46t1VG48YzyAlb9ESEOb0qVwuttK4+4AF5ij5V3nZNvorE9yt0/TNVXFugk38tngqZR8b60A+8X4NLczTKKE3NbjvuNmQ1fkFvTPR1VKR0EFnAfzZllEFKsX3ZHMwcnvHAPMkEgZqzqz8qirbMWWreomJRzbsA77z6hnNyoEDGLTQjOhU+JvsM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cXVMSm1WbjhiNWFBQ3h6MVVsTVRCZHJUanc1Z2xvLzI1ZktMaURSZnhHMXpL?=
 =?utf-8?B?eTNsV2Q3SU80OTB3M3hrakhtMStkRFhET1YyZTZrKzRJRnBYaDFGSG1yeE9J?=
 =?utf-8?B?aUVqTURWMVQ5Yk5XcE1qZHY4cnh0QWdZYWtheFkyYlQ4d1VRL0xRNkNwdGla?=
 =?utf-8?B?emhCdTRHdzEvelFaNzAwbC95MnFPWWNPMU5mZXErNDJrWjA2K0hxYlBUeWRy?=
 =?utf-8?B?RE1ieExvb2F6V3JtMk1pNGNzem42TXMzcEh0T3NMQkNkelNpSGxhQjBwdm05?=
 =?utf-8?B?UWJpMlBQWEpHajUvNnFBVXN5UGlnd0k5YndYWmdtUFg2ZVhPZXpuVUtXelBJ?=
 =?utf-8?B?SWdMTDNOVGtHeTBRTmU2Nzl3RThBd3RTbDhidVo0SklSYWs4eEpMT21Nczgy?=
 =?utf-8?B?RUhLZ2Rhd1dpeWF5eHdzTWNseG8xS0FVbFl0U21IU3g5VUlTYWF4ckJIRkJa?=
 =?utf-8?B?STR1K1JHWFFRQWQ0ZGUwN1JuenlSOEFHbk03NFJtNERSc3Y4Tk5KdE1KT253?=
 =?utf-8?B?TFJHZlM1MDMwQWNoN05NSXZmeVBVMXhnV3dNNFZ5TWhCZWxtZEpkRGlkRllX?=
 =?utf-8?B?ZFVmSVBaWjRlZzFITjBodVY1R01DNlBBdTQ4UU9ZUWQxQmY3VlAvNmJCaFB5?=
 =?utf-8?B?c1MxTjBhdmd5WFhEYWQrVTIrOThvTzVkODRkQ01KTDlLVDVJTE9OalpzSGJm?=
 =?utf-8?B?MUtaczlodUFnVVdMU1gyZEl6TVhQRG1ZUlpmeitZQitCWGszOWtlNnJwNkZQ?=
 =?utf-8?B?Y0xGbitwWXdvU1pvTXJUNXVLdTdaeXhXZEthVkhKdHdDV1BwSTVmTTZkZ2FX?=
 =?utf-8?B?bzdidmVxQk9KcEtlL2FDS0NOc0pab0duQUVkZGRYZUhNcGFpZHJKTEcxSGo4?=
 =?utf-8?B?YW90M2dZcm9icGVkMEhqQ2RyUVhZVXk4N09nSHBjV2U3RkdiSDgrTkdxTlp1?=
 =?utf-8?B?NTlIaUxJY2hYZm5Nc1pMMzFDdmZuRWpQSlB4QkZVZGtqaE5uNG1qLy9XYmp1?=
 =?utf-8?B?Q3NDZExucnk2dTVIUmE2N2QzeGYvZXJIVlBPL254VitoK3pjRmhXR245R2ZW?=
 =?utf-8?B?VkY5WkljdmsrdFQzL0lqU2FxN1krb0ZXOCtUWGdGQXp5N3hrWUlWVUl0bWlu?=
 =?utf-8?B?Y2lJQ1FONXpmM241eUw0eTljM2htMXpycW1YbFYzK3RMZk9pcDVvRmRidzNu?=
 =?utf-8?B?TEFTcER4OVF1NEFlZ01aQXhSTWQxVmhvZjJqVHdoZTFTQjc4L05LSTZ0Qksr?=
 =?utf-8?B?Q2N5dnNEQmJPT1JqYjI3d2kzeDM5ZlhIelF4YUo0VVlGRGEvYmZXaW1HeXRS?=
 =?utf-8?B?RTd3UE1HdmhmcVJQaVBGbkJCMkc1aTRnN2RCMDFVQm0rSjROOGUrUWRhWDFh?=
 =?utf-8?B?S0pRQnMzVVpNWXlHRmw1M094WVRYWk5leWtsbUtWVGdRTk9tVng0Q1l1aEll?=
 =?utf-8?B?aW5qblAyWHhKQ2M5L0htNEszZGJtQXUxMVZwc2ZScC9aQXRLWGFjRlBlY0Vj?=
 =?utf-8?B?bmlleURucE9mN0VScEdMRTZmTnhlREpmeXNCTkNhZU9NT0N5a0tGZXJSbW1r?=
 =?utf-8?B?eGQrR21GNzdRVEQyQVNjSWVyNml2cEN0UUFPM0NHbTZGTEdKWko1SG0zV2kw?=
 =?utf-8?B?MWxQNzRVNzNZN0VMWlc4V1U5dmFPVnZhU3VDcExPQlVwVFhsbWZnNGVUSHN0?=
 =?utf-8?B?NTZibGJ6SThiUFJHUi9MNktrWXdjSW5ETVZrdHhFSkd6SzJKeTBHZTArTW9s?=
 =?utf-8?B?bmpSUm9GMWlFeDVwbnkzak1RckNkd2IycDJwV0pvRTViU0JvT0wvczFTMUNZ?=
 =?utf-8?B?OG51bFIzTStEemc2bE0vRTY5dEUrM092N2JXallGM1JLWHd6dFY5L1ZtWmg4?=
 =?utf-8?B?R3RkL1VNdXRNUGgrNU9nNTA1Nml0K2xXcDhLaU1KaEJjakE1eHBYTk1UMkJh?=
 =?utf-8?B?THNqTVBhSGhwdkZzRWt6Z0pYSDl1UTVvOHhhK09xUHNxdFFxd3F4THJHdzNP?=
 =?utf-8?B?VEt1N3JnQ1J5OXA2Z2NWdjVUb3ZzQWtNKzBnN3RnU25pSG5kbGtLR01Uc0lF?=
 =?utf-8?B?V0FnVDNNaG1MMnRueXp6S250RDh3Z3NYSjBSaXJVUTM1blpDNFpHYlF3QjdX?=
 =?utf-8?B?ekxVZ0RlWFVZTmQ2OGJxamJOMi9BaUxTcng1YTE4Tmx0OFloWC9sVHg4U3pE?=
 =?utf-8?B?cFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2E5F2B9542B51D4BA0B542B495A63621@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 42729d12-1767-464f-d23a-08dc52faedf2
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2024 09:54:46.6737 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ipvej/vT/9UizDuvo2WaURy9n4mpgtywzFqpCtkAWSHGx52vGWH1kfTsqK8xou4GdJkeEGQJURvnn4cNEpjkcZykuHNMGX4WqszXkw4wcVs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5050
X-OriginatorOrg: intel.com
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDI0LTAyLTA1IGF0IDA0OjUwICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogRnJpZGF5LCBG
ZWJydWFyeSAyLCAyMDI0IDE6MTcgUE0NCj4gPiBUbzogTWFubmEsIEFuaW1lc2ggPGFuaW1lc2gu
bWFubmFAaW50ZWwuY29tPjsgaW50ZWwtDQo+ID4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
PiA+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjMgMDQvMjFdIGRybS9pOTE1L3BzcjogUmVuYW1lDQo+
ID4gaW50ZWxfcHNyX2VuYWJsZWQNCj4gPiANCj4gPiBPbiBGcmksIDIwMjQtMDItMDIgYXQgMDc6
MzQgKzAwMDAsIE1hbm5hLCBBbmltZXNoIHdyb3RlOg0KPiA+ID4gDQo+ID4gPiANCj4gPiA+ID4g
LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+ID4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gPiA+IFNlbnQ6IEZyaWRheSwgSmFudWFy
eSAxOSwgMjAyNCAzOjQwIFBNDQo+ID4gPiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQo+ID4gPiA+IENjOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5j
b20+OyBIb2dhbmRlciwgSm91bmkNCj4gPiA+ID4gPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4N
Cj4gPiA+ID4gU3ViamVjdDogW1BBVENIIHYzIDA0LzIxXSBkcm0vaTkxNS9wc3I6IFJlbmFtZQ0K
PiA+ID4gPiBpbnRlbF9wc3JfZW5hYmxlZA0KPiA+ID4gPiANCj4gPiA+ID4gSW50ZWxfcHNyX2Vu
YWJsZWQgaXMgbm93IG1pc2xlYWRpbmcgbmFtZSBhcyB3ZSBhcmUgdXNpbmcgbWFpbg0KPiA+ID4g
PiBsaW5rDQo+ID4gPiA+IG9uIHdpdGggcGFuZWwgcmVwbGF5LiBJLmUuIGxpbmsgcmV0cmFpbmlu
ZyBpcyBub3QgY29udHJvbGxlZCBieQ0KPiA+ID4gPiBoYXJkd2FyZS4NCj4gPiA+ID4gUmVuYW1l
DQo+ID4gPiA+IGludGVsX3Bzcl9lbmFibGVkIGFzIGludGVsX3Bzcl9od19jb250cm9sc19saW5r
X3JldHJhaW4uDQo+ID4gPiA+IA0KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5k
ZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiA+ID4gLS0tDQo+ID4gPiA+IMKgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jwqAgfCAyICstDQo+ID4gPiA+IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAyICstDQo+ID4gPiA+IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmggfCAyICstDQo+ID4gPiA+IMKg
MyBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+ID4gPiA+
IA0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jDQo+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
DQo+ID4gPiA+IGluZGV4IGFiNDE1ZjQxOTI0ZC4uZTdjZGEzMTYyZWEyIDEwMDY0NA0KPiA+ID4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiA+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gPiA+IEBA
IC00OTUxLDcgKzQ5NTEsNyBAQCBpbnRlbF9kcF9uZWVkc19saW5rX3JldHJhaW4oc3RydWN0DQo+
ID4gPiA+IGludGVsX2RwDQo+ID4gPiA+ICppbnRlbF9kcCkNCj4gPiA+ID4gwqDCoMKgwqDCoMKg
wqDCoCAqIEFsc28gd2hlbiBleGl0aW5nIFBTUiwgSFcgd2lsbCByZXRyYWluIHRoZSBsaW5rDQo+
ID4gPiA+IGFueXdheXMNCj4gPiA+ID4gZml4aW5nDQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqAg
KiBhbnkgbGluayBzdGF0dXMgZXJyb3IuDQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqAgKi8NCj4g
PiA+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKGludGVsX3Bzcl9lbmFibGVkKGludGVsX2RwKSkNCj4g
PiA+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKGludGVsX3Bzcl9od19jb250cm9sc19saW5rX3JldHJh
aW4oaW50ZWxfZHApKQ0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJl
dHVybiBmYWxzZTsNCj4gPiA+ID4gDQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoZHJtX2Rw
X2RwY2RfcmVhZF9waHlfbGlua19zdGF0dXMoJmludGVsX2RwLT5hdXgsDQo+ID4gPiA+IERQX1BI
WV9EUFJYLCBkaWZmIC0tZ2l0DQo+ID4gPiA+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gPiA+ID4gaW5kZXggZDExZjhlYTZlMGE5Li43YjMyOTBmNGUwYjQgMTAwNjQ0
DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiA+ID4gPiBAQCAtMzAxMSw3ICszMDExLDcgQEAgdm9pZCBpbnRlbF9wc3Jfc2hvcnRfcHVsc2Uo
c3RydWN0DQo+ID4gPiA+IGludGVsX2RwDQo+ID4gPiA+ICppbnRlbF9kcCkNCj4gPiA+ID4gwqDC
oMKgwqDCoMKgwqDCoG11dGV4X3VubG9jaygmcHNyLT5sb2NrKTsNCj4gPiA+ID4gwqB9DQo+ID4g
PiA+IA0KPiA+ID4gPiAtYm9vbCBpbnRlbF9wc3JfZW5hYmxlZChzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwKQ0KPiA+ID4gPiArYm9vbCBpbnRlbF9wc3JfaHdfY29udHJvbHNfbGlua19yZXRyYWlu
KHN0cnVjdCBpbnRlbF9kcA0KPiA+ID4gPiAqaW50ZWxfZHApDQo+ID4gPiANCj4gPiA+IEJhc2Vk
IG9uIENBTl9QU1IoKSBjaGVjayB0aGUgZnVuY3Rpb24gd2lsbCByZXR1cm4gZWFybHkgYW5kIG9u
bHkNCj4gPiA+IGdldA0KPiA+ID4gZXhlY3V0ZWQgZm9yIHBzci4gTm8gc3VyZSBzdGlsbCBkbyB3
ZSBuZWVkIHRvIHJlbmFtZSBpdD8NCj4gPiANCj4gPiBPay4gRm9yIG1lIGl0IHdhcyBqdXN0IHN1
cnByaWNlIHdoYXQgaXQgZG9lcyBhbmQgd2h5IHRoaXMgZnVuY3Rpb24NCj4gPiBleGlzdHMsIHRo
dXMNCj4gPiByZW5hbWluZy4gTXVjaCBtb3JlIGRlc2NyaXB0aXZlLiBBbHNvIHdlIHdpbGwgc29v
biBoYXZlIG1haW4gbGluaw0KPiA+IG9mZiB3aXRoDQo+ID4gUGFuZWwgUmVwbGF5IGFzIHdlbGwg
dGhlbiB0aGlzIGlzIG5vdCBhYm91dCBoYXZpbmcgUFNSIG9yIFBhbmVsDQo+ID4gUmVwbGF5DQo+
ID4gZW5hYmxlZCwgYnV0IEhXIGNvbnRyb2xsaW5nIGxpbmsgcmV0cmFpbmluZy4NCj4gPiANCj4g
PiBJJ20gZmluZSB3aXRoIGRyb3BwaW5nIHRoZSBwYXRjaCBpZiB5b3UgaGF2ZSBzdHJvbmcgb3Bp
bmlvbiBvbg0KPiA+IHRoaXMuDQo+IA0KPiBEbyBub3Qgc2VlIGFueSB2YWx1ZSBhZGRpdGlvbiwg
dGhvdWdoIG5vIHN0cm9uZyBvYmplY3Rpb24uDQoNCkkgc2VudCB1cGRhdGVkIHZlcnNpb24gb2Yg
dGhpcyBzZXQuIEkgaGF2ZSBhZGRyZXNzZWQgc29tZSBvZiB5b3VyDQpjb21tZW50cyB0aGVyZSBp
bmNsdWRpbmcgdGhpcyBvbi4gQ2FuIHlvdSBwbGVhc2UgcmVjaGVjayBteSBwYXRjaGVzLg0KDQpC
UiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gDQo+IFJlZ2FyZHMsDQo+IEFuaW1lc2gNCj4gPiAN
Cj4gPiBCUiwNCj4gPiANCj4gPiBKb3VuaSBIw7ZnYW5kZXINCj4gPiANCj4gPiA+IA0KPiA+ID4g
UmVnYXJkcywNCj4gPiA+IEFuaW1lc2gNCj4gPiA+ID4gwqB7DQo+ID4gPiA+IMKgwqDCoMKgwqDC
oMKgwqBib29sIHJldDsNCj4gPiA+ID4gDQo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiA+ID4gPiBpbmRleCBjZGU3ODFkZjg0ZDUuLmY3
YzVjYzA3ODY0ZiAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuaA0KPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5oDQo+ID4gPiA+IEBAIC00NSw3ICs0NSw3IEBAIHZvaWQgaW50ZWxfcHNy
X2dldF9jb25maWcoc3RydWN0DQo+ID4gPiA+IGludGVsX2VuY29kZXINCj4gPiA+ID4gKmVuY29k
ZXIswqAgdm9pZCBpbnRlbF9wc3JfaXJxX2hhbmRsZXIoc3RydWN0IGludGVsX2RwDQo+ID4gPiA+
ICppbnRlbF9kcCwNCj4gPiA+ID4gdTMyIHBzcl9paXIpOw0KPiA+ID4gPiB2b2lkIGludGVsX3Bz
cl9zaG9ydF9wdWxzZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTvCoCB2b2lkDQo+ID4gPiA+
IGludGVsX3Bzcl93YWl0X2Zvcl9pZGxlX2xvY2tlZChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZQ0KPiA+ID4gPiAqbmV3X2NydGNfc3RhdGUpOyAtYm9vbCBpbnRlbF9wc3JfZW5hYmxlZChz
dHJ1Y3QgaW50ZWxfZHANCj4gPiA+ID4gKmludGVsX2RwKTsNCj4gPiA+ID4gK2Jvb2wgaW50ZWxf
cHNyX2h3X2NvbnRyb2xzX2xpbmtfcmV0cmFpbihzdHJ1Y3QgaW50ZWxfZHANCj4gPiA+ID4gKmlu
dGVsX2RwKTsNCj4gPiA+ID4gwqBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUNCj4gPiA+ID4gKnN0YXRlLA0KPiA+ID4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3Ry
dWN0IGludGVsX2NydGMgKmNydGMpOw0KPiA+ID4gPiDCoHZvaWQgaW50ZWxfcHNyMl9wcm9ncmFt
X3RyYW5zX21hbl90cmtfY3RsKGNvbnN0IHN0cnVjdA0KPiA+ID4gPiBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKTsNCj4gPiA+ID4gLS0NCj4gPiA+ID4gMi4zNC4xDQo+ID4gPiANCj4gDQoN
Cg==
