Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 439FF8A0C2E
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Apr 2024 11:20:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27FF210EF7D;
	Thu, 11 Apr 2024 09:20:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RB4FfJLE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF25B10EF7D
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Apr 2024 09:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712827213; x=1744363213;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=CfPUBZrfP6RW+jVcQwVFl0XmxqzdWePsSAFoXVHGvOE=;
 b=RB4FfJLERR6BcPaLlJy88jl2ZdNF7p+YE5JNJfEkPDE6VSVS8uPSB8cC
 ReD+s8pew6m+ApZSlTWdD2qyXir+5sxs3K89BSZxB0KiJR+iTX8h2Klhy
 N8QxUhiqPQSBaGI3PNtQuPCfbiimD2ld+qlOU+pnczrXlfi9kYEAN3rhF
 RJHCBH3mgvHi6PB4beihpI9eyO3X/PsLlkvjVGg4eSF5yI63vUxvQH7Pp
 D8qQEWBoauNKtAX7wB9GFeUGf6tA5eMHGhXD15I9EEV4vkNp8wYkP6nBH
 ja3GigqEWIiCXMIa4WcaL+A/Hnq77SmetoJ81mv/I69bHPUwfsWhvMVz5 w==;
X-CSE-ConnectionGUID: mpO4MHChTf6Pyhh6BLgVPA==
X-CSE-MsgGUID: 45h+SoAIRhi1wkem1xixlQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="8080109"
X-IronPort-AV: E=Sophos;i="6.07,193,1708416000"; 
   d="scan'208";a="8080109"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 02:20:13 -0700
X-CSE-ConnectionGUID: pTzjojs8QAK8wcstGtfczg==
X-CSE-MsgGUID: TVasf7YWRwm7X1HW2h6tlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,193,1708416000"; d="scan'208";a="25615589"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Apr 2024 02:20:14 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Apr 2024 02:20:12 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 11 Apr 2024 02:20:12 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 11 Apr 2024 02:20:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NJrImG6OHgMHfXnM1ApWigG/kna1BLPQXyZ3VOIgiQg6nrdu65XJBk6Ztk2uj1vE2bdr2ZxmyZ8ht15Wj9FnzFcv/t3C1KP5YFFaSPjf7e5S/WiVTILQbWa5aS/TC0Ppa2bNgO4m+gOrL1hFrp6ZKZyI6Qo7aYMRFL/46Crs3IDMQJBQq5/I5ucDappvEb9rUF+kPKfc6j5NORLWZ4y24CLPXznSEQoBp+JLpQlTU90sTsALFkDndR5ab5yg4OwYMhY7d78VdlBa6CWwFExIIIG06VO1KYzUHVeDKJvdI7QkehjuHRgwgzLPCL/1/wrtY5z717oA2lo875L1g0P9Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CfPUBZrfP6RW+jVcQwVFl0XmxqzdWePsSAFoXVHGvOE=;
 b=jbDdVRZuAGpMzc2aUnEa3Lq7ue3s172GwWlRRkPLfrg0hHr0qhtuXMxzEQKNB6UOo/vnztovtVk0Lb7k/YCW/+jmJAGJwL1PpNzyWFczTPfVYJhNP1j7eZBtOgYhpaBV4Grd38KYZ8Vna3imWOh4dyIYxY21zE1n3Zaxsg4wXzR5GygpMgJECH0wcnDp2TPz/Ze+wLhMyHBLHeD+BNPUQ3P+yddSGxkndaFN/12VH3hHJjHyBhObJ/WYiL0CkvpNdLvfL6ZwDQuSMULbqB/4eiw9YZ2yxOl/8CKPLS0A8YUyQoImBCjG13jepkiwRO9+8qk9ytu0bwMRIdBynjW9Tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CO1PR11MB5012.namprd11.prod.outlook.com (2603:10b6:303:90::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7452.26; Thu, 11 Apr 2024 09:20:10 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::bccd:7928:80ae:179f]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::bccd:7928:80ae:179f%5]) with mapi id 15.20.7452.019; Thu, 11 Apr 2024
 09:20:10 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/psr: Use crtc_state->port_clock instead of
 intel_dp->link_rate
Thread-Topic: [PATCH] drm/i915/psr: Use crtc_state->port_clock instead of
 intel_dp->link_rate
