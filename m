Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9BB899DAE
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 14:57:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B15B113BD9;
	Fri,  5 Apr 2024 12:56:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aLtm2+VO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6341C113BDB
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 12:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712321817; x=1743857817;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=6sXHJNN2503RgWSX4r8SSxI9kx9Q5JbLeaY/AAosZxc=;
 b=aLtm2+VOydrBWkdkvPQb1QCMSUS+glWuiRDQzBWfLgz544SlP9Tn/dl4
 mHe9cQJr4qzfTA0emDATzfush94TG7Eg7dHNK2WlwXUQ9kp1t3wk6PLss
 i4tVzPcU85keUeN6dn/J7KJB1dFrGreJMcJoPdxJI4KXiXAp6aAiIb38S
 04t2NopEveqesNbekwMNj9J5u8vOdXyb9klHAuDlpaQET43+pNQLAmemN
 /InjRRSZ594Ff8SUcM8ZodfVVP6MGteYJ0pDstsrIYrzgH86Z1RO9sjxn
 O+cesFZwaQrCItr09lnPSKl/O4om176rhiBShwqYF659IObrIM2boNm7X Q==;
X-CSE-ConnectionGUID: I2itsYe6Qk26m60p11B8Og==
X-CSE-MsgGUID: mCp2HhGLTUKPyfuI8/WWYg==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="11466316"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="11466316"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 05:56:57 -0700
X-CSE-ConnectionGUID: 4cRKvpNWTpKPuEXImLD3OA==
X-CSE-MsgGUID: TLReDRqYSV6+eYTPXJXm+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="19612859"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Apr 2024 05:56:55 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Apr 2024 05:56:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Apr 2024 05:56:55 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 5 Apr 2024 05:56:55 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 5 Apr 2024 05:56:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N4remyvDZfdmNFn1dYMsGhQTjFoSwBVGxUiLCYoikSxBsPzd917g2hkLTpBDzHmCjQZA9fxlP75pq64U9Z+LDt0mwnMoagxGzkqslBQYUVTOXJ8PJM60JGMSNLEfcvSKMr5vfk6WH9zw/iO5WqjLty36DgzENdWx7ymwyM5k4iCf+5SiRernr81u1wINPHgQBDDJnjWxpfWmhIfWf4UyFjAPnpaw0Fq/z9NAV3/0MfntkBDjKs02DaQB6Go+idKwAr5MxoCDaMJWJS8oGmvc5Mqa3e/IibHQyZGoOsMHK77w5VYQLC80HZBQCujIwXfCWkkjLQ/fJdOsft1eWZo8Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6sXHJNN2503RgWSX4r8SSxI9kx9Q5JbLeaY/AAosZxc=;
 b=Ao6Asm8ah9KgNSlrpanPyeUjAtZ5JThUJJwcpuKZ4fD0wJEvx0W/kuKns/fozZZTzvoXDoun/mqnpcbWe/dNbvhyFKEyceWw5rGihHHfJUL876y26IKekmwFb38aiZSIKZaSsheGdSeLJbE4rhPLNE0W09d3YRExsMHsINh3nUCTcoCDrsvhfcsjjd7T/9vnEeFh6K/EFaBrM3Gxu/5v0/kFh8pECl0HlDOOz+2PoN50hcLrHhCwv8H/9plAGet91270x6MiCsCDyou9/QxUh6/hcbchlcOtiIiTzCYRMm30YMhLxFigJ//H+u3Wen+cDjL4wfJG1ujTVZcb7+zs2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CH3PR11MB8749.namprd11.prod.outlook.com (2603:10b6:610:1c9::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Fri, 5 Apr
 2024 12:56:53 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7452.019; Fri, 5 Apr 2024
 12:56:53 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v2 01/17] drm/i915: Update pipes in reverse order for
 bigjoiner
Thread-Topic: [PATCH v2 01/17] drm/i915: Update pipes in reverse order for
 bigjoiner
