Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1AC783D628
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jan 2024 10:25:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A39B510EF25;
	Fri, 26 Jan 2024 09:24:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F11F310F515
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jan 2024 09:24:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706261080; x=1737797080;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=P++qsAicH6Om65cXtOMh9zTpd8mv1vTyIV3qteRHKQ8=;
 b=FgKjDxD8Zb33egMcRwXRdAGU5/pLIb1KshbkvlDxjq5MxuInChywVunW
 egoRIjUj1NBUH6pXuvs/SLitgMMJcKHbyBRHRYiFIfkUTJuoPzC8BrPde
 vyuzCpi+SR8fSZzzgrGq/7mHBap36wSnRttceq+TjWgKAE28S7UYzGifA
 IYebt8/FcpG8hUGu1b654qJNKvc5aXCAJctlFkVZ49ixSaAe0pwcaIxoV
 fjMv4vZpawFGXo7H+J2C7vTd4BblVos6CxyU7215A4xkXHG+RQuStWfv8
 ztryUB+aokxRx4eM+/Ggb+tm+PqvIFRBEqWVzmBYgI/P4cGu4DjLYNmSw A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10964"; a="401280095"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="401280095"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2024 01:24:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="35375611"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Jan 2024 01:24:38 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 26 Jan 2024 01:24:36 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 26 Jan 2024 01:24:36 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 26 Jan 2024 01:24:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J8FFI1B3ltG9H0JRzR55FWiLFL9+cKpB0F9zyIeybw1oBk3Io8sHoQTeDxc97Ul1tnMWB5qthipU7F4E+Jggg/N+G83tRACizrhdWPVgtfgX/mQCtlHC/epIVZ10kTpZbeyu+yIFBBT5zefe6DTH8CqkXrLGsfc+1lkuCRAJAoOOhRao6vEfEb6RAbXXRtDFvjXEtEvBZjlj3yYbpl0dBWRAseufIdCb4dc0OTISkDLXKoQkIAbT92yGmX/ylRM8J6V4CidiViPYTU4zTZC+wObhm1sIXTcNkTrB1i0J2Dnq0/RYFKSpvbOlpZFUkMVGSXaACevxegL937fGjs1X5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P++qsAicH6Om65cXtOMh9zTpd8mv1vTyIV3qteRHKQ8=;
 b=TdfJV2u1pysKK6beDEXKgBYezJhY64/6psKpVuXdsdvw+SQYH5poFTgTn0Z4fY9jh+k+yEzhtVXVSPA6awC2Eyqe5R5CybwEtFSBB4S+NjLYINbW3+BypEPlHRQCs5g9ji7P0QYY7JuYvHjrZBEa6ZS4ShZ8aYav5bOxQgnNL2vxUjP8ipS1SdMSCgu+CLBv7TSn4LpdGx6SQ5IXatqqCJ6dtS9xIuGO4wI+sKPeYX8KrsPJhwjww2bKcELOyha6nwszHu8EeYGW4np4ExbDiv2EAk1mBFI8o/NyF6cLDge32+SQV0j0zJiU13wdajZLorgWF3Rgw5S2Xkoknd/ABg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by DS0PR11MB8665.namprd11.prod.outlook.com (2603:10b6:8:1b8::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.27; Fri, 26 Jan
 2024 09:24:29 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::9327:c44c:a49e:804c]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::9327:c44c:a49e:804c%4]) with mapi id 15.20.7228.022; Fri, 26 Jan 2024
 09:24:29 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915: limit eDP MSO pipe only for display version 20
 and below
Thread-Topic: [PATCH] drm/i915: limit eDP MSO pipe only for display version 20
 and below
Thread-Index: AQHaTshb5GtYcO0w/U65jPwl5saijrDr1VoA
Date: Fri, 26 Jan 2024 09:24:29 +0000
Message-ID: <771addf5be225e5bedd30720328d9624f1545b2e.camel@intel.com>
References: <20240124085229.1896779-1-luciano.coelho@intel.com>
 <170610253323.3679.10192544885764866080@gjsousa-mobl2>
