Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8DC08A4779
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 07:05:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6547112144;
	Mon, 15 Apr 2024 05:05:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B/huxs2Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3054112141;
 Mon, 15 Apr 2024 05:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713157522; x=1744693522;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=S7NTjfJUSJWxKz1iIJtP/CW2fCqtutTiVUX3sXEBrUQ=;
 b=B/huxs2QWnaq06tIx1woCVtYnQo+hvH1Z8A4YEf7Gl0W6M9uoLIrWGW1
 vJPgdmNzxM5uyuDpArYyoU+XG/Dnzz0xwDJnSycqk5loeCs4rpokm1Hz2
 H67wyN99z/BhwL933Lr91UOv661iJRZiuSVnkLKKV58+mRNjwIte89gBj
 Q4hN2wtW2Sd0OcZs2xUCSUXE+0dhG4wWZrYf1clU25wxQqTzJWKFCwLu8
 S7Z35HdFlzxaamri0Cu6Mbbq5vxZVyakFHkdKesBXtNp/FKI1+GWhq4eu
 zU5LgJyJAqK+BqkmhLe5K4ZBMuZKcya+iau2Ubi3eFWf9DLy4vyOCxu9L A==;
X-CSE-ConnectionGUID: iR52rqTVQLWipoFhzDkhsQ==
X-CSE-MsgGUID: taHx65MGRFy3ISyKEghEUA==
X-IronPort-AV: E=McAfee;i="6600,9927,11044"; a="8652307"
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; 
   d="scan'208";a="8652307"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2024 22:05:22 -0700
X-CSE-ConnectionGUID: irN2/srHSKCn8/THp/HKUQ==
X-CSE-MsgGUID: iW+oz3TbQ6qaUlj1oigL9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; d="scan'208";a="22271906"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Apr 2024 22:05:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 14 Apr 2024 22:05:21 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 14 Apr 2024 22:05:21 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 14 Apr 2024 22:05:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J6zSKRzj/sBwQJ3H4PCTm4yF+gLDlXW3E8YU/kydjPZ0ZDy0rkDGXs1ypbTMQr4nhXZgWWDpKrm82gNa8p6+koECeGBjAAmObDygZv76nIoRzvVADKIAvYpBvdEVyWco25/y2BcOXxExFnmPNUkT+C1yl7o4s7ELifwAghrmQjnWIyLfeRhMbvbttIr04vkllBpf5fZjRrHJGkGe3X3pzRwK/EjgeCTwrU046hcOx8+VEepue74ksAYmkMfi+EUMCeaLsI95PYDdk4hglvpuC0OaR4nu+KyR1E8Bg7yuA4SquadDDvRU3Da/kTVAJiTrkWRpS0QZBc2tXel93x5NVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S7NTjfJUSJWxKz1iIJtP/CW2fCqtutTiVUX3sXEBrUQ=;
 b=GI4XKCOduH82Mid41Sz4mCwoh5tnHlv4B23lia72lqwoCG0FtSgf7544FhKIPA1f76hQuAM0ghzPhpRlv2xNr4+Uj/fhcd7f92Wjr9mhjhGzJyteIE0M5Y4tqwptWxkpGTjCUk9SuDE2PcMRcmm92Kvy0DdKwrvRf1My7wdP0w7bxrFeg5o+ZKxfX4pwW8sRZM5xAqA7RuT2U3kPIMCHZAIWFuwYsdv1pdM+OwtIgEBCJ5FKhpenOA7q8YyRRv2jDeHOj6bIVUOrvcsRup938XRlIwinEduzhldRf+huLzZpd4YVHA7mEiPycpR9PbnDOCfI8sKVBKFySqlq7Jrj3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH0PR11MB7659.namprd11.prod.outlook.com (2603:10b6:510:28e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.26; Mon, 15 Apr
 2024 05:05:06 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff%7]) with mapi id 15.20.7472.027; Mon, 15 Apr 2024
 05:05:06 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Luca Coelho <luca@coelho.fi>, "Coelho, Luciano"
 <luciano.coelho@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v5 1/4] drm/i915/display: add support for DMC wakelocks