Thread-Index: AQHahtgCNY+bZZR+p0WXEpYh66l28LFZjQ9Q
Date: Fri, 5 Apr 2024 12:56:52 +0000
Message-ID: <IA0PR11MB7307EF4E4263D22864B078D2BA032@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
 <20240404213441.17637-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20240404213441.17637-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|CH3PR11MB8749:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PJXajCMaaKpDxTqb7pVHOzgdxqCm/ESoAaAv5cCPvxFNPV5Vr9yoRTBHc+HZa31nuMpPnFAhOEtc5/Pjs04sTSF9s/OrecmFAXK6rYBRt7hfLGmnJKpQ8wuLCYWWNi+v0Pw9vzTp1jHrK7brmTb7mIwovdyB9DMewKFLlryNeLImVv4UFTfGW25Trx0iw+NIL/B7fC/lBctqLoj4ACqvfb0xPy32ZzgyEchRktmCXkM6pFqI9ckPtAQOfweoJeeNZMifmmWB9YnY86DWjoslkUvQiL2QVOaECxvZzqUEHXuRONg73s1m23eGaif6SF5hHFYdkAne/QUDjQO2mzztK1FgMOkQvaaoXRV+gRGJ8FoXBEmWG4HDfJJ9Kd0+DMQAAvWUiv4lxWiup3oX+KeLqu4boqcdpxfKknB7+K6lUzJRgBZEEGLCB7GqCNu7FMGHyoYx82J0RhUpGjN7T5w+pj3K0XsnWufyOPUQ8jtsjycJwHmvVcu2UuZx32+HbG/2hgwd5EOgWYHG3MONW1bjw+JtVJ8m/jj6jyZ700K95rNS4ebI+DHCsaMKhBd552MTK09X1n04cYjKflU08EXzgh4aBYPHCumn6KtENWT3H2nlqfDZpLaCWj6x5iIs0ovCaBe4mZSN3qAy2DQWoMQ6rDhLq5ySar57OwFXtXslKgE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OUo5UzFISG04aldtQ3dra09TczNwMUQzSWhoakFxaDFqL3FBK1dFRkMvTDJR?=
 =?utf-8?B?YU9uYkVrYmpndjhQRFptTExuZmFSL1lYcmlrdHVibzBEdUlGQStQVWxxUHJ1?=
 =?utf-8?B?TTUxcDJkb3hNT29kM2FYVzIzM2cxcDcyZDVKK3hXd3JhYU5qV3BlcURnTDI5?=
 =?utf-8?B?TFYxOEpjamJ3YzBzNXM1bnJrZTdvakh5cmIyZ2YwK2VIRnRHQUxlcHY4RW15?=
 =?utf-8?B?a2pES0k5VjBoa2ZyMTdkM1RoeFlaK2xXQVpyay8xZEdqMmVqMVRrTk12Nm5n?=
 =?utf-8?B?L3B3UC9NV2xQckdXVXdITXR5ZzVPWU9JbnhtMmtWWjBmTEtwci84TkpyUWRR?=
 =?utf-8?B?NXhFR1hsTStWMHRHN3RxQmVBejNOMFM0dVR2eFliNWpob1N4YWVhamxudkNT?=
 =?utf-8?B?blVyQXR1eFEwTGxEeEVNcDBlWndjUjcwcUxIeENFRkZWOGhaQUlvRzhQK3I2?=
 =?utf-8?B?eFR0bWhuRUg0YjhGR1MrQU9iYTRBaVRUWmczNmdaUnN2eTljTFA0elh4RU9B?=
 =?utf-8?B?SUM4WFBiRzFSL2g2anNjUHBuTi95Y2FMOWRQbFU5RkxNU0kzWi9Ld2luRU95?=
 =?utf-8?B?Qk0wMmE5TzVTSXoreWttUk96MUtzT0JvSWJlK1R4WlBwYm9KRjRwbzJGUk15?=
 =?utf-8?B?bUNpWmw3Ui9lQXd1UEc4ZzlRTFpkcW1xSEJ4aERiZFdBeVJXeXRNb0ZDY3ZE?=
 =?utf-8?B?Wmk4bEcvVFBpM1dtZEFQM3pVZVRUZjV2NWhadHdRMUY0UWlKeUNydW44clI1?=
 =?utf-8?B?ZFhvcjFnZXhMTjVaR05ZWkZpL1B0Tk5uRlg1dm9OZHVyQzFZdjdMK0dCditF?=
 =?utf-8?B?RGs3UW9LektPNUxWRGRaMVRHNEhDSGluaytIV282Y0tKamVtTzd6ZzNTWVha?=
 =?utf-8?B?eWpWbDNaRVdBZzRGK1lzdlNsUGNVYWZ5ZStCVHJRMnc0SFF3d2ZaSEJ3VXZj?=
 =?utf-8?B?MGxTOFI1VUxISSt5QmdzTzFxZ0Fvd2NnRVlJckFJRUQ3RXJrZGhUNXcvNFFx?=
 =?utf-8?B?T2FTSnlkZGt1dXBaWGpYUDBkUkcvR0dBMlNCbVRiRkNOUTg2YzRlaFpZN1cr?=
 =?utf-8?B?NUlXdVJzdzNHUTl2cVFkUDRLT2h6T0VKS1QyOG53dFhVMVBoRHA1UDRaNGpX?=
 =?utf-8?B?NnRCYXc1RDU2QU5NWi9RMDNUMTFBYjVHU2NQRFRPeUx0U2l4MXBtTHJpZUVa?=
 =?utf-8?B?VHB3ZitOck9WVmg3V05LNGQ1TEp3eDNYcEVWZXVxaHlRUUpnUm9LWUlUMkhG?=
 =?utf-8?B?YTlZOXhvdTROWWRFMWo0VW9YVWlRTXhqNFVjZGVNQk1OZVBkWWZMREtuMFN5?=
 =?utf-8?B?eFlKOE1aazZzaWF6UGdwOGV0cEhkcGpFVFlnTmhVRmM0YXlVMzFFYThtN1Rs?=
 =?utf-8?B?cDJFSGtMTUlSMGE1eVN6L2ZBSEQ0bmxWYXpzR1ZaWERPT0V3M2FDYVBQL1Jm?=
 =?utf-8?B?SEhjd3pxc08wTmU3UVQwb1BvbmNDN3hXL2RRcU94dHFncWZuVzYzdzBrSW53?=
 =?utf-8?B?andFc0JPaDlwOVBrSEJGeXJGZUtnV2QvdEsxM0I2L0FXUFZ6RE41VXp5VXJZ?=
 =?utf-8?B?cXZGUE8zanQxT2xsNEpnN1RUTjl3ZzJwcUh0Wisxeno2MXNZUUQvMzVtdTRK?=
 =?utf-8?B?ZEQ1VWNYQ1ZZRFJxVzU3VFNqZks0UXd6WmFNRk5ReEwyb1B4SUk0L3pnejZ1?=
 =?utf-8?B?ek4rME9CZ0lPYWFkTVZRVzdiMkwyVHpENnplQXpCYXlsS09zZ0kyVDgvTDlO?=
 =?utf-8?B?ek05Mm9NSlptWmZPbE9OblZOemx0VTI3clJlS2FSRjU5dkVmSGdJbzU1SzRp?=
 =?utf-8?B?b3FjbzNoNnVkWW1nZGNtUWU5bXlmZG5ickJJM0VLRGFEOGJIVFBwelcxY0ZH?=
 =?utf-8?B?RDZmSzdkeTNvaWNNRjJIZno5SEVSNU42TWVHcmdFOUhtTzJCT084NmdGdWtp?=
 =?utf-8?B?MXJOQUgzMTJkeFVqblNnelUxS2pGaDRYU3hPOHgvUm02Yk56ZklUT0lBRHN6?=
 =?utf-8?B?Rktva2ZuWWZhZ3VUb0hVOElsb2N1aXJ4UGhBYnlVU1ZNQVhkd1EyQUNLVzBD?=
 =?utf-8?B?SjcvTnJOeEEzTDVmVFg0MWlqcXhZZkZib2hVZVA1aTduYzRZUkt1TW53eTVo?=
 =?utf-8?Q?uxZlwQVnhDKMBC9lnVsySCnZV?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: efcbb411-6739-45af-b12e-08dc556fddc4
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2024 12:56:52.9749 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Qgwd6DlaKrTNiQu5zC2MlvnCNrVhjAsejdSo6BTgq3CCqbEHaZGi+WJHja++sgY2V/2cI/8pb6QIAxu2Uu1++g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8749
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

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8aW50ZWwt
Z2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUNCj4g
U3lyamFsYQ0KPiBTZW50OiBGcmlkYXksIEFwcmlsIDUsIDIwMjQgMzowNCBBTQ0KPiBUbzogaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggdjIgMDEvMTdd
IGRybS9pOTE1OiBVcGRhdGUgcGlwZXMgaW4gcmV2ZXJzZSBvcmRlciBmb3IgYmlnam9pbmVyDQo+
IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pg0KPiANCj4gV2l0aCBiaWdqb2luZXIgdGhlIG1hc3RlciBjcnRjIGlzIHRoZSBvbmUgdGhhdCB3
aWxsIHNlbmQgb3V0IHRoZSB1YXBpIGV2ZW50L2V0Yy4NCj4gV2Ugd2FudCB0aGF0IHRvIGhhcHBl
biBhZnRlciBhbGwgdGhlIHNsYXZlcyBhcmUgZG9uZSwgc28gbGV0J3MgdHJ5IHRvIGRvIHRoZQ0K
PiBjb21taXRzIGluIHJldmVyc2Ugb3JkZXIgc28gdGhhdCB0aGUgbWFzdGVyIGNvbWVzIGxhc3Qu
DQo+IA0KPiBFdmVuIHdvcnNlLCB0aGUgbW9kZXNldCBoZWxwZXIgd2lsbCBzaW1wbHkgY29tcGxl
dGUgdGhlIGNvbW1pdCBvbiB0aGUgc2xhdmUNCj4gcGlwZSBpbW1lZGlhdGVseSBhcyBpdCBjb25z
aWRlciB0aGUgY3J0YyB0byBiZSBpbmFjdGl2ZSAoaXQgY2FuJ3Qgc2VlIG91cg0KPiBjcnRjX3N0
YXRlLT5ody5hY3RpdmUvZXRjLikuDQo+IA0KPiBXaXRoIHJlZ3VsYXIgc3luYyB1cGRhdGVzIHRo
aXMgZ2VuZXJhbGx5IGRvZXNuJ3QgbWF0dGVyIGFsbCB0aGF0IG11Y2ggYXMgdGhlDQo+IHNsYXZl
IHBpcGUgc2hvdWxkIHR5cGljYWxseSBmaW5pc2ggaXRzIHdvcmsgZHVyaW5nIHRoZSBzYW1lIGZy
YW1lIGFzIHRoZSBtYXN0ZXINCj4gcGlwZS4gSG93ZXZlciBpbiBjYXNlIHRoZSBzbGF2ZSBwaXBl
J3MgY29tbWl0IHNsaXBzIGludG8gdGhlIG5leHQgZnJhbWUgd2UgZW5kDQo+IHVwIGluIGEgYml0
IG9mIHRyb3VibGUuIFRoaXMgaXMgbW9zdCB2aXNpYmxlIHdpdGggZWl0aGVyIGFzeW5jIGZsaXBz
IChjdXJyZW50bHkNCj4gZGlzYWJsZWQgd2l0aCBiaWdqb2luZXIgZXhhY3RseSBmb3IgdGhpcyBy
ZWFzb24pLCBhbmQgRFNCIGdhbW1hIHVwZGF0ZXMuIFdpdGgNCj4gRFNCIHRoZSBwcm9ibGVtIGhh
cHBlbnMgYmVjYXVzZSB0aGUgRFNCIGl0c2VsZiB3aWxsIHdhaXQgdW50aWwgdGhlIG5leHQgc3Rh
cnQNCj4gdmJsYW5rIGJlZm9yZSBzdGFydGluZyB0byBleGVjdXRlLiBTbyBpZiB0aGUgbWFzdGVy
IHBpcGUgYWxyZWFkeSBmaW5pc2hlZCBpdHMNCj4gY29tbWl0IGFuZCB0aGUgRFNCIG9uIHRoZSBz
bGF2ZSBwaXBlIGlzIHN0aWxsIHdhaXRpbmcgZm9yIHRoZSBuZXh0IHZibGFuayB3ZSB3aWxsDQo+
IGFzc3VtZSB0aGUgRFNCIGFzIGdvdHRlbiBzdHVjayBhbmQgdGVybWluYXRlIGl0Lg0KPiANCj4g
UmV2ZXJzaW5nIHRoZSBjb21taXQgb3JkZXIgc2hvdWxkIGFtZWxpYXJhdGUgdGhpcyBmb3IgdGhl
IG1vc3QgcGFydCBhcyB0aGUNCj4gbWFzdGVyIHBpcGUgaXMgZ3VhcmFudGVlZCB0byBzdGFydCBp
dHMgY29tbWl0IGFmdGVyIHRoZSBzbGF2ZSBwaXBlIHN0YXJ0ZWQuIFRoZQ0KPiBvbmUgdGhpbmcg
dGhhdCBjYW4gc3RpbGwgc2NyZXcgdXMgb3ZlciBpcyB0aGUgZmFjdCB0aGF0IHdlIGFyZW4ndCBu
ZWNlc3NhcmlseSBnb2luZw0KPiB0byBjb21taXQgdGhlIHBpcGVzIGluIHRoZSByZXZlcnNlIG9y
ZGVyIGFzIHRoZSBhY3R1YWwgb3JkZXIgaXMgZGljdGF0ZWQgYnkgdGhlDQo+IEREQiBvdmVybGFw
IGF2b2lkYW5jZS4NCj4gQnV0IHRoYXQgY2FuIG9ubHkgaGFwcGVuIHdoaWxlIG90aGVyIHBpcGVz
IGFyZSBiZWluZyBlbmFibGVkL2Rpc2FibGVkLCBhbmQgc28NCj4gaW4gdGhlIG5vcm1hbCBzdGVh
ZHkgc3RhdGUgd2Ugc2hvdWxkIGJlIHNhZmUuDQo+IA0KPiBUaGUgZnVsbCBmaXggd2lsbCBpbnZv
bHZlIG1ha2luZyB0aGUgY29tbWl0IG1hY2hpbmVyeSBhd2FyZSBvZiB0aGUgc2xhdmUgcGlwZXMN
Cj4gYW5kIG5vdCBmaW5pc2ggdGhlaXIgY29tbWl0cyBwcmVtYXR1cmVseS4gQnV0IHRoYXQgd2ls
bCBpbnZvbHZlIGEgYml0IG1vcmUgd29yaw0KPiB0aGFuIHRoaXMuIEFuZCB0aGlzIGNvbW1pdCBv
cmRlciByZXZlcnNhbCB3aWxsIHN0aWxsIGJlIGJlbmVmaWNpYWwgdG8gYXZvaWQNCj4gdXNlcnNw
YWNlIGdldHRpbmcgYW4gLUVCVVNZIGZyb20gdGhlIGZvbGxvd2luZyBwYWdlIGZsaXAgaWYgdGhl
IHNlY29uZCBwaXBlJ3MNCj4gY29tbWl0IGRvZXMgc3RyZXRjaCBpbnRvIHRoZSBuZXh0IGZyYW1l
Lg0KQ2FuIHRoZXJlIGJlIGEgcG9zc2liaWxpdHkgb2Ygc2VlaW5nIGEgZmxpY2tlci9jb3JydXB0
aW9uIGluIHRoYXQgY2FzZT8NCkFsc28gc2hvdWxkIHRoaXMgYmUgYWRkZWQgYSBUT0RPIGluIHRo
ZSBkcml2ZXIgc28gdGhhdCBpdCB3aWxsIG5vdCBiZSBtaXNzZWQgb3V0Pw0KDQpBYm92ZSBjb21t
ZW50IGlzIGZvciBjbGFyaWZpY2F0aW9uIGFuZCBpZiBhIFRPRE8gaXMgcmVxdWlyZWQsIGNhbiBi
ZSB0YWtlbiB1cCB3aGlsZSBtZXJnaW5nIHRoZSBwYXRjaC4gUmVtYWluaW5nIGxvZ2ljIGxvb2tz
IGdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogQXJ1biBSIE11cnRoeSA8YXJ1bi5yLm11cnRoeUBp
bnRlbC5jb20+DQoNClRoYW5rcyBhbmQgUmVnYXJkcywNCkFydW4gUiBNdXJ0aHkNCi0tLS0tLS0t
LS0tLS0tLS0tLS0tDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTQgKysrKysrKysrKystLS0NCj4gZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggfCAgOCArKysrKysrKw0KPiAgMiBm
aWxlcyBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXgg
YTQ4MWM5MjE4MTM4Li4wMDg2YTc0MjJlODYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC02OTU2LDggKzY5NTYsMTIgQEAgc3Rh
dGljIHZvaWQgc2tsX2NvbW1pdF9tb2Rlc2V0X2VuYWJsZXMoc3RydWN0DQo+IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUpDQo+ICAJaW50ZWxfZGJ1Zl9tYnVzX3ByZV9kZGJfdXBkYXRlKHN0YXRl
KTsNCj4gDQo+ICAJd2hpbGUgKHVwZGF0ZV9waXBlcykgew0KPiAtCQlmb3JfZWFjaF9vbGRuZXdf
aW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0Yywgb2xkX2NydGNfc3RhdGUsDQo+IC0JCQkJ
CQkgICAgbmV3X2NydGNfc3RhdGUsIGkpIHsNCj4gKwkJLyoNCj4gKwkJICogQ29tbWl0IGluIHJl
dmVyc2Ugb3JkZXIgdG8gbWFrZSBiaWdqb2luZXIgbWFzdGVyDQo+ICsJCSAqIHNlbmQgdGhlIHVh
cGkgZXZlbnRzIGFmdGVyIHNsYXZlcyBhcmUgZG9uZS4NCj4gKwkJICovDQo+ICsJCWZvcl9lYWNo
X29sZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlX3JldmVyc2Uoc3RhdGUsIGNydGMsDQo+IG9sZF9j
cnRjX3N0YXRlLA0KPiArCQkJCQkJCSAgICBuZXdfY3J0Y19zdGF0ZSwgaSkgew0KPiAgCQkJZW51
bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOw0KPiANCj4gIAkJCWlmICgodXBkYXRlX3BpcGVzICYg
QklUKHBpcGUpKSA9PSAwKSBAQCAtNzAzNiw3DQo+ICs3MDQwLDExIEBAIHN0YXRpYyB2b2lkIHNr
bF9jb21taXRfbW9kZXNldF9lbmFibGVzKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0
YXRlKQ0KPiAgCQlpbnRlbF9wcmVfdXBkYXRlX2NydGMoc3RhdGUsIGNydGMpOw0KPiAgCX0NCj4g
DQo+IC0JZm9yX2VhY2hfbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIG5ld19j
cnRjX3N0YXRlLCBpKSB7DQo+ICsJLyoNCj4gKwkgKiBDb21taXQgaW4gcmV2ZXJzZSBvcmRlciB0
byBtYWtlIGJpZ2pvaW5lciBtYXN0ZXINCj4gKwkgKiBzZW5kIHRoZSB1YXBpIGV2ZW50cyBhZnRl
ciBzbGF2ZXMgYXJlIGRvbmUuDQo+ICsJICovDQo+ICsJZm9yX2VhY2hfbmV3X2ludGVsX2NydGNf
aW5fc3RhdGVfcmV2ZXJzZShzdGF0ZSwgY3J0YywgbmV3X2NydGNfc3RhdGUsDQo+ICtpKSB7DQo+
ICAJCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsNCj4gDQo+ICAJCWlmICgodXBkYXRlX3Bp
cGVzICYgQklUKHBpcGUpKSA9PSAwKQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuaA0KPiBpbmRleCA5ODZlYzc3NDkwZGUuLjQyMzA3NGQ2OTQ3YSAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgN
Cj4gQEAgLTM0NCw2ICszNDQsMTQgQEAgZW51bSBwaHlfZmlhIHsNCj4gIAkgICAgIChfX2kpKysp
IFwNCj4gIAkJZm9yX2VhY2hfaWYoY3J0YykNCj4gDQo+ICsjZGVmaW5lIGZvcl9lYWNoX25ld19p
bnRlbF9jcnRjX2luX3N0YXRlX3JldmVyc2UoX19zdGF0ZSwgY3J0YywNCj4gbmV3X2NydGNfc3Rh
dGUsIF9faSkgXA0KPiArCWZvciAoKF9faSkgPSAoX19zdGF0ZSktPmJhc2UuZGV2LT5tb2RlX2Nv
bmZpZy5udW1fY3J0YyAtIDE7IFwNCj4gKwkgICAgIChfX2kpID49IDAgICYmIFwNCj4gKwkgICAg
ICgoY3J0YykgPSB0b19pbnRlbF9jcnRjKChfX3N0YXRlKS0+YmFzZS5jcnRjc1tfX2ldLnB0ciks
IFwNCj4gKwkgICAgICAobmV3X2NydGNfc3RhdGUpID0gdG9faW50ZWxfY3J0Y19zdGF0ZSgoX19z
dGF0ZSktDQo+ID5iYXNlLmNydGNzW19faV0ubmV3X3N0YXRlKSwgMSk7IFwNCj4gKwkgICAgIChf
X2kpLS0pIFwNCj4gKwkJZm9yX2VhY2hfaWYoY3J0YykNCj4gKw0KPiAgI2RlZmluZSBmb3JfZWFj
aF9vbGRuZXdfaW50ZWxfcGxhbmVfaW5fc3RhdGUoX19zdGF0ZSwgcGxhbmUsIG9sZF9wbGFuZV9z
dGF0ZSwNCj4gbmV3X3BsYW5lX3N0YXRlLCBfX2kpIFwNCj4gIAlmb3IgKChfX2kpID0gMDsgXA0K
PiAgCSAgICAgKF9faSkgPCAoX19zdGF0ZSktPmJhc2UuZGV2LT5tb2RlX2NvbmZpZy5udW1fdG90
YWxfcGxhbmUgJiYgXA0KPiAtLQ0KPiAyLjQzLjINCg0K
