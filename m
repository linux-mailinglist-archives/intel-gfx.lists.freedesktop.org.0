Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7829587E97B
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Mar 2024 13:41:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7B6610F6C4;
	Mon, 18 Mar 2024 12:41:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GAkvEdBa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 803F410F6C6
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Mar 2024 12:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710765660; x=1742301660;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=tGt3+3S2F0qeZ2AEpRW5FY+uUPOhWWP9sJXScCr1QJc=;
 b=GAkvEdBaVZ6v7j25lonjpRqSx5ZTVWJaVW6ukXRS6YJZ/y4MMqQ1y6F3
 vY8ab13t7MP1YVbop78bwxjKqS3w+uLMcg88R9BOiSn47UWFWaAFVhgaQ
 F9jov99jFxnySPyX9NVC25C8oW5slG9/x9Uv3foR9VB3objCe9p+EmNtv
 Ix5PLVA4uPqumA40OKjHZHsTEFkyMQJ5b2mHm3UnpQTecqiFZutwKhtbj
 bnty6vgKkkVx0F0au+rLx6LExYmWRg33pgH9bDfKj7I2LI5yskbAW33u4
 YNm+d3qgo0vcsqp293UBgPAw/v0J+kgAGb0s653TqjvXb0krl424jNITo A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11016"; a="8515283"
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; 
   d="scan'208";a="8515283"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 05:41:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; d="scan'208";a="13404335"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Mar 2024 05:41:00 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 18 Mar 2024 05:40:59 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 18 Mar 2024 05:40:59 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 18 Mar 2024 05:40:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oPjGv32GDXgTNrFJIWrB2hb1kMYIpzOZZSF9aDjOoZPzre2SYMRXXfd52N16stovYRGQBrxIGr3zHejxr8dHHcZ6GFD7cNdZVL7BzCIHsP/4Zjs98kq9I31HNPqjExO4tBRPwC5z0HoP+DoigjTS2zrkPtR6Npm9wHOEWytDgTW6I7cAY1XXi64hNikPtNGhRl96Typ9A4wy0ZvdojP2IAeiod1qLjqRMt3wRhUFcx85uMY4PSsVvvdJrV+tIzAhD8t5IVOMMIqbJik8Jqog7MFFfkSuJeVVOFvTDDLCzSKwu/EfD5ROUvWXCbyqlgIqLIJ3sBzcfDgunIma0gEm4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tGt3+3S2F0qeZ2AEpRW5FY+uUPOhWWP9sJXScCr1QJc=;
 b=PrtNjl+KfqT5oJ4OYlaN0rP45qqoa2nlfHpD3iASVH/dkn4+oLvKVpiivQc9f4SuKo4tLgv7lpuExSexKYKqJa+hBC+piB72JXvFPm19DqzPpNir5opxVLyUPssWpeXbWga+kZdlEYdx7QW75PA5ySCyfuqBguBUetDyP29Ut0E/cExcTSGmkyJHmsXDhCCIDIbcE3W8Jm/nXFtQAAjrTjQt2JZHy1eHYJl5H2v4A2NlY4UHfpgeAhyk/TempoJvbifCi+YyRHhW9Vc9HluA9Y1QgKKxd7Bsdy7hzdHTOI5mf0RMEuVdvxC+BXLSdsIupe+jfk34g6crYep1wzTepA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH0PR11MB7562.namprd11.prod.outlook.com (2603:10b6:510:287::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.10; Mon, 18 Mar
 2024 12:40:56 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7409.010; Mon, 18 Mar 2024
 12:40:56 +0000
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>
CC: "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>,
 "tursulin@ursulin.net" <tursulin@ursulin.net>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH] drm/i915: Add includes for BUG_ON/BUILD_BUG_ON in
 i915_memcpy.c
Thread-Topic: [PATCH] drm/i915: Add includes for BUG_ON/BUILD_BUG_ON in
 i915_memcpy.c
Thread-Index: AQHacWd/bK6/OZkGTEOdFjY9r67mILEt7zwAgAlJuoCABkdCgA==
Date: Mon, 18 Mar 2024 12:40:56 +0000
Message-ID: <0b7482ea82d770474cb6d1cc342beab58372143d.camel@intel.com>
References: <20240308144643.137831-1-joonas.lahtinen@linux.intel.com>
 <ZesnfFTu3GLJVIrj@intel.com>
 <171042049765.18343.17884019367529376664@jlahtine-mobl.ger.corp.intel.com>