Thread-Index: AQHailwW/ewlnTHAuECjVOQxZvL8SbFijneAgAA/tQA=
Date: Thu, 11 Apr 2024 09:20:10 +0000
Message-ID: <35f71d157081fa53f2b627eff726851571ac8068.camel@intel.com>
References: <20240409085759.178235-1-jouni.hogander@intel.com>
 <PH7PR11MB5981547B4F248079689908BDF9052@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB5981547B4F248079689908BDF9052@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CO1PR11MB5012:EE_
x-ms-office365-filtering-correlation-id: 59f5320b-d6eb-4914-0ebd-08dc5a08962f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Dabgv1H+ilt1wwBl6WCZrqi7zbs5PE40b3tkhU4P51LBVDh7CxZ5WMCg4MBDSOpM+2wWi8eyjI4bi9LsgQteKHAXS3mvYABP5Sd3zxwPx09w9rH6AIYx7z1SZZl1V7d9Tgl2+loO/r/Myz4wztAkp/w5iRlWR0weR/f8uJIlq1FEMf3YZ0J6pyXZfOxCYnU2HZCCoN4zg2t5w2a8zVq50jHm985IYFl2rl1FX6q6UiUxivu1vA7dJS96g/KNoRnT5faS92JUPq3HXphd3Pzc3Pdgm/wYbIpWq6YgcQW1ly5tt/9boQ+Cs6TDKDABEaU7bOAE8ANeGwoov4g0DOAnnqNyA3S+F2fbkJFLRmhWO+OBWqWx6M9EqebqkysonPjHOdv9BCs6j0UjBtheLIJz8KksPT0W+JYL53Kj0giATGEqSGRDV3dQrSHjQW7hIlqcJsz6YyNtRUi6GgIxav4BdWnll62NmMM+A4oqyr2EZPQUYHzfFA/LOQuuZVkllTQD2bnApVKgr0Te2Lpw8O282pVjd1hkTUcysqEGVYy9mC3Sl20CgsLpvW/jCk1CCZhlaQCSwiTp+dT2aKMOWCx8yQZAgxYeV4zjQoesPK7j5cBXVWxWLyyhzqA8GlPRUifmbqnyAwDYXRWtmEWC090ZA5aVDSkGsz0ZHGLJXTd/kG7GuqmBO+UNGhENxFMyf2JHFleoTKy9h13wSHZ9nRFxvRDLwglKjEOZCdZ6JLeT7Hs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U1VsaWd6d1Y2ZUc5MlJVdUpDd2NyTzdtKzFPWFc4TXVWRDJoSC92M3l5V1Jh?=
 =?utf-8?B?aU9xOFptY2dQTDJSYnNzYjRRWkJYRXVpQ1VYV3hyY2NOdXdhbVVjdE1wMURz?=
 =?utf-8?B?ak02TUpadE5ydjlBZVZEeEJwSlZJcWZSdlVBOTNFQVZPSTU2ci9JanhIQUo5?=
 =?utf-8?B?QTRDMmNJaU4rWUp6K1kxc2dLSXRNQ3BCTTRxQUdsK3k5QmdJRzFqMlBHdGxF?=
 =?utf-8?B?ak9nNXJmbG9OZitoTzBvNVZSSDJTL3hoempxNlRDWWxuVVNMTWk1YXB3WEU4?=
 =?utf-8?B?aFRyUTZQYTM1S1NpUm1Ta2tJU0Y0L3dRUTByeFNubmtLYWRnN2hwK3Y0L1NR?=
 =?utf-8?B?VDdvN3k5K2lqOUhJalBVbmJqTmN0U0R3Um5Gbk5XV3BJemVQaHZleTZsbG43?=
 =?utf-8?B?NDlQV3paRnd2OUx6THFqM1JmRytBZ0l0clpVTHlvUGZ6Ym9TVTM5OTFZT0lK?=
 =?utf-8?B?VDIyYUtNaktlNzdBRjdYM2MveXk2MUxVUXh6eHZoaW1xbmFJY3MwSWxETGxp?=
 =?utf-8?B?SGJHL1FoNjQvQzUrdkVjUzFodVc0QVZRTFhjSWZMNmhZdTlPTnNDMENZWkpI?=
 =?utf-8?B?NGJRaUFMRWZ1dDZKVkZ5Z2dkSkY5R0lUemRaMlg4WVhmKzgrM3hicUFkbVZ4?=
 =?utf-8?B?SGVBRnE4Rm5hUVhseWdnV1k2VUlPUDNrdEQ5eFZzdjdqWStNZnI2UWRid3pG?=
 =?utf-8?B?SXV5dFdyd3drcjhjcnp3ZUxzOUE2VTEwWjhQRmVQWHpQR1NaTEEzbUp0N0E4?=
 =?utf-8?B?T1NOMEt1bEhvMENnTDJBNEZsTzAxL2VHSHVLVExSdm5EZVRkNFJRZ200VU1H?=
 =?utf-8?B?a3RFU0dFbk56VGFYNHhWQXlJbHRvKzNTSkdoeEFJb0xRTHVzc2VzUzJxOUtW?=
 =?utf-8?B?ZXR2UXVtMDBNbThJUjBOOWI0ZVhDM05MOVBJaHpZdVRvd0FFMG9kc2t1d0Y2?=
 =?utf-8?B?RkN6b2RuNG5PN0syRGVaTVdOcTh0SUt1R1RXSHRvck85b1hRTlRsZCtBWDFo?=
 =?utf-8?B?SkMrcW5XRUtGTTNhdW5pcEZqL3JNaDJSWFpLeGtibWZGRmJjRTloYlZld2ZM?=
 =?utf-8?B?M3pOSlErY1M0L3QxclhOUmgwVXh3TmRzR0pzVDhnMSt1T2hUL1daNWJCeDFk?=
 =?utf-8?B?TGphLzFiTnFrYWhrT2VOYXU5Z2FqMUhPYXhBZDBmZ3oxaDJFYkczSk1ZK0V0?=
 =?utf-8?B?VUpKQlZZVjZYU21uN2p3WVRoaG8zQVRzY1NLVDZNOVFvNEY0NE04RmNmNStN?=
 =?utf-8?B?WkJ1UXdrQ2Y4WkNFQUN5d3hQd01lM0d6emRRdGZJdDlpQlB6MUtvYkFjemJt?=
 =?utf-8?B?NEFOSU9XVU9Db1FWWnEvNmt3OWxTSytvUUtMVjNzN2padmg4TGkxc3J0VW92?=
 =?utf-8?B?TkRDaFFOQ1pBVXRrSHFKMnpMQXd2eHVHMlVUTDBrcTFmdldsYjJXbVl1bFVW?=
 =?utf-8?B?NGsvcm5RTGJNTVI4dVRlMVFIbXRmdFNOTGE1cXpHZFNQelR4S3E2Tm1XTVdP?=
 =?utf-8?B?dks2TDNaTm1uMHpuOURYNEpZa2JqckRFYW1pT20xY0dFZmNLbEFaVzd6WHpw?=
 =?utf-8?B?RlJVUmFzQ3hqd3RHNHJuUVUydW84cmcyYjAzYTNnS0hqTWw1eC9rMkVGRVcv?=
 =?utf-8?B?NTlpNWxzVFhYSnMvTGZ1R0lEOXorT3VJQThyZTg5aXZVckNCc3lnVkxnZEcw?=
 =?utf-8?B?dlAvRWovQkFad1dCazhuNUJXYXZZNHhzV3oxOHlZR01vSHo0V0R2WGpMd3pX?=
 =?utf-8?B?UFFVck9NMzZndGFoU0VGcDRORVJuQUVHOG1jRWpHY0wyQm5wZ25yanRvazd3?=
 =?utf-8?B?VTcrdEI4WWFwbU9UUHRvQzRmWW90Vno2RTRLL0dhL2VYUEEwbThiOXQyQVZz?=
 =?utf-8?B?VkxleDU3MHh4cEFsaUxsYVlRRkUwQjdmSXo4ZkhBd003ekY1Q3VicHdMM3Nr?=
 =?utf-8?B?NVVvVFQ2cWgvUGYzM0N6VnJDNURPbW96T2RqWlJ4UUVEKzRXcFI4VjdmNkhF?=
 =?utf-8?B?WE9LZWlFeDVKSm5OMDRQZmJvRG5seUxiOElQWWw2R1RYWWRFUXkwbDRwSmlt?=
 =?utf-8?B?L29Venc0cW9uSlF6cjVzWjRhZUg5L3hIcEZBa0tzRWlMbjZBYmpCSjVGRnRP?=
 =?utf-8?B?WUZXNE0xMjQxZDZrdUtKS0JFU1UxNVkzZ1ltSUMvTHA1bEpxNmwxRHl2c1JO?=
 =?utf-8?B?Y1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8412487D44672746AF09A7668568E8FD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59f5320b-d6eb-4914-0ebd-08dc5a08962f
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2024 09:20:10.5285 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zv/C2HHjckRSo0cC+gVJs8ew/8SM3zHUXD+GPnJpOJxLOrfe15l9n9KBjFYsHNKoPvgpyvdMnt+PRz5Ue5dB2v8eoUE9JJW21ZX8tB+2teI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5012
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