Thread-Topic: [PATCH v5 1/4] drm/i915/display: add support for DMC wakelocks
Thread-Index: AQHajL2wo6LU8JVDVEqegBwiuHcABbFkbtcwgAAhKACABDoWIA==
Date: Mon, 15 Apr 2024 05:05:06 +0000
Message-ID: <DM4PR11MB6360FFEA82155778AD9B9778F4092@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240412094148.808179-1-luciano.coelho@intel.com>
 <20240412094148.808179-2-luciano.coelho@intel.com>
 <DM4PR11MB63600F7F0EE905B24FED01B2F4042@DM4PR11MB6360.namprd11.prod.outlook.com>
 <7c2a11df009a90646d39783c01f722b96717966c.camel@coelho.fi>
In-Reply-To: <7c2a11df009a90646d39783c01f722b96717966c.camel@coelho.fi>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH0PR11MB7659:EE_
x-ms-office365-filtering-correlation-id: ef4bf1e2-0c53-48e3-ae84-08dc5d099df8
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: r7ZumGoS2St1vH2wSeBjz7Ee5WJeh8k3UvCOHwHI7qe29deaugbvcMP+WVgN5keiJr0/Y7JmGXRIESCm/w015gVYHp0oZLft4N5vNjSWTznYGwPDd94qGSAwCniG/i9SjR/318SSqbREs87eDvytCsVxccykbd+g6l+c0JwliisldsRkcsOfyoMq26PcgDie8s/Qd5z0ihWt0cqFekjx1ZVqdShPTkAAP1pC7aW3uaVhC4qCpiMx5/vP5gNIJXU+ksNVucxfWB4z3D+GHu+maAaY1CJ4RtUqlHKIYFowGl46Wy557F770HagLpu/tY2mvZAwIX/RvW3vUtktLFRzekwYa5c0/w7qH0kPkglcoeMiGuDgdmXl/HdwQDW+Ncpn841S/A5u5mCCRIogzJIkkvaVvAEb+Soqw4Jp71hdaIj/khVMW4CQP6lSUGd/nguhyX80T1eX6Gl582y5/B+9yTDjy5y2H7/jn0+wAKwVuMXD36HcUN9Ck0CJN/o7KsX16tbiJ7MnmRQdAJ7cUPPyPcLa6IxGASF4bELH3KTbys07ZnKCEQ1sglX/aET2nzN/Qz4XXRTR3Dm0uCp7saL8Qv1YABKIHbRn4YtpT6EYmfqm7E38bm54TxRroqbQKASjlh3i72+9R3z1jd8NPMvVwBlz1Vq5p4yZCuXvcD5Gy5mfNWX7owCnvzvcukaThv3w0tKMS1kmhFAl/+PjQjTBPxiIwqtTNnE2vSZXVzYHPgM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZzZPU0RaeHdDMHVwSnEvcVQrSjBIazZnekN2T0E1T21mMXprWWY0d1gvTVU4?=
 =?utf-8?B?N09LTlRnUlp3UjJockZnekNHbnZvQnlFUDJHcXBnd0h4djB1aW5HZEQ5dUxq?=
 =?utf-8?B?RnlLR0FUVkpkazg5SysrcUh2cmpaZEVkRnRTdmE2RkMxdllhYlZWY0lxRlN2?=
 =?utf-8?B?OEg3UGlaRFF5RUk4S09LSHZoWGlOYlNnR1lNdVN1WGxkUzRQdjUrd1FYd2xH?=
 =?utf-8?B?WlpGUXczcnpJTUNCNXoyam1DMzNPSngxZFpzUWJiRVNObCttMjQ0RU0vSXRT?=
 =?utf-8?B?TWNGZDRDcG05am5XVEJIVEtrNDVHNHd2clROWWFDc29jZ2xEaVhSYUlsWCtz?=
 =?utf-8?B?STA5ME43T3dHOFZsZU1wUFhZRFlVVzI0Ynl0UzB4Sy8wbSs0dFZiZ1NQRWYw?=
 =?utf-8?B?RXhHRVFGM1FyNWNPV0J1SDBmM28xTW50YTl6Ykt6dnVBc1lWcWZSVEJ5em1r?=
 =?utf-8?B?YUcyTFNkMEVrcUdiNnpCd3NHYjhlRVBjQmVRdGJGeGF4MEFiQWV5ak0wSUx5?=
 =?utf-8?B?dE5MZ2d3NzRnZDZpa1RsNHJ3V3VydXRZRUNIeVVXeC9uaEFHRTN6aUJuaDg3?=
 =?utf-8?B?OGUvcFNidWJySHJXNnc2clhtUmlmMmJReXFPdlJMT2hjRm5BVmFFY1FOYVFF?=
 =?utf-8?B?Smp3R2h6alRYQ0RxNEhPTkgyejc3bjl4NUhwcEtrMmJKRktJNFI0aGFzZDRq?=
 =?utf-8?B?bUxMMHFjNkZiazBsdFo4T21KcXYrMmN5Y0tjelFNSU9zOUNTZkZIYW52c2h2?=
 =?utf-8?B?T3ZYSnFLNjk0SXprU3lvSWJESkk4Q090cU9wK0gxR1pJZUhqYXo5dS9aOW5R?=
 =?utf-8?B?OFpXalBrNHF0RzJqOFBDMTdaRkpsZ3J6V1hkUmRiOWxRbWlSbVY0YVh4K1pj?=
 =?utf-8?B?ZkxnaWRCR2FINVlpSHBSYkhQT3hOZnZ1QWFQK3diby9qR3ZYRDVKdHI5WTZE?=
 =?utf-8?B?ZGx1UEtMbEJ3K1FwRkw2V2g3WllkVndHRHV1M04zUU1YTFlCdW9pQkU5elh4?=
 =?utf-8?B?WEpBbEVKREVNeCtKd201bkZoL2RLZmxMME1HNGcydi9CMmZVS1FXczgrN05r?=
 =?utf-8?B?WWY4dXR0ck9OVHpHZVRnOXoyVVlnU09wY1Bwc0orbWxpdi9VdDBYZTlFeW1R?=
 =?utf-8?B?OHhScmhrMmRhZHJxalk2UDFhNlRndFZrVCtzK29ub3hUOUNWRUpCR0E1NFJT?=
 =?utf-8?B?Z2xsWWVPemVJZHJ2SVFyaUJHTmE0cDRhd2hzYnZZeWZQaFBQdnNOcjBVeWl0?=
 =?utf-8?B?S2oxVlhTQURuVUd6ZWcyMFRBWUpMNkdUTGpJRWJWLytBUHdYTUlmZnQxWUhX?=
 =?utf-8?B?djIvSUZjd25tSnR1dmdzMnhzZ2kxTys5TUxESVJIT01EVkkrWktxVHRnVEV6?=
 =?utf-8?B?ZCtoZW9vSnk0cnJjSFpueXVueUVTNVA4Rk1ZQTdVLzFrS1pBaWcvQ3JYWHNC?=
 =?utf-8?B?eFdGbTRuMXh3NUVnTEhSWFBtNm9laDhld21tS1EzVFdFOGdSL2h4dkxIWVJj?=
 =?utf-8?B?TzBEa1hHRlNEMDM5VjJXS2YwVWpJejNxN3B0UG5tcVd6a2F2VTcrd1RsOGpz?=
 =?utf-8?B?K2RhNHZObnhDK0JNR0kyNWZSaTExSFhkeXprYTJOdmw3WXNrMXpiNFp5cjNW?=
 =?utf-8?B?UlVycFRnUXZXZmpUYmpTZXowZEs1cklaYitrNGhINFIwRFNJVkU4RmgxN2hW?=
 =?utf-8?B?dW9pMlNGYmNqTFRKNmJ5ZG9IR1FHWlI2U0UwWm5wRVI0NW1Eb2ZnbURwKzlK?=
 =?utf-8?B?emJVOGJLRXpUdWRYNkNjZGxwOXh0WllGcFhTbFhqUmZHVUJJMzB0RGJxR1cr?=
 =?utf-8?B?MGw1MW5sUnc0OUw0OVN6SkU1K0tPbHFaMUprdWpHM2ZMSWdaT1A2T3JrNGQz?=
 =?utf-8?B?MXlqVzlpWGxJdzdmajRkMVNndUs5eEFHV0RmVmlIUTRreEYxMmNqMVR4ZDlO?=
 =?utf-8?B?dlhYZlc3MERKbnkwVnhsV3FPTFhPZXBpRk1hVGNJSytZSnNDRjdkTVlTbEN3?=
 =?utf-8?B?aDVqZi9iYVNZeHRHYWRWcEgwU1JWUzBRZE9xM3RzWUNaYlp2N2wrSjAycUxw?=
 =?utf-8?B?U09YMDhqSVZJMlRNRmNwQWJzME1zd21KY0xMWEhON05oc0xhOHZSbmhZa3FK?=
 =?utf-8?Q?0Jz8Xce4GmdEJ3Zvw5H05LDE1?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef4bf1e2-0c53-48e3-ae84-08dc5d099df8
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Apr 2024 05:05:06.5733 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AMFSYMrhHZfTKv9nSRb9hbGdM5D3uZqx7bTRVCABtwjDd9oX6DFF1qpfG+dFzj7aZIZQlx7QwEZU8V4SeF30Eg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7659
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTHVjYSBDb2VsaG8gPGx1
Y2FAY29lbGhvLmZpPg0KPiBTZW50OiBGcmlkYXksIEFwcmlsIDEyLCAyMDI0IDU6NTcgUE0NCj4g
VG86IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPjsgQ29lbGhvLCBMdWNpYW5v
DQo+IDxsdWNpYW5vLmNvZWxob0BpbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tOyBOaWt1bGEsIEphbmkNCj4gPGphbmkubmlrdWxhQGludGVsLmNv
bT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2NSAxLzRdIGRybS9pOTE1L2Rpc3BsYXk6IGFkZCBz
dXBwb3J0IGZvciBETUMgd2FrZWxvY2tzDQo+IA0KPiBPbiBGcmksIDIwMjQtMDQtMTIgYXQgMTA6
MzAgKzAwMDAsIFNoYW5rYXIsIFVtYSB3cm90ZToNCj4gPg0KPiA+ID4gLS0tLS1PcmlnaW5hbCBN
ZXNzYWdlLS0tLS0NCj4gPiA+IEZyb206IENvZWxobywgTHVjaWFubyA8bHVjaWFuby5jb2VsaG9A
aW50ZWwuY29tPg0KPiA+ID4gU2VudDogRnJpZGF5LCBBcHJpbCAxMiwgMjAyNCAzOjEyIFBNDQo+
ID4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4gQ2M6IGludGVs
LXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgU2hhbmthciwgVW1hDQo+ID4gPiA8dW1hLnNoYW5r
YXJAaW50ZWwuY29tPjsgdmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb207IE5pa3VsYSwgSmFu
aQ0KPiA+ID4gPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gPiA+IFN1YmplY3Q6IFtQQVRDSCB2
NSAxLzRdIGRybS9pOTE1L2Rpc3BsYXk6IGFkZCBzdXBwb3J0IGZvciBETUMNCj4gPiA+IHdha2Vs
b2Nrcw0KPiA+ID4NCj4gPiA+IEluIG9yZGVyIHRvIHJlZHVjZSB0aGUgREM1LT5EQzIgcmVzdG9y
ZSB0aW1lLCB3YWtlbG9ja3MgaGF2ZSBiZWVuDQo+ID4gPiBpbnRyb2R1Y2VkIGluIERNQyBzbyB0
aGUgZHJpdmVyIGNhbiB0ZWxsIGl0IHdoZW4gcmVnaXN0ZXJzIGFuZCBvdGhlcg0KPiA+ID4gbWVt
b3J5IGFyZWFzIGFyZSBnb2luZyB0byBiZSBhY2Nlc3NlZCBhbmQga2VlcCB0aGVpciByZXNwZWN0
aXZlIGJsb2Nrcw0KPiBhd2FrZS4NCj4gPiA+DQo+ID4gPiBJbXBsZW1lbnQgdGhpcyBpbiB0aGUg
ZHJpdmVyIGJ5IGFkZGluZyB0aGUgY29uY2VwdCBvZiBETUMgd2FrZWxvY2tzLg0KPiA+ID4gV2hl
biB0aGUgZHJpdmVyIG5lZWRzIHRvIGFjY2VzcyBtZW1vcnkgd2hpY2ggbGllcyBpbnNpZGUgcHJl
LWRlZmluZWQNCj4gPiA+IHJhbmdlcywgaXQgd2lsbCB0ZWxsIERNQyB0byBzZXQgdGhlIHdha2Vs
b2NrLCBhY2Nlc3MgdGhlIG1lbW9yeSwNCj4gPiA+IHRoZW4gd2FpdCBmb3IgYSB3aGlsZSBhbmQg
Y2xlYXIgdGhlIHdha2Vsb2NrLg0KPiA+ID4NCj4gPiA+IFRoZSB3YWtlbG9jayBzdGF0ZSBpcyBw
cm90ZWN0ZWQgaW4gdGhlIGRyaXZlciB3aXRoIHNwaW5sb2NrcyB0bw0KPiA+ID4gcHJldmVudCBj
b25jdXJyZW5jeSBpc3N1ZXMuDQo+ID4NCj4gPiBIaSBMdWNhLA0KPiA+IFNlZW1zIHlvdSBtaXNz
ZWQgdG8gYWRkIHRoZSB2ZXJzaW9uIGhpc3RvcnkuDQo+IA0KPiBJJ3ZlIGJlZW4gc2VuZGluZyB0
aGUgdmVyc2lvbiBoaXN0b3J5IGluIHRoZSBjb3ZlciBsZXR0ZXIsIGJlY2F1c2UgSSBkb24ndCB0
aGluayBpdA0KPiBhZGRzIGFueSBpbmZvcm1hdGlvbiBhZnRlciBpdCBnZXRzIHRvIHRoZSBtYWlu
bGluZSBrZXJuZWwuICBUaGUgaGlzdG9yeSBpcyBsb3N0DQo+IGFueXdheSwgc28gdGhlIG1haWxp
bmcgbGlzdCBpcyBhIGJldHRlciBwbGFjZSB0byBzdG9yZSBpdCAoaXQncyB1bmlxdWUgYW5kIG1l
YW5pbmdmdWwNCj4gdGhlcmUpLg0KDQpJdHMgbWF0dGVyIG9mIHByZWZlcmVuY2UsIGJ1dCBiZWlu
ZyBwYXJ0IG9mIHRoZSBwYXRjaCdzIGNvbW1pdCBtZXNzYWdlIGl0IHN0YXlzIHdpdGggaXQNCmFu
ZCBjYW4gYmUgY2hlY2tlZCB3aXRoIGEgZ2l0IHNob3cuIENvdmVyIGxldHRlciBkZXRhaWxzIGdl
dHMgbG9zdCB0aG91Z2ggYXMgaXQgZG9lc24ndA0KZW5kIHVwIGluIHRoZSB0cmVlLg0KDQo+IEJ1
ciBhcyBJIHNhaWQgdG8gc29tZW9uZSBlbHNlIGJlZm9yZSwgSSBjYW4gYWRkIGl0IHRvIHRoZSBj
b21taXQgbWVzc2FnZSBpZiB5b3UNCj4gdGhpbmsgdGhhdCBpdCdzIG5lZWRlZC4NCg0KTm90IG5l
ZWRlZCBMdWNhLCBpdCB3YXMgYSBzaW1wbGUgbml0cGljayDwn5iKLiBZb3UgY2FuIHNraXAgdGhh
dC4NCg0KPiA+DQo+ID4gQW55d2F5cywgY2hhbmdlcyBsb29rIGdvb2QgdG8gbWUuDQo+ID4gUmV2
aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQo+IA0KPiBUaGFu
a3MgYSBsb3QhDQo+IA0KPiBUaG91Z2ggeW91IGRpZG4ndCByZXZpZXcgcGF0Y2ggMy80LCB0aGUg
b25lIGFib3V0IHRoZSBtb2R1bGUgcGFyYW1ldGVyLg0KPiBXYXMgdGhhdCBpbnRlbnRpb25hbCBv
ciBkaWQgeW91IGp1c3QgbWlzcyBpdD8NCg0KSSB0aGluayBJIGhhdmUgcmV2aWV3ZWQgYW5kIFJC
J2VkIGl0LiBUaGUgZW50aXJlIHNlcmllcyBpcyBSQidlZCBub3cuDQoNClJlZ2FyZHMsDQpVbWEg
U2hhbmthcg0KDQo+IC0tDQo+IENoZWVycywNCj4gTHVjYS4NCg==