In-Reply-To: <171042049765.18343.17884019367529376664@jlahtine-mobl.ger.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.50.4 (3.50.4-1.fc39) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN0PR11MB6059:EE_|PH0PR11MB7562:EE_
x-ms-office365-filtering-correlation-id: 34db879d-953b-4177-49b2-08dc4748a818
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xNLvgL4JsHL/A5UfzCfKdhj4OBRENSkAeZCKvtWiJ6jRCBiWgc6GLdOnjwzE1cgZj1D3AT1JVt7X8nwQu+VIBPeD0J3KMs622qYrXQ3QGmgGnTOkLC9LKvOwBG4J3iMyN8i+JoVJIkhw9HoCTH9pY9zcjIvCRqf+Tg8oDZU3N3VeykiB8DvZm7mxqG0MYV1+rYUPIArNBK9/EWtcgLp7wlOIJ6r1JSHiOS3sEelgTj6cZ0shEHe8MrgkV1XjGbxzdQry1Qcaikxj+cKgCh7x4nVDdHFYDS5OAaX7KtulprNAnCchoOk/DqB5Bul20jr6G1hjkhfOW3CxZh+RDYQ3n2Xj0P0uj2qT/oBlDHLyNSrqit9IYvyhhXgJ5400VhzU3QHI/lx9j585qhHbLVGLpZjDDyD1ktCt4PN6sOT/LUR//wohZDQ6c9gJMIb1qGG9ChHuU/pIjrCH5hsm1DKYXUbeX+aCytXsuV7WiV+RULSJQ37COCzqyv7zDNruuGicC4U79W8/94IDHs+3+1vdGaSrglc5qRd9EPSxEtarwPsHakywQCE/WxIUPmj/ax8ON6lPTQKrMsoR7cMkoh6K0Lqmyfi1calalXn6Yg7w5CrDaXqjz9spWa/4yhGIJJ3uDEU4H/u6ArvhYaw/1P/TH/0DZqv+fLWBuEfPCpX0TOQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UW1xREYySXZIOXIweXZWUmVJZ29SNWRmVXpoTWlHOGl2cnVCS3JoUXZHMGxW?=
 =?utf-8?B?Sm1wN3lQTzUxRENZTXNYTEpOT2dncUxWRk14T29HZU9pNlorVFg3TjNIMFVy?=
 =?utf-8?B?T0pSM08vcWVrSjV1NE00ejlNTUJaWTl4RDh5OElwK1BYQURtbnRJdzhYUGJW?=
 =?utf-8?B?K3BZTUl4eDlLOEhjSmp1SFJ6dVI3ZTFCWlBlR0tySGVqS0NrWldsMjJReHM2?=
 =?utf-8?B?NnBjTnM4Tkw2RnNtSXk0eEd2Y3JNQjNmN0EydW1CRGhSZ0c4cDRDbVh4blZ1?=
 =?utf-8?B?d3lEcUtWV0I0NWtMUDBLQ2s5bTNxRDdIbVJrakFWb0xQaDRyWEVYZ1hQQ1ZP?=
 =?utf-8?B?dUN1THBUQVF5czVGZWRsOXJYM3dROE56WWVuZWoxU08zeFpwYmFXR0kxVkpK?=
 =?utf-8?B?RlJuQmtodFFQbnFQUDJOWUcxRWE4dnhsTjdUaGREdk1tTityZVJwYTh2b0dm?=
 =?utf-8?B?MG1pNVVTbjZBd0Z5bW1DT3FzTEpEWUN0alc2eEo2d2ZjaVVTNXhETzFuMXFH?=
 =?utf-8?B?OVhOSlNycUY5dDU4aldSUjlFZ045eVpEYjAvVVBBU3FpSUtOdjZIbkcwNXY0?=
 =?utf-8?B?bFhTSXYzTU5wYW1jdjlOSE10NFdtaU5lamJSZytDUWk3VjVVVTNxb2ppMm40?=
 =?utf-8?B?VzRzMkgyYWdjUUtrbTM1b3paRm02VFJrTHBFWkQ0eElab2Fhano0b2QwWjl1?=
 =?utf-8?B?NENWUDB5OEJld0U0azkwZTlIa3NuQndETDdFTENqMnNPMXRCQ1plWldHeDd4?=
 =?utf-8?B?ak9qTFhHSCtLYytMaitZOTBTWUxjSjVCbnFGSGNjWmtoR2lxVVFzcFQycjk0?=
 =?utf-8?B?MGF6MkRCZDkwM3huOTN2V0hId01OQXNzcVpkaE5HUzl1RVdTYVBrbkhYTUpF?=
 =?utf-8?B?dmdxYlZ4QTVmVzA2RU4yeXZhanBqTFhEVVpReFlIY0RJSkFHTkVqdzJUa2hs?=
 =?utf-8?B?NG95QU54ZDdsZ21xcXkycHZQd1o2eHcwL2s2UlVwY1BMVkttUGVBQXVLQVVX?=
 =?utf-8?B?eit4c3Rua3E2SEt5V0NwT2xNZjZVakJJa2c5emFxUzRRbmhWMXJtNkZ5K2ZW?=
 =?utf-8?B?dGt6QWd1Mm9wblVST3MzcDg0M0FCSzZrT3BrR0FhMWZSd3R2emVsOGlBV0Zm?=
 =?utf-8?B?aUNMZzR1ZjN5ZlNndTNsNldRclNoaEcrbG5tTkliRWVicmR3RDdrODJYQUto?=
 =?utf-8?B?UFNiUDMwQXBSdkl1WnMvUll5WkdxOFlEQlBNTlFYNmowcFlueHZxM0NVaENS?=
 =?utf-8?B?SUlRUktSM1I2QTkyQm5sVUtrR2NCa0FkZ1pvU1pHQ3A3c1RLNzJhbFIzajFL?=
 =?utf-8?B?TDFWT0EwZXliOEF4VkFsQmhPRTcvdWFlOHpqSzV0THZvMXVpMTQvR0Y3NDkw?=
 =?utf-8?B?V2xNQ3pISEdSN2hWVUk3Q3pZNTR4clZXa1FvK0JoTGRmNzZCZzBuaHA0K01Q?=
 =?utf-8?B?UEhaRmxxYUppWWowZW1aRis0THJlMDVuS3d2WVlOVGZhZHV3SmNsTWNnVEMr?=
 =?utf-8?B?aHBCV3lrbmsycWt1eHBJcml0M2lFSUhSSTdZWUdWRVJDVVNrRnFWL0M5UXVR?=
 =?utf-8?B?V2s4UTZyWFlvV1JtZHV6aUxXZ3BTSjhldksxYUtlcUVsS2dEd0tEQWpVRTNS?=
 =?utf-8?B?SnZnYTI4OUlFL1JJNkFVMkhYK3Q1RjJlV2xIZUhsQTZBdWFOOElsL2JHVzRV?=
 =?utf-8?B?Q0ZOTXdnZGRHclJzYUFNYWhYZ3I2cXZQZnF3R3B1eE52MkJSanQvcTZUbksy?=
 =?utf-8?B?U28vNitqTTRMVEFjMWRwYlg0RFo5YjZib3FhMkF3eXVmRkNub25xV1NWZm1h?=
 =?utf-8?B?bWF2R1l2QXBhUUkwWGF6cG5ML2hiaVJnZjJWM1FTaDg2TWd0MmkyRWxtSWZq?=
 =?utf-8?B?QnNiRGlBd3NIaTFiQy9McG1sY3JQdmtUU05LWkdXZG42Z1AwVkNxTldvYXlE?=
 =?utf-8?B?R213VzZoNWthZjM4eGZHZ1ByRzZwbm5TUVJVZWlqL2FtWkJ0OFJrdVdJbUVo?=
 =?utf-8?B?SnJOZERZRnNtdzUycCtYM2FFc3RqTWtuMWEyKzZWZmcvc2oyVTcrNHVRdWpk?=
 =?utf-8?B?MHJ5RklseXVHQWJLUVFoUTNMbC9TYXJ5NERsU2lSSUNRdWJnUE1FYkpqWHdl?=
 =?utf-8?B?VlFxYzVlaXZoejRzc3FHTkdwaWVISnozQmQ3V3dvdm9xa1Q4R2NQSG15ZFRT?=
 =?utf-8?B?ckE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <32B2B6F0502F754DBF293A745C8CD624@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34db879d-953b-4177-49b2-08dc4748a818
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2024 12:40:56.2942 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gJHP1PqoOtcIN5TDdA0Chg7VzPiCV1aY4HnW41GVd06lSBzzBk0DtQ+u+1/n2cwRbc69ahCPeeJ/MPJjleqtoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7562
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

