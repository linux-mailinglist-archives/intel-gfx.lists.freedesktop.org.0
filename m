Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3F089380C
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Apr 2024 07:08:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC36F10EE8B;
	Mon,  1 Apr 2024 05:08:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TSc1gRng";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2A6810EE8A
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Apr 2024 05:08:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711948117; x=1743484117;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=BJ6XCKpLfsHJWIKWStkH+/oiA65apxx+uIsq/kSuA4g=;
 b=TSc1gRngUL6oxN9/Z3dYoI7uy0YHVCfVCa5t40dXw1USe2gJ5XX0paNv
 58ZPSt1rwokW2LAnzOEx9CRFYfSjK+b4+AKCVV7fKG6BeHIsE9QdsA2p2
 qXd1ZzfLBvJg+CKFmLmRFgXbbBniUG01QqSQ7RD22yirQW3zjqbWruiUN
 1jMKoyySAkNbj5OY/pfivGK5RNbYgjdv0GYjjDmQycBm2Ofy/AFZkZYG7
 wUfzGILJr17LDxUg5UjM73Om1VWXoRWZm28EN+BPl27QTCj5y0xnB859V
 ZG7jNTUPKv5D/Ta7Y2r6dPuZaxLNOtyPJQxe6ZkI2Af5UUCAliZcMQfTW Q==;
X-CSE-ConnectionGUID: 3b90GsFQR5q4BLTfZl3tqQ==
X-CSE-MsgGUID: SMfOdh1pS6GhX0lLGLoKXw==
X-IronPort-AV: E=McAfee;i="6600,9927,11030"; a="18428865"
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="18428865"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2024 22:08:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="17677964"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Mar 2024 22:08:36 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 31 Mar 2024 22:08:35 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 31 Mar 2024 22:08:35 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 31 Mar 2024 22:08:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gy0d+Tm2Nu882jIL9PwUaYw74hAhZK3Db0rObr9/ZzplyFyZwVAYH+gsQgX05DFrfrMgpoJbapNFVas5YAxy1NuyBg2JfYP7fXigvRZplxzXG44fEiSxN3UAyl3iIAwdTcXu4E3k0spPC5PCs1JaJqPZdNulkN0foHTmuI6u00yeK9+eFqvEu2WxCfyJEu1/kBm3FJ698vXYnTsN7iqEfELVwTB9Ch60YArGbodSSwF9auiJNA5NFzD15iZ1KDAcjesC3EBpq/t0w3ghGgDSnNBY0uUEYUBDek81X9oW5dF33RR1WdOC/ALx1FMZbCTqCokrhqPpQeclLbUn98llrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BJ6XCKpLfsHJWIKWStkH+/oiA65apxx+uIsq/kSuA4g=;
 b=By9C03yY0+kaStSegzzCnMlwZaO/tRLBgA231q+7qqBTJzMp+DRlTO4foLH2ksP9i4yCj0X6Oi2iKAC1ZOm330MxTaRZm+FgVcs3bhuJQ9B8voAXckx1xfE7YNGaR4j7IzuAdk3rfyDPWbN9+VxWkYIrLN1ifguHgY5ObMv+7O2d1i7GtIP1u+bI3Tu2hbknEMsS1viM8FgVDaL/e3ubGpeww0UwwfOvt+mmJD3KBMR7ygOT9AcUvYeZm0c/TPGCRCCsk08ys5q8SsG7VEEftxrfhcjFeobJVC1HBzmBxcm9qE+41WecI3vmwwDlQDZIx2XY4v8oiL+Vmx8EWbqN5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SA1PR11MB8475.namprd11.prod.outlook.com (2603:10b6:806:3a3::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.24; Mon, 1 Apr
 2024 05:08:33 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7452.019; Mon, 1 Apr 2024
 05:08:33 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 22/22] drm/i915: Use debugfs_create_bool() for
 "i915_bigjoiner_force_enable"
Thread-Topic: [PATCH 22/22] drm/i915: Use debugfs_create_bool() for
 "i915_bigjoiner_force_enable"
Thread-Index: AQHagXZt1Q55kQB9VkWPT6Mh7t7uCbFS3xVA
Date: Mon, 1 Apr 2024 05:08:33 +0000
Message-ID: <IA0PR11MB7307E882FC942D1405D5834ABA3F2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
 <20240329011254.24160-23-ville.syrjala@linux.intel.com>
