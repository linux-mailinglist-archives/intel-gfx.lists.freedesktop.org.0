Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFFBCC3AC34
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 13:03:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10A3E10E8A7;
	Thu,  6 Nov 2025 12:03:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ESGuWgNj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7B0610E8AB;
 Thu,  6 Nov 2025 12:03:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762430613; x=1793966613;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NWmTUdSX5nl5R1FptNWo80hGTiKZ+7+xylgx+oE2oak=;
 b=ESGuWgNjUt+mY7oPbobqbJ8LZ7mDEyyy8Snf2K5svuvUJ1oY7f7VDo2J
 JP/+PfhWei7nBtbao3NHhgomlk3eM3FrKzl5yNpibwulVaXQwycvt9Ugf
 aEzuPsnTlD/ERnHHGWZxfRwwYpDqt5f14S1+naUYxc8wILmhBG66YKdGQ
 gPl2Lg6QanauSx3gFKoTbgClWZRLjGskovuwjvksbpxPV3huSXsGOIND3
 LOU6Ye5ffYsyzJyocrZgOLhSXo5/cksPWoKfq3tVBDyrfA6BPx++g2Tb/
 SPWmNOe/bHjWxilKeGw7t3up/IvPzX/QyJtDYwZ+k0c7tHS0AroqwqYeo w==;
X-CSE-ConnectionGUID: i3A8TG0ESSK9YgicUUqkEg==
X-CSE-MsgGUID: xFN64f/kRFiHFbnTK6BcKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="74854639"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="74854639"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 04:03:33 -0800
X-CSE-ConnectionGUID: 8fxs434zR3mShotBaJP7tw==
X-CSE-MsgGUID: 7J3CDBLzS62uHcOjaLlquw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="224990027"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 04:03:33 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 04:03:32 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 6 Nov 2025 04:03:32 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.9) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 04:03:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PR9uqAGQ+vJbHY0SX4EbwCu/OD7kcR/EZDJUJ28Ae/UrOTCjGFYuUDyQ3VjnoehUMrIWVLztH3tic86qui8oHSxMXPZ4fRoEnbSNBEjwTmD33MqM8a8Zy89dqTsM3NIH7xX219ss5NSGYR0tP9l2ywjF9G05B3LkJnPa7wpJM/ILUJ0C8jUSc/jHnAnHD9ZIExTZb5vYbkaBj3nTvQHG91FntD7Gi8OCJOK5fNnun4ym0Aqpp8xVo38bJWrwfSVB+n7K54K3YHppqZL7esQxrz4pJijuWUTne/C0fGgA9c/5wxG4IYjqIY8NR35QgijwY2581xrAx8oHwQjQSJNiDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NWmTUdSX5nl5R1FptNWo80hGTiKZ+7+xylgx+oE2oak=;
 b=Zfer/M0pbOAKgMNRLdIwoA1rFr8Wsqr/Q59fyzOqQ6sbNT1licX+aQox2VKP1d5k4VwP6/+f4ZDdUSOeINsmE/NjEKJKkDHWvT4RKpkX/+sGQ4sxNmTxGCKnCTgUJzt1O59xsn/S6Q3iPf0OJWkQ14zNgFwqTcYclGsPzfbUGYpWqsWoxjiFtbKgP/tgBXx0kfQrzobYSYsasWcwplkUhbNA2uWEpo4J+hNAhUF5yeTW5WpLC/FDXWRGtGr7TpTsm9rKKBdvaGch1mfq/Tl/FVAQCwXFRYFaaGP58uICcYyb8KH7A9uAmgZ20J7BO7MWHL22BMhETgedLTjtHQEcgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM4PR11MB7351.namprd11.prod.outlook.com
 (2603:10b6:8:104::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.12; Thu, 6 Nov
 2025 12:03:29 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%4]) with mapi id 15.20.9298.007; Thu, 6 Nov 2025
 12:03:28 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Ville Syrjala
 <ville.syrjala@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 5/7] drm/i915/ltphy: Nuke bogus weird timeouts
Thread-Topic: [PATCH 5/7] drm/i915/ltphy: Nuke bogus weird timeouts
Thread-Index: AQHcTocarcMzsDkLTkadoiOVPj9787TlfA+AgAAPX2A=
Date: Thu, 6 Nov 2025 12:03:28 +0000
Message-ID: <DM3PPF208195D8D46BC28CDE4965CD063A6E3C2A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251105190433.16434-1-ville.syrjala@linux.intel.com>
 <20251105190433.16434-6-ville.syrjala@linux.intel.com>
 <f5d014e2b968f6b758a6c96210528b7607675945@intel.com>
