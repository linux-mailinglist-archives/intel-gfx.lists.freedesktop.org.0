Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E2787A761
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 13:05:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AC3B10F788;
	Wed, 13 Mar 2024 12:05:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XGOdxoIA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F44A10F788
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Mar 2024 12:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710331537; x=1741867537;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=V9ucRF36qrz/fkGFSfh0JjViPYAt4i49bX6Lrkf8lw0=;
 b=XGOdxoIAYQ6MQCDM1QGdSW64K6Gdlq/+dU7gOdVB/AeYBGbfBuKh9ADp
 9zL24m7drQmiuAoM+Oh703V6ygFBYjA9jAzcxGc0Ou3c7M4rZE0tVDDTh
 Njzyf+fiK+cz9rzVE1bsJYnMMzvCURgR3xrHP77FhiIH3V9V5+KKkuiY0
 rMj+YfrwgWU3HeQU3RrU9sQFgBpcokaN3cYN4ruk3fSup9Z/Qf1qkgJiK
 9meqPaiJePABXS/EwcIpQlOhhXDf7EvLJlzZekRIlJNrd2+fVJtGWOKVo
 x0YYukV5zZ6fUWZIAbhhGBIHlO4cRNOSnzh9nV+iL3yTDWDiwNVE4mURB g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="5020508"
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; 
   d="scan'208";a="5020508"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 05:05:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="11801428"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Mar 2024 05:05:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Mar 2024 05:05:35 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 13 Mar 2024 05:05:35 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 13 Mar 2024 05:05:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DXmfD/dH9pfdlzrq8IncGMmJfg0Wuo2H+kfgeTVjPpAPh2Jjf1W43fQfwJypuZr2c2gFFIpynFZ7ewS3o0hprwDEnM8m58uXZDweImk1ZqKAry07wAzPysOjbMXkDme/eFzW1HdLEZN8azkxC3rNSy88EwVrdbpcocXue632qSpo/SJ6p4XuazxUuXl4RFdrsAn2LZaMqoXU3rEiTMzOJu5FoG2t8w9XeAgkPJKmafbE2EKPFYPPAVFAilc0v/BxdwyHOp2U81LcS+lFE+12uVRsPBRkvzArUm+2igTwkxBqTrL3hPAxQbG2ujwrUh4FKJCcT4Sh4bBpYd45DeXnYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V9ucRF36qrz/fkGFSfh0JjViPYAt4i49bX6Lrkf8lw0=;
 b=of0vJn1lSdEPHpXceXPOKVgThzHBldGDVL367J9vQLHwq1nTbTFkoUyDvDJMIY1PfpPStJ2QsFIx5M1fxn27w1LE15ya5ZwaZA9TW4r1bQleE1XNXUhI7qd4ChVDDTLfpGLe+wJzptKheW+Sj9sk/nmbCYNSaWjTV8DCx7N8EHYr4XKgcPOT7iPyVff8VbVmV50SBQIpYBNlSCakGPNbxcYrLAh3aesFPxCmsildHs+3YqQY210Fes6DIuNi4wraO+Qq9NauU6Ze6u7NdF7Uaa8Ulsvcwh5AQ4Kx4QTPInbDYFAqhytYy3ElrI5OaTZisEuUdQJCXvh9brZOZYbdGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA1PR11MB7891.namprd11.prod.outlook.com (2603:10b6:208:3fa::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7386.17; Wed, 13 Mar 2024 12:05:33 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::d317:e2a8:8e14:7bff]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::d317:e2a8:8e14:7bff%7]) with mapi id 15.20.7386.017; Wed, 13 Mar 2024
 12:05:33 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Murthy, 
 Arun R" <arun.r.murthy@intel.com>
Subject: Re: [PATCH v3 1/6] drm/display: Add missing aux less alpm wake
 related bits
Thread-Topic: [PATCH v3 1/6] drm/display: Add missing aux less alpm wake
 related bits
Thread-Index: AQHab7NwtYv2bOxqTEyC+SXxnfNzULE1j+CAgAAONwA=
Date: Wed, 13 Mar 2024 12:05:33 +0000
Message-ID: <07c76bb4e67d22b636b54dd1c11c8ac48bf7e948.camel@intel.com>
References: <20240306104513.2129442-1-jouni.hogander@intel.com>
 <20240306104513.2129442-2-jouni.hogander@intel.com>
 <PH7PR11MB5981BE449508E5E86E5B6FB4F92A2@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB5981BE449508E5E86E5B6FB4F92A2@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA1PR11MB7891:EE_