In-Reply-To: <20240329011254.24160-23-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SA1PR11MB8475:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rXKBD/rXT1h8mKXkb4fZVRmx9i6qXC8MPW5QgGy4ezkWdMemA9XwPzV4mT704O1bHJks/am1tl/SadGePTLkap0NuoVxPX00HuNbhNJe26WGCetnohwb00FWuoAwWEIlIV88OJuTDEHjZNIcmENJJs4YHk5yO9YdO7dXRN5TwRSP3fqKJyVpp89nFwo5+qrjTQNPdEm+nS2xVIa0IzM4zbnlTw/YFkagCniDwic4rIDXrVM7pkGEPkNCWEkqAaJ0l0A4XFULtxy+BaQ/Ozws653phfvU+3srojtjCBxM1Lyk6qM+p6ATnPqfEz4u49JZXJxwFVSUYqzhPx89OvvrxxYJxD2yZd26K47exNJ7u6llXrQEqr9JfAlJXcNjOvETylO99zB3md7wo39cf0hPQc4i9fApUmYcGJT+yFw6ncC1ogULDjW0T1LHW+D+DKJ8kmDl0XjQ33jhlTEEoaANGPVlSkCj/sQbllsTxWWzXYsUcCRrrcUUQIdO0Pqa8WqMm7Ib1ml9V2vYfc/eDje1i/hllKJ/Jly+DfQbRdxc4bARxy3CFGthyvCS4/n3VAmbO/IGzRMI2ADdyH+K7YKlpdQnqqDJ1Wm819gfWbx1hpdtFsZCm4hACycZcSs2hEdA6sO0IIjIq79gxeO/rMBR69X2raiF7N1N29CYx7O+Pnw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RUpBS2dTUjdKS0UydVNBbXJzY253V2tXZzd5SmFibE9sSHdPUUVmOHkwSFhL?=
 =?utf-8?B?L0FKWWRxeUtOM2J0cDRBdWRiTmZBZ1BwcEhUT21VQkdwTjdqKzVQT2l4ZWps?=
 =?utf-8?B?TWNlb1o1dWNKeXk0akR3UG11MUIxeGE5TjlaZHBIRWR1ZGl4T0pYdnNHVG9V?=
 =?utf-8?B?STFBS1BmZWZsSFQ2UTBkY0Q5THY0Nkw0R0xqZlV0TDZBd0JKdkhyRzcva3dh?=
 =?utf-8?B?cEwwa0lmcnJocDNJZ2Z0dE55NGFyVTJnSWJuNWR3dWp4N0lCbzA5dkxxWkJT?=
 =?utf-8?B?WUMzdlBKcHd0a1JoVzBEUXZFVitlOWsra3IwYkJxcndsRnVVRmlEUnpCbnVu?=
 =?utf-8?B?OU5yYkVTMitBMlhCLzBkZnJQWUU4OXdzUkxTaHVsa3hQNGZlZW5WQ2ZBNDJn?=
 =?utf-8?B?bjJpN1RyM1BFQlp4WVZLYjByN3hjSVBLY2V0RkthcXlReVVHMVZHM1hpWXdN?=
 =?utf-8?B?ZHJFMWZNWWtoVkRWOE82bUhvMjc2M1hzemxLQ3E4TVJORVJKOWhrQ005RHVr?=
 =?utf-8?B?MHNneFF2bW90ZEZpUk9xTUhBSVRaV1hkMXRzUXV3ek9nRFNFajRweTBlTzJJ?=
 =?utf-8?B?NWFQeHpqbjQ1UXk5cTJIdjVPVTc0aTVKd2MyZnBCbmh5M1ZVZUZoWW5jNlEr?=
 =?utf-8?B?Rk1saHhjcEFuK25McmNyOEhyQkl4dDZ5RmpjN0NaWk1rVTQyQitUKzh0ZURO?=
 =?utf-8?B?NlM0ZTJoWDJTaUhIejVwbmdVS2U1TkN4aTRFcHgrcFZGS1pSZWFCY2ltVnlo?=
 =?utf-8?B?MlU4K2JLcnpoWjluRUNXQy9ZQXFKTnU0aFl5Z0JlSUR3WGlveDE1MldCVVJn?=
 =?utf-8?B?MWRyNmM5L3BiVk1OeWVQQlJXYXpwN3JCRGVmNUdIUk1NSjJFUDFpVWhCZmNW?=
 =?utf-8?B?UGdaWm1RTGIzd0F2cWgzWG1nUUR2NXJIeUZwelpkVFJueDRTRnlISFZkQ0pY?=
 =?utf-8?B?T2p1dWFwTStGajl6THZOT0VubTVvVm54V1ZPMjVaWXNYTk5sTXBOVDdGak92?=
 =?utf-8?B?YUErMHh4ZFVMYngrVG5lWkF1bm14Z1RoZTBUNzRiMWRNc3RkZlRHVmlJZHZ1?=
 =?utf-8?B?ajdnOEdvODAxaTFiZHBCRUtWWUpPTDBxQ0FvZDFLTGJva3hJQ25CTlhRZkJ0?=
 =?utf-8?B?c0FNci9ZakFXK2xiUno3UXA0NXJvbXZ3a3BCV0VuTmxSWlhFbS9QUXVKaFhU?=
 =?utf-8?B?aU5uQXdqMk9iMG9jY3hzWUw4VDk0WkMwQUYxSWdRODVNQ3dYbjJLOHZ4RW5n?=
 =?utf-8?B?a3NtM3F0NForYUx6NFU2QVI5TGlQbWJCZDh4UlAyYjFKL1N5djRBSG1GQ0hX?=
 =?utf-8?B?ZUl5VytEWS9Ca283QjBGdTN0Ly96VnphalIxZ0Z4YWh5QkdJcUZJdno2N29X?=
 =?utf-8?B?elFxQlpLZVNNVFUyRnNGYTRUcUI2MDRzN3V0S3pQSHRRNDVOSlMzbnNYOGRK?=
 =?utf-8?B?WSswbGZvbTUwRWtSckRScEZsMDUyelN0V1ljOUJWbE10VXp2cXcxU25WN0lv?=
 =?utf-8?B?UTJITlRRQ2o4b3JYZ0pZME51QXJhWFVnMVlBNEV1U1BLcU5CcnVRZ2hSeHBR?=
 =?utf-8?B?Zzc0Q0dvck1qK1V3RTRYNW45ZnRDR1VLMjNGRmZXaVhFNHJwUFdia0lpRllz?=
 =?utf-8?B?Z0pGb05XVHdWakJyb2tHNG9acVZGUlR0VVdCLzg2ZWdNV28yRHlQS2FuR0Zq?=
 =?utf-8?B?Z1VVNEJEZkdBSGpnRk1vamNuN1ZrWDRvNjBQWDV3S3ZCbDVBNEN2bmQ2T0VX?=
 =?utf-8?B?ajg1ZFkvV2liZlZ2SFZFWm00dWwwSWJtNVkwaHdQR3pEVWxtQkk2UGNIK1Zr?=
 =?utf-8?B?T01BTVY3Z1JkUlE1NnhNcjZkWDFaK0cwZUxyZW9XZndvbEtWRGJpRmg5ZjV3?=
 =?utf-8?B?eWFPbGVwcklLOUovWTl1Tk5jbDNjMGdYUWlsWVhGSE5odGFtMll5ajdhOVFJ?=
 =?utf-8?B?alVWa3p1OGhUcDRJSWVNcFMwZlAyU2svaDJaTG1rUHMwMURFeTlCbUdHNHFT?=
 =?utf-8?B?eGcvOCtlSU9oa0ROYnAvaEZzZGcrODEvQkkvN2prRExoOVpYUWVhY0hsbVg5?=
 =?utf-8?B?YWM0K05yRHlxSXJ3THQ4N1dmSzlWMDNJb3hiSUR6MTliRWg0RlJ5cG1TZkdB?=
 =?utf-8?B?dDJJdzI2cG9RYkwyMzFESWdZc1B4R2R2N2xBaVo0YjBWdmJSYU1lWVE5emZi?=
 =?utf-8?Q?eddDDcF+AJXEdS/J3ec2T5aWkQI5b6qZnb35CrfdC06E?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e92246d-5094-4eee-3b70-08dc5209c7a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2024 05:08:33.6821 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hHcr/pIumEYOTh+6aEKjm1sXtMwukOPaXL1LCNjnv+JZqxPpIY4nRsyt4RroD/9dkhQ8OuccY0T3K0IZyFR5/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8475
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

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8aW50ZWwt
Z2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUNCj4g
U3lyamFsYQ0KPiBTZW50OiBGcmlkYXksIE1hcmNoIDI5LCAyMDI0IDY6NDMgQU0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDIyLzIyXSBk
cm0vaTkxNTogVXNlIGRlYnVnZnNfY3JlYXRlX2Jvb2woKSBmb3INCj4gImk5MTVfYmlnam9pbmVy
X2ZvcmNlX2VuYWJsZSINCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBUaGVyZSBpcyBubyByZWFzb24gdG8gbWFrZSB0aGlz
IGRlYnVnZnMgZmlsZSBmb3IgYSBzaW1wbGUgYm9vbGVhbiBzbw0KPiBjb21wbGljYXRlZC4gSnVz
dCB1c2UgZGVidWdmc19jcmVhdGVfYm9vbCgpLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NClJldmlld2VkLWJ5OiBB
cnVuIFIgTXVydGh5IDxhcnVuLnIubXVydGh5QGludGVsLmNvbT4NCg0KVGhhbmtzIGFuZCBSZWdh
cmRzLA0KQXJ1biBSIE11cnRoeQ0KLS0tLS0tLS0tLS0tLS0tLS0tLQ0KDQo+IC0tLQ0KPiAgLi4u
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMgIHwgNDQgKy0tLS0tLS0t
LS0tLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNDIgZGVsZXRp
b25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X2RlYnVnZnMuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMNCj4gaW5kZXggYjk5YzAyNGIwOTM0Li4zZTM2NDg5MWRj
ZDAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV9kZWJ1Z2ZzLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X2RlYnVnZnMuYw0KPiBAQCAtMTQwMiwyMCArMTQwMiw2IEBAIG91dDoJZHJtX21v
ZGVzZXRfdW5sb2NrKCZpOTE1LQ0KPiA+ZHJtLm1vZGVfY29uZmlnLmNvbm5lY3Rpb25fbXV0ZXgp
Ow0KPiAgCXJldHVybiByZXQ7DQo+ICB9DQo+IA0KPiAtc3RhdGljIGludCBpOTE1X2JpZ2pvaW5l
cl9lbmFibGVfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKmRhdGEpIC17DQo+IC0Jc3Ry
dWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yID0gbS0+cHJpdmF0ZTsNCj4gLQlzdHJ1Y3Qg
ZHJtX2NydGMgKmNydGM7DQo+IC0NCj4gLQljcnRjID0gY29ubmVjdG9yLT5iYXNlLnN0YXRlLT5j
cnRjOw0KPiAtCWlmIChjb25uZWN0b3ItPmJhc2Uuc3RhdHVzICE9IGNvbm5lY3Rvcl9zdGF0dXNf
Y29ubmVjdGVkIHx8ICFjcnRjKQ0KPiAtCQlyZXR1cm4gLUVOT0RFVjsNCj4gLQ0KPiAtCXNlcV9w
cmludGYobSwgIkJpZ2pvaW5lciBlbmFibGU6ICVkXG4iLCBjb25uZWN0b3ItDQo+ID5mb3JjZV9i
aWdqb2luZXJfZW5hYmxlKTsNCj4gLQ0KPiAtCXJldHVybiAwOw0KPiAtfQ0KPiAtDQo+ICBzdGF0
aWMgc3NpemVfdCBpOTE1X2RzY19vdXRwdXRfZm9ybWF0X3dyaXRlKHN0cnVjdCBmaWxlICpmaWxl
LA0KPiAgCQkJCQkgICAgY29uc3QgY2hhciBfX3VzZXIgKnVidWYsDQo+ICAJCQkJCSAgICBzaXpl
X3QgbGVuLCBsb2ZmX3QgKm9mZnApDQo+IEBAIC0xNDM3LDMwICsxNDIzLDYgQEAgc3RhdGljIHNz
aXplX3QgaTkxNV9kc2Nfb3V0cHV0X2Zvcm1hdF93cml0ZShzdHJ1Y3QNCj4gZmlsZSAqZmlsZSwN
Cj4gIAlyZXR1cm4gbGVuOw0KPiAgfQ0KPiANCj4gLXN0YXRpYyBzc2l6ZV90IGk5MTVfYmlnam9p
bmVyX2VuYWJsZV93cml0ZShzdHJ1Y3QgZmlsZSAqZmlsZSwNCj4gLQkJCQkJICAgY29uc3QgY2hh
ciBfX3VzZXIgKnVidWYsDQo+IC0JCQkJCSAgIHNpemVfdCBsZW4sIGxvZmZfdCAqb2ZmcCkNCj4g
LXsNCj4gLQlzdHJ1Y3Qgc2VxX2ZpbGUgKm0gPSBmaWxlLT5wcml2YXRlX2RhdGE7DQo+IC0Jc3Ry
dWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yID0gbS0+cHJpdmF0ZTsNCj4gLQlzdHJ1Y3Qg
ZHJtX2NydGMgKmNydGM7DQo+IC0JYm9vbCBiaWdqb2luZXJfZW4gPSAwOw0KPiAtCWludCByZXQ7
DQo+IC0NCj4gLQljcnRjID0gY29ubmVjdG9yLT5iYXNlLnN0YXRlLT5jcnRjOw0KPiAtCWlmIChj
b25uZWN0b3ItPmJhc2Uuc3RhdHVzICE9IGNvbm5lY3Rvcl9zdGF0dXNfY29ubmVjdGVkIHx8ICFj
cnRjKQ0KPiAtCQlyZXR1cm4gLUVOT0RFVjsNCj4gLQ0KPiAtCXJldCA9IGtzdHJ0b2Jvb2xfZnJv
bV91c2VyKHVidWYsIGxlbiwgJmJpZ2pvaW5lcl9lbik7DQo+IC0JaWYgKHJldCA8IDApDQo+IC0J
CXJldHVybiByZXQ7DQo+IC0NCj4gLQljb25uZWN0b3ItPmZvcmNlX2JpZ2pvaW5lcl9lbmFibGUg
PSBiaWdqb2luZXJfZW47DQo+IC0JKm9mZnAgKz0gbGVuOw0KPiAtDQo+IC0JcmV0dXJuIGxlbjsN
Cj4gLX0NCj4gLQ0KPiAgc3RhdGljIGludCBpOTE1X2RzY19vdXRwdXRfZm9ybWF0X29wZW4oc3Ry
dWN0IGlub2RlICppbm9kZSwNCj4gIAkJCQkgICAgICAgc3RydWN0IGZpbGUgKmZpbGUpDQo+ICB7
DQo+IEBAIC0xNTU0LDggKzE1MTYsNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGZpbGVfb3BlcmF0
aW9ucw0KPiBpOTE1X2RzY19mcmFjdGlvbmFsX2JwcF9mb3BzID0gew0KPiAgCS53cml0ZSA9IGk5
MTVfZHNjX2ZyYWN0aW9uYWxfYnBwX3dyaXRlICB9Ow0KPiANCj4gLURFRklORV9TSE9XX1NUT1JF
X0FUVFJJQlVURShpOTE1X2JpZ2pvaW5lcl9lbmFibGUpOw0KPiAtDQo+ICAvKg0KPiAgICogUmV0
dXJucyB0aGUgQ3VycmVudCBDUlRDJ3MgYnBjLg0KPiAgICogRXhhbXBsZSB1c2FnZTogY2F0IC9z
eXMva2VybmVsL2RlYnVnL2RyaS8wL2NydGMtMC9pOTE1X2N1cnJlbnRfYnBjDQo+IEBAIC0xNjQw
LDggKzE2MDAsOCBAQCB2b2lkIGludGVsX2Nvbm5lY3Rvcl9kZWJ1Z2ZzX2FkZChzdHJ1Y3QNCj4g
aW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpDQo+ICAJaWYgKERJU1BMQVlfVkVSKGk5MTUpID49
IDExICYmDQo+ICAJICAgIChjb25uZWN0b3JfdHlwZSA9PSBEUk1fTU9ERV9DT05ORUNUT1JfRGlz
cGxheVBvcnQgfHwNCj4gIAkgICAgIGNvbm5lY3Rvcl90eXBlID09IERSTV9NT0RFX0NPTk5FQ1RP
Ul9lRFApKSB7DQo+IC0JCWRlYnVnZnNfY3JlYXRlX2ZpbGUoImk5MTVfYmlnam9pbmVyX2ZvcmNl
X2VuYWJsZSIsIDA2NDQsIHJvb3QsDQo+IC0JCQkJICAgIGNvbm5lY3RvciwgJmk5MTVfYmlnam9p
bmVyX2VuYWJsZV9mb3BzKTsNCj4gKwkJZGVidWdmc19jcmVhdGVfYm9vbCgiaTkxNV9iaWdqb2lu
ZXJfZm9yY2VfZW5hYmxlIiwgMDY0NCwNCj4gcm9vdCwNCj4gKwkJCQkgICAgJmNvbm5lY3Rvci0+
Zm9yY2VfYmlnam9pbmVyX2VuYWJsZSk7DQo+ICAJfQ0KPiANCj4gIAlpZiAoY29ubmVjdG9yX3R5
cGUgPT0gRFJNX01PREVfQ09OTkVDVE9SX0RTSSB8fA0KPiAtLQ0KPiAyLjQzLjINCg0K