In-Reply-To: <f5d014e2b968f6b758a6c96210528b7607675945@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM4PR11MB7351:EE_
x-ms-office365-filtering-correlation-id: 20680f75-f862-4f4f-3d08-08de1d2c7f46
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?N3crL1FUZ29DMG41N1JsaTE1RFo5bE0xb1NWUktaK0Q2MkRZMjQzRjZjc0w3?=
 =?utf-8?B?Vk9VOFVaeVJYbTRFakpNL0RVY2hoM2hndEtFb09zWEhMWFlwUU5NclJuTEhW?=
 =?utf-8?B?NEdnY3U3b0JhbVQvOXZvdlBYeDF5RkhwWjZLeTlEUlYwR3hvWXlEdG1DQ1ha?=
 =?utf-8?B?dzJ5dHd0dHJCUkZ1Ylk0VVdsMkl2Wi9QWityelJaRHFOU2hJQk1hRW5pSFhM?=
 =?utf-8?B?UjFxT2dsb0Q5U1BvOEI0YnRtUTgyYnYvcmJvTEY1d2M4QUdTWXg1ZHQrYzNS?=
 =?utf-8?B?cUNPdmRsVU1CZ3hhcjViMFJOM2dDZnBNeENHaTdUVlZteVNiM1hHdVZVREdu?=
 =?utf-8?B?NEJrWFl6Q3FSZWVmSHhlKzY1ZWt5bU5iNkdBZTM0K1VJR2J5R1NMdGI1aUdD?=
 =?utf-8?B?ZkQyQnlSb2RBUHhDM0x5aDBTUldrTTlkZjVqa1pmeTVtbmZOYzd4ajdZU0xE?=
 =?utf-8?B?NlVIdVJ3dlFoTWNBZDcxdEdBWWFuNHNOWEU5ZEkvcmlXa01SdmVkaStDVU5l?=
 =?utf-8?B?SkJSZXNiSU5jL245VnArakxXSlZhMEt5N3YwWUxBakI3SUo2OVFwY3NxT0Fv?=
 =?utf-8?B?SC9RNFNxaHE0QzM0cGhPRm5HbXBRd2xtYzNVUEE1a0VCK2Mza3ZDTHVWcHlK?=
 =?utf-8?B?VFl2RUNJOUpuRU81c25CNGdEMDdjQzNYL1BKcUJXTkV1SmZ0YU91Vm5SM3F4?=
 =?utf-8?B?OXVSTnkwbUphNEl1N1oxMVU0RzZSVndTUHZxSkNqRiszbGFDdHFlQ2QwTEJq?=
 =?utf-8?B?dGY3TldxWEdiaVBtUWZ2bG9oTXhXZW1nNW9JbnNSaUdRRkNsMmo2Q05mZ0k0?=
 =?utf-8?B?SFZNdHRZY0o3UHJHcThNZnNCeElQVWtkSDYvbVpnbWVsMTNKTUxLS3JUOEVa?=
 =?utf-8?B?NUdmZGR0cDBkUHo2ZFBFY0FMbjhRdlZMendZdDZZbXBOcitQRkY0RG4xQTlV?=
 =?utf-8?B?cnB5MWF3azQrdXptYkNmVlErc00xVEUwV2ZEVzFPZ083YVRGdzRBM3dEUEpT?=
 =?utf-8?B?NkcxTDBjU1VEV0lIUy9qUmI1SGNSUE40YXM5YUxRVEprdmVCVjB5c01ORm5s?=
 =?utf-8?B?emQxekNGUTkyUTZMUGhqcVN3SjM5elEvb3E4akY3Ujl2dGV2aitEWTRqOFBw?=
 =?utf-8?B?d2pnNUtXQnZJaTJqM3JiK2lWZVZ2RWo2NGlvSXhHRmZtNlhYbkNCZkExNWlr?=
 =?utf-8?B?ZmVaZnBWRTMyVUN6eDJ5b2kvVEtTbExBUnBrMnRmZ1R6TGdwWm0yejB4WEVZ?=
 =?utf-8?B?VllqQ3ZaR3lpY2pnZTVLcGVQZmcrOEx6WlpnNXkrOGdiLzRvRC9MZmhDb3ZN?=
 =?utf-8?B?cUpmT3U1ZDRnOVRrYk9YQVBEWHhqMU1JZlBMbnV1ZS9TVVZCT2YxcENoR0NW?=
 =?utf-8?B?SGFCNStFV2tTeTJLY054UjZIbkJGTVlCT1lpcUlHSFpyeTBZMUlONDlpWm5K?=
 =?utf-8?B?cUs2Wnp4Vm5mUWZqR1BJTEEvRVlkMWI3Z2lGWElHU0ROK3VnbHhsQnJqZHVM?=
 =?utf-8?B?T3RUblczaGJIYmNoaGF1WjVvNlF4ZGRoRXYyNHN0TXRTOVNHU0F3QjVGbDMz?=
 =?utf-8?B?dTB2U3JRc245TnBDNWd6WUhaU3BRRnhTTEtXOGJ4d0VYaXgwcEtuVnhycWpx?=
 =?utf-8?B?RkhFM1QzZzBKSkkyNWVOTDMvZ3NCZVY5ZG9La3U3M0JISGdiRFR0Y2c4a1BG?=
 =?utf-8?B?aDhvV3pyRWdKdXFTWXp2emZzSzVYM3JIenpJc2NYRGFTNFFmdjM3RUJaMGtP?=
 =?utf-8?B?UjlXNGNGOXdMZE1OaFVsSHFxNnUwNEtOSlhGQU0wVGxZYzZ4OU8yVDNWUTJw?=
 =?utf-8?B?bmFsQjgycEJqK0ZiMUlPMi9laTJkMHBXQUVJT3RnbFd5bTRYZzNYVWpXV1I3?=
 =?utf-8?B?dy96ZzluK0J3cGloT1JLUHlJYTZ6WGtCM1d1TGZWOG0wLzdScmtUR01ZT2NW?=
 =?utf-8?B?S0tFV3F4cTN1N0Q5MU5mQTBtK25KNExJSHpvMWNqVGIwODRvQjJQYWFtWURy?=
 =?utf-8?B?bDRSeFBSb2hVV0RxVDVUSFExM3JCaTNLcU5tQ2FKOHlLclJCcXhvRExXY29P?=
 =?utf-8?Q?jzl4eF?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NjBpZ2IyNzZJYkZTalFhcGlPdUxjc1dRenE4MTNoZjZKMDRscnV3TFE3MFI0?=
 =?utf-8?B?SFVtVXhhVWxOOUFUcEJrdWlHQS9vVng0TDVEZDZscUVuQ2NnRlVCTWNpbVMx?=
 =?utf-8?B?a1o4RzhhR1M0VW9TUitJcDFCaVJqKzRELzczLzY1TDkrdEhlcHhZbzQ2aEVX?=
 =?utf-8?B?aVhkMFF0T2RFT2ltaGV1UDRNWmdWKzJOZzZtMUFLckY2U1A2aS94VXJ6ODh1?=
 =?utf-8?B?ekM1YWZpelYzaGY5dmNQaFZLWWxJbjBpZHF5bnZiWGlqeHJmd3N5RmRUV2Ni?=
 =?utf-8?B?S2RGUDFkRU5rTEtFRUYvMVRNVndGUTBpMUE3SjZkMkV1K0RrZGk4SlVmUWFx?=
 =?utf-8?B?eElTc3FQZGR3YU0zbkNxdGp2VFBqcjJSMEFnQmFnalFCei9kRDAyaTNJMGhI?=
 =?utf-8?B?N0VFYzNEWldWcllnNHYyMHpkME40THljWDJDWTdBMzlDZCt3cnl3dGVhTW5r?=
 =?utf-8?B?UGE3VVBUaW5HVUhCS092OHVOVW92cHZ6Ynh4aStVQ1BZYkFXMHdXYmg1VDZI?=
 =?utf-8?B?ajI5QzdFNldxd2RhVjhsdG5iLzk4RmEzMHFsbHZSK1NhanYzY0s1dnBiMEFX?=
 =?utf-8?B?WTRiMG9zcktBRy8xUGsrRWZlMnprd3NlK2NxcENEQUVNVG42dm5VUHg2ZEc5?=
 =?utf-8?B?aWhTZVFQN09XNVVxUHN6SGg1RTZlRlF4amRNTExTT1h5Z1pVSngvcWpzMGhE?=
 =?utf-8?B?cGJ6RmppU2NzUXNKeWhPZjNFUklZQ0E3WlAvcVF5a2pZQS9zZ2RBZ3RCTzJR?=
 =?utf-8?B?akp1RnNyeUw2RURtRWVha3p0SkJkS24rOVQ4bjQ2S1JmaklZZnNTS0trRkhY?=
 =?utf-8?B?SnBDS2JWeXdzZVhnMFlrWDNHRU1IZjdvcjhmM1FzSFd3Z3B3RWNBdnhDRmJt?=
 =?utf-8?B?S3VrWG1OWnV5NEpxUXhkRG9xN0h5Y2hpcmhMV2xWSUxRZ2hGaTJpV1dsajRn?=
 =?utf-8?B?dENxWFZHQ2pMQWJxSngxRGZFazNBUGhPOEE1RjZMalF6MGdQeE9waFdSM2Zv?=
 =?utf-8?B?SkEvdjZ6RW9IMmJaWnVyc1lSYnhhdG1DWWdiQjlLV043Z1RUVXg1NnBhR3gz?=
 =?utf-8?B?dURwNVBaWjBjZDYyWGFqay9DdU54b2dHeldOdlBUd3VtaE1GVUErbVE4alNN?=
 =?utf-8?B?U3ljN3hVZ256b2FZRE9lUk95T01McUtkcjIrSFNXTVp4dTlpQTRDMEFJQkU0?=
 =?utf-8?B?ZlBVaUdnR0NRWGdiVGxpTFArMXRwL252UlIrYWQ4RFplOHBNZzIwemMvSzZZ?=
 =?utf-8?B?Q1Y2ckZ1VDlEcGJPM0grdWgvazY4cXZ0UTNjYjl6ZFRmTXZkNlBRY2FZSHZL?=
 =?utf-8?B?M3BLa1RrVFZpV1hqUGcxT01DSnNqazBtanN5SkZONEFudVI2bzNvYWovdFFv?=
 =?utf-8?B?U3ltSFhpUy9DSTZUMHRhd255OHY2OVpYNzIzWTJ6ODVvNmxTeU5NQ01FRnR2?=
 =?utf-8?B?NjNYOS9iRmJDZEl3YUl5eWdydElPS01QREZLUENQTXBZZDMyb3piOWEyaG53?=
 =?utf-8?B?d3Vta0RxZzJyd0tUVWJ6NVZSYnkrVGlHa1M5VXV1ZVNxc2tkc01ZZlZXTnps?=
 =?utf-8?B?OU9MV0d5eEdoVEdJUWJoRFpRY2x6bGdxd1lnNm5JTFU0VTYvZ05jWENiRjFj?=
 =?utf-8?B?RE1FeDZoM21hci9SdkVLY0Q1UHUxbFVGU2pXVDlEWjNKR01NWURFSGdWSGtN?=
 =?utf-8?B?VFZFZTAyUmY3RVZ4cGVyUVB6dTMwQWJQMXRJaFFScjRyWk1MdlY5aXJHY0hP?=
 =?utf-8?B?MktWc1pVeEw5TmduZ1VXbUV6T0V4WnNLQ1hxdUx6UkgyeXBhenErL1FYS1Ru?=
 =?utf-8?B?NzhuNTdpbVB5V3dyZUsvZjI4R3NjYmp5LzJhU0xiVkJtL24xVExZbUVZMEdT?=
 =?utf-8?B?WUkreFlkSHQ4MGNXcjIxdjZnUHNOaDJQY1ZiSjM3RVBzVXc4c2dwTmlYRjUv?=
 =?utf-8?B?K3hYTW0zZHp4RVh3YS9LUStMOERxd2p3ZzVlaGdCTE5yd3MyOEdiSXVONDZV?=
 =?utf-8?B?ZGFqa0dTOEZCdlk2cnB0SW5xVmlWN3E4akk1MDN3WDdlTkNaQmsxZHA0QUh4?=
 =?utf-8?B?UkRUNWtGV25NWFRCbkpFc0NCWW5vcFJ3OFBrSUVhYUF3cWNJeUZjMnhiUmN1?=
 =?utf-8?Q?l2AjH+VTgNolTSP9rgvWFs/wn?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20680f75-f862-4f4f-3d08-08de1d2c7f46
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2025 12:03:28.3609 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OX7aVsOkcZWtTetUZsDcj4N2IN/eOtSWgV5YO16Gcjka2cwcNrdbyojrR6vKwyc1VW5nLy9wUpeeiPKivbCqlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7351
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

