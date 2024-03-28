Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB03788FE56
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 12:48:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64AE11123D8;
	Thu, 28 Mar 2024 11:48:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZB+xWBAH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B833D1123D8
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 11:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711626492; x=1743162492;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mlZx1G6z8Ktr8HMdeNGuVaW0rg28lpmnNhMSofuTe6s=;
 b=ZB+xWBAHDc0rTIQG5vtvPTh9t5PQ31LBC6UPbaY+zj5FVMNR//gE8U6s
 /CDD55Rx7lcmUmpb2JJ3eqk6oW/vEL8N7GB3+JlmlW8whIMibZWrTFyhA
 S84PN0ypoXkkN38t/D5qRtV7/015IR00UE+anGhLxYbuCihPy7JXun26J
 6oFhsczsjjz3xwFQ5y0XecpAicD+TD1xhwLWSHHy9TEblYvUBuENMxCEr
 7lXuYskk08M3YvbEqWpd+vjKJGo1xNgd4Uk+9/Lnxd96Uwm2TrRTfAiuX
 MNwaBt1LbFhpBMzw0UnYTNPs+got9wx4YDafZgl/9DN9fK78tbkKGZWIV g==;
X-CSE-ConnectionGUID: avzCyKCbRoaW+hTgRSgHPg==
X-CSE-MsgGUID: Y4vTl/YbR4C3nWmL4cOVsQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="17501370"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="17501370"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 04:48:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="47603911"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 04:48:12 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 04:48:11 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 04:48:10 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 04:48:10 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 04:48:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eKmJfvBwpUKNAyFRJk6+Ejl1/BA82yR8w+IGOXoXHeIlzcO/8XRGKUbGqbrtIOsR9RCBHZEkmJ4Frn8HB0Cmf7wh6tmb3Xf6LLjsTBbi5C9H0pmY4I5GiAs4uNn71ePVoQAWwqfPceUnKaWCsc1eh8RwftBs7vNmbLsj9iRSDg1tnBz/3EEqwchpLX4MGo8Pld2nQoIFnr+tloXmtj2Nvm1EZ0xVTk91h+mSdPEjVbNOnlJW0UExtLlelS1u5HL4NisiX7CWYeIo+SKWQSClxzyX5qrvsjGZrePeAS5YJ9hsC17TJUFftBdMuesdGqm07YNLeeqnMrLOsBsguv6F+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mlZx1G6z8Ktr8HMdeNGuVaW0rg28lpmnNhMSofuTe6s=;
 b=AFyPnkGimpas1BCn20dhV5BpodyNHDtaor33fbPKJKAELNlxXuVz5Jkm+xcTu+nWi7iMLWGzmANZxGLq6IEWp8m/9JlJvDbzS9BGH3D9BW4nPp1MZL6ORJygPfO7YG3l2pZN1vlHjP1O56Gw+Zyva8sx81CiA2di3GMpZ4OyqW0/q74Q7D9CM4EbpwAOeUJr3BUWKrsJnjRwcYYLIyQG1Bv/ufHEFjG/y5xvrawTf7ebQZ7dG9dE1ct6ZoCG+XtAW6lM7B2M7NAYiE2aP8AeFDFOzclSF8jZJfVisE5TM3Upz9BLe0O5pzMCGfLmgfGLRmUG/NUmwUDwb/BSVou2cQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS0PR11MB7958.namprd11.prod.outlook.com (2603:10b6:8:f9::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.32; Thu, 28 Mar 2024 11:48:03 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff%7]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 11:48:03 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 03/13] drm/i915/cdclk: Drop tgl/dg2 cdclk bump hacks
Thread-Topic: [PATCH 03/13] drm/i915/cdclk: Drop tgl/dg2 cdclk bump hacks
Thread-Index: AQHagG6mbJc7Gdvq8EiaVbBQrTl2TbFNCY5g
Date: Thu, 28 Mar 2024 11:48:03 +0000
Message-ID: <DM4PR11MB6360F560D60CB0E0DC5A4507F43B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
 <20240327174544.983-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20240327174544.983-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS0PR11MB7958:EE_
