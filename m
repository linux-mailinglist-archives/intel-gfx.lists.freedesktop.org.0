Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8AC89B711
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 07:09:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8670611204F;
	Mon,  8 Apr 2024 05:09:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B7feEdF9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEFD711204C
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Apr 2024 05:09:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712552953; x=1744088953;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=8L+lAMNEpO+vAoFzp3HdjpIs5Y5qPqrixXXFeFybxrQ=;
 b=B7feEdF9iFdCVHNqGPNZ3Ld3LMt2sQ58/Sqr+g6lcxnuRqA9BeFHFrdt
 x+a4oE/cBTdrc/ierU16TKcqUgm4mquEVm+ei+NcgIqtoPW9LNlDvgTnq
 IFsxwluAANO/NsYB9eu1x3U3FUIp8sf+EnZLD7V/N8ecJca3qNEp2Sw2J
 LeXOYFmI6kdWnHrzsvAN+uVoLnt75M4X6pCFYfT+oAWyeF0ekp/2+xAnX
 yvlKNpm4qHRVQmhglBq/xL6xy4z5daFGqGVhtM0yvUtqv+b3AIkp4HzIv
 doBMf6zDlmgoAzfZYsYkVjM6faFhf+OepIGgrpLf2aGtyMU5xjjwdeZzt g==;
X-CSE-ConnectionGUID: lVLSMTEZS+qrmEJH3/oJ9g==
X-CSE-MsgGUID: Pu7LpBZhToybuR9rT/nmug==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="11644642"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="11644642"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2024 22:09:13 -0700
X-CSE-ConnectionGUID: XRXkbfukQnOMABMBV6TWfw==
X-CSE-MsgGUID: I2vOZcWxTCevAMER3NXm8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="24533683"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Apr 2024 22:09:13 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 7 Apr 2024 22:09:12 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 7 Apr 2024 22:09:11 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 7 Apr 2024 22:09:11 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 7 Apr 2024 22:09:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eE1HiPnwrRrGY6qq26jpA7cNdrjBY4LsdqEuyhkuVSeth9qZAcmDTSPFDZzewY3Bk4sSNKZf1plQcGWyjjLhKAlM8yq0KFEHdm0zGGjoKiDvqaeGN12Zp+uGHOAdt4bKoDj0pKv7FTef9FxYDNBXTP00TZlJJ/hMVH0CplOxoj2ORDXmaRie37j5cwtxbP9qQBQbpyx2TfgBMk0zHelCic8TXmA9irOX1SiILkF63dneJu4gV014eoWQcR7m8B8D08R6CibBJqnI//FGLMDhQux/lvZMnN+FRRkxDQO/2BbXi0z96MsvEU/r0vUrlMD0rMJn4ItE/VI7yvSIxe14cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8L+lAMNEpO+vAoFzp3HdjpIs5Y5qPqrixXXFeFybxrQ=;
 b=WxAvxgLEkL3g5XK2cvIZlaux/YEP37zq4D6hC17lLSOlW4ndpzUB5xRFnvyZXFxZVZ7eyHmaClfW1qdIBqEtHuGLNWSpa/CSk6B2hRwHFyZovveyuO2YnNvVYD19aAJWjrf4BdE44VYAz6WLPi9UehKfBxt8X+lla97fXhfVRYloWI4ti/RxX5rfXJHlYHlsDj9iFwGnZtOdYyzhrdl+QIHsFKT13W2tTMehIGJcIlfmyXVVNX46BYO3R8glNiZN6XrV+AH0uir7/gQ1G5Og6aSMM/jcYTqyQ/7B6LA0HyaGFg5XHtVoGWe4ppBHJYOvhAtmtWZI1+YyqHDKf3HX4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CH3PR11MB7371.namprd11.prod.outlook.com (2603:10b6:610:151::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.10; Mon, 8 Apr
 2024 05:09:04 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::bccd:7928:80ae:179f]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::bccd:7928:80ae:179f%5]) with mapi id 15.20.7452.019; Mon, 8 Apr 2024
 05:09:04 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 02/17] drm/i915/psr: Disable PSR when bigjoiner is used
Thread-Topic: [PATCH v2 02/17] drm/i915/psr: Disable PSR when bigjoiner is used
Thread-Index: AQHahtgBaYe8tAvcBEy+jZYrw0yibbFZP7SAgADTPQCAA8UegA==
Date: Mon, 8 Apr 2024 05:09:04 +0000
Message-ID: <d073248c734f68fadecbbb90ea1b134e178b2640.camel@intel.com>
References: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
 <20240404213441.17637-3-ville.syrjala@linux.intel.com>
 <2a410df93d112ec9881419820baaf4d3ffd4ee7d.camel@intel.com>
 <ZhBSVl16DEa0aczC@intel.com>