T24gVGh1LCAyMDI0LTAzLTE0IGF0IDE0OjQ4ICswMjAwLCBKb29uYXMgTGFodGluZW4gd3JvdGU6
DQo+IFF1b3RpbmcgUm9kcmlnbyBWaXZpICgyMDI0LTAzLTA4IDE2OjU4OjA0KQ0KPiA+IE9uIEZy
aSwgTWFyIDA4LCAyMDI0IGF0IDA0OjQ2OjQzUE0gKzAyMDAsIEpvb25hcyBMYWh0aW5lbiB3cm90
ZToNCj4gPiA+IEFkZCBzdGFuZGFsb25lIGluY2x1ZGVzIGZvciBCVUdfT04gYW5kIEJVSUxEX0JV
R19PTiB0byBhdm9pZA0KPiA+ID4gYnVpbGQgZmFpbHVyZQ0KPiA+ID4gYWZ0ZXIgbGludXgtbmV4
dCBpbmNsdWRlIHJlZmFjdG9yaW5nLg0KPiA+IA0KPiA+IGFueSBsb3JlIGxpbmsgc28gd2UgY2Fu
IHVzZSB3aXRoIGEgJ0Nsb3NlczonIHRhZz8NCj4gPiBhbmQgcGVyaGFwcyBhIHJlcG9ydGVkLWJ5
Pw0KPiANCj4gVGhlIGJ1aWxkIGZhaWx1cmUgc2VlbXMgdG8gaGF2ZSBoYXBwZW5lZCBpbiBpbnRl
bC1nZngtY2kuMDEub3JnIGJ1dA0KPiB0aGUNCj4gZmFpbGluZyBidWlsZCByZXN1bHRzIGFyZSBu
b3QgdXBsb2FkZWQgc28gaXQncyBvbmx5IHZpc2libGUgaW4gdGhlDQo+IGJhY2tncm91bmQuDQo+
IA0KPiBGcm9tIHRoZSBDSSBwYWdlWzFdIHdlIGNhbiBzZWUgbmV4dC0yMDI0MDMwNCBpcyB0aGUg
bGFzdCBzdWNjZXNzZnVsDQo+IGJ1aWxkWzJdLg0KPiBGYWlsdXJlIHNlZW1zIHRvIGhhdmUgc3Rh
cnRlZCBuZXh0LTIwMjQwMzA1IGFmdGVyIHdoaWNoIHRoZSByZXN1bHRzDQo+IGFyZQ0KPiBub3Qg
dXBsb2FkZWQgZHVlIHRvIHRoZSBmYWlsdXJlLg0KPiANCj4gRm9yIGZ1dHVyZSwgSSBhc2tlZCBp
ZiB3ZSBjb3VsZCBpbXByb3ZlIHRoZSBDSSBkYXNoYm9hcmQgYnkgYWxvcw0KPiBzaG93aW5nIHRo
ZQ0KPiBmYWlsaW5nIGJ1aWxkcyBpbiB0aGUgQ0kgdmlldy4gDQo+IA0KPiBIb3dldmVyLCBmb3Ig
bm93IHdlIGRvbid0IGhhdmUgYSByZWZlcmVuY2UsIEkgZ3Vlc3MuDQo+IA0KPiBbMV0gaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvbGludXgtbmV4dC9jb21iaW5lZC1hbHQuaHRtbD8N
Cj4gWzJdIGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2xpbnV4LW5leHQvbmV4dC0N
Cj4gMjAyNDAzMDQvZmlsZWxpc3QuaHRtbA0KPiANCj4gPiANCj4gPiA+IA0KPiA+ID4gU2lnbmVk
LW9mZi1ieTogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29t
Pg0KPiA+ID4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXMucC53aWxzb25AbGludXguaW50ZWwuY29t
Pg0KPiA+ID4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+DQo+
ID4gPiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPg0KPiA+ID4gQ2M6
IFR2cnRrbyBVcnN1bGluIDx0dXJzdWxpbkB1cnN1bGluLm5ldD4NCj4gPiA+IC0tLQ0KPiA+ID4g
wqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X21lbWNweS5jIHwgMiArKw0KPiA+ID4gwqAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspDQo+ID4gPiANCj4gPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X21lbWNweS5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfbWVtY3B5LmMNCj4gPiA+IGluZGV4IGJhODIyNzcyNTRiNy4uY2M0MTk3NGNl
ZTc0IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9tZW1jcHku
Yw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9tZW1jcHkuYw0KPiA+ID4g
QEAgLTI1LDYgKzI1LDggQEANCj4gPiA+IMKgI2luY2x1ZGUgPGxpbnV4L2tlcm5lbC5oPg0KPiA+
ID4gwqAjaW5jbHVkZSA8bGludXgvc3RyaW5nLmg+DQo+ID4gPiDCoCNpbmNsdWRlIDxsaW51eC9j
cHVmZWF0dXJlLmg+DQo+ID4gPiArI2luY2x1ZGUgPGxpbnV4L2J1Zy5oPg0KPiA+ID4gKyNpbmNs
dWRlIDxsaW51eC9idWlsZF9idWcuaD4NCj4gPiANCj4gPiBnaXQgZ3JlcCBCVUlMRF9CVUdfT04g
ZHJpdmVycy9ncHUvZHJtL2k5MTUvDQo+ID4gb3V0cHV0DQo+ID4gDQo+ID4gdnMNCj4gPiANCj4g
PiBnaXQgZ3JlcCBidWlsZF9idWcuaCBkcml2ZXJzL2dwdS9kcm0vaTkxNS8NCj4gPiBvdXRwdXQN
Cj4gPiANCj4gPiB0ZWxscyBtZSB0aGF0IHdlIGxpa2VseSBuZWVkIHRoaXMgaW4gbWFueSBtb3Jl
IGZpbGVzLi4uDQo+ID4gDQo+ID4gYnV0IG5vdCBvcHBvc2VkIHRvIG1vdmUgd2l0aCB0aGlzIGZh
c3RlciBhbmQgY29tZSBiYWNrIGxhdGVyIHdpdGgNCj4gPiBvdGhlciBmaXhlcyBpZiB0aGlzIHVu
YmxvY2tzIHBlb3BsZToNCj4gDQo+IFllYWgsIEkgbWFkZSB0aGUgc2FtZSBvYnNlcnZhdGlvbi4N
Cj4gDQo+IEFyZSB5b3UgZmluZSB0byBtZXJnZSB0aGlzIHdpdGggdGhlIFItYiBldmVuIHdpdGhv
dXQgdGhlIHJlZmVyZW5jZT8NCg0Kc29ycnkgZm9yIGhhdmluZyBtaXNzZWQgdGhpcy4NCg0KeWVz
LCB0aGUgcnYtYiBjYW4gYmUgdXNlZCBldmVuIHdpdGhvdXQgdGhlIHJlZmVyZW5jZSwgbGV0J3Mg
anVzdCBnZXQNCnRoaXMgaW4gYW5kIGZpeCB0aGUgYnVpbGQgaXNzdWUuDQoNCj4gDQo+IFJlZ2Fy
ZHMsIEpvb25hcw0KPiANCj4gPiANCj4gPiBSZXZpZXdlZC1ieTogUm9kcmlnbyBWaXZpIDxyb2Ry
aWdvLnZpdmlAaW50ZWwuY29tPg0KPiA+IA0KPiA+ID4gwqAjaW5jbHVkZSA8YXNtL2ZwdS9hcGku
aD4NCj4gPiA+IMKgDQo+ID4gPiDCoCNpbmNsdWRlICJpOTE1X21lbWNweS5oIg0KPiA+ID4gLS0g
DQo+ID4gPiAyLjQzLjINCj4gPiA+IA0KDQo=
