Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8506A79352D
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Sep 2023 08:15:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B03C610E04A;
	Wed,  6 Sep 2023 06:15:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 670BE10E04A
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Sep 2023 06:15:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693980932; x=1725516932;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=0pGK0DfoZNDbW/oXVy/6mJxuIH3MjX4HqC4jToTGvLE=;
 b=ZvlLbYa7OnGLnZCAIzdNBfcHQQ255UHrGreimWvcMLnD2l6HYwfWwEml
 97PRU+qyspId8/4PK8BHkZcevp7TAvJTahdkwPXIUpvy7ppPJ4QBPH1sl
 fufm2ob3P+PS3YA8kj/ZERxDNr6TNUt0P/VUIeyI5urvkY1fB/bKMteUG
 bbEnxC06SItC5NeWNANk3kehT90fSXsOVpc0hNuJuZ5VSra04Jrar1dEM
 oYB+nRaXIIqKONDkvR2zgq9V5ZxrxnD6bqEgvYaxxk08cueRFJWzVLa35
 9dBlCtWGzL3hxcXVLXd5nO4nIM+VHe5KA2jQSLSllPresmDhEKh03wriK A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="375886488"
X-IronPort-AV: E=Sophos;i="6.02,231,1688454000"; d="scan'208";a="375886488"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 23:15:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="988104176"
X-IronPort-AV: E=Sophos;i="6.02,231,1688454000"; d="scan'208";a="988104176"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Sep 2023 23:15:22 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 5 Sep 2023 23:15:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 5 Sep 2023 23:15:21 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 5 Sep 2023 23:15:21 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 5 Sep 2023 23:15:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V7NfaMx5EuL7Ht/WSCp6skGtSop5hNAk7HmmT2yP9qA4ABt7s0bYWl98yC1nvrQP94iODf+vDkFFQGMDQSUisUI87YZaxrbKhtW6kJvuDfJdDWumqM07JqEfh+1xxWJoSDV0KEYjrVj9xCKNuKoN06Qs23TWfKQS7JmwgXP8IzOeKCI9YRW7BbsyQ/Rf+fmk18xTlYNoKgiqhISzKBxsINruC0VkJ7oREK1drCv+qUTmHTCYmh7YHYmVTvpCSJVdpcnUTRX3V88g7PdyU4VSFIVP6CMsN4apAHSJ82AwVI2KW4MVYb+nNbvRrK6nCVGU+YNmNIqF1pv4coONMLe+/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0pGK0DfoZNDbW/oXVy/6mJxuIH3MjX4HqC4jToTGvLE=;
 b=SmU/Bj5LrKbYqAulNKj25aKeVxCQbhexVbSSBipRoxIu408hjfXE9bm5DC7rrVaeC1c63cu9yCejmWoo9aDdzyvtEQE+QzZiqyV5SoMHLO8rFOwkc7cqEXwTOEfu8Up05FOUhBvLHAuwHq2fUewwSJE0GFMsmNPW2imIB37L0ZpWLOfV7BXFdz0NeysngKsvnH4uNviSsdlpi6chEinDZ99Lzcqnw5s9dReStMKU+wNZH5ZLRKzhVSgrzyF6/VVpTqjWGC98xg0Bk2ckOG8JQufXexTrSSMuF2IU2IJlTTZDpgr2zkxXhSgj0MJF/tZmW3BsSmgDWE7k0obPCQbQMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA3PR11MB7525.namprd11.prod.outlook.com (2603:10b6:806:31a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.33; Wed, 6 Sep
 2023 06:15:17 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3c89:fe31:95fd:c2cf]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3c89:fe31:95fd:c2cf%5]) with mapi id 15.20.6745.030; Wed, 6 Sep 2023
 06:15:17 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/psr: Add psr sink error status into
 sink status debugfs
