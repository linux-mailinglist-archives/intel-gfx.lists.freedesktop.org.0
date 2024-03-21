Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4A2885AA3
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Mar 2024 15:27:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CEB110EAFA;
	Thu, 21 Mar 2024 14:27:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cQgZG7SD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D337210EAFA
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Mar 2024 14:27:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711031232; x=1742567232;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=xFZKXYn++mjFEzuq2VYxCviboj3R9tUThV/GNQOIZ7Q=;
 b=cQgZG7SDdLxDC9KZ22O2lxCs6GmzMXuts2QSZOAZH3TgY3TzZYzGqyY3
 SZoE5wl/97r+7+QMpb93bimZkCvO6kqO9i00NuDgCo7poWCnltheUurUx
 l0ANt3+K+TP14SlRhYyS/oQ+ojAdhfA9yGyxfW9M3mWZhtR+9KySPRuaC
 jgGRJrVBBZ3oySk26VJ7TgnLKmDEwd7eQlULIOPAyqokNU31XCqtW4at/
 k3pLNbyTaPNv/ekZu3MsjPFlZSBmg8tmmTZjB7W1LlJ5z+dJXLgWQONUC
 e/goQwr8zGxisxeYcqbNMiZzVx6iQlCIRjhQ2AWo4Umr3vYzVFllCNPJh A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="5965205"
X-IronPort-AV: E=Sophos;i="6.07,143,1708416000"; 
   d="scan'208";a="5965205"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2024 07:27:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,143,1708416000"; d="scan'208";a="19231722"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Mar 2024 07:27:11 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 21 Mar 2024 07:27:10 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 21 Mar 2024 07:27:10 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 21 Mar 2024 07:27:10 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 21 Mar 2024 07:27:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aB3TT5cDDxhgKacxMaOiIO8tIONnnPH5DuzEh2T1/h6C9+z/Z3V6KaPJzte3tihMOg9/gG8VRJ5CUN0wxtaU6iKfmv8MewF8HjmgdE2VOe6Mpl85RXoegnBPfZyKD8xIUOAdCGExFy2fzjWVuo/UJii4dtL1KtLX02subTzj4nrgrkxeLpTs8HZKD5CmrvzTo2HBhV6bh6Owmmalfnk0I1vFTzGb81u+yC5sbK3M9ttON67gw1goMC0KyPo4qLcTz6eMYE3A2mD2FEGJ/GwO4bU+HlGd/PuU3hitYByvqS9EjyhV39lFbrldlvfWTTqdZZXHciOi3z5qDRL1eHwOJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xFZKXYn++mjFEzuq2VYxCviboj3R9tUThV/GNQOIZ7Q=;
 b=FPrfxMeC3leTNFpOut6+h3UAmbECba6ZgUGVEWYR6tSLoJ3NhQTwrIOgwD6+aVuh4N3diOa21eovQsp7ZhSAr/YhlykfVrrlyH1+K9gtaur6nfDIbXjoqJsAkBKLmjRG8zdGUlHKq+LuZgLY4y7w6hHKSb0YSVZmc/IlmISqmtaD6+j5UiuK+70ja3oMe4Fes1Oo5QUEmFGfoiTGqoYnXuWE2zBiQH6hCS9e51Wl4IkKI99p8Sfen2lD+nyAMAHhHWf8AovvoCdrC+/BW3UzaUkyh7/aq7o8IslHbfcy67xGgnD6KyiS5L2sOkq6fQY5C9GRpd3nrBFoA1lNNiezgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB8179.namprd11.prod.outlook.com (2603:10b6:8:18e::22)
 by DM4PR11MB5312.namprd11.prod.outlook.com (2603:10b6:5:393::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.15; Thu, 21 Mar
 2024 14:27:09 +0000
Received: from DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::c563:8fb8:d95:71ac]) by DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::c563:8fb8:d95:71ac%5]) with mapi id 15.20.7409.010; Thu, 21 Mar 2024
 14:27:08 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
CC: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
Subject: Re: [PATCH] drm/i915: Do not print 'pxp init failed with 0' when it
 succeed