In-Reply-To: <ZhBSVl16DEa0aczC@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CH3PR11MB7371:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lTS66QzHCq8sYEj5nMHFD/9y8blysoE/Jkty12duCtjGvRPJ6eED3tWf8DwQM+9TbGZ4cUZDTtERg+6S4cpJjTR8b8Xm7xGPc5Ysc5uEgbmvA8h/XAZ2wBRQTGknGQBeHgr8ywguam5XfspNuBvcqI8oerjAhJtmRB/ZNAnztymEFxPgWhzLbIOmiSZmhdyE41vQ+s2jFLf0U8vfIdV/aS2QAmDMncY2eYBLaRjzIlCLx3qclQ7S1LISzqCdHYHVM3EsEU6L54lkpPJaKM+a+RlBB+CI9426wmSXn7g8VCDdgxJ3qtV65g7feZsE/bTJ1hvOIM3q21L0mf0M2Ywex+kh+OfIeEwgMMnUZxI9rRFdaiDsXsNKAsWUdkQKSOrKABs93bD+JkHZs5baxbIKluVsX3QielOYIYb3Bnn+fZj7fKVVz3DsOqo2C0Dm2V8HUxmU8H7mIORl812WGP4+1SFCY0JSjehu4GwVtZGgdx9qR/Qx1E4WKfDZLL0h/d88jErzYLG/1/C4ZcpeMnP6B6a7Q8NwKPn1Cj4WBqh7wYCchdO5Ky+GV5Hg0odLAfhhDgwwD70ZYh7GUXIrw08chS/s5Hm/S03UMIGBp+mfqZo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aXRSYlBTMUQ1Y2wvN2g2R0ZSWjMyZXd3ejZNUzY3SkhneitjOFNZcTFJSTNP?=
 =?utf-8?B?cFBkeGRKZzIvMXBZcU9HZ2oyQ0MyZmhEMTFmTGZFY3Nra29DSm02NjhMZWNW?=
 =?utf-8?B?ejV3aEE4eGtHZ0gxUnZNdmJOUnI4VjY1UWxSaFdoQWd6bVFaS3JKMEVRS3lr?=
 =?utf-8?B?dVM4N2VaRFo3cnY3VkxJY1NXbjVTcksrTVdHQkswSWo0YkpVZ3RFMWk3ZU0x?=
 =?utf-8?B?T2I1dEhCcU1VZFBqZXNUVldLNitSeTVOeWRPK3cvY2tBeitKVktBODZmQzd1?=
 =?utf-8?B?UThrVXdRTGJudVV2VzlEQVNtVEJlemhiZ3BPWnpSbm1XV0lpNHg4blV1V2hq?=
 =?utf-8?B?K3NnNk9vUXR6bEFwcStFUWQwSHZRVnlZZW9TbVJKemNqbUZkeGwwZU9sbkpv?=
 =?utf-8?B?amp6N1hBSnJuTm9Wd0tDdmhvcFRISVhkRk5qWVdsWnlJZkUwZzBxSm5RMlB4?=
 =?utf-8?B?QW1JaFVOUnZkaHJ3NFRKbjdnNVBKcHQzUFdpaHlDL0ltbTR3S0EwUVFsV3N5?=
 =?utf-8?B?SEV4YWNrRm85MkRmWnVYMzBEd2xialp3Zzg3dW1JcksxaURpaXdyZEo4U0ZX?=
 =?utf-8?B?QjdpeHh6cWRZZnBUQ3BKZ0IwR2JpN0NOWVgrVXAvQytIeUJodHZTdkg2Y1d2?=
 =?utf-8?B?Zkg5YTFMbUtlbVN0aDBpUUZFL0k3SEQzTnB2VWppL1pkNVlPajF5RjFSVzhr?=
 =?utf-8?B?SDBUTW5aUEZLU014S2lWQWtxMmV3SXRRZWprbWpFNEUzU0pibEU0aGFSR1J2?=
 =?utf-8?B?UisxZmFrSXlSTmJLbEZmWmNiYWswVG0weDlYdUJHY3BjUUZPaWJxaVJEbE5F?=
 =?utf-8?B?cTRvdGtsL2ZXUEs0S1d2RTJzdzNnTFlKQ2d5YXpHdXRJQzd2cVhaSWx0Vldp?=
 =?utf-8?B?VG5QRnVMQzFIQTVQUE5rWnlSYmFuS1dOdHNHL1dlNzhRbHJpVjNsYmZ3RXMy?=
 =?utf-8?B?SHFyVDllSWJ3eStVRTdRY2xkWVMya3UxeEdqNVlKMm9ZaHVpMGlnd3gwU2x5?=
 =?utf-8?B?UXExNjcvay9Ma1YwR3FwVlZzQVFuM2FhbjBLTjZ4bXRXeUwwNnQzTHM1T0tD?=
 =?utf-8?B?NkpzL0FVanZ5YXZiYmNMMWF6K0lXRVlGNCtvM3Z4QkUwV3ZYcWVGek5SS0Rm?=
 =?utf-8?B?aFpHWmo0Z0RJbnEzTjIwbDgxV2NVQzFWRDlvY2NKb3FYRnA0MkVpenQwTS9R?=
 =?utf-8?B?NkxneERwWlJFWmdTUmNEK1l1RUVCa2pyaDZGbWhmL2tuV3pUSzNreFpPbGVP?=
 =?utf-8?B?ZWJTajF5TlNxV2grL0lvVUY5R0ZyNnQzVzNBQTVPczFSQWxmZDVoY3pxN1hE?=
 =?utf-8?B?bHBnQmNhdWVFNGFKMWRUQXRHeTZJajZmcTNHR280bzFDbFZqbERuSkU4dmM5?=
 =?utf-8?B?VWg1VkJQU25kVFNsR1E5MmxleTFOZjNEMDlOZDVyejc4VkRXdW13YVlybEtX?=
 =?utf-8?B?NElxRVZTSlZTdlFUSms4WGI1YWVxTmlBQzRqRXRaN0JKekV5Qm9WOVRDanZ4?=
 =?utf-8?B?cEZJdVRIb3lLai83VHpWL2lXQ3ZYNDNlSlB3OVNjSWt2aUpsSVh4SHN1aHFU?=
 =?utf-8?B?aHJuNUhhYlpsaTFDVWlEV0ZFa3ZycmNZTXRxaE5aTXZkc04waVIxT0lCcndK?=
 =?utf-8?B?QXZ5azF1dDJabW14RlhKMXFEa0pxcnd2bDY0dWk1UTljb3FPb1ZaRTVMei9U?=
 =?utf-8?B?WVdxTEZ5a3lRdXdTVEc2dXJhTlgxYjl1a282cmkyME9QT08rendzZFhTQWFG?=
 =?utf-8?B?clZMV0gxV1VPL3cycDlid0dMUSs3aTZNY05oaTg1UzBnWDhiSnR4czg5bStx?=
 =?utf-8?B?OXQwMDhEU1oxa0VmR1h6Q1ZkeWdtVEM3RU4vKzNVR2hrSDdRdHZ1VUJZZjdJ?=
 =?utf-8?B?ejRsczhoL1RlakF6dGtYS0hwdWFBMEJpN05BcnZ5NzF6U2dzQ1Fkc1I2R1Rn?=
 =?utf-8?B?MWNYT2xVZVZjNmZrbUlBeHhmcDFrMjlXWUpMTDNwL2I2VUtsdVZCb1NnZUVi?=
 =?utf-8?B?Q1ErYmlhdCtVVHVFR3Z4YTh1RXN2QUtkUENMTisyZjRMK3kvQk5zMUhDaS9O?=
 =?utf-8?B?emhkTUM5U1NXNzYxUWFmR0xaQ3B4ajhWYUxETUpCMkNEQXJqeklHbytiRndP?=
 =?utf-8?B?ZnRQWU5JRUxaUVdZdFdLSVN6b1RmeHhxU2c1RHhiZ2lqYk8wVi9WdHMzSHl0?=
 =?utf-8?B?dnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <90509B3F51760C4EB735E607A2B3BE7C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab016d31-7543-4f7f-f48e-08dc578a02e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2024 05:09:04.4756 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b1Iro/DmYGPO7VKF/K8P0qo1GsfYxLJ2kA3FrPgf5DlfO0rkbF0wkkHXEfvkOE2mk0rW1/4Ymvlgve5lVYyLCABKhv0gJySfOZk4bUp0U1Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7371
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

