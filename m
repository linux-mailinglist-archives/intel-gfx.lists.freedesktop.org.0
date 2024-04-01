Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59AEE893879
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Apr 2024 08:46:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39D5C10EF0F;
	Mon,  1 Apr 2024 06:46:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jWjr2wlA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A314910EF0F
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Apr 2024 06:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711953986; x=1743489986;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=lE0M3sgYnll05QqoZP0rvNVQ675D4rz56n/PqvixqEM=;
 b=jWjr2wlAZpZou3ToXDuA9ArX9DkfFfSZAOZEfT97oqBC48bNDrKZr6aQ
 GfRyauvn1YoIe9oj0AxMfx8gzo3Gu8atLG8cpDg7PcUBuws8ZkHHGdQxT
 pTS2BBMWYpl5LynE8t1Y45E+xyuaWruiW/SLrWYWzskeadJXbiM0lNsfG
 QvSnOHzvDAP06an+0i3lGvEzvnism7UBVeIVuzAeO/pAYCnslEXE4sr6H
 5O6XQXB522Hb/H+zaLaq5ZVTBnU6EMk5VJBGjcgz5W9aZtQPFjRCkAIB5
 nU6xbQGUZUHh8Hlnboze+kNfEEd7rXoKhuNu6Z9/1ZCFHozFFi++5M0Gn g==;
X-CSE-ConnectionGUID: ne27YFL2RCuX2FYyLvv/SQ==
X-CSE-MsgGUID: kMLoGaZXTbqd1QOB1myE+A==
X-IronPort-AV: E=McAfee;i="6600,9927,11030"; a="7217061"
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; 
   d="scan'208";a="7217061"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2024 23:46:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="17483144"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Mar 2024 23:46:23 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 31 Mar 2024 23:46:22 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 31 Mar 2024 23:46:22 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 31 Mar 2024 23:46:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dsMO2s56j5OcJW9iWRSwaeEhYNgS5F+NhwlOTvzUbn+hYwFnZB6AkjYNfalJIn1RocX4m0iTMOKeKZOCNdSZ45M+PjApW9S9y9BG02btj2w1XBNRxTLf7E9f/2xSYQ30k7yo34KDJQOK9wjN9rn9RmvkhzFS6QDfsnQupwuuiJng9fSpTPegimJqmjryXOso9rXGVELCXyiu/cEV6UR9j0kmwbS+S8UL3yuglsQAR++jytdwlUFlULKH3ip27+2gY9doNSam+PjUNx+tiTLqsukszLLO7Kftnpu8esHDismElHtlC/x8l7KUGcg4+lHZziLICtlvmZWu/xtfMwuWaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lE0M3sgYnll05QqoZP0rvNVQ675D4rz56n/PqvixqEM=;
 b=dVDyKM4p+9L1mYh7u/G3Zzs8A5RMdjWryRkuPoAj5KWKdLCO/NyIHIXxYFHrOVtvFMsxVgW2uzK5g44R4sQy5xHiWUnfEoktAfrfHXf9ybCKgTINqdc2NFfdmxP9e70ykWMAaw2FHSdd2yqMa6SSCjKfyq49XRuOHdOeWal8Nn2eaamFgo3HbFUj085UU2u1UozPFy5WZr74KO6X2mv7001HKiREo5xBAIXiMJpxloPaOGcEa7NEmXEEeRQy6JKZ4myuywyVad6OG8P+5iDJXSZKAhVRL1lVlO8BmlTovcFgICw2qwokqpHeYJPd/EhPhwBLZ9eLTsKayOuv9cuXtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SA1PR11MB8593.namprd11.prod.outlook.com (2603:10b6:806:3ab::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Mon, 1 Apr
 2024 06:46:20 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7452.019; Mon, 1 Apr 2024
 06:46:20 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 18/22] drm/i915: Handle joined pipes inside
 hsw_crtc_disable()
Thread-Topic: [PATCH 18/22] drm/i915: Handle joined pipes inside
 hsw_crtc_disable()
Thread-Index: AQHagXZqY2/kzeK8dUas92L6DLrvg7FS+mKg
Date: Mon, 1 Apr 2024 06:46:20 +0000
Message-ID: <IA0PR11MB7307310C4E64AD31007F2DCFBA3F2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
 <20240329011254.24160-19-ville.syrjala@linux.intel.com>