Thread-Topic: [PATCH] drm/i915: Do not print 'pxp init failed with 0' when it
 succeed
Thread-Index: AQHaewptnf3VGmZwqEe5vSDpyXU2QrFCIzgAgAAeZgA=
Date: Thu, 21 Mar 2024 14:27:08 +0000
Message-ID: <bd119a2a945755e7945efafbd139f5369b14d457.camel@intel.com>
References: <20240320210547.71937-1-jose.souza@intel.com>
 <87bk77n4jp.fsf@intel.com>
In-Reply-To: <87bk77n4jp.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB8179:EE_|DM4PR11MB5312:EE_
x-ms-office365-filtering-correlation-id: 700f3a4e-84c3-40af-4b10-08dc49b2fdb3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mkmjbCt5LzM4hOt5gXSYRXAVsssbo1fH4hhQWvT8wlkZZlKSg03YDIST4WbFwi47s5ZDfrsagGcscNJ9xnNjbvxDSVtIfEWarbuvymQUFzWM0ZQTHYlvTqsIzuBSUJpoDSYK59BOU2XPYduVggV2/eryFYZvvoXYwI3bgyC53YL7/babHGmk+sF7lNzk1yIg8fkR/wAtaLI2xndeO6mW6qqqw0SG+hJTznnilbQkdcx+TM17smkO9yJMrXOZr1Ke46XSLPXL7s5qHVVOqDvvlXr198ujd2o75fuvgR4aX61M9GeFN4DQpm+1Px2N1KnLXPV4LIylgtZm21ikl3Go7AXrTvapyhQ/DdHWYvlNl+ycx6+2TOWB7Yw1m+hhZ5SN+EoMbXWRsJffTmlXQYTIqZuV2dMn5hY945PyY/iHVyLmzN9fBqoT30T6Nylc+fi/XHY4Xbh9NetVQNJvbvcFh63HGXJ3j0BntChsDwFNRGuQwJ65YHsVVmhiU2XyblcJzcSFjfxi1zxx7zu4XPc7eSbUuVMve6u6PqrmI1ZRZN2tidCLf+zyghTdvP36fbIKCeOhjbNIGeDPAbqxrAlLr20iDtlAK0JmUm1AOKCC5S797sLwwnhKUyxxd6USJSLecMKCg8DWzDhEzx13LCKvFVd0GimSOHWxaBCZju9nx/5kIsNK9LxZLSZ8QxARKgNvrBavLZv4eOdeDbAHSfo1vKUCvii3r6hyqmdXbvwyZtU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB8179.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b0ZVenVrQ3lLb1NVSjBpckg3T0FkblVqa1FtR3JncUw3aWpHSXNYVjE2SHdF?=
 =?utf-8?B?S1hOV0tHMEZrWjZDeU14Zy9vVGw4UG1YSWpsUjBtTlA3M2JPdWZyNll5Rktm?=
 =?utf-8?B?dkZ0Q1FBbVEwbjl6TWVranphMHNJOXB1bzhXRnluVUQ1SDE5ZnZLNitXYjNE?=
 =?utf-8?B?T1M3VkgxMHJ2NDRmeXJ4RXhUbW5TeDZHcFBzWkt5Q09iU2RwRlBBUG5DblRt?=
 =?utf-8?B?aEIzVDlaMUN3UEtnZ0NNck01MWZLQ0ozSGlwWlRZc3U5eExQUTF1b0p0TFFX?=
 =?utf-8?B?c3oxVGVDMkdmNFV3VWhKRzJYM2JCclg3K1FLTFEvclhsanU1SmY5ajdnaFBx?=
 =?utf-8?B?S213ODh6RSttekRYNnlMbzc5MzlxYy84MmR6L3cxUG9KTWp0MnBtRW1rS3FM?=
 =?utf-8?B?emQvYTl5YVdDaU43MVFRYjlvaWJORXM4aGszODFoOWY2b1k1MnZ3RHlpUHR3?=
 =?utf-8?B?a084NDNtZXFVK0kvTTNJdWZobE9pVzhmQWVFbDBKNlR5VGJsUjF6V0RxRzIx?=
 =?utf-8?B?NHFTVzk0Ny9sOGZuTTg0bjF5YnBUeTlOY1R6eThxMHV6U0tGcDErM0RsODJl?=
 =?utf-8?B?ajFTM2tKQnlIa0tnazhsMmhFN0QyNnNHcWZIRlNNMVNJdjg5Z1NWeTdUcFVI?=
 =?utf-8?B?NndBWHJ4TGRpSEZ0QzJnUlNZM3hnMHlyV0NaWEh1d1cxZks1NjNPOGhYVXlv?=
 =?utf-8?B?RWtXZk16MVBNdnBTSndEQkY4cGdaTERkbyt1NjZPdzVWZy90V2F4Z1FkV3Rq?=
 =?utf-8?B?TG83blpYcWgyd24rdG5KdGVRaFdhbDVZODRONWEzaTJZTFduTkZrZHNiZ29i?=
 =?utf-8?B?WldUd25PVmZRTS8zRWlZOVg4dUVXWWI4bzVpUDZRR0cyWGNBS1lRNVUzSlZs?=
 =?utf-8?B?U1Z1VlJtUTROdVpqNlNsSlY1aDFhZFFlQ2xWRmJTNGlRbGVkVitUcTZabWlP?=
 =?utf-8?B?Z0hvYXQxNmxEMHc0RkhoSXdVTWI4OTVsdDVxK2JHQVlqbWtjVm5pcUtPa3Fj?=
 =?utf-8?B?cFM0RnlIWngyMUZDdVB0Z2hHS0ZKbVE4UDBEK2c4ay9kWWdGRHMxOC8zUTRK?=
 =?utf-8?B?WVFzczlZWUg1S1JOMGdqVHZwT2s1NE16MDFNSWZVT1BDWjZKU0wvZGY1L3ls?=
 =?utf-8?B?K2hkS1I5Q09KRFc3a2NBNnVJWmp3aEpkZEdicXR5UGpjNHJ3OEJmV1BYcGhB?=
 =?utf-8?B?MlNxMlZZd04wNmg3ajVYVVphQWtHNW5FR3RsNWRNVjFJRmNmNmJQMFA0Z3dG?=
 =?utf-8?B?ZkRMUWtRRGNJVllsbHZRWC8zN3V5Z3NrOFJ5NWtPSVFwMW55dnZNWlVQVW52?=
 =?utf-8?B?QjRqVVQrNVNPN0ZOR0MwZWlvbTBGRmsvRVViK3IwVGNEQm5pRjE2WXdieTNG?=
 =?utf-8?B?RnpkSmZIcW0yV2tNNXErQVhuMmhnd3FFRE41b1VxdVU2S2x0ajRmRUNiZGpN?=
 =?utf-8?B?NXVGOE8ra1hja3ZFMEUvaDlUZ21mdFhGd3lGM25rTlZSb1MyRGdSbGNvaERF?=
 =?utf-8?B?K0dpL2RCMmFpUGNIeXd3d0RhenFvaHJZUkp2UGdYRkF6aGZTSExCdVYrdmNm?=
 =?utf-8?B?YkNMNlRaUnQ0dmtNTmRySWhGengxRytYK1R2VGFySW1uZUE1L3o4MTRpcTM2?=
 =?utf-8?B?Q2ZrR3I3RU9OTkIrc0cxdHhwZjhadjNJdEVrZDBBZnVSczBuLzhnQXRoN1RS?=
 =?utf-8?B?d1hmZXZ4d1pHVlpDUUFvS1VabmozOU0yQTFFYVI5Q2d3c1U3WHRxdUtkaEdz?=
 =?utf-8?B?RlJQZmtsN1EvOWZ0bmhrNGxQNHdDRWNZWU81dnhWM3pUWGkzK0VYaGE1d2Ft?=
 =?utf-8?B?dmJmeUxtUWxKY2ZmajhBZno3MnBHUXZIMnV5cTdxRjg1NXoyMnp4TU51c3Qr?=
 =?utf-8?B?bllBcWEvL0gxSWZxbW8wK0NBREY1c29TK1E0cWtNTXZFRStQN1dWUThNUHNh?=
 =?utf-8?B?SzJyYWxyUUtQNkIyc25BZWVXWU9LUHZxMXlXTHh0MHRTSGNQUUFTREowYUhC?=
 =?utf-8?B?OTliWXJKVFVxNDF4WmZWU0x4TUV3bnJDVHRTalBReEhtY0FRUGozSzAvWFBu?=
 =?utf-8?B?RXk1WTIvRU5kMUZ5N1p6RHc0V1JDd25iN2VqRDdSU0hiOUk2MUcvNllNd0Jz?=
 =?utf-8?B?ZkROK2oreVFaNmgxblZ3WWJibGZYclhCNmhtOEVQM09WNTVuYXpFb1Nsd2Fx?=
 =?utf-8?B?bnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B5536A5C100A314CAB407036045B3C2D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB8179.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 700f3a4e-84c3-40af-4b10-08dc49b2fdb3
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Mar 2024 14:27:08.8836 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZS6/dP9BUT0iHPS74HhIrKqmKKB0+TpvGyWLNoujreRUkEWGfj5VFlOZgfnxAV9rjVbGt0PRYoC9iule3d1LjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5312
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

