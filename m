Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7FD89A1B7
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 17:47:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4B6A113C6A;
	Fri,  5 Apr 2024 15:47:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jQLT0muZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57697113C6A
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 15:47:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712332023; x=1743868023;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Yzen8dmcIisfF+hq1djQbiO0LCIaURaFlTfS6feT9iM=;
 b=jQLT0muZMqGDfofa83NderTvJW0nflwDJnxaRvHmXzAhhD+1j4OenkV9
 IrqAlH30B3x3J8n8YzyzZfbGzG+0XwRpj/2D+7vjApVrQcT519soL3ay6
 DgY+cBNKygcPdcjHaqjEEN92DDOjs1rAu8LoHg8bCQszpROlzaxr4Rfbv
 j6QJxX8iemWhCjrKo9ntHA5/DJaDDV1rFlZdbl4JJpmFJUiyLfdn0sqKa
 hYn3j/STKo/W8M1NJ6/YvmIDYZb0FN++lWEduTk57oc8H7l3Nbti/842u
 RyCGBQAGE3NpYwtX1ZRq2YzCkucJiBNS0Ysm+LFqxibQYZquVlHfxWOkA Q==;
X-CSE-ConnectionGUID: M6vQcV3nR3an5eR+eMr/zg==
X-CSE-MsgGUID: ddkUzrQqR2S8hJI5Z6eaVQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11035"; a="25108019"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="25108019"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 08:45:38 -0700
X-CSE-ConnectionGUID: wx1eTAz0RwaRD1ZomMaSUw==
X-CSE-MsgGUID: H796DVMzQVy84dADR8wf7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="23681227"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Apr 2024 08:45:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Apr 2024 08:45:37 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 5 Apr 2024 08:45:37 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 5 Apr 2024 08:45:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FRWRE6c9gVHHy+nx/+Hpds6EqeeR44KnOjK3VRC5bNb/OZxOD6Qz2Deo7vUdbwGlML6NAXPfMYpJWZ39yGXRUXbk0sS9jnqtex9RT7gsXwNmdXdVnX1MKjVXI/6FycaJge5YqqcQ6VuX1bXc4IvIaZWALnn3GhZEB7RXZ4cfdumX+5yHOcg+DAcyTyBshCWTvf64F29kys6yrg+CdYyz31BNOLQ9++LryhWQDFIvA/y5K1GLWySyNEw9axBwC8Tr4CCsuEQpkR3PKnVLxdS8y+uTLyj+H08dxp1JP6ORCWbI2hsOmUQRbyd/ppI5vIozXOUHLENqTEncdE1jix2LoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Yzen8dmcIisfF+hq1djQbiO0LCIaURaFlTfS6feT9iM=;
 b=eqEnAfuG47H3j8Cxqkf4FH2rgoFFM9j7mBwNGbm1FiGvVKZgkD7t/aXbKihbPTs1ip1tGK+RYNb7EXDiCiLY1BKPRQME1ie2Cy/JYxVxeIO8E+/vHRCD3DlwGZLZItLG4HSudO3rG+yOVNKXfmMOjUN9r0ll1ZnHQbneJhirlCLTb2WANO4qDlBZV/sDYw5fZngDYPP5kX2JrgdsU5QmAdfgX9QKoWEEbmGs1sl+dXxDDsKRw+1eJMAuh4Ugm5glui1a2qP4TPOcC3phlX9iQsnOGCSw+tr2W+8rc2eXr6a/Gyk/mGueswc6wteDhA/zrD9ondrIZD17JjCN3DpLcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by DS7PR11MB5966.namprd11.prod.outlook.com (2603:10b6:8:71::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7452.25; Fri, 5 Apr 2024 15:45:33 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7452.019; Fri, 5 Apr 2024
 15:45:33 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v2 02/17] drm/i915/psr: Disable PSR when bigjoiner is used