x-ms-office365-filtering-correlation-id: c71abc07-0a4a-402d-413d-08dc4355e2a6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X8nouaLGog9UrWGIWTaSDnkIlNAoo92mxqxkJfiqRpTTfSAUhr8pnY2/hcVPvipw4O5zFu2cC49tC1Hp5WK6G6MKMTsH2HMUCCDumIu6AyvXNPEEu06F0J0Gx64FtWxUyZcXih7IfTneC5Roj/ojbaz6T/V8VOBgzEJCRgT55C0nWZp8ZoC2YhlfznrUWRg2v6RfUmE3tIvAK3vLHIh73PjWx9gYWEFPmOPWnXaxs3XJ8PvN0Qu6eK2HOwQJTZMQACMeQYgw29K0aLhDWXBoGWo4mTS0ACXe1jAo1KXUPeBX2aTHxtVtNl3ccp7jhELDlnLQRc5eB/0aQoFMbMqG27jMt0M6BBxGAEz9I4k9rtkX9Mdhp6o0Ufgc4A3zyN4qm1oNoWKzhriwoT64CZvEpM3K8SE206XexEq2hMg9Z/UP1BdXa+coxlRvvCS+VFXyTWBcYRsx9yq5jJm7KU8sey9TVLELHfB4ifqjvQaotMAJ/Z1wIX4rFrgG9wxbohWdPj0Cps47ZQ6mJWD/rmRC7cxZjujRzOVGDRBaLqGhNEUL30ULlmCR/J2+0ysLElvtAqR458fUUSz5LqedxYEi1DNqqBmKTT14n9HuLQ1K1ZtaBT4mNQEPqbzyp5OjDR48rXqmjjx41Mt4z2V9XfznptlqQBzFVbmHsVnMlWq4t/GVn4rfJBtyp6yNkwEhMzdRokk8mqAAy1Ty9pZbtIqpNnIzXTkhB1Lg4UVGSvjLxb4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Ymc2UDA1MjMrK1lxREROdmFIRUpIdEIyT21sUXRPbmFLQnRCbnNSclByUk1I?=
 =?utf-8?B?aENYYUY3NTlCTDJLZUc5YmFFdjdmcGtoaTJycW9Oc3ljcy9yS2RlQ0t6aUJy?=
 =?utf-8?B?VzdkQUNVTWUvdkpGQTF0SGFOS0pHUzM4Rk5wZ2RGNUN3a3lwU1dXOHhmNlVL?=
 =?utf-8?B?WWxlelYxTXdKMEYyUEJFMWR0WWtTUDVuSk85SFVsaGFndHFYWCt0ZmE0VDJM?=
 =?utf-8?B?dlRHMzl4WE1pbkJFTkJnWmtJSi9UbW5yRC9PTXNnOWl1OUhqRHRvWHVDMlFx?=
 =?utf-8?B?TGl4TnlQSXhQaURRNmtXV1lFdERyNDVONlArdGpZY09aSTV1RFVDWFFiK0d2?=
 =?utf-8?B?Mm5yYnAzNGtTck40akYvVUluQy9VMW14aUZQbGdBME9GTERQRnRZTy9yKzVF?=
 =?utf-8?B?dnprbi9LdUkzcCs0S3ZXWDhSQUpOcXBwb2s0VE90MEhvOGFCdk1nMTJZSWU0?=
 =?utf-8?B?VEVNSmFSczZQY1VFOWtyeGhpREVBaUNQMElxcU1iKzA3d2JNK3BMUnVLVzk3?=
 =?utf-8?B?NUVKOE5rakNUc3Q2cVBWbnRacnJNbjNtRXQ4TWFYRVEyNU8yR3ZBbHFXOW5B?=
 =?utf-8?B?TTQydFNITzdmSlBwbHBrV3BudXdTTUVIdUR0RlkvY3kzenI3TTZpbk5vK0w4?=
 =?utf-8?B?U003OC9sOW4yNTFMN3o4cTJPVG5GYjFpbExUVjVFbzZNQUQwQjkyQU51RW1S?=
 =?utf-8?B?aFgrSjFraTRvWU1NMUFIelluTHZiWUtqOFBDUDhJUjRHSDdxMmpjaUNpdndp?=
 =?utf-8?B?UFFCcU1qK0xoMUV1bjNXYURuTWRZSW5LZmZ6ZGN3RmpIN1lyVGlzOFh6bWlw?=
 =?utf-8?B?a3AyK2lNQXVidkVVVjFqRlhycHN3NWNMc3BXQkRsRS9QdlYzbUFaVFVWRXlr?=
 =?utf-8?B?bXIzY01vUFVuZCtFRlkzRlQ0KzlSL1hGSlh4SHNNOTA1U01kVkNkWWZLOGxI?=
 =?utf-8?B?RVBQbUNqQmdUM1ZQUHBMWGUxV2x4VjFGZTRRY1h3MzcwZHE3MUh1d1hmSXBy?=
 =?utf-8?B?Kzh2SGZVRVIrdWVwWUFya2txTllRLzhUVWJlY3FEbVhqNGgyOXA5RStGQzhw?=
 =?utf-8?B?TkJNMFlJZGVvRnZoSDRueFJZY21Ib0Y1WldOVTAwcWpZV3FmOWFNNzNndGlB?=
 =?utf-8?B?emVLWCt1TXpxSGx5U25RdGZIUmxQdUF6amlSdlRFeVg4cWVWVVczVkhuVW9P?=
 =?utf-8?B?SXFIa2c0NnhpV1dHL2lvZFQrcTR2SzFySVBKWk9PSDF3cGVWU3NnMVlxZDhN?=
 =?utf-8?B?RURnd0V0RkI4NmY2anZTRTgvVlBGSUZaU1RORm1tS3ZpdTgxeVJtS29PZ1Nm?=
 =?utf-8?B?WnJYdUZ5TGQ1eFNCZGN5VDJVcDY3ZVlpNStIeXFKSkpZU29HNjJ4aEVlUVI5?=
 =?utf-8?B?SGg3OUI4V3hxY0tTVWNSdnZWV2lEUmtQUWpRelJxM2Y0Vkppdkk2bUxoL3dI?=
 =?utf-8?B?dXVpR0d6SGlDNlplUVB1RzJjcU0vUXBYckppRHg2ZVFFLzZLM2ZTb0hwSTVn?=
 =?utf-8?B?S25ja0dUMzQyS0xBWWwzSkU4UnU0YTdHWUtaUTRETFlxbHhLYllqRXAyZUww?=
 =?utf-8?B?UUtjamQ4bnhrb3l2M1plQU9OSkVMTVZ5NVFKK0Q0QWRRUUlTVnJvL1lIalR3?=
 =?utf-8?B?b3lMeWdzMytuOFB4K0Q4emd2QlRXazRnbE0xakIzOCsvOCtjUUFUVmJtSm5p?=
 =?utf-8?B?Vnh0emwvM0J6ZElGVTVzMTNGL3cvUWgvY2tvK09wZEdrVE5TUEl0OFd1VVhk?=
 =?utf-8?B?T1NxdlZ5T1FuTUIzSEpMaU9NUW1ZSXRWenlIcUNkVDlrQmRlRHdLTWJLMndr?=
 =?utf-8?B?bXA1cThrbCthNkpuWDVRUW5YcSs5WCsvT1IrQnJNTS9IQzRpTG5qM3NnU1Nt?=
 =?utf-8?B?cVpFb0psbXhqVzdzRUxCQ0lnMk91eE5lY25VSTRGek1hOWpaZlhsN1pxd0o4?=
 =?utf-8?B?OGhhRCsvR3pVaUs4WEx5K25tZWtPenoydFVwL1BObk5uVHpRakpKMTE5Q2Jy?=
 =?utf-8?B?RzFEUW1DRExwWDJKOFhrRUNFK09jemczb280YmYrMXNORHRnT05rbUpka0w4?=
 =?utf-8?B?TXJpQXhMVW5lUTJNWUVNVHIxV3Q2MWc4dWt4cXVXVjFSTjdxb01xMmNpV3FC?=
 =?utf-8?B?MzJxcDBkV3FhZWt5VTNVRTFmVDV5ZE41cWp1RHZWelVBVU15SjA1RjR0YjBi?=
 =?utf-8?B?U0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C5F044BD47CF5D4AAD5EF08E17EC754B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c71abc07-0a4a-402d-413d-08dc4355e2a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2024 12:05:33.3107 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k5yp7K4mcECz6ERwOY1vNeH8brrCXXrYPtXNtPGCM3lzcj0By1hEpgIyiIXQcoH6EB60DQ+CaO06rpaUh3CmcrxEXDtz+UEk3GKW5PExo18=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7891
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