In-Reply-To: <170610253323.3679.10192544885764866080@gjsousa-mobl2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|DS0PR11MB8665:EE_
x-ms-office365-filtering-correlation-id: f0b4098a-d77d-4e5a-8b77-08dc1e509905
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +Y9Q1XyuIq+DB8+b3HWLl4qfzxrOhNLsY0pJR+zygHuXDlu/4x1JDk+1fntaLnuMh6/1b0+5AHAhwhhxct5RKWZ1K/PAqDUHEkcmr1LaUI0Y2xtBpDiqQ+aqmnRghqp0duuION1HakhfpiebIswxUEUKLhWlSlUdeOw/miq2y1qd8T+3q8Sb60ECfc8ZKAHU37EKrNT63mTSIyDBWt7+orePJHGQr3jCpEYtqd/7dMnkBvo2R0bsy4L5BjYLt2iLjRL28Ji4nwy+Ue+RqgGqp/SgkbrLOe9vbohi3/hF5PnvYICnB1E7BkheLSq0FA3RBhbPU8Cs6LXy9fC996vRV5KiVpcvYcAz58IQCFW7ECons36UKhxvs3uQ0IuFkd8ajkDY1v3E/sZvnlhh8Pz/lLUkEI6Mi+6Sq3xXA4WxrgeUswSYBwM6/K39UIUr8kSgcPvWdPGO8amseetcIJGrNWf6TBahCEW+0agHLF/TyXHtNumCpgIxbzlazlkmTDvhjQJVDNrXIXLzLw0kVcj+eVhQfqP61pR3SbyDcgnyjZgKWNZEiuKNQT03Qogv75ysLVmyIfrUhnnZ4zPGfhHmGaY1NSAMtZCl9SxebKvq/pG5agBFi+rxyyhPcLkRlaDu
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(136003)(346002)(396003)(376002)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(6486002)(71200400001)(83380400001)(2616005)(26005)(478600001)(38100700002)(5660300002)(66556008)(66946007)(76116006)(91956017)(316002)(66476007)(110136005)(66446008)(64756008)(6512007)(6506007)(8676002)(8936002)(38070700009)(2906002)(86362001)(41300700001)(122000001)(82960400001)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZkNYMHJEbnVxcndsTnNQdlNOWUZTdkk2d2lZeHpjT1NFNng4OXdOcW14TDNp?=
 =?utf-8?B?L3VxOVMxYTBNN01BbktUZERuYmxmdUFzSERmVktjTzIrbFppS2k2eldybHJ0?=
 =?utf-8?B?VXJPaGdNa0RzSFF5TWVpQ3BQWUlyeU91ZWJ1T0R1NDkwWUZyUGsxa29tVmZq?=
 =?utf-8?B?NlZnOFE0S2NOMDZUa29jZENVSVZpNVRGcWMwSkIwdG4rMUF4VFVMR21iSmZw?=
 =?utf-8?B?c3VGQlo3T1NoMFNQekprMVBnekZUSlF2Nmkza3VNTytiK2RxcnZROWdrLytk?=
 =?utf-8?B?ejNlVVhTNExtYzIrYzVmeXVMTjl6UmMxL1lnOCtqRlpuK0x6TGZQd1ZJZktl?=
 =?utf-8?B?c25oZkhZQXZVT1FOeFByblpJWmxNb2pzR2dGUndaRlFic2xNcU9IajRLRUgv?=
 =?utf-8?B?eTRaQVBISFQwY3p1bUFlOFg5MmNsNE1jVnpPaHplcmYxQ2F5Rzhud2tkTHg2?=
 =?utf-8?B?UXhDYjZsNElJK3VrU3lvWStId1AvTlFRaGxDL29ZK1RWZTUyczVlTXo1dXdl?=
 =?utf-8?B?SDhieGJsMXlxNTZ6a2FLVWFOZGxkOXpoUEN4RHpDd20rVXM5b2FyTkYxY3Bi?=
 =?utf-8?B?NXpmMWVKUlVha1I0M0NwNnI2YWU2U2YrWkVEd0ZTNkdiK1RoNmpaM3BTMW0z?=
 =?utf-8?B?akZUUEgyOGxxMTFFdmxhTDJBdnBYZVpnKzlVQkdINE5uYlQyRmdtVjZ5N1hu?=
 =?utf-8?B?RjlnRXJEOG1BSERSNWZWVFBPbkV4dVpSb2tTSXU1UVRTY3pRczkvMndadzF5?=
 =?utf-8?B?M1o0L09iaGROUnQ1VVlRdVFEd3FTQkF5QjIwZWRTeGpNemJqeTg1RnB5cCtS?=
 =?utf-8?B?blA0ajJvamlTaUR6aEkvSUZVeUNBbkF6b29LdjNtZzluZjMzWUJJQVF3MUlr?=
 =?utf-8?B?WW8zemdZKzdYdC9xcDg2dGZSVWcySzd1UFdKVzRzTW5KcjhZeXYrVDB2Wmkr?=
 =?utf-8?B?a01aTTdjWjJMaXlQZDJkSFJMeWh1N2cvbG01K0hKQTlmeXovUWsreHVURVRE?=
 =?utf-8?B?R2ZBczUyVCtFdVhsRFpCTCtSemdCL25mY216UzFURHBMZ2RFRVJadlNGdHpP?=
 =?utf-8?B?YXYrRWhHM3RxcTJhZHRzbnVINklGeWFpeVhSa1A5WGpGV2Zab1MxUmxmSlZM?=
 =?utf-8?B?ZEwwQzVtYkY4UC83UlJFN3daekUxU3NubXdvUHR5Y2VlTWl2VU1IQmlacDhs?=
 =?utf-8?B?bkFzWGR1NU1jdksvN1JHd2hHT2FQandCNmlqdVQ2RlZZcGFKbEZlTWNQQlZN?=
 =?utf-8?B?NHhrQUpaZ0hhUVBieGRWMFVESnVBT2ZpNzlIaDcxOXovUDJNV3R1bWpUb2Z2?=
 =?utf-8?B?Q09SNTlnZkpVVWxNaUdQS1FvNlZzc3NSdmo0d1pVNUZaNXFaQ05YajFYd1NY?=
 =?utf-8?B?cUozZHZKNkFSb0ZzNHNlRFUwQy9KRXNTb0NLS2d2eHJhcTMzcUQ3Y3BBYWM1?=
 =?utf-8?B?RkhNR1o5YTZ5bm1DLzVPK203dnQzZUFtOEkwdE1mbm1pVlh6dk0zV2NrWWRR?=
 =?utf-8?B?WDYyS0ZkZWd5QVo1VFBUNmsrbTF2YzJjK09ZZDZ0N3JrSkk5bTJNNDkyR3hx?=
 =?utf-8?B?RjJZd0V5Wm94UGRKeTZ2QnRIc2s2Y2NRbUV0Yk5rRXVnVGVQZzZtd2ZDNUw1?=
 =?utf-8?B?cW92MEM5by9Pd09ZQ3AyQWpCVWlqaHhIUXFuclIrY3Y3a0ZtVTlZV3F3OTR0?=
 =?utf-8?B?NmpCblFUVFEwZEhoOWo0MkhkeUJ3dThKbjF0NTByRHNYK3N1QVNYMXNqbzNy?=
 =?utf-8?B?MERxZkRQdGQyNm82bDRsWGdhYlhkenRRREUxOXpnYWZhcVFocUhOMkQ0MjVt?=
 =?utf-8?B?WmZwL3k5dUhmd295dlBmaTdMZ0hvUVR6cDlmdjEvZkxPbmRuSGVSZEY5K2dq?=
 =?utf-8?B?Skk0cUs2U0xLZk02blNWeXhRVDhhbVhiWE1tZTRqT3dBcTdUdlNJOE81ODhq?=
 =?utf-8?B?R3M1L2ZmV1U4UUhxcmlEcFBKamRuak41N1IzT3phMUZHNUpSUm9mc2tTVHI5?=
 =?utf-8?B?OHpldkhjaUJBZ1B6TnlpY3FGVURuVmVkOW5PclNkT09pSmdndXZZQ1BWV0hD?=
 =?utf-8?B?dDNxOEdSZEdlSmNXamR6UjlVTk5kNVdORUhXUDRaMDc1WUh0M3l3N1ltdVJ5?=
 =?utf-8?B?SDdPR2lJTkJ2WVVOck1rN1laSEJ6MTl0cWYyQ1N3NklrMlRRTXlaLy90dWxt?=
 =?utf-8?B?ZlE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <73C192D310B7FF4FA17BF0348EFD7B39@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0b4098a-d77d-4e5a-8b77-08dc1e509905
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jan 2024 09:24:29.2726 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gmziL1LpQfSGjuASzoZDZYMZyDqQpliZw+y5nxywn6GSNaaPlbNlQJnUBxhrF3Y6MSz9FSnplFgEzKaQMUgI6Z4GUSnrRbr91DORPSzqLuk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8665
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