T24gRnJpLCAyMDI0LTA0LTA1IGF0IDIyOjM0ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgQXByIDA1LCAyMDI0IGF0IDA2OjU4OjQ0QU0gKzAwMDAsIEhvZ2FuZGVyLCBK
b3VuaSB3cm90ZToNCj4gPiBPbiBGcmksIDIwMjQtMDQtMDUgYXQgMDA6MzQgKzAzMDAsIFZpbGxl
IFN5cmphbGEgd3JvdGU6DQo+ID4gPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPg0KPiA+ID4gDQo+ID4gPiBCaWdqb2luZXIgc2VlbSB0byBiZSBj
YXVzaW5nIGFsbCBraW5kcyBvZiBncmllZiB0byB0aGUgUFNSDQo+ID4gPiBjb2RlIGN1cnJlbnRs
eS4gSSBkb24ndCBiZWxpZXZlIHRoZXJlIGlzIGFueSBoYXJkd2FyZSBpc3N1ZQ0KPiA+ID4gYnV0
IHRoZSBjb2RlIHNpbXBseSBub3QgaGFuZGxpbmcgdGhpcyBjb3JyZWN0bHkuIEZvciBub3cNCj4g
PiA+IGp1c3QgZGlzYWJsZSBQU1Igd2hlbiBiaWdqb2luZXIgaXMgbmVlZGVkLg0KPiA+ID4gDQo+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KDQpBY2tlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBp
bnRlbC5jb20+DQoNCj4gPiA+IC0tLQ0KPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jIHwgMTEgKysrKysrKysrKysNCj4gPiA+IMKgMSBmaWxlIGNoYW5nZWQs
IDExIGluc2VydGlvbnMoKykNCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gaW5kZXggZWVmNjI5ODNlOWRiLi5hM2ZmOTE2
YjUzZjkgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+ID4gPiBAQCAtMTU4NCw2ICsxNTg0LDE3IEBAIHZvaWQgaW50ZWxfcHNyX2NvbXB1
dGVfY29uZmlnKHN0cnVjdA0KPiA+ID4gaW50ZWxfZHANCj4gPiA+ICppbnRlbF9kcCwNCj4gPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOw0KPiA+ID4gwqDCoMKgwqDC
oMKgwqDCoH0NCj4gPiA+IMKgDQo+ID4gPiArwqDCoMKgwqDCoMKgwqAvKg0KPiA+ID4gK8KgwqDC
oMKgwqDCoMKgICogRklYTUUgZmlndXJlIG91dCB3aGF0IGlzIHdyb25nIHdpdGggUFNSK2JpZ2pv
aW5lciBhbmQNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoCAqIGZpeCBpdC4gUHJlc3VtYWJseSBzb21l
dGhpbmcgcmVsYXRlZCB0byB0aGUgZmFjdCB0aGF0DQo+ID4gPiArwqDCoMKgwqDCoMKgwqAgKiBQ
U1IgaXMgYSB0cmFuc2NvZGVyIGxldmVsIGZlYXR1cmUuDQo+ID4gPiArwqDCoMKgwqDCoMKgwqAg
Ki8NCj4gPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChjcnRjX3N0YXRlLT5iaWdqb2luZXJfcGlwZXMp
IHsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1fZGJnX2ttcygmZGV2
X3ByaXYtPmRybSwNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgICJQU1IgZGlzYWJsZWQgZHVlIHRvIGJpZ2pvaW5lclxuIik7DQo+ID4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOw0KPiA+ID4gK8KgwqDCoMKg
wqDCoMKgfQ0KPiA+ID4gKw0KPiA+IA0KPiA+IEFyZSB0aGVzZSBwcm9ibGVtcyB3aXRoIGJvdGgg
UFNSMSBhbmQgUFNSMj8NCj4gDQo+IEkgZGlkbid0IGxvb2sgYXQgaGUgbG9ncyBpbiB0aGF0IG11
Y2ggZGV0YWlsLg0KPiANCj4gSXQncyBub3cgaGFwcGVuaW5nIGluIENJIGJlY2F1c2UgdGhlIGJp
Z2pvaW5lciBmb3JjZSBrbm9iIGlzDQo+IGdldHRpbmcgbGVha2VkIHRvIGFsbCBraW5kcyBvZiB0
ZXN0cy4gRWcuIHRoaXMgbWlnaHQgYmUgb25lOg0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xNDUxOS9yZS1tdGxwLTEvaWd0QGttc19idXN5QGJhc2lj
Lmh0bWwNCj4gDQoNCg==