Thread-Index: AQHZ2YoPTHtAyJaodUS0Vmt0tNKL17AL+YYAgAFmZwA=
Date: Wed, 6 Sep 2023 06:15:17 +0000
Message-ID: <b1dfda1a8199e284946c83c6719bb11477aa429f.camel@intel.com>
References: <20230828083107.1520501-1-jouni.hogander@intel.com>
 <BL1PR11MB5979C1C04C9B3553E8A05E92F9E8A@BL1PR11MB5979.namprd11.prod.outlook.com>
In-Reply-To: <BL1PR11MB5979C1C04C9B3553E8A05E92F9E8A@BL1PR11MB5979.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA3PR11MB7525:EE_
x-ms-office365-filtering-correlation-id: 2bc5dd77-f4cd-4170-82f5-08dbaea0a3e4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /YSwi+KQpzvBCXWJTLuzP+n1J0O90+Mo8VOvWBHccowcAALc0F2RuqdKyQSoQiGCzWi2Xms8JpeVhhhgXRD+iTMZx8+fus2W5Ml/IxOhWonnxsfa9nAyYPQJnRH1hvqY+thOoBwq65vHoHKmW9zhHyrWlxIEOZ5KiAN5+3csMzfwii5y6PkMtx1YZUwOdln7uY+TU6v+IG04in0YDwcIVqj5Zy34fOdLdSicsBlbNDOKhmpfpF95StuNxSPPhbi/0gftz0PwxjK6O8Ws6lMZVfX9sQuek00IHs5cwAzklwx0t80mxHVAxy6PlJFijuhTOBksQ44FeVzvL19lfgPB8JTy/BCGgr8snwj+f3PRKKkqhtvfZNWqRM1msV6ogPkBtr+S2go7gBVbdXGGYvfGxaLG1Cc3TbR278cDog5Yuiu71vrTyPwdFxtrw0IZ8ver/z3eOsJSvwd9bGWE+PRs6Xcbs9qtGS1Rl2s1+auMDeJEI51+k2EXasYVcqJ6ZcWor7KbAyGoQ3vzJgXm+wrLbU4jxGLWLYSpexrGxI97bTNKgRD0V/3CAMMhX9gBeI7RaFO6SaHK6INCCkPyx+vaLlCxkXRuxw28p2t5AqvcBxFtPGuTVHWaI305wIeHToRv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(366004)(346002)(376002)(136003)(186009)(451199024)(1800799009)(38100700002)(82960400001)(38070700005)(36756003)(83380400001)(122000001)(66574015)(2906002)(53546011)(91956017)(316002)(110136005)(64756008)(66446008)(76116006)(66476007)(66946007)(66556008)(71200400001)(6506007)(6486002)(6512007)(41300700001)(86362001)(8936002)(478600001)(8676002)(2616005)(26005)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V0JJRDloK1JGV0FVeEtOb25NMGJQelZiTHlnRzFwTzRseklPOEVWU2VnNDZZ?=
 =?utf-8?B?M2RrNlhZTTlycDF5VW0vOVFILzRZT1lRb25xRVJ0eEZ5WmdhOTB2QjQ0dERl?=
 =?utf-8?B?enVlNHVQZFNNdHZXMDBIWXhmaU9yNnFkRXJHK0RMcnI4bWR3T2pYUWhxRE03?=
 =?utf-8?B?Ti91M2tjc0J0eXBvdU43alEyMG5ZWnpTVnRleWZwMENTajA2YjBHRnRJUGNI?=
 =?utf-8?B?YlFEV0RCY1pGRUI4TzlqbHVlVFJiRUpIdDRsVjI4U2dRMTlScVpsbVJxY1Iz?=
 =?utf-8?B?REdOaWdpVnM0SHA1eHljN2FYQlRhWjZjT3oxaExFWFZJNXJnOW1uVjZnZytJ?=
 =?utf-8?B?UnBHNXR6eWo4Y2tjanplaTBGWWpvcEdEaWd0ZEhVempxSzFHQmUrSDA1OVVU?=
 =?utf-8?B?MmtHaU1Cc0g1eHpqVStKK1dNcEFaRjdUNHdjd3plL3JNNHViMWtFL3VZanAr?=
 =?utf-8?B?RXQ5ZUtDcHhKUnZqV2pRMjBVWHZRRFBBdWlwMVBOT3c2UnNNdXB5WER4M2cz?=
 =?utf-8?B?M3c4a2JsT0ppd3R3cEo3Y1Zsa3dMakpNN0ttUHBHRHFJWnNPQ011SE1XaHBo?=
 =?utf-8?B?Q1ROOTY0R0o2dUltZEI1c3poemY3NWJSNU12b0xFZXNIRUhZczZWSVc1clpC?=
 =?utf-8?B?QnVoaDllL29OaTY3WFNZNUN6L0F2OWk5RjVpckJFc0JINXNaSFE5bFZkSG5Y?=
 =?utf-8?B?YjFlbC92cDBrTVd6VWwvNmgrWCtaM1pjaWI4ZGR1UjFYckpha2oyRXFNd1dw?=
 =?utf-8?B?RnhnTTNKTlEvV3hCWitSdThnVjh3ZUZrWlduekhHclhTZXY2VEdRNFRYYzlO?=
 =?utf-8?B?cHFlMnlLM3ZKR25ZRll2Tkdya3NaeThDWkptZm9Na2NUV0F5aFdUL2JWTGE1?=
 =?utf-8?B?NGJ1MnNFbEZCRGM4a2ZsY2Q1aExseVMrdklxdGFoUzB5WXRKUkV2TmxScy9R?=
 =?utf-8?B?TDFuOUk5Uy95MWJTak5yV2pEZG1WT2REb0pVYXRZZXhBUC9UOGlzbFhacWVZ?=
 =?utf-8?B?dUhnK3ZvbGdXS3o3cjM1Mmx6ZWQyUVRsRWpCTnZzNEV3bExNTnpKZjVnN3ND?=
 =?utf-8?B?c2NTU0tYUXV4Y0J5VEtweWVncW1YSThKekY3dmI5ZmwvSWZUZFNZMkszU2VE?=
 =?utf-8?B?NkkwaXBHanNrVlBzM3hkeDN5OU1NRTl6UVVEWk4rQlR5ZWFoaUFZV0Rmdkh1?=
 =?utf-8?B?d1FMNWlNS1YraVNMOXNDcGx5bGUyU0NFbHE5NjRKUDdCOXFpY2EvK1R4bHQv?=
 =?utf-8?B?R21qSHBvdzJIbFdJaTduU2dyWmJ5K2Y1Wk56Mm15eGpNR3FFd1pwNzJsTERi?=
 =?utf-8?B?TDZPOWNMeDBBd3BrK2FObEpHUzVlVlVhY3doT1NIWDRYVXV2QmM5aTZna1FX?=
 =?utf-8?B?cGZoV2FtQ1hlMDBsSmNSK1BCc3ZoN0FKYUlET1U1ZDE0ZjI5WmpiRDE2R1RL?=
 =?utf-8?B?dTg2SkhYeE5USzZ5VlVoMlp4Nmd6ZHBMaEFaYnpTRWgvekFYK3FramlkT1Zw?=
 =?utf-8?B?azdqME4zNE1ZQmxJTXA1ZmtzWkpubXVrK0NzNjZ5WEt0MmdVK1hVQXNBaGxK?=
 =?utf-8?B?bk12dFNnd0tGN1drK2lhVEhjSGZxandPZzJjNnFBUFY5TUdnZGVuaDRTd0ll?=
 =?utf-8?B?K0xOaWJhVkd1U2JUVmMzMHpHTzNxRHhuUXAvVEtLVXIwbklSYzNoYUVpVFV1?=
 =?utf-8?B?aFU3Mlk1NXovcFNBaXYwVUVKWE5pZzdoWVgvQm14ZTk5TUhpd1dxTEp3eTVT?=
 =?utf-8?B?MTg4RkN3RHQrQmhLOStMdWRmRnhoSmpkUVBvdGNCdGFhcWZmWVJ4b1pxeUwv?=
 =?utf-8?B?T1ExQ24yc1E4UTc5Uk81a1J3UDNFZGxjRVR5WG5RcnQrd3lnbUtRWHRISm5W?=
 =?utf-8?B?bm55VTdnWjJ4cDJjK1dzU2ZtUUZ3QVBvUDVuSnAzQW1PVko2UTFqY21zaXgy?=
 =?utf-8?B?TjhDU1Fpa093VlpQbStSWmdnbUw4UXpLcFNoSWowL2RvZ09JeUJpMEFRekZq?=
 =?utf-8?B?dVNKeGg5K1ltSWM4TWluNDc0YWVsS1NxVlBLNUpZTXdyeExkNmtYVlliVG4r?=
 =?utf-8?B?Njh0TnYzU3NVY3ZDbDY2VDhvenRyeHdhd0pkOUcwelVXbWo3bUdLcmtXekU0?=
 =?utf-8?B?Nkt0djNqdWtNVDhLbTdCUnB5OGw2dndXajJKNGhYN256Z3dvd09NQzlzbDFs?=
 =?utf-8?B?UVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6929879BCE224A4B9704F14CA7DB42FA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bc5dd77-f4cd-4170-82f5-08dbaea0a3e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2023 06:15:17.0664 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6MeabQwFp+4IzmhQgn+Nr2AcT1ATlDAn3RFXIp0P6HIheEz/e/bpAfL8gdzkcc0xoCRLXSaDtY3/JwvRyRVOzh/WOyfR12PKZlzDinko798=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7525
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Add psr sink error status
 into sink status debugfs
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