Thread-Topic: [PATCH v2 02/17] drm/i915/psr: Disable PSR when bigjoiner is used
Thread-Index: AQHahtf/mfMerDeStEKYsyEuoSKFRLFZP7UAgABkkCCAAC5zcA==
Date: Fri, 5 Apr 2024 15:45:33 +0000
Message-ID: <IA0PR11MB7307AAA2825881EA1237292CBA032@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
 <20240404213441.17637-3-ville.syrjala@linux.intel.com>
 <2a410df93d112ec9881419820baaf4d3ffd4ee7d.camel@intel.com>
 <IA0PR11MB7307E7D70EC3B3865F645BCBBA032@IA0PR11MB7307.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB7307E7D70EC3B3865F645BCBBA032@IA0PR11MB7307.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|DS7PR11MB5966:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VdsGMV3owokVXHZKeS2a6W7nIP2A49FZxtBwJaaaxuDLabajJmnYL4zBougO1yuq66Xfs6St/enUiHN8rDQzj64hgUhLOJRcjc31cn3TdDXz3vlqfcn4wpRT/Pj+l0rkO5HJ6/OaiiHP/Rjp7YR80lwTEoG+tYb+lhhyCdimWHV9yUw2DKY5POHCP+3IN5WD4dltFu3qEr15vyQtE4TykvWQYkmmgWkm7SFVcj52vBpubbNPn1G4ifmbqE3hYrTVgv+xwWVb82JRDTSKxEXhk7OydC5zMrmAzr8xD0+bTfm1kr/YTy0vBrEVgZiWL1qgMU5yi4VBWEK5FztToZP7BsvJtAJfzfkS24zi4XPRNgVXo/38YMS33Cuhvr1SpomlTGos2xQhgvzRiOF/Fzd1fymjRJxPWNXAQc1vfs8sVCuIDTSxqaTwmOoNTR72nLB8R2RpFRUzTqRC4X+SGh9Q9DKDH+KQXssKCCe7sqMuTJ7s00TSwrUHmE6dgusJ7uiviH8JdeXa8tnjlquwxbqxjjLek4CxLfW4UeFAWN3/2v3rxiandZfmg+SX17kyg3A+SwV2siG30lGQzV0sg+K/JrO9Q3iYleLNZSZeD0C0Jny91Qv684B7Vrbi92CYm0H6R0NSH7Pnvn8jNunnmCatjReaYBalmT8f+MahbnTCnQ8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aU5lcTFFSXFUM0RsbHF1VUNSTmRobHBjV0NVTjJzSUtLV3Z6TWh3bXNlZENS?=
 =?utf-8?B?NmR3emZDUkhCTDd3TGFxMW1IUU9KZHkzU2JVcHVESzBEa25BWWY2SlBidTlr?=
 =?utf-8?B?UC81S3I0RitLYnFUd2FvbTU4QUdBKy9pV215dzFpdVJ4VWZ5SW9iTHRSc05H?=
 =?utf-8?B?TW0xSFdDSit2SklqT0dHYXZsT2sreE9haUl3bFFPNXFpU0w5dTZGNVRUVXZr?=
 =?utf-8?B?bmRtSC92WVpDdFlCN01FRTJvaWZYVmYvT1RmUUNsQkhoLytZNklDSG1HTHNp?=
 =?utf-8?B?TVkySGNaVUE1WmducE9tOWhidVNSa3ZaWWYyRHRpU1libEU1Mk1TbnFMTnJp?=
 =?utf-8?B?Z1pnM2RzRndEYzEvSFl1eS9BVUkxdFNVM2NvNG14R1ZWVTduZlA2NVJaMGdh?=
 =?utf-8?B?V1RkYVBXZ1VvenFRWmtlbnNEWU1xaUp1L3hZRWpSellpSW9NNDlqSC9kRmNC?=
 =?utf-8?B?RDkycnBhNkYxcWUybVozSjJFR1oxODJib0NUaFZ3K1dYNEdHVEQwT3NyQUtl?=
 =?utf-8?B?cXBDY2ZIc1BKSzNqOG10Y1E0eHNvenp0OHJuNlBaVW52SXJHemFOd1RQMTdI?=
 =?utf-8?B?S2dwYURzY2hTelc4RGt3d2RPYy9IckNQcU9neDQ1TVpoRi9lU251NlhBNUk3?=
 =?utf-8?B?Mkc4T1B5S3E1NDJNbWNEN1hYcHNvRzBmMGt3T3pYTW1UUE5jWmFEQ3ZxcG9t?=
 =?utf-8?B?a2FDaFJpSVJvTmVZM0hrYVBtTkxPS3ZjSEwrSTFEdHAvb3cxOHJxb1c3alVn?=
 =?utf-8?B?NEpSYkk3dmtTVlM0UFZEeHhpTXRBektDVTY1a2JoSDZhRDR3TGRmWGRYSWVr?=
 =?utf-8?B?VHV6NGlVTG9VTTRhTGsyMmlRWkhFOEVqaHc0WDNUaGJBc0VKWUFiZ0RTMXFM?=
 =?utf-8?B?Um93czUxemVWR0N0WSszNmZ4aCt0S05WWVE3cHBjM0FYNDQrTS9TMGJva1dw?=
 =?utf-8?B?d3ZPUTI1azBic0xxdElldGwrQU4rUS9GNUkybVJYK0JUT0o0UGxIb1pIS2Vp?=
 =?utf-8?B?ZWZqZW9CL0xlbXFqTlh4bmlsZjFXeHlRK1FOR2ZkcTVqaVcwYXNhbSs1M0N6?=
 =?utf-8?B?WHdBKzVYTmpvcEhZOEJVQ3BDSG1TM3MraFBxUkd0OUVGK1FjeDdGWnhsOVg0?=
 =?utf-8?B?azlGYUNOVTlZQVlSbFhaWnIxODc1S3djdmpzbUkvV25IOXphV2F2NjQrY1Iv?=
 =?utf-8?B?NlFpa1ZUT0pzTjhESGdndkJBeUY5T292NFpmeVNYTFFCWXhkZm1pVHJVR2t1?=
 =?utf-8?B?LzA0and4RXZYU3NiNzg4N2JnNTd1Y2ttSFdRcmp1MHVhN29XclJlV2lEdmFL?=
 =?utf-8?B?RFV0ejFIY3dOYVBCV1lNL1FPS1BJZUljYW03YXptU2RFWUJXcUxacXJRNEVv?=
 =?utf-8?B?MytiNitMd0t0YU12WHBtbXl6WXFqbjBxSUtET2wvZjZKS3d1dDFtKzZ6Z3pj?=
 =?utf-8?B?eVNnQXkrMXROdkIwVXFHcVdJeEJmM04vMmNMdmF3ZWY1aGp2VElPZER5ZDBT?=
 =?utf-8?B?Q3N1c0I2U3lmMjk4T1JPMXMzVnFiZlBZMTlSZWFsbFZ5ak1lL2R5RzNja1V1?=
 =?utf-8?B?aVRrZXUxT2JGazMxTnFUK3gxbjV0a3JjSXBwS1pZZXdQN202YlU0NzR1bHE3?=
 =?utf-8?B?STR0anBGZkt6Y0VGTlF0ekNGRGlyazkzS2htWGxKNVF4ZzRPNi9EK1U1WHNm?=
 =?utf-8?B?RTlUVzFPdU1TdE9XMHR5bDlxWW1uVVRrOHVzV1hlNVhDaVZvUHZWa3N4Q0NK?=
 =?utf-8?B?ZnIwZEFyNXhWdHI3b3B1QkNXbVAzL0htZlBYcXljSE04MzlncHVkNDlIMkxu?=
 =?utf-8?B?SHBxZkhldm8zQlBFZUpPNWViRXhGQ0dvZFUrRTdEK3VwTVp3eFFvNm5aVUNt?=
 =?utf-8?B?NTZBeUxPbTBWY1d1cVNGM1EzY3ZTK3J3T2llcmoyazBvVVZLVXYvMFMvQnEx?=
 =?utf-8?B?K1N5SU5qTUxwN3pCS0dSWGdyQVRSZXF2YjRKVHJ1eEdlQTF3LzV0TmYzNzFM?=
 =?utf-8?B?djByeGg2UmJNTm42V3diQ2sybHV1Y2R5VCttMTE3aXgzOHVUWmcwOTR6SGh3?=
 =?utf-8?B?WVVSUFBWUHh0d292SEV3TTBjRnZJSERaSURQcHlVbitxbXNZRzUvSXZZdEJZ?=
 =?utf-8?B?NXE2S0hEZTdZZFpNUzBaWUd5djgwUUZxOURsZ2ZJR0hmS3FyalZrczQ5U3Fk?=
 =?utf-8?Q?NxEJF2Lxwju0f5x6xRTyjABK50QMa1M44Rv4dt/ZnA54?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b913d8a4-2cce-4303-5d57-08dc55876e11
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2024 15:45:33.4916 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PNy94Qt1ZiNzIQoZXwnjgP77MXCoit0/VuGSe861IWANJv+CZNNh5WsnEAMT0aVkwWBaUakQlHkCBsrHnnjHLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5966
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