T24gV2VkLCAyMDI0LTAxLTI0IGF0IDEwOjIyIC0wMzAwLCBHdXN0YXZvIFNvdXNhIHdyb3RlOg0K
PiBIaSwgTHVjYSENCg0KSGkgR3VzdGF2byENCg0KDQo+IFF1b3RpbmcgTHVjYSBDb2VsaG8gKDIw
MjQtMDEtMjQgMDU6NTI6MjktMDM6MDApDQo+ID4gVGhlIHBpcGVzIHRoYXQgY2FuIGJlIHVzZWQg
Zm9yIGVEUCBNU08gYXJlIGxpbWl0ZWQgdG8gcGlwZSBBIChhbmQNCj4gPiBzb21ldGltZXMgYWxz
byBwaXBlIEIpIG9ubHkgZm9yIGRpc3BsYXkgdmVyc2lvbiAyMCBhbmQgYmVsb3cuDQo+ID4gDQo+
ID4gTW9kaWZ5IHRoZSBmdW5jdGlvbiB0aGF0IHJldHVybnMgdGhlIHBpcGUgbWFzayBmb3IgZURQ
IE1TTyBzbyB0aGF0DQo+ID4gdGhlc2UgbGltaXRhdGlvbnMgb25seSBhcHBseSB0byB2ZXJzaW9u
IDIwIGFuZCBiZWxvdywgZW5hYmxpbmcgYWxsDQo+ID4gcGlwZXMgb3RoZXJ3aXNlLg0KPiA+IA0K
PiA+IEJzcGVjOiA2ODkyMw0KPiA+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwu
Y29tPg0KPiA+IENjOiBKYW1lcyBBdXNtdXMgPGphbWVzLmF1c211c0BpbnRlbC5jb20+DQo+ID4g
U2lnbmVkLW9mZi1ieTogTHVjYSBDb2VsaG8gPGx1Y2lhbm8uY29lbGhvQGludGVsLmNvbT4NCj4g
PiAtLS0NCj4gPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgOSAr
KysrKysrLS0NCj4gPiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0K
PiA+IGluZGV4IDkyMjE5NGI5NTdiZS4uNWM5OWFlMTQ4MjEzIDEwMDY0NA0KPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gQEAgLTIzMzYsMTMgKzIzMzYs
MTggQEAgc3RhdGljIHZvaWQgaW50ZWxfZGRpX3Bvd2VyX3VwX2xhbmVzKHN0cnVjdCBpbnRlbF9l
bmNvZGVyICplbmNvZGVyLA0KPiA+ICAgICAgICAgfQ0KPiA+IH0NCj4gPiANCj4gPiAtLyogU3Bs
aXR0ZXIgZW5hYmxlIGZvciBlRFAgTVNPIGlzIGxpbWl0ZWQgdG8gY2VydGFpbiBwaXBlcy4gKi8N
Cj4gPiArLyoNCj4gPiArICogU3BsaXR0ZXIgZW5hYmxlIGZvciBlRFAgTVNPIGlzIGxpbWl0ZWQg
dG8gY2VydGFpbiBwaXBlcywgb24gY2VydGFpbg0KPiA+ICsgKiBwbGF0Zm9ybXMuDQo+ID4gKyAq
Lw0KPiA+IHN0YXRpYyB1OCBpbnRlbF9kZGlfc3BsaXR0ZXJfcGlwZV9tYXNrKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1KQ0KPiA+IHsNCj4gPiAgICAgICAgIGlmIChJU19BTERFUkxBS0Vf
UChpOTE1KSkNCj4gDQo+IExvb2tzIGxpa2UgWGVfTFBEKyAoTVRMJ3MgZGlzcGxheSkgYW5kIFhl
Ml9MUEQgKExOTCdzIGRpc3BsYXkpIGJvdGggc3VwcG9ydCBib3RoDQo+IHBpcGVzIEEgYW5kIEIu
IEZvciBYZV9MUEQrIHdlIGhhdmUgdGhhdCBpbmZvIGluIEJTcGVjIDU1NDczIGFuZCBmb3IgWGUy
X0xQRCwgaW4NCj4gQlNwZWMgNjg5MjMuIFNvLCBJIHRoaW5rIHdlIGNvdWxkOg0KPiANCj4gICBh
LiBPUiB0aGUgY29uZGl0aW9uIGFib3ZlIHdpdGggSVNfRElTUExBWV9JUF9SQU5HRShpOTE1LCBJ
UF9WRVIoMTQsIDApLA0KPiAgICAgIElQX1ZFUigyMCwgMCkpLCBhbmQNCj4gICBiLiBBbmQgbWFr
ZSB0aGUgImVsc2UgaWYiIGJlbG93IGJlIGFib3V0IGRpc3BsYXkgdmVyc2lvbnMgYmVsb3cgMTQu
DQoNCk9rYXksIGJ1dCBJIGd1ZXNzIHdlIGhhdmUgbmV2ZXIgdGVzdGVkIHRoaXMgd2l0aCBNVEwg
YW5kIExOTCwgc28gY2FuIHdlDQpiZSBzdXJlIHdlIHdvbid0IGJyZWFrIGFueXRoaW5nPw0KDQpJ
biBhbnkgY2FzZSwgd2UgaGF2ZSBic3BlY3MgZm9yIHRoZXNlLCBzbyBJJ2xsIG1ha2UgdGhlIGNo
YW5nZSBhcyB5b3UNCnN1Z2dlc3RlZC4NCg0KPiBXaXRoIHRob3NlIGFkZGl0aW9ucywNCj4gDQo+
IFJldmlld2VkLWJ5OiBHdXN0YXZvIFNvdXNhIDxndXN0YXZvLnNvdXNhQGludGVsLmNvbT4NCg0K
VGhhbmtzIQ0KDQotLQ0KQ2hlZXJzLA0KTHVjYS4NCg==