PiBTdWJqZWN0OiBSZTogW1BBVENIIDUvN10gZHJtL2k5MTUvbHRwaHk6IE51a2UgYm9ndXMgd2Vp
cmQgdGltZW91dHMNCj4gDQo+IE9uIFdlZCwgMDUgTm92IDIwMjUsIFZpbGxlIFN5cmphbGEgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPiB3cm90ZToNCj4gPiBGcm9tOiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+DQo+ID4gVGhlIExUIFBI
WSBjb2RlIGlzIGFidXNpbmcgaW50ZWxfZGVfd2FpdF9jdXN0b20oKSBpbiBhbGwga2luZHMgb2YN
Cj4gPiB3ZWlyZCB3YXlzLiBHZXQgcmlkIG9mIHRoZSB3ZWlyZCBzbG93IHRpbWVvdXRzLiBJZiB0
aGVzZSBhcmUgYWN0dWFsbHkNCj4gPiBuZWVkZWQgdGhlbiB0aGUgZmFzdCB0aW1lb3V0cyBzaG91
bGQgcmVhbGx5IGJlIHNwZWNpZmllZCBhcyB0aGUNCj4gPiBkZWZhdWx0IDIgbWljcm9zY29uZCBv
ciBzb21ldGhpbmcuDQo+ID4NCj4gPiBUaGlzIHdpbGwgbGV0IHVzIGV2ZW50dWFsbHkgbnVrZSBp
bnRlbF9kZV93YWl0X2N1c3RvbSgpIGFuZCBjb252ZXJ0DQo+ID4gb3ZlciB0byBwb2xsX3RpbWVv
dXRfdXMoKS4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBTdXJhaiwgYW55IGlucHV0IGhlcmU/DQo+
IA0KPiBSZXZpZXdlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4g
DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHRfcGh5
LmMgICAgICB8IDExICsrKysrLS0tLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfbHRfcGh5X3JlZ3MuaCB8ICAxIC0NCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCA1IGlu
c2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sdF9waHkuYw0KPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sdF9waHkuYw0KPiA+IGluZGV4IDZmYjY4MTU3YjMyMi4u
Y2MxZDZiN2E3ZGU0IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfbHRfcGh5LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2x0X3BoeS5jDQo+ID4gQEAgLTExNzgsMTAgKzExNzgsOSBAQCBpbnRlbF9sdF9waHlf
bGFuZV9yZXNldChzdHJ1Y3QgaW50ZWxfZW5jb2Rlcg0KPiAqZW5jb2RlciwNCj4gPiAgCWlmIChp
bnRlbF9kZV93YWl0X2N1c3RvbShkaXNwbGF5LCBYRUxQRFBfUE9SVF9DTE9DS19DVEwoZGlzcGxh
eSwNCj4gcG9ydCksDQo+ID4gIAkJCQkgWEVMUERQX0xBTkVfUENMS19QTExfQUNLKDApLA0KPiA+
ICAJCQkJIFhFTFBEUF9MQU5FX1BDTEtfUExMX0FDSygwKSwNCj4gPiAtCQkJCSBYRTNQTFBEX01B
Q0NMS19UVVJOT05fTEFURU5DWV9VUywNCj4gPiAtCQkJCSBYRTNQTFBEX01BQ0NMS19UVVJOT05f
TEFURU5DWV9NUywNCj4gTlVMTCkpDQo+ID4gKwkJCQkgWEUzUExQRF9NQUNDTEtfVFVSTk9OX0xB
VEVOQ1lfVVMsIDAsDQo+IE5VTEwpKQ0KPiA+ICAJCWRybV93YXJuKGRpc3BsYXktPmRybSwgIlBI
WSAlYyBQTEwgTWFjQ0xLIGFzc2VydGlvbiBBY2sNCj4gbm90IGRvbmUgYWZ0ZXIgJWR1cy5cbiIs
DQo+ID4gLQkJCSBwaHlfbmFtZShwaHkpLA0KPiBYRTNQTFBEX01BQ0NMS19UVVJOT05fTEFURU5D
WV9NUyAqIDEwMDApOw0KPiA+ICsJCQkgcGh5X25hbWUocGh5KSwNCj4gWEUzUExQRF9NQUNDTEtf
VFVSTk9OX0xBVEVOQ1lfVVMpOw0KDQpBY2NvcmRpbmcgdG8gQnNwZWM6IDc0NDk5DQpMYXRlbmN5
IGNhbiBiZSBlaXRoZXIgMjF1cyBmb3IgMW1zIGRlcGVuZGluZyBvbiB3aGF0IHBvcnQgaXMgY29u
bmVjdGVkLg0KDQogPiA+DQo+ID4gIAlpbnRlbF9kZV9ybXcoZGlzcGxheSwgWEVMUERQX1BPUlRf
Q0xPQ0tfQ1RMKGRpc3BsYXksIHBvcnQpLA0KPiA+ICAJCSAgICAgWEVMUERQX0ZPUldBUkRfQ0xP
Q0tfVU5HQVRFLA0KPiA+IEBAIC0xMTkyLDcgKzExOTEsNyBAQCBpbnRlbF9sdF9waHlfbGFuZV9y
ZXNldChzdHJ1Y3QgaW50ZWxfZW5jb2Rlcg0KPiA+ICplbmNvZGVyLA0KPiA+DQo+ID4gIAlpZiAo
aW50ZWxfZGVfd2FpdF9jdXN0b20oZGlzcGxheSwgWEVMUERQX1BPUlRfQlVGX0NUTDIoZGlzcGxh
eSwNCj4gcG9ydCksDQo+ID4gIAkJCQkgbGFuZV9waHlfY3VycmVudF9zdGF0dXMsIDAsDQo+ID4g
LQkJCQkgWEUzUExQRF9SRVNFVF9FTkRfTEFURU5DWV9VUywgMiwgTlVMTCkpDQo+ID4gKwkJCQkg
WEUzUExQRF9SRVNFVF9FTkRfTEFURU5DWV9VUywgMCwgTlVMTCkpDQoNCkJzcGVjIDogNzQ0OTkN
ClNheXMgMjAwdXMgYnV0IDJtcyAoMS41bXMgdG8gYmUgcHJlY2lzZSkgd2FzIHRoZSBhY3R1YWwg
dGltZSB3ZSBmb3VuZCB0aGUgdGhpcyB0byB3b3JrIHByb3Blcmx5DQoNCg0KPiA+ICAJCWRybV93
YXJuKGRpc3BsYXktPmRybSwNCj4gPiAgCQkJICJQSFkgJWMgZmFpbGVkIHRvIGJyaW5nIG91dCBv
ZiBMYW5lIHJlc2V0IGFmdGVyDQo+ICVkdXMuXG4iLA0KPiA+ICAJCQkgcGh5X25hbWUocGh5KSwN
Cj4gWEUzUExQRF9SRVNFVF9FTkRfTEFURU5DWV9VUyk7IEBAIC0xNjc0LDcgKzE2NzMsNw0KPiA+
IEBAIHZvaWQgaW50ZWxfbHRfcGh5X3BsbF9lbmFibGUoc3RydWN0IGludGVsX2VuY29kZXIgKmVu
Y29kZXIsDQo+ID4gIAkJaWYgKGludGVsX2RlX3dhaXRfY3VzdG9tKGRpc3BsYXksDQo+IFhFTFBE
UF9QT1JUX0NMT0NLX0NUTChkaXNwbGF5LCBwb3J0KSwNCj4gPiAgCQkJCQkgWEVMUERQX0xBTkVf
UENMS19QTExfQUNLKDApLA0KPiA+ICAJCQkJCSBYRUxQRFBfTEFORV9QQ0xLX1BMTF9BQ0soMCks
DQo+ID4gLQ0KPiBYRTNQTFBEX01BQ0NMS19UVVJOT05fTEFURU5DWV9VUywgMiwgTlVMTCkpDQo+
ID4gKw0KPiBYRTNQTFBEX01BQ0NMS19UVVJOT05fTEFURU5DWV9VUywgMCwgTlVMTCkpDQoNCkRp
dHRvIGhlcmUuDQoNCj4gPiAgCQkJZHJtX3dhcm4oZGlzcGxheS0+ZHJtLCAiUEhZICVjIFBMTCBN
YWNDTEsgQWNrDQo+IGFzc2VydGlvbiBUaW1lb3V0IGFmdGVyICVkdXMuXG4iLA0KPiA+ICAJCQkJ
IHBoeV9uYW1lKHBoeSksDQo+IFhFM1BMUERfTUFDQ0xLX1RVUk5PTl9MQVRFTkNZX1VTKTsNCj4g
Pg0KPiA+IEBAIC0xNzAyLDcgKzE3MDEsNyBAQCB2b2lkIGludGVsX2x0X3BoeV9wbGxfZW5hYmxl
KHN0cnVjdCBpbnRlbF9lbmNvZGVyDQo+ICplbmNvZGVyLA0KPiA+ICAJCS8qIDE2LiBQb2xsIGZv
ciBQT1JUX0JVRl9DVEwyIHJlZ2lzdGVyIFBIWSBQdWxzZSBTdGF0dXMgPSAxDQo+IGZvciBPd25l
ZCBQSFkgTGFuZXMuICovDQo+ID4gIAkJaWYgKGludGVsX2RlX3dhaXRfY3VzdG9tKGRpc3BsYXks
DQo+IFhFTFBEUF9QT1JUX0JVRl9DVEwyKGRpc3BsYXksIHBvcnQpLA0KPiA+ICAJCQkJCSBsYW5l
X3BoeV9wdWxzZV9zdGF0dXMsDQo+IGxhbmVfcGh5X3B1bHNlX3N0YXR1cywNCj4gPiAtDQo+IFhF
M1BMUERfUkFURV9DQUxJQl9ET05FX0xBVEVOQ1lfVVMsIDIsIE5VTEwpKQ0KPiA+ICsNCj4gWEUz
UExQRF9SQVRFX0NBTElCX0RPTkVfTEFURU5DWV9VUywgMCwgTlVMTCkpDQoNCkRpdHRvIGhlcmUu
DQpJIHdvdWxkIHN1Z2dlc3QgZ2l2aW5nIHRoaXMgYSBDSSBydW4gb24gTlZMUyBiZWZvcmUgbWVy
Z2luZyB0aGlzLg0KDQpSZWdhcmRzLA0KU3VyYWogS2FuZHBhbA0KDQo+ID4gIAkJCWRybV93YXJu
KGRpc3BsYXktPmRybSwgIlBIWSAlYyBQTEwgcmF0ZSBub3QNCj4gY2hhbmdlZCBhZnRlciAlZHVz
LlxuIiwNCj4gPiAgCQkJCSBwaHlfbmFtZShwaHkpLA0KPiBYRTNQTFBEX1JBVEVfQ0FMSUJfRE9O
RV9MQVRFTkNZX1VTKTsNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2x0X3BoeV9yZWdzLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfbHRfcGh5X3JlZ3MuaA0KPiA+IGluZGV4IDkyMjM0ODdkNzY0ZS4uMzZh
YmMyYmRiZDliIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfbHRfcGh5X3JlZ3MuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfbHRfcGh5X3JlZ3MuaA0KPiA+IEBAIC03LDcgKzcsNiBAQA0KPiA+ICAjZGVmaW5l
IF9fSU5URUxfTFRfUEhZX1JFR1NfSF9fDQo+ID4NCj4gPiAgI2RlZmluZSBYRTNQTFBEX01TR0JV
U19USU1FT1VUX0ZBU1RfVVMJNTAwDQo+ID4gLSNkZWZpbmUgWEUzUExQRF9NQUNDTEtfVFVSTk9O
X0xBVEVOQ1lfTVMJMQ0KPiA+ICAjZGVmaW5lIFhFM1BMUERfTUFDQ0xLX1RVUk5PTl9MQVRFTkNZ
X1VTCTIxDQo+ID4gICNkZWZpbmUgWEUzUExQRF9NQUNDTEtfVFVSTk9GRl9MQVRFTkNZX1VTCTEN
Cj4gPiAgI2RlZmluZSBYRTNQTFBEX1JBVEVfQ0FMSUJfRE9ORV9MQVRFTkNZX1VTCTUwDQo+IA0K
PiAtLQ0KPiBKYW5pIE5pa3VsYSwgSW50ZWwNCg==