Rm9yZ290IHRvIGFkZCBteSBSYg0KDQpSZXZpZXdlZC1ieTogQXJ1biBSIE11cnRoeSA8YXJ1bi5y
Lm1ydXRoeUBpbnRlbC5jb20+DQoNClRoYW5rcyBhbmQgUmVnYXJkcywNCkFydW4gUiBNdXJ0aHkN
Ci0tLS0tLS0tLS0tLS0tLS0tLS0tDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4g
RnJvbTogTXVydGh5LCBBcnVuIFINCj4gU2VudDogRnJpZGF5LCBBcHJpbCA1LCAyMDI0IDY6MzAg
UE0NCj4gVG86IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPjsgdmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb207DQo+IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gU3ViamVjdDogUkU6IFtQQVRDSCB2MiAwMi8xN10gZHJtL2k5MTUvcHNyOiBEaXNh
YmxlIFBTUiB3aGVuIGJpZ2pvaW5lciBpcyB1c2VkDQo+IA0KPiANCj4gDQo+ID4gLS0tLS1Pcmln
aW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdmeC1ib3VuY2Vz
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mDQo+ID4gSG9nYW5kZXIsIEpvdW5p
DQo+ID4gU2VudDogRnJpZGF5LCBBcHJpbCA1LCAyMDI0IDEyOjI5IFBNDQo+ID4gVG86IHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tOyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
DQo+ID4gU3ViamVjdDogUmU6IFtQQVRDSCB2MiAwMi8xN10gZHJtL2k5MTUvcHNyOiBEaXNhYmxl
IFBTUiB3aGVuIGJpZ2pvaW5lcg0KPiA+IGlzIHVzZWQNCj4gPg0KPiA+IE9uIEZyaSwgMjAyNC0w
NC0wNSBhdCAwMDozNCArMDMwMCwgVmlsbGUgU3lyamFsYSB3cm90ZToNCj4gPiA+IEZyb206IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gPg0KPiA+
ID4gQmlnam9pbmVyIHNlZW0gdG8gYmUgY2F1c2luZyBhbGwga2luZHMgb2YgZ3JpZWYgdG8gdGhl
IFBTUiBjb2RlDQo+ID4gPiBjdXJyZW50bHkuIEkgZG9uJ3QgYmVsaWV2ZSB0aGVyZSBpcyBhbnkg
aGFyZHdhcmUgaXNzdWUgYnV0IHRoZSBjb2RlDQo+ID4gPiBzaW1wbHkgbm90IGhhbmRsaW5nIHRo
aXMgY29ycmVjdGx5LiBGb3Igbm93IGp1c3QgZGlzYWJsZSBQU1Igd2hlbg0KPiA+ID4gYmlnam9p
bmVyIGlzIG5lZWRlZC4NCj4gPiA+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiDCoGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAxMSArKysrKysrKysrKw0K
PiA+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKQ0KPiA+ID4NCj4gPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4g
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+IGluZGV4
IGVlZjYyOTgzZTlkYi4uYTNmZjkxNmI1M2Y5IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gQEAgLTE1ODQsNiArMTU4NCwxNyBA
QCB2b2lkIGludGVsX3Bzcl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHANCj4gPiA+ICpp
bnRlbF9kcCwNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOw0K
PiA+ID4gwqDCoMKgwqDCoMKgwqDCoH0NCj4gPiA+DQo+ID4gPiArwqDCoMKgwqDCoMKgwqAvKg0K
PiA+ID4gK8KgwqDCoMKgwqDCoMKgICogRklYTUUgZmlndXJlIG91dCB3aGF0IGlzIHdyb25nIHdp
dGggUFNSK2JpZ2pvaW5lciBhbmQNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoCAqIGZpeCBpdC4gUHJl
c3VtYWJseSBzb21ldGhpbmcgcmVsYXRlZCB0byB0aGUgZmFjdCB0aGF0DQo+ID4gPiArwqDCoMKg
wqDCoMKgwqAgKiBQU1IgaXMgYSB0cmFuc2NvZGVyIGxldmVsIGZlYXR1cmUuDQo+ID4gPiArwqDC
oMKgwqDCoMKgwqAgKi8NCj4gPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChjcnRjX3N0YXRlLT5iaWdq
b2luZXJfcGlwZXMpIHsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1f
ZGJnX2ttcygmZGV2X3ByaXYtPmRybSwNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJQU1IgZGlzYWJsZWQgZHVlIHRvIGJpZ2pvaW5l
clxuIik7DQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOw0KPiA+
ID4gK8KgwqDCoMKgwqDCoMKgfQ0KPiA+ID4gKw0KPiA+DQo+ID4gQXJlIHRoZXNlIHByb2JsZW1z
IHdpdGggYm90aCBQU1IxIGFuZCBQU1IyPw0KPiANCj4gWWVzLCBhcyBwZXIgdGhlIGNvZGUgdGhp
cyB3b3VsZCBoYXZlIGltcGFjdCBvbiBib3RoIFBTUjEgYW5kIFBTUjIuIFNvIGJldHRlcg0KPiB0
byBkaXNhYmxlLg0KPiBMb29rcyBnb29kIHRvIG1lLg0KPiANCj4gVGhhbmtzIGFuZCBSZWdhcmRz
LA0KPiBBcnVuIFIgTXVydGh5DQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+ID4NCj4gPiBCUiwN
Cj4gPg0KPiA+IEpvdW5pIEjDtmdhbmRlcg0KPiA+DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgaWYg
KENBTl9QQU5FTF9SRVBMQVkoaW50ZWxfZHApKQ0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBjcnRjX3N0YXRlLT5oYXNfcGFuZWxfcmVwbGF5ID0gdHJ1ZTsNCj4gPiA+IMKg
wqDCoMKgwqDCoMKgwqBlbHNlDQoNCg==