T24gV2VkLCAyMDI0LTAzLTEzIGF0IDExOjE0ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogV2VkbmVzZGF5
LCBNYXJjaCA2LCAyMDI0IDQ6MTUgUE0NCj4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KPiA+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPjsgTWFubmEsIEFuaW1lc2gNCj4gPiA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBN
dXJ0aHksIEFydW4gUg0KPiA+IDxhcnVuLnIubXVydGh5QGludGVsLmNvbT47DQo+ID4gSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU3ViamVjdDogW1BBVENI
IHYzIDEvNl0gZHJtL2Rpc3BsYXk6IEFkZCBtaXNzaW5nIGF1eCBsZXNzIGFscG0gd2FrZQ0KPiA+
IHJlbGF0ZWQNCj4gPiBiaXRzDQo+ID4gDQo+ID4gZURQMS41IGFkZHMgc29tZSBtb3JlIGJpdHMg
aW50byBEUF9SRUNFSVZFUl9BTFBNX0NBUCBhbmQNCj4gPiBEUF9SRUNFSVZFUl9BTFBNX0NPTkZJ
RyByZWdpc3RlcnMuIEFkZCBkZWZpbml0aW9ucyBmb3IgdGhlc2UuDQo+IA0KPiBHb29kIHRvIGFk
ZCB0aGlzIHBhdGNoIHdpdGggdGhlIHBhdGNoIHNlcmllcyB3aGVyZSBfQ0FQIGFuZCBfQ09ORklH
DQo+IHJlZ2lzdGVycyB3aWxsIGJlIHVzZWQuDQoNCk9rLCBJIHdpbGwgZHJvcCBpdCBmcm9tIHRo
aXMgc2V0Lg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQo+IA0KPiBSZWdhcmRzLA0KPiBBbmlt
ZXNoDQo+IA0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmku
aG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgaW5jbHVkZS9kcm0vZGlzcGxheS9k
cm1fZHAuaCB8IDUgKysrKy0NCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZGlzcGxh
eS9kcm1fZHAuaA0KPiA+IGIvaW5jbHVkZS9kcm0vZGlzcGxheS9kcm1fZHAuaA0KPiA+IGluZGV4
IDQ4OTFiZDkxNmQyNi4uNjUxZDExN2Q2MzZkIDEwMDY0NA0KPiA+IC0tLSBhL2luY2x1ZGUvZHJt
L2Rpc3BsYXkvZHJtX2RwLmgNCj4gPiArKysgYi9pbmNsdWRlL2RybS9kaXNwbGF5L2RybV9kcC5o
DQo+ID4gQEAgLTIzMiw2ICsyMzIsOCBAQA0KPiA+IA0KPiA+IMKgI2RlZmluZSBEUF9SRUNFSVZF
Ul9BTFBNX0NBUMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMHgwMmXCoMKgIC8qIGVEUCAx
LjQgKi8NCj4gPiDCoCMgZGVmaW5lIERQX0FMUE1fQ0FQwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgKDEgPDwgMCkNCj4gPiArIyBkZWZpbmUgRFBfQUxQTV9QTV9T
VEFURV8yQV9TVVBQT1JUwqDCoMKgwqDCoMKgICgxIDw8IDEpIC8qIGVEUCAxLjUgKi8NCj4gPiAr
IyBkZWZpbmUgRFBfQUxQTV9BVVhfTEVTU19DQVDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAo
MSA8PCAyKSAvKiBlRFAgMS41ICovDQo+ID4gDQo+ID4gwqAjZGVmaW5lIERQX1NJTktfREVWSUNF
X0FVWF9GUkFNRV9TWU5DX0NBUMKgwqAgMHgwMmbCoMKgIC8qIGVEUCAxLjQgKi8NCj4gPiDCoCMg
ZGVmaW5lIERQX0FVWF9GUkFNRV9TWU5DX0NBUMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAoMSA8
PCAwKQ0KPiA+IEBAIC02NzcsNyArNjc5LDggQEANCj4gPiANCj4gPiDCoCNkZWZpbmUgRFBfUkVD
RUlWRVJfQUxQTV9DT05GSUfCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAw
eDExNsKgwqAgLyogZURQDQo+ID4gMS40ICovDQo+ID4gwqAjIGRlZmluZSBEUF9BTFBNX0VOQUJM
RcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAo
MSA8PCAwKQ0KPiA+IC0jIGRlZmluZSBEUF9BTFBNX0xPQ0tfRVJST1JfSVJRX0hQRF9FTkFCTEXC
oCAoMSA8PCAxKQ0KPiA+ICsjIGRlZmluZSBEUF9BTFBNX0xPQ0tfRVJST1JfSVJRX0hQRF9FTkFC
TEXCoCAoMSA8PCAxKSAvKiBlRFAgMS41ICovDQo+ID4gKyMgZGVmaW5lIERQX0FMUE1fTU9ERV9B
VVhfTEVTU8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAoMSA8PCAyKSAvKiBlRFAgMS41ICovDQo+
ID4gDQo+ID4gwqAjZGVmaW5lIERQX1NJTktfREVWSUNFX0FVWF9GUkFNRV9TWU5DX0NPTkbCoCAw
eDExN8KgwqAgLyogZURQIDEuNCAqLw0KPiA+IMKgIyBkZWZpbmUgRFBfQVVYX0ZSQU1FX1NZTkNf
RU5BQkxFwqDCoMKgwqDCoMKgwqDCoMKgICgxIDw8IDApDQo+ID4gLS0NCj4gPiAyLjM0LjENCj4g
DQoNCg==