T24gVGh1LCAyMDI0LTA0LTExIGF0IDA1OjMyICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToK
PiAKPiAKPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiBGcm9tOiBIb2dhbmRlciwg
Sm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4KPiA+IFNlbnQ6IFR1ZXNkYXksIEFwcmls
IDksIDIwMjQgMjoyOCBQTQo+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
PiA+IENjOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBIb2dhbmRl
ciwgSm91bmkKPiA+IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+Cj4gPiBTdWJqZWN0OiBbUEFU
Q0hdIGRybS9pOTE1L3BzcjogVXNlIGNydGNfc3RhdGUtPnBvcnRfY2xvY2sgaW5zdGVhZAo+ID4g
b2YKPiA+IGludGVsX2RwLT5saW5rX3JhdGUKPiA+IAo+ID4gSW50ZWxfZHAtPmxpbmtfcmF0ZSBp
cyBub3QgeWV0IHNldCBhdCB0aGlzIHBvaW50LiBJbnN0ZWFkIHVzZQo+ID4gY3J0Y19zdGF0ZS0K
PiA+ID4gcG9ydF9jbG9jay4KPiA+IAo+ID4gRml4ZXM6IDBkZDIxZjgzNjk4MyAoImRybS9pOTE1
L3BzcjogU2lsZW5jZSBwZXJpb2QgYW5kIGxmcHMgaGFsZgo+ID4gY3ljbGUiKQo+ID4gU2lnbmVk
LW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+Cj4gCj4g
UmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPgoKVGhh
bmsgeW91IEFuaW1lc2ggZm9yIHlvdXIgcmV2aWV3LiBUaGlzIGlzIG5vdyBwdXNoZWQgdG8gZHJt
LWludGVsLQpuZXh0LgoKQlIsCgpKb3VuaSBIw7ZnYW5kZXIKCj4gCj4gPiAtLS0KPiA+IMKgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDIgKy0KPiA+IMKgMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiA+IGluZGV4IDdhZjk3NGJiNDFj
YS4uZjViMzMzMzVhOWFlIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYwo+ID4gQEAgLTEyNzYsNyArMTI3Niw3IEBAIHN0YXRpYyBpbnQKPiA+IF9sbmxf
Y29tcHV0ZV9hdXhfbGVzc19hbHBtX3BhcmFtcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAo+
ID4gwqDCoMKgwqDCoMKgwqDCoGF1eF9sZXNzX3dha2VfbGluZXMgPSBpbnRlbF91c2Vjc190b19z
Y2FubGluZXMoJmNydGNfc3RhdGUtCj4gPiA+IGh3LmFkanVzdGVkX21vZGUsCj4gPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAKPiA+IGF1eF9sZXNz
X3dha2VfdGltZSk7Cj4gPiAKPiA+IC3CoMKgwqDCoMKgwqDCoGlmICghX2xubF9nZXRfc2lsZW5j
ZV9wZXJpb2RfYW5kX2xmcHNfaGFsZl9jeWNsZShpbnRlbF9kcC0KPiA+ID5saW5rX3JhdGUsCj4g
PiArwqDCoMKgwqDCoMKgwqBpZgo+ID4gKyghX2xubF9nZXRfc2lsZW5jZV9wZXJpb2RfYW5kX2xm
cHNfaGFsZl9jeWNsZShjcnRjX3N0YXRlLQo+ID4gPnBvcnRfY2xvY2ssCj4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgCj4gPiAmc2lsZW5j
ZV9wZXJpb2QsCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgCj4gPiAmbGZwc19oYWxmX2N5Y2xlKSkKPiA+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZhbHNlOwo+ID4gLS0KPiA+IDIuMzQuMQo+IAoK