In-Reply-To: <20240329011254.24160-19-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SA1PR11MB8593:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dxJtiCuhF9QjBs7igIC7brGuY3MTPywgm2HLAVtBR7KLID7gdOhvRh7ojpFud8XhyapIBjOLI9nj+zr4p2GboKNAvZBVC4siYKaYO/hszYNDskqtqvrv5wETfzAwL3beWwfhYe+mgmWfhL2gi3RScJheC4Uo/I+/Olu4T6Nk+5uKuMWb1PMuvlwK0hbMpaNSe4f+FdZcNLr03SGchhTx5GJmQT51Y6k+M3b6pztk7xBljZv5ERlDgLXpEvci11aDY869ENoaqVnATIfTJo1aNYX4yF+huOcAC3uyEPHh9jPXdFxd2qfMhXwkSEj854LtlqHUzGrBG3hlB46MXWvfN6wphbVPMzDMOdK5mias9+6KHq/g0dHR1z/SGZEsOwF+MvsEjSZL4XN59mcRjJyO6kpH5NOOQurfSgIpkjYb3aHskRMFEGdNRpqCyRIvJavL5O1Dmf+W/NmqMb+rtB6XSsQ1GFL5NDtENiDanMqrdb4CgNQFGOaXhQOWZu19mW6rZ1otnxZJI62mMXLNX97iNHL8rx7hBk+6dJgYb0ym07kkSSYnHd+LCqByWUg2OE0hDgrCGkiet0L5ItahnQBT8RYxyYtH0tnX04sU8v4URwI/Z1UJijAHRVsl0GhVxdf3bj5eAy01RLA9om8Q3GRtjcAmxhGBVGRFO1ZBJt+J0a8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aEh1c24xOTl2VWNYVmwzenJjUW9EL2lVYTNDUWVIOHRMaFp1OHNUVDBybnpt?=
 =?utf-8?B?clQ1aE1zdVlONGxRaUFFWCs2cytlREVpakJJL0s2Vng4L2ZGUXNZK2xweXVk?=
 =?utf-8?B?cHVaY0NndFYwNzJydFBWazdzWkkwZW1PSFVlNlR5OUdqNytaV1g3ZFdreWN3?=
 =?utf-8?B?N1dvam5xTHoxODI2M1V3VTViSmZHUmR6ckVJbGRVbXhFYnJHWnA1SGhWbnhu?=
 =?utf-8?B?Uy9tM2x0K3hZMEVUbDF5V0VRSG83QkVJckZBVjhLU1M3aU4wRXViU2NVUHJZ?=
 =?utf-8?B?WVdQbzJXUnh5WFUzV2wwdm1XbjNUTldWQU5JZFhsempMVGtlTE1DMFVUbklu?=
 =?utf-8?B?Y1hVKzlVSGxIdmI2TDlzTW94cWEzRDBvTEh0Rm5pKytDbWtmdjk5cnN5OTFR?=
 =?utf-8?B?b0E5WWE2elhLVzQrakpLVzJSd1NNTGo4UUxqOUFzbU9Ed01nSng1TnhsdFdo?=
 =?utf-8?B?dDFoVHNPWFVncjF3TjBwMDROaDM4K2ViU0M5SnU1anZqc0FqOXVFQ1pNWDFk?=
 =?utf-8?B?c0Nub1hnTmgwRWN0M0puWllNa29TbGFTVlJlVTMreUxWVVNkUmsyVUVOQW5h?=
 =?utf-8?B?NDhES09OQzl2bXBkeDFxZUhvM1QwKzY4MmdMdWRTUUFWd3g5YnpaYTNoNE5m?=
 =?utf-8?B?cGUxRDFpL1M1SStlaWVEN2lwY25nenBwbE0vMnQrd3dseHAyMmJWbjY1VlZB?=
 =?utf-8?B?TEUvUUVaZm8zZGZycmFRb3B3azFIM3BEeFQzMkl6SldGTmcydC83Z2lwanJm?=
 =?utf-8?B?c0J1ZXZDb1R2MjVQNWJFZE5EYWFLTWZMYS9qVDNkc0xzMzB6a1M5Tm9oVXc2?=
 =?utf-8?B?RVVIeW5QbE05QkJFOE1TbzIrYVlCYmZyeFR3d245TWFZNHJQU21HUlBqeHBT?=
 =?utf-8?B?b243Z2Y0ZjdGYythck9BL0s5MEo2UG9QR2dQYTNsa3MrZ3pGcDdCZng3Szkv?=
 =?utf-8?B?T0FyY3ZRQVNlQWxtK2xVRnRmQUJ1NVU1eFhaeC85TE5PSmV2SjJBSGdUdG1R?=
 =?utf-8?B?d3czMm0yS1FXUGZvWnFyRHZyb01Yait3dDlkOXdqR2dyVkVqWnhHS3RMMzJp?=
 =?utf-8?B?ODlWWGp4NllheHFXb0pWM0pIQ0hiSHE5VHVFelJoZ0xPOWNUcVAyZ2xkaHdY?=
 =?utf-8?B?Z0Q0TlVOYzN4NEFuQXB5VzNKOVNEQ2tHeC9YRTVqQlRpcVQ0a2YzMGo2ZVZm?=
 =?utf-8?B?RGpITzZMTWozbDUrNllYcTNIem1xZ0s3TXNYRld2Q2dyeFJUR2oxdXpvRUU5?=
 =?utf-8?B?KzFqek92UEg0UGsyR24vTUFZV3Z2ZzFLQytLVFhPZzJubEtjZm52WHFSMXV4?=
 =?utf-8?B?N1VYN2VQNXJsc0lJdnFLQUkrYUY1cWFDVnJDM1FxOENxTG11WUwrS092ekI0?=
 =?utf-8?B?bmlaMXk1cmMzWEUwdkRvdGFUSU1WWW5iNVA0TGY4OGxwcEtDUnJJak9aZThP?=
 =?utf-8?B?azZmbkhMbHZydnVXS2pZL1Bmem96eUgvdkVNMFJvUDV3Ujc0ZlBtZllxams1?=
 =?utf-8?B?eGRKSmZRUFFQOVptM0lNbDkwc0o5VWhDeFV2bCt2ZTN6dkdQeXlWcnJPNm1j?=
 =?utf-8?B?NEhOWFhNaVJKOXBrQ0luSjVnWFRXdmttTlNOeHpVQ0lNeGFrTTZIcktWUDF0?=
 =?utf-8?B?emhVVkhjREVCNlRHbmRWNVVrczgvaDl0RE83cEUwQkV4WkliTmdRWGtXZVZs?=
 =?utf-8?B?bWJUUTNSYmc4MnArSVJHei9wbVhhZ2FVVkt2NFZQL3oraFdRQnY2SjlIdEFa?=
 =?utf-8?B?ZWlHN3RMZkc2WlhGdTZwLzZHQzZYMnlkL1hOUmt0VWUvTFFCTjhSODNock5V?=
 =?utf-8?B?andTZ1dmbFVYajBqc2pNUkJOemt3TFRCQk4wM3V3eEZjSjFRR0NCRGxVeitm?=
 =?utf-8?B?MHgvZjJJV0tjWTduTXBDblMzdE1hMlIxcnMrS0ZTekFxbFVNOGVNVzhMUXhr?=
 =?utf-8?B?MjM5WVVYMXpFY1NSRmwwWkdTaVQvYk1IYmVBWTFzcjZIaS9BUVNRYm9EWkFK?=
 =?utf-8?B?eVA5S1JUbHBEMUk4eGFKc2hIRGVYYW1IdmF0cXZEQm85TzlsQU4wOW05dkM4?=
 =?utf-8?B?bm5VQTZLZWs5NmNkR2tYWElBZ0l0QlQ5cXh0eGlWY052UzZhMHpNM29VVGdB?=
 =?utf-8?B?dnVuOWZXUTlRWml0c05vY09SK2VzT0hJbk5sT2xra3dTMG1Od1VDeUpQM083?=
 =?utf-8?Q?QBrmJNUe33YxHooo3oq80b1BCDTRa5fIEFP9E3KGQ5BD?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cc65d83-228c-4c33-4fb7-08dc52177094
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2024 06:46:20.6073 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8OzqJ1OuiIdv9nBA6zE4uyJz5Q9idgOZIWc8jGmLP44Ft4k3SS6bnnn9PJcjLlMkSrxsnbNlk+K7ProGVJRv5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8593
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
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDE4LzIyXSBk
cm0vaTkxNTogSGFuZGxlIGpvaW5lZCBwaXBlcyBpbnNpZGUgaHN3X2NydGNfZGlzYWJsZSgpDQo+
IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pg0KPiANCj4gUmVvcmdhbml6ZSB0aGUgY3J0YyBkaXNhYmxlIHBhdGggdG8gb25seSBkZWFsIHdp
dGggdGhlIG1hc3RlciBwaXBlcy90cmFuc2NvZGVycw0KPiBpbiBpbnRlbF9vbGRfY3J0Y19zdGF0
ZV9kaXNhYmxlcygpIGFuZCBvZmZsb2FkIHRoZSBoYW5kbGluZyBvZiBqb2luZWQgcGlwZXMgdG8N
Cj4gaHN3X2NydGNfZGlzYWJsZSgpLg0KPiBUaGlzIG1ha2VzIHRoZSB3aG9sZSB0aGluZyBtdWNo
IG1vcmUgc2Vuc2libGUgc2luY2Ugd2UgY2FuIGFjdHVhbGx5IGNvbnRyb2wNCj4gdGhlIG9yZGVy
IGluIHdoaWNoIHdlIGRvIHRoZSBwZXItcGlwZSB2cy4NCj4gcGVyLXRyYW5zY29kZXIgbW9kZXNl
dCBzdGVwcy4NCj4gDQo+IHYyOiBVc2UgdGhlIG5hbWUgJ3BpcGVfY3J0YycgZm9yIHRoZSBwZXIt
cGlwZSBjcnRjIHBvaW50ZXINCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA2NCArKysrKysrKysrKystLS0tLS0tLQ0K
PiAgMSBmaWxlIGNoYW5nZWQsIDM5IGluc2VydGlvbnMoKyksIDI1IGRlbGV0aW9ucygtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4g
aW5kZXggNThlZTQwNzg2ZDVjLi5jMTVlYTA0NmM2MmEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC0xNzkxLDI5ICsxNzkxLDI4
IEBAIHN0YXRpYyB2b2lkIGhzd19jcnRjX2Rpc2FibGUoc3RydWN0DQo+IGludGVsX2F0b21pY19z
dGF0ZSAqc3RhdGUsDQo+ICAJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRj
X3N0YXRlID0NCj4gIAkJaW50ZWxfYXRvbWljX2dldF9vbGRfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0
Yyk7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGNydGMtPmJh
c2UuZGV2KTsNCj4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqcGlwZV9jcnRjOw0KPiANCj4gIAkvKg0K
PiAgCSAqIEZJWE1FIGNvbGxhcHNlIGV2ZXJ5dGhpbmcgdG8gb25lIGhvb2suDQo+ICAJICogTmVl
ZCBjYXJlIHdpdGggbXN0LT5kZGkgaW50ZXJhY3Rpb25zLg0KPiAgCSAqLw0KPiAtCWlmICghaW50
ZWxfY3J0Y19pc19iaWdqb2luZXJfc2xhdmUob2xkX2NydGNfc3RhdGUpKSB7DQo+IC0JCWludGVs
X2VuY29kZXJzX2Rpc2FibGUoc3RhdGUsIGNydGMpOw0KPiAtCQlpbnRlbF9lbmNvZGVyc19wb3N0
X2Rpc2FibGUoc3RhdGUsIGNydGMpOw0KPiAtCX0NCj4gLQ0KPiAtCWludGVsX2Rpc2FibGVfc2hh
cmVkX2RwbGwob2xkX2NydGNfc3RhdGUpOw0KPiArCWludGVsX2VuY29kZXJzX2Rpc2FibGUoc3Rh
dGUsIGNydGMpOw0KPiArCWludGVsX2VuY29kZXJzX3Bvc3RfZGlzYWJsZShzdGF0ZSwgY3J0Yyk7
DQo+IA0KPiAtCWlmICghaW50ZWxfY3J0Y19pc19iaWdqb2luZXJfc2xhdmUob2xkX2NydGNfc3Rh
dGUpKSB7DQo+IC0JCXN0cnVjdCBpbnRlbF9jcnRjICpzbGF2ZV9jcnRjOw0KPiArCWZvcl9lYWNo
X2ludGVsX2NydGNfaW5fcGlwZV9tYXNrKCZpOTE1LT5kcm0sIHBpcGVfY3J0YywNCj4gKw0KPiBp
bnRlbF9jcnRjX2pvaW5lZF9waXBlX21hc2sob2xkX2NydGNfc3RhdGUpKSB7DQo+ICsJCWNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfcGlwZV9jcnRjX3N0YXRlID0NCj4gKwkJCWlu
dGVsX2F0b21pY19nZXRfb2xkX2NydGNfc3RhdGUoc3RhdGUsIHBpcGVfY3J0Yyk7DQo+IA0KPiAt
CQlpbnRlbF9lbmNvZGVyc19wb3N0X3BsbF9kaXNhYmxlKHN0YXRlLCBjcnRjKTsNCj4gKwkJaW50
ZWxfZGlzYWJsZV9zaGFyZWRfZHBsbChvbGRfcGlwZV9jcnRjX3N0YXRlKTsNCj4gKwl9DQoNCkFz
IHBlciB0aGUgc2VxdWVuY2UgaXMgY29uc2lkZXJlZCwgc2hvdWxkIHRoZSBwbGwgYmUgZGlzYWJs
ZWQgcHJpb3IgdG8gZGlzYWJsaW5nIHRoZSBlbmNvZGVycyBhbmQgdGhlbiBmb2xsb3dlZCBieSBw
b3N0X3BsbF9kaXNhYmxlPw0KDQpUaGFua3MgYW5kIFJlZ2FyZHMsDQpBcnVuIFIgTXVydGh5DQot
LS0tLS0tLS0tLS0tLS0tLS0tLQ0K
