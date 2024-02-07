Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E404084CE1C
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 16:34:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24A5710E0BF;
	Wed,  7 Feb 2024 15:34:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eCHk/bLI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0174410E0BF
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Feb 2024 15:34:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707320072; x=1738856072;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=v65JkJREUNZiX5OxM4RKWpQx6Scravm0qO/HLxQiXj8=;
 b=eCHk/bLIu9ab9HQ6Uu+fxfTTp83Dj6HW8zEFlcMV8qS/kkVsF/3kk4B0
 1A4IeNILcfBwe0aDuFu3GPdCb6V5kLfRYLMbmf+iH+ZDfn/kTpVK0KubX
 ilCMKe9tCUoKZGpbepPywEZDt60aq1i1F+soKfARkw3v7iRi5QKidIXSb
 6uPAtSL1qUkJY8UvNLJphKweii4NMI9FpcV7Up/TdwHwfx30Iq0r1P1LE
 khseANLQbKwNR6sLaY162Sa7+HFWtB853P9ZLnImNgR/UbWpoFj8RBhEI
 Zj6+fWuCK3kmG4Sm1/NsuXfgYjJSuVpnxKO05uKMtzRyaLVS7hLCdvWdI g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10977"; a="12370643"
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; d="scan'208";a="12370643"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 07:34:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; 
   d="scan'208";a="1389766"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Feb 2024 07:34:31 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 7 Feb 2024 07:34:30 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 7 Feb 2024 07:34:30 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 7 Feb 2024 07:34:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gDeRhH5UyhcNSqT5h7VR2oaMC16F/0z+ToqHo2alEzlJG/gdgMGOgBg9aICzP4GYR0Hv930P60pKpUtlTY0FTNdAlBuWAHMSQ9i4e5XeSd3IMn1NGb+kgA6wTvhUxm91RImo5LK0AJww81/iQ1z7NeuEPYFy8cquvBe6yb3e+zzC0IH/iYtx02gAUjxSGFtBgj2vWfOI/X9oNZnTotzI349qYOvLyDAABJxgxTLGXBVfSxyhnRTtFGpZ2KPNStni/Wdvm88w+MBKthgHt2C79Z5SUl+3p1GEbzu1FSA8fhB1YzQL9ketMa5f52U5Ex+481WtLxrt1Xde188jf27wvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v65JkJREUNZiX5OxM4RKWpQx6Scravm0qO/HLxQiXj8=;
 b=RHsqp3b48T+c8R7Sna2arNN/iSbiMzQ7bMX4VmpHmfaEhiEpNzQePEh3Vs/GqkRnsxvXnAdksJZNC7jNbTwxDNCJfIutglGBfvzTwep9RP3nmKjFOImYEh8pcx/Uj/IULwyC3lkmeAdGKMKoJwMva8yJ7+/k0UK4Sh4crlNgP7KrE/AUOgo8VArMl+5YgUEXTU/dTX9uEBIF6q6KFqP2GuhSFbyRxXyIPlpEjJrhEfbVv4l4bSmfgdEBW1TPNrqyHDtGWGLBXaXCBakL8G0c2MNUw4IOqzY7lVzQSLjUZntGGUF85xEShVCM6w+R+nazgZphPYursZLo07BFTTg5vA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY8PR11MB6985.namprd11.prod.outlook.com (2603:10b6:930:57::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7249.30; Wed, 7 Feb 2024 15:34:27 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7249.037; Wed, 7 Feb 2024
 15:34:27 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: Re: [PATCH] drm/i915/panelreplay: Panel replay workaround with VRR
Thread-Topic: [PATCH] drm/i915/panelreplay: Panel replay workaround with VRR
Thread-Index: AQHaWdTatYyfTzhc20mmmgF9ceHVJ7D/ApkA
Date: Wed, 7 Feb 2024 15:34:27 +0000
Message-ID: <18f4f3377659b664024415face4e2f04edefd89f.camel@intel.com>
References: <20240207143509.2607428-1-animesh.manna@intel.com>
In-Reply-To: <20240207143509.2607428-1-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY8PR11MB6985:EE_
x-ms-office365-filtering-correlation-id: 4d8ae548-5fb2-4d83-590d-08dc27f2452c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mImw3Puz3H4DP+623yHyiA6KQcReD7WII5yIwBoRLMHiWXQpNwI2HP7ILKxDAQWZCEk3AU4ln2fqqezNjP4Ooeat4jh9R6x3yut9BP4ENwLEU0pF5bLsJkvqVik82a/ke4bJkibtyeIcNLNSisxO8F+svN1yR1t/u0qR89xrQ6WMfML7yhTMlhmcUD9XQsxPOh/wDEelShCs7Kc/RRULfsNlhPqCNDrRs9ita4oGPl2GeRStRJZhHtgkBwwxSbXANu0QB7I1YkPJjSVlHNSbZD1WUq3c/vMA/NRodE6eWIOjLWojAs+RrD3VoLGq/PNckMUgc0YJRWX9sJkitXaFcLy5VUizB6dysBRk+w40N2dOzYeUu86JtNn/ki6X2YNAkaPPqq27Ax1Z9dNjl6YBGKksvZI61eGDB42KYm9zt+4ZYdKL5D+s4+Z48uV5KEU+aoNEId1Ks8uNbAF0/JvdEDagwY1LIBkJT/UzWIGzS+uZeJIrQOvisgppQlPP/2DktACKwqi4mWqsTXmvQIXa2wofdC5AGmnwEo/l26TknF6PYfQg1zjL8xmsC6lqES08xAFNNw0+kqyVcwPkbx6rcSPXxvruqY6ubsovvdsjkrdASqnU3vx14d6w3n4PBluP
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(396003)(366004)(136003)(346002)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(6506007)(6512007)(71200400001)(6486002)(66446008)(316002)(66556008)(66476007)(64756008)(478600001)(66946007)(86362001)(8936002)(83380400001)(8676002)(107886003)(82960400001)(76116006)(2616005)(26005)(4326008)(38070700009)(5660300002)(36756003)(38100700002)(122000001)(110136005)(2906002)(41300700001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZUhERk5maUdqM1Npc0U0bjFqWW1QQWhMK2NLbzdpc0RGVW5YMkxvL0FCWXN2?=
 =?utf-8?B?b1hiNGxxM3V0dCtScjJCdW9HRUlEVERmdXIxOWJudlI5NHNza05ZWG5UOFRX?=
 =?utf-8?B?ZHROOXQrNFJJWlVGcHhZaXFCQjRHTWVCNFBTa2JsM2Fta09VY0pxQ1ltcjVt?=
 =?utf-8?B?NDVEMzRuT0tBTmhhVWtSa2NRbDMyODUwLzk0UUhieWZvOVJmTXJsY0psRDlL?=
 =?utf-8?B?NXpjbnNYdCtlcEFqMTJVMUUxcmdNTVE5ZnpRR0R5SkZCSEhLNFNWd283eEJI?=
 =?utf-8?B?T29QQ3hnMWdTdnVSRXR2SmVCUUdzNHZ0NkU4aFNjcUF2WXNYcStGRng5Q1dO?=
 =?utf-8?B?bmQyQVliMFZjbmVENDlXVFQzVTE1ZXU1V3UvQmRFUE14Qnh2aDhhemYzRjNv?=
 =?utf-8?B?WWp1QlZpcW9BU0d5TjY1ckxEd3pubGlEaHVIWEhESVplUjhLWlhzSTNCU3dL?=
 =?utf-8?B?RkRnd2hIL3dxOXJNQWJ2Tm80Vm9jWXRwSkNuWXdtdFQ4ZVpsTENxeFFYUFYz?=
 =?utf-8?B?YkN5a2dDM2V5VlhYWUYyOU9nZUhlRytndjkwT0xhcHk4ZXdJOUhzQ1RabnNV?=
 =?utf-8?B?M1lDZVQ3R3MwMTg3dytOQXdvY3VWSy9uSDZSNStmQzlrVWFFbTUxdEEzdlhN?=
 =?utf-8?B?RUNzZjNaQ1dGeHdBKzZweDVlZmpZNjUyY0RIT2pjeXRNQzNmQ0RlaFYvcU5R?=
 =?utf-8?B?QzNaVmxxbXlVWUYzblZiYkduY3h0TlVHODliN0xYQ1V0RzFGejNONUNtaEx1?=
 =?utf-8?B?T3lrdWNlUHVVUVYyS2xyNVQ0Vjd3cXJPUUwxV25YZHpWMUtsam14b0hob3BY?=
 =?utf-8?B?blMySW5JNGNTSGk2T2NrMVdtTzZrenVQYkxaYVJZZlBMM2hONjZGNlM5aldQ?=
 =?utf-8?B?UHE1dGVUa0JrQUhFeG5yMDZsWk93STBrYjd5K2dUbnM2RzFDMnlNb0tIblFX?=
 =?utf-8?B?NjJ6Q1FScWJlM3FyaDVjOHNyZm80STAwOVhqcTliTU54OG1uU1R5VFc2ZHRz?=
 =?utf-8?B?M1lBbnM1YlZnUzdGVFpzTU02VlZZMDVLNDJHSUp1dFhzTldZanhFNHhsSE5v?=
 =?utf-8?B?eE5adlN3am1PZmRwRWtmM240STE4ekdhcnhIanp5VG1uV2J3eUxMTDdSc3or?=
 =?utf-8?B?TW1pOGdVRndzRmRucTY4ZWFndnloM3NDN0tXWU9MV1hheG9JbWpUenJ1QlJT?=
 =?utf-8?B?QUhUWnpycWY2THRDSjRCTTYvMktnWG5CTmNHb1pnNXBKMHE0NkVScnpmb0po?=
 =?utf-8?B?SVg0ZlY3eUpTM3pOR1pSVDFqQ0tXQmlldzNaWWMxTStTVzRvajg0TDRNcXNn?=
 =?utf-8?B?NXlsWGs5U2NNM1Mxa1A1VFM4cnVsLzdhR0FnVHVVbXM2MXpMWWFOcWFxc1F0?=
 =?utf-8?B?WEcrbUFROHhmZ3V5cG5EdE9lTGgrRHhQeExKTURkL1ViaHZsQmM3TWZMTVBU?=
 =?utf-8?B?MkMxOGZ6Sm5ZQnV3RUc3TU9ER2RmRzZldkJpSG05bnNuT284TWlHTHNENEJH?=
 =?utf-8?B?VXhqbWw5bXYvMkxLbjhIKzB1YXlHWUU0TXpXeUlIazByNXkvdXNpRkN4MEtt?=
 =?utf-8?B?bm1oM09Ca0dJbklBeEczajhJaEYvQUlBVXQzUU1tUkdoMGN1TUpsUmRJb3hY?=
 =?utf-8?B?LzRoblF6M1BjaWFIa210Vk1mcllYS0VCa1hCQzEzNDR1a3M5R2owRmNKOFFE?=
 =?utf-8?B?MTZ2ZTRsY0MyVm5iK0tQZUNqRjFGc1FFNGVaWFVFNm52UTdrN0ozaDFnenA4?=
 =?utf-8?B?VGt2MnpER01Hd0FZNTdsU1gyWnQ5R0p2TGRNciszemxaRmxCZWc0OU96YTdU?=
 =?utf-8?B?c2E0WkRHSnp4YTlkNU16a3BGMyt1dGtydFRIY0NHY2VBU0UySTZOdEpZWTEy?=
 =?utf-8?B?NFZPZnQ0US9yZGxGVGVsY1ZiZVJXQkJ4Vk9YZStNcVNUWjVtTW1mWlZXbnhR?=
 =?utf-8?B?SDUxVXUySlg1UXYyNjA5MlJTSlhLT1FuV1FBQ242VDVOZm5RUHFqYk12YjhC?=
 =?utf-8?B?bkZiSVc4Rmt0dWxyYnQzbExxTUowaUNZSUdqaU5VTVBid2xUSlkvMlVzZG5L?=
 =?utf-8?B?MXppS1hjb3dRL0RoTlBiMTNYNEk3VktNYW5FL3VSRlk4Ly95YnRBWTBEQmFX?=
 =?utf-8?B?cUl3T2dBSW43MzVadEttdWZMTy95YmN6Vk54VUMyelhIendnUEJUc1FxZGxJ?=
 =?utf-8?B?eHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2614B0EA881C6D4C9D6EAAF4102DA52F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d8ae548-5fb2-4d83-590d-08dc27f2452c
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2024 15:34:27.5815 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ft9HQmH5hWHpVc2hf/hv8nVOJ/aNuZyBt3uuIlR/0+hL+Jf3qCzJLnoSlROIOZ+SU3oZblT6PLPH+gu7Sbzr8JLhoVOs2HbTAlpxcJ5G6G4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6985
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

T24gV2VkLCAyMDI0LTAyLTA3IGF0IDIwOjA1ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOgo+
IFBhbmVsIFJlcGxheSBWU0MgU0RQIG5vdCBnZXR0aW5nIHNlbnQgd2hlbiBWUlIgaXMgZW5hYmxl
ZAo+IGFuZCBXMSBhbmQgVzIgYXJlIDAuIFNvIFByb2dyYW0gU2V0IENvbnRleHQgTGF0ZW5jeSBp
bgo+IFRSQU5TX1NFVF9DT05URVhUX0xBVEVOQ1kgcmVnaXN0ZXIgdG8gYXQgbGVhc3QgYSB2YWx1
ZSBvZiAxLgoKRG8geW91IGhhdmUgQnNwZWMgbnVtYmVyLiBZb3UgY291bGQgYWRkIGl0IGhlcmUu
Cgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwu
Y29tPgo+IC0tLQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgfCAxMiArKysrKysrKysrLS0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKPiBpbmRleCAxYjg0NGNhYzRjNTguLmMxZWM3OGI1YjZjNSAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gQEAgLTI2
MTgsOCArMjYxOCwxNiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9zZXRfdHJhbnNjb2Rlcl90aW1pbmdz
KGNvbnN0Cj4gc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhCj4gwqDCoMKgwqDCoMKg
wqDCoCAqIFRSQU5TX1NFVF9DT05URVhUX0xBVEVOQ1kgdG8gY29uZmlndXJlIHRoZSBwaXBlIHZi
bGFuawo+IHN0YXJ0Lgo+IMKgwqDCoMKgwqDCoMKgwqAgKi8KPiDCoMKgwqDCoMKgwqDCoMKgaWYg
KERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMykgewo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwKPiBUUkFOU19TRVRfQ09OVEVYVF9MQVRF
TkNZKGNwdV90cmFuc2NvZGVyKSwKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjcnRjX3ZibGFua19zdGFydCAtIGNydGNfdmRpc3Bs
YXkpOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAvKgo+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgKiBXQTogUHJvZ3JhbSBTZXQgQ29udGV4dCBMYXRlbmN5IGluCj4g
VFJBTlNfU0VUX0NPTlRFWFRfTEFURU5DWSByZWdpc3RlcgoKRG8geW91IGhhdmUgSFNEIG51bWJl
ciB0byBhZGQgaGVyZT8KCkJSLAoKSm91bmkgSMO2Z2FuZGVyCgo+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgKiB0byBhdCBsZWFzdCBhIHZhbHVlIG9mIDEgd2hlbiBQYW5lbCBSZXBs
YXkgaXMKPiBlbmFibGVkIHdpdGggVlJSLgo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgKi8KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKGNydGNfc3RhdGUtPnZy
ci5lbmFibGUgJibCoCBjcnRjX3N0YXRlLQo+ID5oYXNfcGFuZWxfcmVwbGF5ICYmCj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAoY3J0Y192Ymxhbmtfc3RhcnQgPT0gY3J0
Y192ZGlzcGxheSkpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwKPiBUUkFOU19TRVRfQ09OVEVYVF9MQVRFTkNZ
KGNwdV90cmFuc2NvZGVyKSwgMSk7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGVs
c2UKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVs
X2RlX3dyaXRlKGRldl9wcml2LAo+IFRSQU5TX1NFVF9DT05URVhUX0xBVEVOQ1koY3B1X3RyYW5z
Y29kZXIpLAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjcnRjX3ZibGFua19zdGFydCAtCj4gY3J0Y192
ZGlzcGxheSk7Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qCj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBWQkxBTktfU1RBUlQgbm90IHVzZWQgYnkg
aHcsIGp1c3QgY2xlYXIgaXQKCg==