T24gVHVlLCAyMDIzLTA5LTA1IGF0IDA4OjUyICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToK
PiAKPiAKPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiBGcm9tOiBJbnRlbC1nZngg
PGludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmCj4gPiBP
ZiBKb3VuaQo+ID4gSMO2Z2FuZGVyCj4gPiBTZW50OiBNb25kYXksIEF1Z3VzdCAyOCwgMjAyMyAy
OjAxIFBNCj4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gU3ViamVj
dDogW0ludGVsLWdmeF0gW1BBVENIXSBkcm0vaTkxNS9wc3I6IEFkZCBwc3Igc2luayBlcnJvcgo+
ID4gc3RhdHVzIGludG8gc2luawo+ID4gc3RhdHVzIGRlYnVnZnMKPiA+IAo+ID4gTm9ybWFsbHkg
UFNSIGVycm9ycyBkZXRlY3RlZCBieSB0aGUgcGFuZWwgYXJlIHRyaWdnZXJpbmcgSFBECj4gPiBp
bnRlcnJ1cHQgYW5kCj4gPiBzZWVuIGFzIGVycm9yIGluIGRtZXNnLiBTb21lIHBhbmVscyBhcmUg
bm90IHRyaWdnZXJpbmcgdGhlCj4gPiBpbnRlcnJ1cHQgZXZlbiBpdCBpcwo+ID4gcmVxdWVzdGVk
IGFuZCB0aGV5IGFyZSBkZXRlY3RpbmcgZXJyb3IuIER1ZSB0byB0aGlzIGl0IHdvdWxkIGJlCj4g
PiBnb29kIHRvIGhhdmUKPiA+IHBvc3NpYmlsaXR5IHRvIGNoZWNrIHBhbmVsIGRldGVjdGVkIGVy
cm9ycy4gQWRkIFBTUiBlcnJvciBzdGF0dXMKPiA+IGludG8gUFNSIHNpbmsKPiA+IHN0YXR1cyBk
ZWJ1Z2ZzIGludGVyZmFjZS4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVy
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+Cj4gCj4gTEdUTS4KPiBSZXZpZXdlZC1ieTogQW5p
bWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+CgpUaGFuayB5b3UgQW5pbWVzaCBm
b3IgdGhlIHJldmlldy4gVGhpcyBpcyBub3cgbWVyZ2VkLgoKQlIsCgpKb3VuaSBIw7ZnYW5kZXIK
Cj4gCj4gPiAtLS0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
YyB8IDM0ICsrKysrKysrKysrKysrKysrLS0tCj4gPiAtLS0tCj4gPiDCoDEgZmlsZSBjaGFuZ2Vk
LCAyNSBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ID4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gPiBpbmRleCA3Mjg4N2MyOWZiNTEuLmEw
MDg5MThiNGQ3MSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMKPiA+IEBAIC0yMyw2ICsyMyw3IEBACj4gPiAKPiA+IMKgI2luY2x1ZGUgPGRybS9kcm1f
YXRvbWljX2hlbHBlci5oPgo+ID4gwqAjaW5jbHVkZSA8ZHJtL2RybV9kYW1hZ2VfaGVscGVyLmg+
Cj4gPiArI2luY2x1ZGUgPGRybS9kcm1fZGVidWdmcy5oPgo+ID4gCj4gPiDCoCNpbmNsdWRlICJp
OTE1X2Rydi5oIgo+ID4gwqAjaW5jbHVkZSAiaTkxNV9yZWcuaCIKPiA+IEBAIC0zMTUzLDcgKzMx
NTQsNyBAQCBzdGF0aWMgaW50IGk5MTVfcHNyX3Npbmtfc3RhdHVzX3Nob3coc3RydWN0Cj4gPiBz
ZXFfZmlsZQo+ID4gKm0sIHZvaWQgKmRhdGEpCj4gPiDCoMKgwqDCoMKgwqDCoMKgfTsKPiA+IMKg
wqDCoMKgwqDCoMKgwqBjb25zdCBjaGFyICpzdHI7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgaW50IHJl
dDsKPiA+IC3CoMKgwqDCoMKgwqDCoHU4IHZhbDsKPiA+ICvCoMKgwqDCoMKgwqDCoHU4IHN0YXR1
cywgZXJyb3Jfc3RhdHVzOwo+ID4gCj4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKCFDQU5fUFNSKGlu
dGVsX2RwKSkgewo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzZXFfcHV0cyht
LCAiUFNSIFVuc3VwcG9ydGVkXG4iKTsKPiA+IEBAIC0zMTYzLDE5ICszMTY0LDM0IEBAIHN0YXRp
YyBpbnQgaTkxNV9wc3Jfc2lua19zdGF0dXNfc2hvdyhzdHJ1Y3QKPiA+IHNlcV9maWxlICptLCB2
b2lkICpkYXRhKQo+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChjb25uZWN0b3ItPmJhc2Uuc3RhdHVz
ICE9IGNvbm5lY3Rvcl9zdGF0dXNfY29ubmVjdGVkKQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqByZXR1cm4gLUVOT0RFVjsKPiA+IAo+ID4gLcKgwqDCoMKgwqDCoMKgcmV0ID0g
ZHJtX2RwX2RwY2RfcmVhZGIoJmludGVsX2RwLT5hdXgsIERQX1BTUl9TVEFUVVMsCj4gPiAmdmFs
KTsKPiA+IC3CoMKgwqDCoMKgwqDCoGlmIChyZXQgIT0gMSkKPiA+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqByZXR1cm4gcmV0IDwgMCA/IHJldCA6IC1FSU87Cj4gPiArwqDCoMKgwqDC
oMKgwqByZXQgPSBwc3JfZ2V0X3N0YXR1c19hbmRfZXJyb3Jfc3RhdHVzKGludGVsX2RwLCAmc3Rh
dHVzLAo+ID4gJmVycm9yX3N0YXR1cyk7Cj4gPiArwqDCoMKgwqDCoMKgwqBpZiAocmV0KQo+ID4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiByZXQ7Cj4gPiAKPiA+IC3CoMKg
wqDCoMKgwqDCoHZhbCAmPSBEUF9QU1JfU0lOS19TVEFURV9NQVNLOwo+ID4gLcKgwqDCoMKgwqDC
oMKgaWYgKHZhbCA8IEFSUkFZX1NJWkUoc2lua19zdGF0dXMpKQo+ID4gLcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHN0ciA9IHNpbmtfc3RhdHVzW3ZhbF07Cj4gPiArwqDCoMKgwqDCoMKg
wqBzdGF0dXMgJj0gRFBfUFNSX1NJTktfU1RBVEVfTUFTSzsKPiA+ICvCoMKgwqDCoMKgwqDCoGlm
IChzdGF0dXMgPCBBUlJBWV9TSVpFKHNpbmtfc3RhdHVzKSkKPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBzdHIgPSBzaW5rX3N0YXR1c1tzdGF0dXNdOwo+ID4gwqDCoMKgwqDCoMKg
wqDCoGVsc2UKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RyID0gInVua25v
d24iOwo+ID4gCj4gPiAtwqDCoMKgwqDCoMKgwqBzZXFfcHJpbnRmKG0sICJTaW5rIFBTUiBzdGF0
dXM6IDB4JXggWyVzXVxuIiwgdmFsLCBzdHIpOwo+ID4gK8KgwqDCoMKgwqDCoMKgc2VxX3ByaW50
ZihtLCAiU2luayBQU1Igc3RhdHVzOiAweCV4IFslc11cbiIsIHN0YXR1cywgc3RyKTsKPiA+IAo+
ID4gLcKgwqDCoMKgwqDCoMKgcmV0dXJuIDA7Cj4gPiArwqDCoMKgwqDCoMKgwqBzZXFfcHJpbnRm
KG0sICJTaW5rIFBTUiBlcnJvciBzdGF0dXM6IDB4JXgiLCBlcnJvcl9zdGF0dXMpOwo+ID4gKwo+
ID4gK8KgwqDCoMKgwqDCoMKgaWYgKGVycm9yX3N0YXR1cyAmIChEUF9QU1JfUkZCX1NUT1JBR0Vf
RVJST1IgfAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgRFBfUFNSX1ZTQ19TRFBfVU5DT1JSRUNUQUJMRV9FUlJPUiB8Cj4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBEUF9QU1JfTElO
S19DUkNfRVJST1IpKQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHNlcV9wdXRz
KG0sICI6XG4iKTsKPiA+ICvCoMKgwqDCoMKgwqDCoGVsc2UKPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBzZXFfcHV0cyhtLCAiXG4iKTsKPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChl
cnJvcl9zdGF0dXMgJiBEUF9QU1JfUkZCX1NUT1JBR0VfRVJST1IpCj4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgc2VxX3B1dHMobSwgIlx0UFNSIFJGQiBzdG9yYWdlIGVycm9yXG4i
KTsKPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChlcnJvcl9zdGF0dXMgJiBEUF9QU1JfVlNDX1NEUF9V
TkNPUlJFQ1RBQkxFX0VSUk9SKQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHNl
cV9wdXRzKG0sICJcdFBTUiBWU0MgU0RQIHVuY29ycmVjdGFibGUgZXJyb3JcbiIpOwo+ID4gK8Kg
wqDCoMKgwqDCoMKgaWYgKGVycm9yX3N0YXR1cyAmIERQX1BTUl9MSU5LX0NSQ19FUlJPUikKPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzZXFfcHV0cyhtLCAiXHRQU1IgTGluayBD
UkMgZXJyb3JcbiIpOwo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKgcmV0dXJuIHJldDsKPiA+IMKg
fQo+ID4gwqBERUZJTkVfU0hPV19BVFRSSUJVVEUoaTkxNV9wc3Jfc2lua19zdGF0dXMpOwo+ID4g
Cj4gPiAtLQo+ID4gMi4zNC4xCj4gCgo=