x-ms-office365-filtering-correlation-id: ade6dd91-62c3-4080-0833-08dc4f1ced38
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pSNtXACYSsRhFgH8zxWvd4R2tNCXzTW9dG4yXOPE0vgvKIgtJB/MjGigFuJNIdDqgHeSV7Ww6Hk5aoL8kOJ7aYGZY8/7KvGHzg5lMgH86K1hvcl/Iq7lWp8vbPnfhmPrGp62oLUI+26aWG7TlsBDVdmPW9pyIQNFcKSkJkZXImVfDFXy3Mntkoe7go3bYd0jpzl4r0Wr1BnKK/9gC0C3nQl+gzrSjlcEmzKMZKXXbeB5lNlOWZqL2gD4AQCInbWn9lAoz8oB4FST5KqYP+MQoiedaaKGvFSrUaUwC8c3ZxGMKbOC+8KcR2fEYWBV+HNOxmNRaLVmSsHf5Dc8h94yTW9pCFPx3zreHnZgM8Ozzf2r93BBIUsDJ8LZ/6+ZKpWwEhTGSVhgTQpmGeLn/gfUHzyKVhd0Vq+0FklIoL1hA1PXeLjBEyArytvUGR2/UVCBE1NtHrJfwu94ErArHl8NwfBzWb1fQwcMQetsGNDA4fY3vqmCAGWr+ounW0eLGm+TmQIe7Q9/LKSN4133MMsUeuWAp0V9ETBLX5PB0kG4xTVr4WkMPykiX/I2WiijtynYUv58UHPXCMsEWrI5sQC2zC71rpzJRYdnQeyy2qiyvfC0LRmYQ95Hm3C2uSljHUV9uIuSX+ACZwdn9Mq35lILNVCtxQ6BORW2FwsPj6DChtpVqvYSYzLZUQLW1x/xm0uyCWrPEFACD0HWO6PaNKwU+FMvg/P9jos9idxXnkdaFq8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RDJOVjlkMU5HNHkrdkJ0emExdjlOeTFBSlpWMnM2bnYyWmRqZG1IalE3TW9q?=
 =?utf-8?B?YlJMY3FyWXhvY0xwd21oUVorbkJ6RXcyakczZ1hxSnQveFl1MkpVcGdxc2lG?=
 =?utf-8?B?S045bU5XMHJTVWdhZVo5NjBQcS93OFhKclNTVUpaL3FMYWNIeHI2YU1RL0hq?=
 =?utf-8?B?ejVqM0VLR2xuaDRqOUdvdUQ0WlI2R1F4WXp0MEs2YXVpODcwWFdCbjFNZGtN?=
 =?utf-8?B?STFLcE1DUU1IMXBBMk51M0dEL2ZNbTNpUGNBQ1Rxc2hUaDU5c1NFM0lqbS93?=
 =?utf-8?B?L1E2dFlpdUdVeHVORmcxdVQrTEoxYUlySEJENW1BZmRCUVVWVWNzVWJ6QS9G?=
 =?utf-8?B?clRFSFNOQTBUb0htaUFRR2J2VTRyd1B5OVBISS9yUm94TnV5S3ZFRlpiSEVJ?=
 =?utf-8?B?WHlhemJYbGsrbHpkaTNLNlUxSlhEUTcyY3JtQkEwTDVkY0Z5Z3MzWXprVmJo?=
 =?utf-8?B?eE1EeTk2TXhxbk1MaXZOWG15cHg5Wk1zNU83eXYxRm83T21peWUxSnZkRmt0?=
 =?utf-8?B?MUZ2OXBOVzN1aEJoallTRkR4ZHp6anFtYWdFQmJudG9uMjlzUWQvR2VUYVNH?=
 =?utf-8?B?ZGdidzdHUUNvTG5jZ21mcjFxWDd5ZVNpMDVGZzluNXI2dVA2SnhkekZ2SHdt?=
 =?utf-8?B?TU80WWxyK01XSGQ5NERXNWtmb1pLdDhydHVkS0w1M3ErMVFKQlJXN0s5SGNG?=
 =?utf-8?B?SjNUenJYV05ocWdZejRuQmROYm1xOWsvRGNRZ0NGdktDZnJuL0pmOVRzNGRl?=
 =?utf-8?B?RXhaeFRyamdOQTBBaHJuMHdnSFNhdEJvQnowNGU5U0RiUS9qK1MzVjBRSWc5?=
 =?utf-8?B?VWFrZFZzT3o1eWVsUGtzUHplT3dxcGkvOThtSnZ0cWNrQ25HVThPWWdRSzdx?=
 =?utf-8?B?TWh0QTI2TmYzWGQvZ0NJYXFSRk8zeWhmc3VDamRkTEhkV2tTbXlTcUJTTGlF?=
 =?utf-8?B?d0FBRTlLQXNndFk0T2Y5N3kwcGV1SWpmZzdmSzdVZUREUjErK093Y2U5N2lk?=
 =?utf-8?B?TnNUb1JIQlBFWlBhb09KbTJ0dmxRbHU1SXcyWWh3RWg0N1JyM3hYRWF1QVlE?=
 =?utf-8?B?eDEwWEFuSDM2MlF3L1FMM1RzTExwOVdnRWxSN1Zoa1hBTVRSdU93RW43U0gv?=
 =?utf-8?B?OC9VYS91UENQR21tY0RpcmZxVEZlSHZlWWdsVTFEU0JleWVEclFVUjhjbit5?=
 =?utf-8?B?RFdvWm5mVVZ2Tit6OVpXSzBRcjRtR1dGbDlJTVBoSHZGQ0tRNkJnbjI0MWQr?=
 =?utf-8?B?V1lpNVgxeXRHbkM0UnV3cWRJRXk0dm1kQmpEYkNyR3FYMkc0SEZHazZyeTFw?=
 =?utf-8?B?K240dGtLZWdvUHFwTG13dHFsSERyeHA2NzUrRDMxd1lDeEJCZU5wV2RQSnNH?=
 =?utf-8?B?Mm1hS3pBMWsyeHhEMThLNFdOMFl1TjROMittVm9vb29FRWgxZEVWS094ZXMy?=
 =?utf-8?B?SDNtaE1RVHZqVVFLN0JwRkU1TytzM2tFcE14NGMvT0tsNktKbzIyM0tNYVFI?=
 =?utf-8?B?R0x2TTV1bTUwTXoxUVUvaWQ2d1RYLzFzcTZBMXRUdDlId0hrWjBONmQzcUx3?=
 =?utf-8?B?czZnanhqTm1MZHg5RnQvOXBYRyttSVZNd2J5dWxxeCs2MWFqMTFjOGpsL1FI?=
 =?utf-8?B?U3hxeGg5Wk5QeE9aWmFmSFdGMHlMUDJlcHRkejlCdGNXVWJ4QkhPVFVPOHF3?=
 =?utf-8?B?VzJMQ0cvL2VUSXNwTHhvaEtYWFAzMjZ6UVVmV1JINk5RSmNBKzRlY2xQaURr?=
 =?utf-8?B?bENrOS83YkNlUW9JSmhkcUpPd0JqQjUyZU0wRWc1MlVXek52TExQM3JMTjZm?=
 =?utf-8?B?Vk12d0xJUGwzZENWQmh0cVFCWEhEM2tHenMyMGVIZ1BReUhLeCtyVERRVEQx?=
 =?utf-8?B?ZStna3Z3WlJ3d0RxMFlNM204cUpBV2dZaEd0bHc2NmhybWJwRFZzdmpiOUg2?=
 =?utf-8?B?NGppS3pGbDJ5cm9yVDkzN00wd1hudlJSd05vSGlmZk90ZkdZWUduMzZldElu?=
 =?utf-8?B?QWM3aDhaMWc0cUhvVGduai9GR2IvUUdMOEFOZnZKYUthZElLNTJ6bWZlUFhP?=
 =?utf-8?B?bzRkN3c0ZEErQUFaSkJFRGQzVTFpWHRTK21VZUVqdHh5eFE5cSs2ODhwNGJs?=
 =?utf-8?Q?5urdwmXFQFDLhXZeh9gkc5JN9?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ade6dd91-62c3-4080-0833-08dc4f1ced38
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 11:48:03.7285 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aHa1DoUiF+/1oZUERA4maIpEICj0bGHp0nyIi7vyFvBHhrNR//UtgvU2HFCFcKnSs33HOL5v5xlHCi1SvrTqHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7958
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgTWFyY2ggMjcsIDIwMjQgMTE6MTYgUE0NCj4g
VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDAz
LzEzXSBkcm0vaTkxNS9jZGNsazogRHJvcCB0Z2wvZGcyIGNkY2xrIGJ1bXAgaGFja3MNCj4gDQo+
IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+
IA0KPiBObyBldmVyIGZpZ3VyZWQgb3V0IHdoeSBidW1waW5nIHRoZSBjZGNsayBoZWxwZWQgd2l0
aCB3aGF0ZXZlciBpc3N1ZSB3ZSB3ZXJlDQo+IGhhdmluZyBhdCB0aGUgdGltZS4NCj4gUmVtb3Zl
IHRoZSBoYWNrcyBhbmQgc3RhcnQgZnJvbSBzY3JhdGNoIHNvIHRoYXQgd2UgY2FuIGFjdHVhbGx5
IHNlZSBpZiBhbnkNCj4gcHJvYmxlbXMgc3RpbGwgcmVtYWluLg0KDQpZZWFoLCB0aGVyZSBjYW4g
YmUgY2FzZXMgd2hlcmUgYnVtcGluZyB0aGUgY2xvY2sgY2FuIGhlbHAgYXZvaWQgdGhlIGxhdGVu
Y3kNCmFuZCBzdXBwcmVzcyBhbiBpc3N1ZS4gSG93ZXZlciwgdGhpcyBpcyBub3QgcmVjb21tZW5k
ZWQgYnkgaGFyZHdhcmUgYW5kIHdlDQpzaG91bGQgYmUgYWJsZSB0byBkcml2ZSB0aGUgZGlzcGxh
eSBhcyBwZXIgdGhlIGNhbGN1bGF0ZWQgY2xvY2sgYmFzZWQgb24gcGl4ZWwgcmF0ZS4NCkhhdmlu
ZyBzYWlkIHRoYXQsIHdlIHNob3VsZCBicmFjZSBvdXJzZWx2ZXMgZm9yIHRoZSBpc3N1ZXMgd2hp
Y2ggaXQgd2FzIGZpeGluZy4NCg0KT2sgdG8gZHJvcCB0aGUgaGFjaywNClJldmlld2VkLWJ5OiBV
bWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgMTkgLS0tLS0tLS0t
LS0tLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDE5IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiBpbmRleCA1MDRj
NWNiYmNmZmYuLjk5ZDI2NTdmMjlhNyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY2RjbGsuYw0KPiBAQCAtMjgwMiwyNSArMjgwMiw2IEBAIGludCBpbnRlbF9j
cnRjX2NvbXB1dGVfbWluX2NkY2xrKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlKQ0KPiAgCWlmIChjcnRjX3N0YXRlLT5kc2MuY29tcHJlc3Npb25fZW5hYmxlKQ0K
PiAgCQltaW5fY2RjbGsgPSBtYXgobWluX2NkY2xrLCBpbnRlbF92ZHNjX21pbl9jZGNsayhjcnRj
X3N0YXRlKSk7DQo+IA0KPiAtCS8qDQo+IC0JICogSEFDSy4gQ3VycmVudGx5IGZvciBUR0wvREcy
IHBsYXRmb3JtcyB3ZSBjYWxjdWxhdGUNCj4gLQkgKiBtaW5fY2RjbGsgaW5pdGlhbGx5IGJhc2Vk
IG9uIHBpeGVsX3JhdGUgZGl2aWRlZA0KPiAtCSAqIGJ5IDIsIGFjY291bnRpbmcgZm9yIGFsc28g
cGxhbmUgcmVxdWlyZW1lbnRzLA0KPiAtCSAqIGhvd2V2ZXIgaW4gc29tZSBjYXNlcyB0aGUgbG93
ZXN0IHBvc3NpYmxlIENEQ0xLDQo+IC0JICogZG9lc24ndCB3b3JrIGFuZCBjYXVzaW5nIHRoZSB1
bmRlcnJ1bnMuDQo+IC0JICogRXhwbGljaXRseSBzdGF0aW5nIGhlcmUgdGhhdCB0aGlzIHNlZW1z
IHRvIGJlIGN1cnJlbnRseQ0KPiAtCSAqIHJhdGhlciBhIEhhY2ssIHRoYW4gZmluYWwgc29sdXRp
b24uDQo+IC0JICovDQo+IC0JaWYgKElTX1RJR0VSTEFLRShkZXZfcHJpdikgfHwgSVNfREcyKGRl
dl9wcml2KSkgew0KPiAtCQkvKg0KPiAtCQkgKiBDbGFtcCB0byBtYXhfY2RjbGtfZnJlcSBpbiBj
YXNlIHBpeGVsIHJhdGUgaXMgaGlnaGVyLA0KPiAtCQkgKiBpbiBvcmRlciBub3QgdG8gYnJlYWsg
YW4gOEssIGJ1dCBzdGlsbCBsZWF2ZSBXL0EgYXQgcGxhY2UuDQo+IC0JCSAqLw0KPiAtCQltaW5f
Y2RjbGsgPSBtYXhfdChpbnQsIG1pbl9jZGNsaywNCj4gLQkJCQkgIG1pbl90KGludCwgY3J0Y19z
dGF0ZS0+cGl4ZWxfcmF0ZSwNCj4gLQkJCQkJZGV2X3ByaXYtDQo+ID5kaXNwbGF5LmNkY2xrLm1h
eF9jZGNsa19mcmVxKSk7DQo+IC0JfQ0KPiAtDQo+ICAJcmV0dXJuIG1pbl9jZGNsazsNCj4gIH0N
Cj4gDQo+IC0tDQo+IDIuNDMuMg0KDQo=