T24gVGh1LCAyMDI0LTAzLTIxIGF0IDE0OjM4ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gV2VkLCAyMCBNYXIgMjAyNCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+IHdyb3RlOg0KPiA+IEl0IGlzIG1pc2xlYWRpbmcsIGlmIHRoZSBpbnRlbnRpb24g
d2FzIHRvIGFsc28gcHJpbnQgc29tZXRoaW5nDQo+ID4gaW4gY2FzZSBpdCBzdWNjZWVkIGl0IHNo
b3VsZCBoYXZlIGEgZGlmZmVyZW50IHN0cmluZy4NCj4gPiANCj4gPiBDYzogQWxhbiBQcmV2aW4g
PGFsYW4ucHJldmluLnRlcmVzLmFsZXhpc0BpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTog
Sm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IA0KPiBGaXhl
czogNjk4ZTE5ZGEyOTE0ICgiZHJtL2k5MTU6IFNraXAgcHhwIGluaXQgaWYgZ3QgaXMgd2VkZ2Vk
IikNCj4gQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwub3JnPiAjIHY2LjgrDQo+IFJldmlld2VkLWJ5
OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KDQp0aGFuayB5b3UsIHB1c2hl
ZC4NCg0KPiANCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIu
YyB8IDIgKy0NCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9u
KC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJp
dmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RyaXZlci5jDQo+ID4gaW5kZXggOWVl
OTAyZDViNzJjNC4uNGI5MjMzYzA3YTIyYyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2RyaXZlci5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcml2ZXIuYw0KPiA+IEBAIC04MDAsNyArODAwLDcgQEAgaW50IGk5MTVfZHJpdmVyX3Byb2Jl
KHN0cnVjdCBwY2lfZGV2ICpwZGV2LCBjb25zdCBzdHJ1Y3QgcGNpX2RldmljZV9pZCAqZW50KQ0K
PiA+ICAJCWdvdG8gb3V0X2NsZWFudXBfbW9kZXNldDI7DQo+ID4gIA0KPiA+ICAJcmV0ID0gaW50
ZWxfcHhwX2luaXQoaTkxNSk7DQo+ID4gLQlpZiAocmV0ICE9IC1FTk9ERVYpDQo+ID4gKwlpZiAo
cmV0ICYmIHJldCAhPSAtRU5PREVWKQ0KPiA+ICAJCWRybV9kYmcoJmk5MTUtPmRybSwgInB4cCBp
bml0IGZhaWxlZCB3aXRoICVkXG4iLCByZXQpOw0KPiA+ICANCj4gPiAgCXJldCA9IGludGVsX2Rp
c3BsYXlfZHJpdmVyX3Byb2JlKGk5MTUpOw0KPiANCg0K
