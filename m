Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6891C824F0F
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 08:12:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC18A10E574;
	Fri,  5 Jan 2024 07:12:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 042DC10E564;
 Fri,  5 Jan 2024 07:12:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704438772; x=1735974772;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=VJ/9OsTeAtsO+GlU2s11uiA5fYWRgo5BaFce8wPQsYE=;
 b=TqJlcCpoki5uesAHckQHoAl4ZBK9XGrwAuPcb5MulraztuyAKkWVptYm
 B/nBRtQHB+Rw2HFyAb+bLmfCbTkDcwO6w5pg1B1b6ESadrEOvYmMBTn/b
 iQzt+otbo3pbWqWXgh1dU2490OV29HTajSoDy2pFlj6i5LzdRDjgBSPlA
 HbeEGJiDCAfZIQvQWL6w093CBPGQAWVRP7QqwmDrXRKnUp5HyN14qd9HC
 1dc8LUTCSrjaPA5gkQBw0ttlxz2U926qf69GtBEZOkXdZ9OaECyATWCq0
 xohDJFhkmv4HAdML9Lm1w+Thdb/U3lYKhS4MYcXBInO6AV55WjhOHwW6c Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="376936262"
X-IronPort-AV: E=Sophos;i="6.04,333,1695711600"; d="scan'208";a="376936262"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 23:12:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="1112024196"
X-IronPort-AV: E=Sophos;i="6.04,333,1695711600"; d="scan'208";a="1112024196"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Jan 2024 23:12:51 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Jan 2024 23:12:50 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Jan 2024 23:12:50 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 4 Jan 2024 23:12:50 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 4 Jan 2024 23:12:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ftHWpoiLHlWTPhIw46riQibj/9SKP7u95O2mzKhxcx9GQ15x7PAWHTfdXWyoup6gagn+1TeAHwYiRAVGjwuaWRG/IigI9ghR8r9kjyBrJLG1QDzE21gm06pabbAPYoTo4Vq0s9KBu8j4Ae/h3u4kHOT/hbKSYrt5ZJVG0MoMg5tadUeSDMIXfXJrNsEnX3qx0Q/FXkFeuLFuiNJGrkhUbVx5Auv2bbnprFESGFEcHOaJi/PtlBf9PI8qZyVarMO8imFCBZs/KmxFC8MTJG49SjgaxEghUGCDqHCePvTxPyrJtsPnw5OPu2853osaV0KzSLfmkQki28dLOo3wagpH4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VJ/9OsTeAtsO+GlU2s11uiA5fYWRgo5BaFce8wPQsYE=;
 b=QPCigqsR6Wbz9U419t47WshrsJ9LWalFwA6re9y9uHwfhaKfUHmVmFBV2FymQrVDLUjYDbqNkDJaOLQMQLsreWt7449F4zGztKy2NHCnAnlakV8Jb1h3ROEI6RuNAlG4qRj5vQYvZ5k6ubFBYuqfohsXhWk2atovChAt3FdyC2LJo+awGYxwLJl3Z1hxQAyw3Je4pbK+qs4iWV+G55X0XJT/CCpvt0GN+OQYbrk5vo3LJUao2kabgkxB4DE/1ea2mODR8fxiidczOrZVFcgbn91B8Z2RKe0Ds7/0XaK9vn6zpLHqFSMMK/cO4OgRbrgq/oxHW/QLM9tJMWqt6vIhpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6763.namprd11.prod.outlook.com (2603:10b6:303:20b::7)
 by SJ2PR11MB8568.namprd11.prod.outlook.com (2603:10b6:a03:56c::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.13; Fri, 5 Jan
 2024 07:12:46 +0000
Received: from MW4PR11MB6763.namprd11.prod.outlook.com
 ([fe80::a4f9:71ed:5c60:d75e]) by MW4PR11MB6763.namprd11.prod.outlook.com
 ([fe80::a4f9:71ed:5c60:d75e%3]) with mapi id 15.20.7135.023; Fri, 5 Jan 2024
 07:12:45 +0000
From: "Illipilli, TejasreeX" <tejasreex.illipilli@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "I915-ci-infra@lists.freedesktop.org"
 <I915-ci-infra@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBGaS5DSS5CQVQ6IGZhaWx1cmUgZm9yIGRybS9pOTE1OiBGaXgg?=
 =?utf-8?Q?HPD_handling_during_driver_init/shutdown_(rev2)?=
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IEZpeCBIUEQg?=
 =?utf-8?Q?handling_during_driver_init/shutdown_(rev2)?=
Thread-Index: AQHaPxebHekmotjR+U2be9rAk/lQUrDJ0CWAgAD+iNA=
Date: Fri, 5 Jan 2024 07:12:45 +0000
Message-ID: <MW4PR11MB67634945CA7C56C61F02DCA8F2662@MW4PR11MB6763.namprd11.prod.outlook.com>
References: <20240104083008.2715733-1-imre.deak@intel.com>
 <170437731238.20654.12811965027388779019@5338d5abeb45>
 <ZZbWKVxrojmHlLuZ@ideak-desk.fi.intel.com>
In-Reply-To: <ZZbWKVxrojmHlLuZ@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6763:EE_|SJ2PR11MB8568:EE_
x-ms-office365-filtering-correlation-id: d22c4286-9483-425a-04ef-08dc0dbdb720
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EajWsDER9q0lzpyZvIKpxNV/IMtj2YXZm6zJ07fgKaeY4sqiJG9kVzD3TL2KlCAKVUnYbEUm9MAjsNZNvXoYjW+zF+qdfFMrv+4Qgw6/LrtelSEsTARIV2cm68MVgwot5kBx429IbTTlJw8BqRoGF4nZJ8q8JUNEpcnSI/LRDs9QgjBMLnVlZZSBSms2hoOsNk/QZ9/jBdcP86r5nbnqCWCdEcVXXSeGXZjPm+FKaiT8fs4+pU4q0creobHLGSbvAU0CwAMY2d/LYmvu3vQ+riQYsjck9bnhmmEbfxlYUOSDe3dtCEblbwStb5pdje31C6bNrVulMNUnIzB8o7XagBWeor8di6V/LXg7y5FVzUqi6NWAedEyomGSP8thtgA3g513T5khlGnRV81dqcqT1TtIZR+f/sU1wWvkl1S99giXKgDLp7zcWf1a8g4u8SCTsDYx0ldapLiJXzn9Sb8/FS7x728UCWijVgUq5oqC07U8Iljv350tsPvqx5W7ydzBKoumfVSemiyOl0mfk/kPJFtY4A3tVuewwM/RWy0REZM+6BOvjYZeI1/nK5HvIb6VcBD9umjFJl7LfHhU46fxYqGxzaWIMNLbtxCliZvPNvrGaSR3t8yNofMO2Yai8T+dQVEP+/6dldL6R/UF0Szqmg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6763.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(376002)(396003)(346002)(366004)(230273577357003)(230173577357003)(230922051799003)(186009)(1800799012)(64100799003)(451199024)(82960400001)(52536014)(450100002)(8936002)(2906002)(122000001)(83380400001)(38100700002)(30864003)(26005)(5660300002)(38070700009)(478600001)(966005)(6506007)(7696005)(71200400001)(33656002)(66476007)(66446008)(55016003)(76116006)(86362001)(66946007)(41300700001)(9686003)(64756008)(66556008)(53546011)(316002)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RDV3QzFBR2szK3QvUWYzZC9UWVdPanR3U2o0TThYQ1UyajJHbmw5NDdJZlBQ?=
 =?utf-8?B?cWx6aXhWT3UybGNIZlk3UGNJTVpDWGJsL3lkcHV6SzZ1c1dKK2UzdG1aNWRH?=
 =?utf-8?B?S3QwZVZURUV5NUhQUGVDNUtNbkRBeUZEUTluUElCMkRidndHZnVMTUJNb2Zh?=
 =?utf-8?B?NllzTTJnbjdCY2UvTFIyckdwZFhyVXBQNUNadmF3a3EweWpmYkRCSk1nRkNV?=
 =?utf-8?B?R2pyQWhoc2xQblNLZmQ0VlJackpHa0h5eTNIWXlrQ1B1Q2dIbkgzZmRBNjdU?=
 =?utf-8?B?TDAwUXlHcjJLR2VhTGR2dTBZZ0FuM3JqN29ZSWd2OVhiMTZWSVNXMW1uUmpF?=
 =?utf-8?B?V1kwQ0tCUzBrTk11VThZMUlFMFFMYjNTU2NER3pBNC93MXRzVXRjNFhzaEZO?=
 =?utf-8?B?VWhRVk1xbW9NOFl5WHhQY04vQnVVN2t4WjRVaHluK284d2FrWXE5MWUzOGxO?=
 =?utf-8?B?ekQ1WVllZjd4ZHJwc09RWnRPRHZZR0R4Y0YrVWszMzJsTEhabmhmV0ZNQmU5?=
 =?utf-8?B?dHUwRHBIK2RZTC9DWlh3aDRJdi85M3dsVWpXUWdUc29OSGpudUc1RkpyUFc3?=
 =?utf-8?B?TzI0bXpzbWJ6bzVkZXlvalpVSEZpZHo2VFJRRDhlekxQRFBvME81bVY0c1lq?=
 =?utf-8?B?NjBaMldoQytUK1lzb0JBTFJ5U21SdHU1QnRONmFlOEhyVm9MVURVNk55VVVT?=
 =?utf-8?B?bGhLMHNQZitaZzJ5K01wb1NDWVBZZmJuc1BuLzFud0hZZERkRjZPYUdDU29U?=
 =?utf-8?B?eDBpR1hrdmhVbGhPNmtNeS9uMjB3ZDFPd0JHL0lZZjRLM3llV05vZ3h4RGZL?=
 =?utf-8?B?YlE0SkEwRmhmc2hHWnBxT0Z5RzVxWTJFajJmNllvZ3FuZzNJSFRmdGRIQW5U?=
 =?utf-8?B?cmJzT1JWYW04aEZaU3lhVGpXTUxEWlVsR0pVbmFJQXUrUmN1ejJEQVo2ZWYz?=
 =?utf-8?B?MC9uVHJLWDhFNFZOeHV2T0x3VUpjQWxPMDZhNlQvbnA0RXJ6OVEzTDJ6OEZJ?=
 =?utf-8?B?RURrNEZXQmNyZFFiY1Nsb3lGbzhqK1lleTNDUnc3QUhWTndJUUFVZWVWeDV5?=
 =?utf-8?B?bk50TjBTY09sekhucFlRRTJsOWszK3ZyS1U1bk5LeVlMbjNlemZUZ3BOYXhm?=
 =?utf-8?B?VTlYak9wRU5UVHNLaFNZY1lUMGF1eEpGb20zUFpuT0V3MTZYbDB2MDlWc3hO?=
 =?utf-8?B?Nlp1WDRLZUQzdkZWYmxmQ1NteWUrVFpBUTdsOGdWTG02d0o0WVZHKzI3VjJF?=
 =?utf-8?B?MDQwVkszb0tQdFkrQ2c1dmgwZmFveUZMcHBkRGxaU1AvMGdteXluc3gwL1pC?=
 =?utf-8?B?VzBiR1FpaEs3Qlp0U3pKeVpTcS9CZUxJaG9Idk5tYm41VjR6Sk1GY0hZTk9K?=
 =?utf-8?B?NlJXcWNZZS9qMW9rK3JhSjB3RHVWS3ZWVk1TZlRxcWJwZnVTTzhSVnN3aTJO?=
 =?utf-8?B?WkhvLzVTdTI4ZjdHbkVNallkOXhSY1o5Z2xoTXdpdVgwRjQ4RzJiQ0srd3RJ?=
 =?utf-8?B?UXFWdEdBZnpOdHh2ejVXUHpKMGZHZ2p2am9FWGFOM0tDZEg0Ri9BSmFCeEJD?=
 =?utf-8?B?ZHVyTjZFbVhLTlBTblZpUHRLRlpYQlQyVUw5SmNmYWhpTDlEK0JwYlBXK1ZZ?=
 =?utf-8?B?SHpwVzByVEtlRmFWVCtEWVpscFFmamFIMVQ0T2thZEg1RGhIT3VxWXJWcnBL?=
 =?utf-8?B?ajExa0FLSkVDQU5WemF2Z1FOU3BzdWo4RUo4dU9DaW9RNzFBZEtyU1hvc3hT?=
 =?utf-8?B?bTlyTzBhQnAxTWlNSmc5R0ZOWmJhWitaUmFaWjM5bzVHMWFjcEpTdnU0VHVH?=
 =?utf-8?B?TUR3amZQTCt2aFp4Tm4zOVZyazNHa3R6bmFaVzBUMVloS0QyZmZRdlZYbmNF?=
 =?utf-8?B?cVI0eGR6RXhkZnVNUVRUTDJXOWlnUE82eXNid1FlbTBpamc2N3pQdjRTdFQ0?=
 =?utf-8?B?bEg0Z0gxbXc5cWgrbVgrVVh6VVo1ZHRDNGIyQ2JSOUl4TTVUdGp5dHFxYkNw?=
 =?utf-8?B?RTRjNDZZVnl5MmpvN3JtK1kxdHF2aWEyd2Qyc1AvTWxMUTQ3VVRxZTFpVWp1?=
 =?utf-8?B?TDdMMDEyZDNESXpNOUtuT2tjOWNaM3BkZ0N3UTZWcVl0eVRkTW1nZGFFemlZ?=
 =?utf-8?B?ZjRmUGQ1TU1TWnJCdjJ6d3p6M3ZnZkg2MDhHNCtJdmM0bk1jOGFieTZnVldY?=
 =?utf-8?B?d2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6763.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d22c4286-9483-425a-04ef-08dc0dbdb720
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2024 07:12:45.1550 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Kw78EQbEmAz5LF7fBhXucD0/aMr4O76WZu9y3OgOcWehr4tceC0NGMzMhalgS3trkjJtk0DRf2a4ed1T3p8/Gzju0VuoQI1eNBUIzWX8dNc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8568
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

SGksDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTI4MTg2LyAt
IFJlLXJlcG9ydGVkIC4NCg0KVGhhbmtzLA0KVGVqYXNyZWUNCg0KLS0tLS1PcmlnaW5hbCBNZXNz
YWdlLS0tLS0NCkZyb206IEludGVsLWdmeCA8aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgSW1yZSBEZWFrDQpTZW50OiBUaHVyc2RheSwgSmFudWFy
eSA0LCAyMDI0IDk6MzEgUE0NClRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBJ
OTE1LWNpLWluZnJhQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KU3ViamVjdDogUmU6IOKclyBGaS5D
SS5CQVQ6IGZhaWx1cmUgZm9yIGRybS9pOTE1OiBGaXggSFBEIGhhbmRsaW5nIGR1cmluZyBkcml2
ZXIgaW5pdC9zaHV0ZG93biAocmV2MikNCg0KT24gVGh1LCBKYW4gMDQsIDIwMjQgYXQgMDI6MDg6
MzJQTSArMDAwMCwgUGF0Y2h3b3JrIHdyb3RlOg0KPiA9PSBTZXJpZXMgRGV0YWlscyA9PQ0KPiAN
Cj4gU2VyaWVzOiBkcm0vaTkxNTogRml4IEhQRCBoYW5kbGluZyBkdXJpbmcgZHJpdmVyIGluaXQv
c2h1dGRvd24gKHJldjIpDQo+IFVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Au
b3JnL3Nlcmllcy8xMjgxODYvDQo+IFN0YXRlIDogZmFpbHVyZQ0KPiANCj4gPT0gU3VtbWFyeSA9
PQ0KPiANCj4gQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fMTQwNzggLT4gUGF0Y2h3
b3JrXzEyODE4NnYyIA0KPiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09DQo+IA0KPiBTdW1tYXJ5DQo+IC0tLS0tLS0NCj4gDQo+ICAgKipGQUlMVVJF
KioNCj4gDQo+ICAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3Jr
XzEyODE4NnYyIGFic29sdXRlbHkgbmVlZCB0byBiZQ0KPiAgIHZlcmlmaWVkIG1hbnVhbGx5Lg0K
PiAgIA0KPiAgIElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcg
dG8gZG8gd2l0aCB0aGUgY2hhbmdlcw0KPiAgIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzEyODE4
NnYyLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gKEk5MTUtY2ktaW5mcmFAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnKSB0byBhbGxvdyB0aGVtDQo+ICAgdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFp
bHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuDQo+IA0K
PiAgIEV4dGVybmFsIFVSTDogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzEyODE4NnYyL2luZGV4Lmh0bWwNCj4gDQo+IFBhcnRpY2lwYXRpbmcg
aG9zdHMgKDM4IC0+IDM3KQ0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gDQo+
ICAgQWRkaXRpb25hbCAoMik6IGJhdC1ycGxzLTIgZmktcG52LWQ1MTAgDQo+ICAgTWlzc2luZyAg
ICAoMyk6IGJhdC1kZzItOCBiYXQtZGcyLTkgZmktc25iLTI1MjBtIA0KPiANCj4gUG9zc2libGUg
bmV3IGlzc3Vlcw0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tDQo+IA0KPiAgIEhlcmUgYXJlIHRoZSB1
bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3Jr
XzEyODE4NnYyOg0KPiANCj4gIyMjIElHVCBjaGFuZ2VzICMjIw0KPiANCj4gIyMjIyBQb3NzaWJs
ZSByZWdyZXNzaW9ucyAjIyMjDQo+IA0KPiAgICogaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxv
YWQ6DQo+ICAgICAtIGZpLWtibC03NTY3dTogICAgICAgW1BBU1NdWzFdIC0+IFtETUVTRy1XQVJO
XVsyXQ0KPiAgICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzE0MDc4L2ZpLWtibC03NTY3dS9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5o
dG1sDQo+ICAgIFsyXTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzEyODE4NnYyL2ZpLWtibC03NTYNCj4gN3UvaWd0QGk5MTVfcG1fcnBtQG1v
ZHVsZS1yZWxvYWQuaHRtbA0KDQo8Nz5bICAzNTguODAzNTY5XSBpOTE1IDAwMDA6MDA6MDIuMDog
W2RybTpsc3Bjb25fd2FrZV9uYXRpdmVfYXV4X2NoIFtpOTE1XV0gTmF0aXZlIEFVWCBDSCB1cCwg
RFBDRCB2ZXJzaW9uOiAxLjIgPDc+WyAgMzU4LjgwNDU3MV0gaTkxNSAwMDAwOjAwOjAyLjA6IFtk
cm06ZHJtX2RwX2kyY19kb19tc2cgW2RybV9kaXNwbGF5X2hlbHBlcl1dIEFVWCBCL0RESSBCL1BI
WSBCOiBuYXRpdmUgZGVmZXIgPDc+WyAgMzU4LjgwNTk5NV0gaTkxNSAwMDAwOjAwOjAyLjA6IFtk
cm06ZHJtX2RwX2kyY19kb19tc2cgW2RybV9kaXNwbGF5X2hlbHBlcl1dIEFVWCBCL0RESSBCL1BI
WSBCOiBuYXRpdmUgZGVmZXIgLi4uDQo8Nz5bICAzNTguODIzNjg0XSBpOTE1IDAwMDA6MDA6MDIu
MDogW2RybTpkcm1fZHBfZHVhbF9tb2RlX2RldGVjdCBbZHJtX2Rpc3BsYXlfaGVscGVyXV0gRFAg
ZHVhbCBtb2RlIEhETUkgSUQ6ICAoZXJyIC0xMjEpIC4uLg0KPDc+WyAgMzU4LjkyNTM0N10gaTkx
NSAwMDAwOjAwOjAyLjA6IFtkcm06ZHJtX2RwX2R1YWxfbW9kZV9kZXRlY3QgW2RybV9kaXNwbGF5
X2hlbHBlcl1dIERQIGR1YWwgbW9kZSBIRE1JIElEOiAgKGVyciAtMTIxKSA8Nz5bICAzNTguOTI1
MzYwXSBpOTE1IDAwMDA6MDA6MDIuMDogW2RybTpsc3Bjb25faW5pdCBbaTkxNV1dIE5vIExTUENP
TiBkZXRlY3RlZCwgZm91bmQgdW5rbm93biA8Mz5bICAzNTguOTI1NjE5XSBpOTE1IDAwMDA6MDA6
MDIuMDogW2RybV0gKkVSUk9SKiBGYWlsZWQgdG8gcHJvYmUgbHNwY29uDQoNClJlcGVhdGluZyBt
YW55IHRpbWVzLCBhY3Jvc3MgbXVsdGlwbGUgZHJpdmVyIHJlbG9hZHMsIGFuZCB0aGVuIHJlY292
ZXJpbmcgYWZ0ZXIgYSBzeXN0ZW0gc3VzcGVuZC9yZXN1bWU6DQoNCjw3PlsgIDU0MS4yOTM2ODld
IFtJR1RdIGk5MTVfc3VzcGVuZDogZXhlY3V0aW5nIDw3PlsgIDU0MS4zMDIzNzNdIFtJR1RdIGk5
MTVfc3VzcGVuZDogc3RhcnRpbmcgc3VidGVzdCBiYXNpYy1zMy13aXRob3V0LWk5MTUgLi4uDQo8
Nz5bICA1NDEuMzIzOTQ0XSBbSUdUXSBVbmxvYWRpbmcgaTkxNQ0KPDc+WyAgNTQyLjUwNDM1N10g
aTkxNSAwMDAwOjAwOjAyLjA6IFtkcm06dmVyaWZ5X2Nvbm5lY3Rvcl9zdGF0ZSBbaTkxNV1dIFtD
T05ORUNUT1I6MTIxOkRQLTRdIDw3PlsgIDU0NC43ODM4NTJdIFtJR1RdIFJlLWxvYWRpbmcgaTkx
NSAuLi4NCjw3PlsgIDU0NS42NTgxNjVdIGk5MTUgMDAwMDowMDowMi4wOiBbZHJtOmxzcGNvbl93
YWtlX25hdGl2ZV9hdXhfY2ggW2k5MTVdXSBOYXRpdmUgQVVYIENIIHVwLCBEUENEIHZlcnNpb246
IDEuMiA8Nz5bICA1NDUuNjU5NjkwXSBpOTE1IDAwMDA6MDA6MDIuMDogW2RybTpkcm1fZHBfaTJj
X2RvX21zZyBbZHJtX2Rpc3BsYXlfaGVscGVyXV0gQVVYIEIvRERJIEIvUEhZIEI6IG5hdGl2ZSBk
ZWZlciA8Nz5bICA1NDUuNjY2ODQ2XSBpOTE1IDAwMDA6MDA6MDIuMDogW2RybTpkcm1fZHBfaTJj
X2RvX21zZyBbZHJtX2Rpc3BsYXlfaGVscGVyXV0gQVVYIEIvRERJIEIvUEhZIEI6IG5hdGl2ZSBk
ZWZlciAuLi4NCjw3PlsgIDU0NS42Njc3NTBdIGk5MTUgMDAwMDowMDowMi4wOiBbZHJtOmRybV9k
cF9kdWFsX21vZGVfZGV0ZWN0IFtkcm1fZGlzcGxheV9oZWxwZXJdXSBEUCBkdWFsIG1vZGUgSERN
SSBJRDogRFAtSERNSSBBREFQVE9SXDAwNCAoZXJyIDApIC4uLg0KPDc+WyAgNTQ1LjY3ODUzOF0g
aTkxNSAwMDAwOjAwOjAyLjA6IFtkcm06bHNwY29uX2luaXQgW2k5MTVdXSBMU1BDT04gZGV0ZWN0
ZWQgLi4uDQo8Nz5bICA1NDUuNjc5NDA5XSBpOTE1IDAwMDA6MDA6MDIuMDogW2RybTpkcm1fZHBf
aTJjX2RvX21zZyBbZHJtX2Rpc3BsYXlfaGVscGVyXV0gQVVYIEIvRERJIEIvUEhZIEI6IG5hdGl2
ZSBkZWZlciA8Nz5bICA1NDUuNjgxMTIxXSBpOTE1IDAwMDA6MDA6MDIuMDogW2RybTpkcm1fZHBf
aTJjX2RvX21zZyBbZHJtX2Rpc3BsYXlfaGVscGVyXV0gQVVYIEIvRERJIEIvUEhZIEI6IG5hdGl2
ZSBkZWZlciAuLi4NCjw3PlsgIDU0NS42OTY5NTVdIGk5MTUgMDAwMDowMDowMi4wOiBbZHJtOmxz
cGNvbl9pbml0IFtpOTE1XV0gVmVuZG9yOiBNZWdhIENoaXBzIDw3PlsgIDU0NS42OTcyMjFdIGk5
MTUgMDAwMDowMDowMi4wOiBbZHJtOmxzcGNvbl9pbml0IFtpOTE1XV0gU3VjY2VzczogTFNQQ09O
IGluaXQgPDc+WyAgNTQ1LjY5Nzk1M10gaTkxNSAwMDAwOjAwOjAyLjA6IFtkcm06bHNwY29uX2Rl
dGVjdF9oZHJfY2FwYWJpbGl0eSBbaTkxNV1dIExTUENPTiBjYXBhYmxlIG9mIEhEUg0KDQpMb29r
cyBlaXRoZXIgdGhlIExTUENPTiBGVyBicmVha2luZyBmb3Igc29tZSByZWFzb24gYWZ0ZXIgYSB3
aGlsZSwgZGVmZXJyaW5nIGFsbCB0aGUgQVVYIHJlc3BvbnNlcyBzaW1pbGFybHkgdG8gdGhlIHdv
cmtpbmcgc2NlbmFyaW9zLCBidXQgbmV2ZXIgYWN0dWFsbHkgY29tcGxldGluZyB0aGUgQVVYIHJl
cXVlc3QgYXMgaXQgZG9lcyBpbiB0aGUgd29ya2luZyBzY2VuYXJpb3MuIFRoaXMgc3RhdGUgcGVy
c2lzdHMgYWNyb3NzIG11bHRpcGxlIGRyaXZlciByZWxvYWRzIGFuZCBldmVudHVhbGx5IHJlY292
ZXJpbmcgYWZ0ZXIgYSBzeXN0ZW0gc3VzcGVuZC9yZXN1bWUuIFBvc3NpYmxlIHJvb3QgY2F1c2Vz
IGFyZToNCg0KLSBTb21lIHJlcXVpcmVkIExTUENPTiBwcm9ncmFtbWluZyBkb25lIGJ5IEJJT1Mv
R09QIGJ1dCB1bmtub3duIHRvIGk5MTUgZ2V0dGluZw0KICBsb3N0IGFjcm9zcyBwb3dlciBzdGF0
ZSB0cmFuc2l0aW9ucw0KLSBMU1BDT04gZ2V0dGluZyBjb25mdXNlZCBieSBzb21lIGk5MTUgcHJv
Z3JhbW1pbmcgKHZpYSBBVVggRFBDRCkNCi0gRmlybXdhcmUgYnVnLCBtaXNzaW5nIEZXIHVwZGF0
ZSBvbiB0aGUgS0JMIHN5c3RlbQ0KDQpUaGUgc2FtZSBpc3N1ZXMgaGFwcGVuZWQgYWxyZWFkeSBl
YXJsaWVyIGluIHRoZSBmb2xsb3dpbmcgQ0kgcnVuczoNClBhdGNod29ya18xMjc5NjZ2My9maS1r
YmwtNzU2N3UNClBhdGNod29ya18xMjgxNDd2Mi9maS1rYmwtNzU2N3UNCklHVFBXXzEwNDY5L2Zp
LWtibC03NTY3dQ0KDQpJIGNvdWxkbid0IGZpbmQgYW55IHRpY2tldCBvcGVuIGZvciBpdDoNCmh0
dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMvMTAwMTMNCg0K
SSB0aG91Z2h0IGl0IGNvdWxkIGJlIHJlbGF0ZWQgdG8gb25lIG9mDQogIGRybS9pOTE1L2RwOiBB
Ym9ydCBBVVggb24gZGlzY29ubmVjdGVkIG5hdGl2ZSBEUCBwb3J0cw0KICBkcm0vaTkxNTogRmls
dGVyIG91dCBnbGl0Y2hlcyBvbiBIUEQgbGluZXMgZHVyaW5nIGhvdHBsdWcgZGV0ZWN0aW9uDQoN
CmluIHRoZSBwYXRjaHNldCwgaG93ZXZlciBJIGNhbid0IHNlZSBpbiB0aGUgbG9nIGFueSBjb25u
ZWN0b3Igc3RhdGUgY2hhbmdlIChkdWUgdG8gSFBEIGdldHRpbmcgZGVhc3NlcnRlZCkgb3IgYW4g
QVVYIGZhaWx1cmUgcmVsYXRlZCB0byB0aGF0ICh3aGljaCB3b3VsZCByZXN1bHQgaW4gYW4gRFBD
RCBmYWlsaW5nIHdpdGggLUVOWElPKS4NCg0KQmFzZWQgb24gdGhlIGFib3ZlLCBJIGRvbid0IHNl
ZSBob3cgdGhpcyBpc3N1ZSB3b3VsZCBiZSByZWxhdGVkIHRvIGNoYW5nZXMuDQoNCj4gS25vd24g
aXNzdWVzDQo+IC0tLS0tLS0tLS0tLQ0KPiANCj4gICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3Vu
ZCBpbiBQYXRjaHdvcmtfMTI4MTg2djIgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOg0KPiAN
Cj4gIyMjIElHVCBjaGFuZ2VzICMjIw0KPiANCj4gIyMjIyBJc3N1ZXMgaGl0ICMjIyMNCj4gDQo+
ICAgKiBpZ3RAZGVidWdmc190ZXN0QGJhc2ljLWh3bW9uOg0KPiAgICAgLSBiYXQtcnBscy0yOiAg
ICAgICAgIE5PVFJVTiAtPiBbU0tJUF1bM10gKFtpOTE1IzkzMThdKQ0KPiAgICBbM106IA0KPiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjgxODZ2
Mi9iYXQtcnBscy0yDQo+IC9pZ3RAZGVidWdmc190ZXN0QGJhc2ljLWh3bW9uLmh0bWwNCj4gDQo+
ICAgKiBpZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zM0BzbWVtOg0KPiAgICAgLSBmaS1hcGwt
Z3VjOiAgICAgICAgIFtQQVNTXVs0XSAtPiBbRE1FU0ctV0FSTl1bNV0gKFtpOTE1Izg3MDNdKQ0K
PiAgICBbNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzE0MDc4L2ZpLWFwbC1ndWMvaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMtczNAc21lbS5odG1s
DQo+ICAgIFs1XTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzEyODE4NnYyL2ZpLWFwbC1ndWMNCj4gL2lndEBnZW1fZXhlY19zdXNwZW5kQGJh
c2ljLXMzQHNtZW0uaHRtbA0KPiANCj4gICAqIGlndEBnZW1fbG1lbV9zd2FwcGluZ0BiYXNpYzoN
Cj4gICAgIC0gZmktcG52LWQ1MTA6ICAgICAgICBOT1RSVU4gLT4gW1NLSVBdWzZdIChbZmRvIzEw
OTI3MV0pICsyOCBvdGhlciB0ZXN0cyBza2lwDQo+ICAgIFs2XTogDQo+IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyODE4NnYyL2ZpLXBudi1kNTEN
Cj4gMC9pZ3RAZ2VtX2xtZW1fc3dhcHBpbmdAYmFzaWMuaHRtbA0KPiANCj4gICAqIGlndEBnZW1f
bG1lbV9zd2FwcGluZ0BwYXJhbGxlbC1yYW5kb20tZW5naW5lczoNCj4gICAgIC0gYmF0LWFkbG0t
MTogICAgICAgICBOT1RSVU4gLT4gW1NLSVBdWzddIChbaTkxNSM0NjEzXSkgKzMgb3RoZXIgdGVz
dHMgc2tpcA0KPiAgICBbN106IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xMjgxODZ2Mi9iYXQtYWRsbS0xDQo+IC9pZ3RAZ2VtX2xtZW1fc3dh
cHBpbmdAcGFyYWxsZWwtcmFuZG9tLWVuZ2luZXMuaHRtbA0KPiANCj4gICAqIGlndEBnZW1fdGls
ZWRfcHJlYWRfYmFzaWM6DQo+ICAgICAtIGJhdC1ycGxzLTI6ICAgICAgICAgTk9UUlVOIC0+IFtT
S0lQXVs4XSAoW2k5MTUjMzI4Ml0pDQo+ICAgIFs4XTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyODE4NnYyL2JhdC1ycGxzLTINCj4gL2ln
dEBnZW1fdGlsZWRfcHJlYWRfYmFzaWMuaHRtbA0KPiANCj4gICAqIGlndEBpOTE1X21vZHVsZV9s
b2FkQHJlbG9hZDoNCj4gICAgIC0gZmkta2JsLTc1Njd1OiAgICAgICBbUEFTU11bOV0gLT4gW0RN
RVNHLVdBUk5dWzEwXSAoW2k5MTUjODU4NV0pDQo+ICAgIFs5XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTQwNzgvZmkta2JsLTc1Njd1L2lndEBpOTE1
X21vZHVsZV9sb2FkQHJlbG9hZC5odG1sDQo+ICAgIFsxMF06IA0KPiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjgxODZ2Mi9maS1rYmwtNzU2DQo+
IDd1L2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC5odG1sDQo+IA0KPiAgICogaWd0QGk5MTVf
c2VsZnRlc3RAbGl2ZUBndF9oZWFydGJlYXQ6DQo+ICAgICAtIGZpLWtibC03NTY3dTogICAgICAg
W1BBU1NdWzExXSAtPiBbRE1FU0ctV0FSTl1bMTJdIChbaTkxNSM5NzMwXSkgKzMxIG90aGVyIHRl
c3RzIGRtZXNnLXdhcm4NCj4gICAgWzExXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fMTQwNzgvZmkta2JsLTc1Njd1L2lndEBpOTE1X3NlbGZ0ZXN0QGxp
dmVAZ3RfaGVhcnRiZWF0Lmh0bWwNCj4gICAgWzEyXTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyODE4NnYyL2ZpLWtibC03NTYNCj4gN3Uv
aWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBndF9oZWFydGJlYXQuaHRtbA0KPiANCj4gICAqIGlndEBp
OTE1X3N1c3BlbmRAYmFzaWMtczJpZGxlLXdpdGhvdXQtaTkxNToNCj4gICAgIC0gZmkta2JsLTc1
Njd1OiAgICAgICBbUEFTU11bMTNdIC0+IFtETUVTRy1XQVJOXVsxNF0gKFtpOTE1IzE4MF0pDQo+
ICAgIFsxM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzE0MDc4L2ZpLWtibC03NTY3dS9pZ3RAaTkxNV9zdXNwZW5kQGJhc2ljLXMyaWRsZS13aXRob3V0
LWk5MTUuaHRtbA0KPiAgICBbMTRdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI4MTg2djIvZmkta2JsLTc1Ng0KPiA3dS9pZ3RAaTkxNV9z
dXNwZW5kQGJhc2ljLXMyaWRsZS13aXRob3V0LWk5MTUuaHRtbA0KPiANCj4gICAqIGlndEBpOTE1
X3N1c3BlbmRAYmFzaWMtczMtd2l0aG91dC1pOTE1Og0KPiAgICAgLSBmaS1rYmwtNzU2N3U6ICAg
ICAgIFtQQVNTXVsxNV0gLT4gW0RNRVNHLVdBUk5dWzE2XSAoW2k5MTUjMTk4Ml0pDQo+ICAgIFsx
NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE0MDc4
L2ZpLWtibC03NTY3dS9pZ3RAaTkxNV9zdXNwZW5kQGJhc2ljLXMzLXdpdGhvdXQtaTkxNS5odG1s
DQo+ICAgIFsxNl06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xMjgxODZ2Mi9maS1rYmwtNzU2DQo+IDd1L2lndEBpOTE1X3N1c3BlbmRAYmFz
aWMtczMtd2l0aG91dC1pOTE1Lmh0bWwNCj4gDQo+ICAgKiBpZ3RAa21zX2N1cnNvcl9sZWdhY3lA
YmFzaWMtYnVzeS1mbGlwLWJlZm9yZS1jdXJzb3ItbGVnYWN5Og0KPiAgICAgLSBiYXQtcnBscy0y
OiAgICAgICAgIE5PVFJVTiAtPiBbU0tJUF1bMTddIChbaTkxNSM0MTAzXSkgKzEgb3RoZXIgdGVz
dCBza2lwDQo+ICAgIFsxN106IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xMjgxODZ2Mi9iYXQtcnBscy0yDQo+IC9pZ3RAa21zX2N1cnNvcl9s
ZWdhY3lAYmFzaWMtYnVzeS1mbGlwLWJlZm9yZS1jdXJzb3ItbGVnYWN5Lmh0bWwNCj4gDQo+ICAg
KiBpZ3RAa21zX2RzY0Bkc2MtYmFzaWM6DQo+ICAgICAtIGJhdC1ycGxzLTI6ICAgICAgICAgTk9U
UlVOIC0+IFtTS0lQXVsxOF0gKFtpOTE1IzM1NTVdIC8gW2k5MTUjMzg0MF0gLyBbaTkxNSM5ODg2
XSkNCj4gICAgWzE4XTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzEyODE4NnYyL2JhdC1ycGxzLTINCj4gL2lndEBrbXNfZHNjQGRzYy1iYXNp
Yy5odG1sDQo+IA0KPiAgICogaWd0QGttc19mb3JjZV9jb25uZWN0b3JfYmFzaWNAZm9yY2UtbG9h
ZC1kZXRlY3Q6DQo+ICAgICAtIGJhdC1ycGxzLTI6ICAgICAgICAgTk9UUlVOIC0+IFtTS0lQXVsx
OV0gKFtmZG8jMTA5Mjg1XSkNCj4gICAgWzE5XTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyODE4NnYyL2JhdC1ycGxzLTINCj4gL2lndEBr
bXNfZm9yY2VfY29ubmVjdG9yX2Jhc2ljQGZvcmNlLWxvYWQtZGV0ZWN0Lmh0bWwNCj4gDQo+ICAg
KiBpZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQG5vbmJsb2NraW5nLWNyYy1mcmFtZS1zZXF1ZW5jZToN
Cj4gICAgIC0gYmF0LWRnMi0xMTogICAgICAgICBOT1RSVU4gLT4gW1NLSVBdWzIwXSAoW2k5MTUj
OTE5N10pICsxIG90aGVyIHRlc3Qgc2tpcA0KPiAgICBbMjBdOiANCj4gaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI4MTg2djIvYmF0LWRnMi0xMQ0K
PiAvaWd0QGttc19waXBlX2NyY19iYXNpY0Bub25ibG9ja2luZy1jcmMtZnJhbWUtc2VxdWVuY2Uu
aHRtbA0KPiANCj4gICAqIGlndEBrbXNfcGlwZV9jcmNfYmFzaWNAc3VzcGVuZC1yZWFkLWNyYzoN
Cj4gICAgIC0gYmF0LWFkbG0tMTogICAgICAgICBOT1RSVU4gLT4gW1NLSVBdWzIxXSAoW2k5MTUj
OTg3NV0gLyBbaTkxNSM5OTAwXSkNCj4gICAgWzIxXTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyODE4NnYyL2JhdC1hZGxtLTENCj4gL2ln
dEBrbXNfcGlwZV9jcmNfYmFzaWNAc3VzcGVuZC1yZWFkLWNyYy5odG1sDQo+IA0KPiAgICogaWd0
QGttc19wbV9iYWNrbGlnaHRAYmFzaWMtYnJpZ2h0bmVzczoNCj4gICAgIC0gYmF0LXJwbHMtMjog
ICAgICAgICBOT1RSVU4gLT4gW1NLSVBdWzIyXSAoW2k5MTUjNTM1NF0pDQo+ICAgIFsyMl06IA0K
PiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjgx
ODZ2Mi9iYXQtcnBscy0yDQo+IC9pZ3RAa21zX3BtX2JhY2tsaWdodEBiYXNpYy1icmlnaHRuZXNz
Lmh0bWwNCj4gDQo+ICAgKiBpZ3RAa21zX3BtX3JwbUBiYXNpYy1ydGU6DQo+ICAgICAtIGJhdC1y
cGxzLTI6ICAgICAgICAgTk9UUlVOIC0+IFtBQk9SVF1bMjNdIChbaTkxNSM4NjY4XSAvIFtpOTE1
IzkzNjhdIC8gW2k5MTUjOTg5N10pDQo+ICAgIFsyM106IA0KPiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjgxODZ2Mi9iYXQtcnBscy0yDQo+IC9p
Z3RAa21zX3BtX3JwbUBiYXNpYy1ydGUuaHRtbA0KPiANCj4gICANCj4gICB7bmFtZX06IFRoaXMg
ZWxlbWVudCBpcyBzdXBwcmVzc2VkLiBUaGlzIG1lYW5zIGl0IGlzIGlnbm9yZWQgd2hlbiBjb21w
dXRpbmcNCj4gICAgICAgICAgIHRoZSBzdGF0dXMgb2YgdGhlIGRpZmZlcmVuY2UgKFNVQ0NFU1Ms
IFdBUk5JTkcsIG9yIEZBSUxVUkUpLg0KPiANCj4gICBbZmRvIzEwOTI3MV06IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTI3MQ0KPiAgIFtmZG8jMTA5Mjg1
XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA5Mjg1DQo+
ICAgW2k5MTUjMTgwXTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9p
c3N1ZXMvMTgwDQo+ICAgW2k5MTUjMTk4Ml06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9y
Zy9kcm0vaW50ZWwvaXNzdWVzLzE5ODINCj4gICBbaTkxNSMzMjgyXTogaHR0cHM6Ly9naXRsYWIu
ZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMzI4Mg0KPiAgIFtpOTE1IzM1NTVdOiBo
dHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy8zNTU1DQo+ICAg
W2k5MTUjMzg0MF06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNz
dWVzLzM4NDANCj4gICBbaTkxNSM0MTAzXTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3Jn
L2RybS9pbnRlbC9pc3N1ZXMvNDEwMw0KPiAgIFtpOTE1IzQ2MTNdOiBodHRwczovL2dpdGxhYi5m
cmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy80NjEzDQo+ICAgW2k5MTUjNTM1NF06IGh0
dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzUzNTQNCj4gICBb
aTkxNSM4NTg1XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1
ZXMvODU4NQ0KPiAgIFtpOTE1Izg2NjhdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcv
ZHJtL2ludGVsL2lzc3Vlcy84NjY4DQo+ICAgW2k5MTUjODcwM106IGh0dHBzOi8vZ2l0bGFiLmZy
ZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzg3MDMNCj4gICBbaTkxNSM5MTk3XTogaHR0
cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvOTE5Nw0KPiAgIFtp
OTE1IzkzMThdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vl
cy85MzE4DQo+ICAgW2k5MTUjOTM2OF06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9k
cm0vaW50ZWwvaXNzdWVzLzkzNjgNCj4gICBbaTkxNSM5NzMwXTogaHR0cHM6Ly9naXRsYWIuZnJl
ZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvOTczMA0KPiAgIFtpOTE1Izk4NzVdOiBodHRw
czovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy85ODc1DQo+ICAgW2k5
MTUjOTg4Nl06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVz
Lzk4ODYNCj4gICBbaTkxNSM5ODk3XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2Ry
bS9pbnRlbC9pc3N1ZXMvOTg5Nw0KPiAgIFtpOTE1Izk5MDBdOiBodHRwczovL2dpdGxhYi5mcmVl
ZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy85OTAwDQo+IA0KPiANCj4gQnVpbGQgY2hhbmdl
cw0KPiAtLS0tLS0tLS0tLS0tDQo+IA0KPiAgICogTGludXg6IENJX0RSTV8xNDA3OCAtPiBQYXRj
aHdvcmtfMTI4MTg2djINCj4gDQo+ICAgQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5DQo+ICAgQ0lfRFJN
XzE0MDc4OiAxYmFmOTkwYmM2NzNmMzFkOWViYTdkZmNiNTk3YWMwY2I3NDIwYjE0IEAgZ2l0Oi8v
YW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4DQo+ICAgSUdUXzc2NTU6IGRkZjdj
ZjQwYTAwY2FhN2QwMmYzNzI5ZTFlNTBmNzhmMTAyNDYzZDkgQCBodHRwczovL2dpdGxhYi5mcmVl
ZGVza3RvcC5vcmcvZHJtL2lndC1ncHUtdG9vbHMuZ2l0DQo+ICAgUGF0Y2h3b3JrXzEyODE4NnYy
OiAxYmFmOTkwYmM2NzNmMzFkOWViYTdkZmNiNTk3YWMwY2I3NDIwYjE0IEAgDQo+IGdpdDovL2Fu
b25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eA0KPiANCj4gDQo+ICMjIyBMaW51eCBj
b21taXRzDQo+IA0KPiBmMTYzOTVhMzcyNjQgZHJtL2k5MTUvZHA6IEFib3J0IEFVWCBvbiBkaXNj
b25uZWN0ZWQgbmF0aXZlIERQIHBvcnRzIA0KPiBlNzM1YzVmNzY3OGEgZHJtL2k5MTU6IEZpbHRl
ciBvdXQgZ2xpdGNoZXMgb24gSFBEIGxpbmVzIGR1cmluZyBob3RwbHVnIA0KPiBkZXRlY3Rpb24N
Cj4gY2E5MDc5M2I0MWQzIGRybS9pOTE1OiBBZGQgaW50ZWxfZGlnaXRhbF9wb3J0IGxvY2svdW5s
b2NrIGhvb2tzIA0KPiAyYTQ5NzFkNTA1M2QgZHJtL2k5MTU6IERpc2FibGUgaG90cGx1ZyBkZXRl
Y3Rpb24gaGFuZGxlcnMgZHVyaW5nIA0KPiBkcml2ZXIgaW5pdC9zaHV0ZG93biBmM2RkYzY0ZGZm
NmEgZHJtL2k5MTU6IERpc2FibGUgaG90cGx1ZyBkZXRlY3Rpb24gDQo+IHdvcmtzIGR1cmluZyBk
cml2ZXIgaW5pdC9zaHV0ZG93biA3NTQ1NzlmOWNiOGQgZHJtL2k5MTU6IFByZXZlbnQgDQo+IG1v
ZGVzZXRzIGR1cmluZyBkcml2ZXIgaW5pdC9zaHV0ZG93bg0KPiA4Mjc4MTlkYTlmNDMgZHJtL2k5
MTU6IFN1c3BlbmQgdGhlIGZyYW1lYnVmZmVyIGNvbnNvbGUgZWFybGllciBkdXJpbmcgDQo+IHN5
c3RlbSBzdXNwZW5kIDI1M2MxYTY5ZDU3YyBkcm0vaTkxNTogU3VzcGVuZCB0aGUgZnJhbWVidWZm
ZXIgY29uc29sZSANCj4gZHVyaW5nIGRyaXZlciBzaHV0ZG93bg0KPiA1NGI5YjQ4YjE2NTEgZHJt
L2k5MTU6IERpc2FibGUgaW50ZWwgSFBEIHBvbGwgYWZ0ZXIgRFJNIHBvbGwgDQo+IGluaXQvZW5h
YmxlDQo+IGMzNmY4NWJjZWEyNSBkcm0vaTkxNTogTW92ZSBhdWRpbyBkZWluaXQgYWZ0ZXIgZGlz
YWJsaW5nIHBvbGxpbmcgDQo+IGUwYTZlMjE5YWVhYiBkcm0vaTkxNTogS2VlcCB0aGUgY29ubmVj
dG9yIHBvbGxlZCBzdGF0ZSBkaXNhYmxlZCBhZnRlciANCj4gc3Rvcm0NCj4gZjJhMWU3YjEwZGI4
IGRybS9pOTE1OiBJbml0IERSTSBjb25uZWN0b3IgcG9sbGVkIGZpZWxkIGVhcmx5DQo+IA0KPiA9
PSBMb2dzID09DQo+IA0KPiBGb3IgbW9yZSBkZXRhaWxzIHNlZTogDQo+IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyODE4NnYyL2luZGV4Lmh0bWwN
Cg==
