Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E36F489BCDC
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 12:18:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 098871123BC;
	Mon,  8 Apr 2024 10:18:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c1g6zko5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 685A010E131
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Apr 2024 10:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712571515; x=1744107515;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Xp9+VYM3zeZ732UIdMPGps4SVs9jjKv8nlyKoHE0Grg=;
 b=c1g6zko5E0OI3bf++rcmIylCbLcWv9SyLc2Hh6TRtnpKmIy+KXxAJTgL
 kwcA12pQ2UZwOtbsIhDESaVrGd93Shgwy86GwTRVSJ+XM94d5wHtoxu9h
 1d9PD667yIYvc/c/ONwIt5ssiOmXVmMZSHnSFMQHpDAEIEPq2rPPf1cXk
 kwfpzxi37btUFvvPias/3ekHT1z5cyqpdRRjzRg3BDrGb23UwjLHInq1j
 NyaJmEvMYDM/ZB+oZ2jNQiNgakNDIGPFLd3DNrNEpCYqbI0WlpWubF8W7
 9TzzdLCFXbqBEzniCxdKGI9D8DCW7sZFkz+6NpmcDfnWO+GHnsTnBTY0I Q==;
X-CSE-ConnectionGUID: y0NSTxjwQ2e9ZgShPfnE6A==
X-CSE-MsgGUID: PeSR36r8Qr+Q2Hc/RIfTNg==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="7706920"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; 
   d="scan'208";a="7706920"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 03:18:34 -0700
X-CSE-ConnectionGUID: g/qHPhTTSvmIHZtzhUBbQg==
X-CSE-MsgGUID: 5yNUybskSmSc9ulAEflrdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="19892165"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Apr 2024 03:18:33 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Apr 2024 03:18:32 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 8 Apr 2024 03:18:32 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 8 Apr 2024 03:18:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m8WFaMs9MO2iQA4sTQ2iLiRCPXc6ik0Vzf12w8bWz3xLEPypeuVr0Pc9SDOzcE3feuZN0DrdD6M+pO0Nf4iVmfDSc5DPAbL+YXs4G7vE0vKbGWUqw85KxVtqkFTKnopXv6bErxQuUH5yLkgpV+2I30Q55+rMQy6lodEv0KuPqdg5cOA8UDAIGV9LYBNDINaPAUXFS6PPEzVtg0evncwHwQ7LNBpPU1XUTtoySh3LgRYj3Ek74AttJpCrDzIc8+EfDEU6DEfczV/Gyb6/yb7IJ0oRCGU3JW7k36g6xa9gLGMFD4tijNNgO4gkTa33m5zHlbELMMr/CTtlV/DyqrLnwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xp9+VYM3zeZ732UIdMPGps4SVs9jjKv8nlyKoHE0Grg=;
 b=Z6Dk742N9icrIRw0dq/8E2QirLqrHdXXi20h70gI0N2qKKT5pEPGav8YslIPyqYHAdi8XtLYkZBN5xOCqWgCX/djsgUgQHUiga94JOqUEUmPkRbyZpcWopoFD0VJ2GfunC+lpDcJmkw2gxObpHBZRUR+iCz91oarGbg65r9PiKg6ZbniNbMFNu53EYONMuhWgSWVDmY/hTCGfwC0+DJ3ipdzhQGp6eNjm8GsYE9bl9ywcGtZ5EhiDO2K6seApTVAajqcpUwX8Z/doE8KZL7PouV33rJgkF4xHlhX4vNHgmQUIDf/C45S4yutbUpvRYeUyGcJAgBsqcGBGC8YVVFXfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CO1PR11MB4787.namprd11.prod.outlook.com (2603:10b6:303:95::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7430.46; Mon, 8 Apr
 2024 10:18:31 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%3]) with mapi id 15.20.7452.019; Mon, 8 Apr 2024
 10:18:31 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
CC: "Saarinen, Jani" <jani.saarinen@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v10 5/6] drm/i915/display: handle systems with duplicate
 psf gv points
Thread-Topic: [PATCH v10 5/6] drm/i915/display: handle systems with duplicate
 psf gv points
Thread-Index: AQHah011ZsKYG2KZA0Oms20RuN9rQLFeD0eAgAAeUYA=
Date: Mon, 8 Apr 2024 10:18:31 +0000
Message-ID: <3358ebd7e8b14f8992c37188e53125cb2da66e95.camel@intel.com>
References: <20240405113533.338553-1-vinod.govindapillai@intel.com>
 <20240405113533.338553-6-vinod.govindapillai@intel.com>
 <ZhOrBzpTWJ0xKysl@intel.com>
In-Reply-To: <ZhOrBzpTWJ0xKysl@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CO1PR11MB4787:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Tyl7FXglQyfIQUB6Em7TN1e0QX6DTJlvk0jGoXUbsNPJhbow+wKN/2fN1CYq6q/eH8sD5IKXYiZHR1l+K8lTKlDFmrxPutQG2JfrW6ojsp1ek1K2k67xV0H8Thih9g9ulGmUA2CQ9WAQS7NiBk2ZoxTXwGqsPCY8MgBfoZT3KbvDy2u+2NV/4ZPTPNuGFsLZyH4Q1HEK2WQNygINUx6pODjPccA8BXW628UuwmUbZZH7jfk4DVfzePOHSsdPwIsMOqwvIE3EotnMDN2JZjBSh5hZhEp+NVXGVrNiC1UXFef8kUPHX5AOn26XlOGm38+DGyVFTPHDxRjtKwn50x5zabloaq0hpTdgu6DJi45nWxp/fO+vzKhA8/KGbrtkWqBu/CvZ8i+XDGPy5vaX9lFR9G/MUXv291IPwBaXRNlF3PP3Fp7RAUyNQ6yidjrjjk+RS8iOtmV8LLreowZHbzRJgfDCj6i4K1d2Jnlz6Z+C1rHeDpJpAaA3NrYgkV3vqh0dEX4VbzLnbKiV+XTNJWvfHqcpoB1wUwxVdhCotBdBtmtc2MUq2ygioidnckO8c9sWkrZgkkqOIvBDumgXrrv8q3n5cXkHBmqi3ehiVechiMnj0JSVUM/QaOAysv/pgcXdhIfW41Iv6fmHn8yZ5NBW2e/rwWCBSXtd9yRTZQB6L10=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?alJ0WS9WM2pDREFrUHdJVVZLRmxlT1RZeHlIN0h6SUpqK0svN2xTNzJrVWZk?=
 =?utf-8?B?SElSbzVTOFQ2N3cwTlVmVnJDWWQwcFp6OEYvTHViREJBWVVLd0tIcnYxL0h2?=
 =?utf-8?B?QTArczduWnhSMW9MOFpEZWJidjMrOVlmRWptVjJOTElEQytrZ1J0UWJ6RzNw?=
 =?utf-8?B?UlpTVmc1OGVFRzVqVWtOa1BIWG8wVU9qUDY1ekFpY1lEL3UzR2s2aDdsVGZj?=
 =?utf-8?B?U2crYjRuM2tuZWtxeklmbjNXZ05kTkpTaVNVVktvVEZwZDlXeFBhQzhsa0dq?=
 =?utf-8?B?YWFaTU1XMnZLTnpPT1lVSTFlbGlHUzFIaDJaQlhyRE80K05TdEhZV3lhajhF?=
 =?utf-8?B?NTZhNzYrOHBtbkdlTEFnbXozSys3Y2NSdmpxTHRxQ2JLVy9kL0JCbVZyT2o1?=
 =?utf-8?B?Sy9aYkNKNmhvdFg2WmxKQ0RmQ2VvWXI3TGtmYVRaSEd5QXUzekZINS9SWTV6?=
 =?utf-8?B?WjN2Nnd4ZElZTWx4UVJ5aStVK0YycUFkRkVWNEc4Mkp6QnQ0UG9QdzBhYVlI?=
 =?utf-8?B?YlZ6em53WGJiY1M3cXVoRURRUFRMaXFVUTdsa3JuL2JTRG42dzlPNnpheWVV?=
 =?utf-8?B?ZHlOZG5lMytyK2FRQUpFSDJOd2I2ZDByLzdCSUVWcVE2SlpsdFFzQUxkb0ZB?=
 =?utf-8?B?SGVnRWFndnM2Z2RMcFg4VTlxd3FkSVBRNWx1MEx3WGsySW9TeHMxNDRIaU8y?=
 =?utf-8?B?enFHTGpHYkhoYW1HME9iNnZxVld4MEsrRm9sM3NzWTVnV3lxUEROZkhhdGkw?=
 =?utf-8?B?bmpPMXA0dUY1WStSZ3IxUC8xRks0QnNRa2plQ3lLUnVGQTBNUmt1S3QwMzB2?=
 =?utf-8?B?aTNMdm1KZ2s5cFhzMGM0QkZueFpVRFdVS0lqRTlxbnBrMjdYWHlZMkY0MGl2?=
 =?utf-8?B?eXZYUXNEaFZqVVNZcTFzRmExY0p6d0czanFEWVM4TWZaY00rSXY5dUVSMjg0?=
 =?utf-8?B?YWlMUWtHSFk4dUk1RlZpK292NVZxNk11SUpXZ1NXTEh5VDR6WlRBWkxOYUlj?=
 =?utf-8?B?NmFLakFRQk0zNDBCSWhQcnIybzJXYUl6aXFFM0lJSW5HOG9DbnVtdy8zK3pL?=
 =?utf-8?B?T2lPL0JPZ09yYlBVWDROR2F1RDlDdnF3WFUvVXZZdnNYdWM0MlVrYXBnampr?=
 =?utf-8?B?eUJuTGd3TXUwMmx1SXMrWDkvS0ZrUC94RDdVcjBlcmVaU3g4WmsxYzNPaHJM?=
 =?utf-8?B?czFvSWQ2S0VTWHJNVFplVTd2RE5Tck9VSTR6clovTncrVXNkejZwTCtHZlVI?=
 =?utf-8?B?SXNkcnhpVTdMLzZ3b051SlMyTXgrWDAxSHQrcGg4Y1R0bW15b1NlNFVtL29l?=
 =?utf-8?B?cEJidHJJcUVrTldHbnR3Z3FzbWdmcCtKaGN1aFZWWW8vQlRxOG4wUkRPRjhs?=
 =?utf-8?B?OFJyUUxoa2ZOeS9SZUM4NVAramdvU1Y1V0lSRElqUzgwQ3EzQ1pqL2R5eGdI?=
 =?utf-8?B?TXUrUzYxWlVVK21nYUtzS1Q0aU5ldndnYW5LM0ZXTGJtVTNzWXFuQ29WeEZT?=
 =?utf-8?B?dlVlTUppQVBFVUo1Qy9lQiszVSttbWpQMjdJY0h1Q3FaUmVVOEN2V2srbkdm?=
 =?utf-8?B?NlM5blBJUDBVYUxuRHI3OEl0eHlPZUxNQjdmUStvZlNPSTMzNk9hYTQ2TmlF?=
 =?utf-8?B?T3Njckp5dTlQSXkrZFBZKzRrOEh5TFhpYTBvMmN0MGUyVSt5K0Jmend1djQx?=
 =?utf-8?B?WHhDNFdxSjhOQzFLRTVtbWhEQ0w3aHJ2ckp0RW5VUDNoVnpqM0pKQ0lBUkNr?=
 =?utf-8?B?bG1LQTY3VndTamR5OE5zQ2lJQlFWRG55alNuSGh5ekc1MUh6TktwUmtLbnBU?=
 =?utf-8?B?QS9HK1RZVVZyWDkyNW1JODlTcmk3VElGZ1VBSEhtSm5HbWpqeDMyNGNpbnpM?=
 =?utf-8?B?SDJ6TjhaWXFOUkRHVVFtVWJGWjA5UFhZSTZ5Y2dsc2hLNElWTW0yRzhKZ1Na?=
 =?utf-8?B?RUlTeDFrZGVVd0M1Smt6akpiMWltOU5lQjJLTm92Z1BiMGtxaTViQ2xPSy9y?=
 =?utf-8?B?dVAyTmJXbjExSVdiblBndlUyNHl0VHg3KzdrTnJvSXZJTWxkZ3lXUkVKdkVh?=
 =?utf-8?B?bXZxc2RKUW5PN1drV0cxanVRQitReVVoSWg3YXdRMk03eDBHT09mVjNUSHRk?=
 =?utf-8?B?SlBVS0xCNEY5SkkyakN6cHNDM3E2a0tpdmNQUjFraVRlZDJ5UW8waFY0OTUw?=
 =?utf-8?Q?ZCanBiernAzZQQXnCP3Bu6Y=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9148645B768C4046BEC7BB7992288961@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d52ab6d-a881-4e36-b340-08dc57b53d6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2024 10:18:31.0708 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /8i7d6AJN+Ti5xTJ+t23GW2OntzpTKXEWTzsktZ0EiWMDG9NGt9Dq3KnunkqTzbdSyaqBnYWXPMzIIjBEyPAHLghrdP52t7wcS9QNfzb19I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4787
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

T24gTW9uLCAyMDI0LTA0LTA4IGF0IDExOjI5ICswMzAwLCBMaXNvdnNraXksIFN0YW5pc2xhdiB3
cm90ZToNCj4gT24gRnJpLCBBcHIgMDUsIDIwMjQgYXQgMDI6MzU6MzJQTSArMDMwMCwgVmlub2Qg
R292aW5kYXBpbGxhaSB3cm90ZToNCj4gPiBGcm9tOiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFu
aXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4NCj4gPiANCj4gPiBUaGVyZSBjb3VsZCBiZSBtdWx0
aXBsZSBxZ3YgYW5kIHBzZiBndiBwb2ludHMgd2l0aCBzaW1pbGFyIHZhbHVlcy4NCj4gPiBBcHBh
cmVudGx5IHBjb2RlJ3MgaGFuZGxpbmcgb2cgcHNmIGFuZCBxZ3YgcG9pbnRzIGFyZSBkaWZmZXJl
bnQuIEZvcg0KPiA+IHFndiBjYXNlLCBwY29kZSBzZXRzIHdoYXRldmVyIGlzIGFza2VkIGJ5IHRo
ZSBkcml2ZXIuIEJ1dCBpbiBjYXNlDQo+ID4gb2YgcHNmIGd2IHBvaW50cywgaXQgY29tcGFyZXMg
dGhlIGJ3IGZyb20gcG9pbnRzIGJlZm9yZSBzZXR0aW5nIHRoZQ0KPiA+IG1hc2suIFRoaXMgY2Fu
IGNhdXNlIHByb2JsZW1zIGluIHNjZW5hcmlvcyB3aGVyZSB3ZSBoYXZlIHRvIGRpc2FibGUNCj4g
PiBzYWd2IGJ5IHNldHRpbmcgdGhlIGhpZ2hlc3QgYncgcG9pbnQgYW5kIHRoZXJlIGNvdWxkIGJl
IG11bHRpcGxlDQo+ID4gcG9pbnRzIHdpdGggaGlnaGVzdCBidy4gU28gdG8gc2V0IHRoZSBtYXhp
bXVtIHBzZiBndiBwb2ludCwgZmluZA0KPiA+IG91dCBhbGwgdGhlIHBvaW50cyB3aXRoIHRoZSBo
aWdoZXN0IGJ3IGFuZCBzZXQgYWxsIHRvZ2V0aGVyLg0KPiA+IA0KPiA+IHYxOiAtIHVzZSB0aGUg
c2FtZSB0cmVhdG1lbnQgdG8gcWd2IHBvaW50cyBhcyB3ZWxsIChWaW5vZCkNCj4gPiANCj4gPiB2
MjogLSBwY29kZSBjb25maXJtcyB0aGF0IGZvciBxZ3YgcG9pbnRzLCBpdCBzZXRzIHdoYXRldmVy
IHRoZQ0KPiA+IMKgwqDCoMKgwqAgZHJpdmVyIHNldHMgKFZpbm9kKQ0KPiA+IA0KPiA+IFNpZ25l
ZC1vZmYtYnk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwu
Y29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmlu
ZGFwaWxsYWlAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9idy5jIHwgMiArKw0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2J3LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMN
Cj4gPiBpbmRleCA1ZjRmOTM1MjRiZWYuLjZmYjIyOGExYTI4ZiAxMDA2NDQNCj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gPiBAQCAtODc0LDYgKzg3NCw4IEBA
IHN0YXRpYyB1bnNpZ25lZCBpbnQgaWNsX21heF9id19wc2ZfZ3ZfcG9pbnRfbWFzayhzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ICppOTE1KQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgaWYgKG1heF9kYXRhX3JhdGUgPiBtYXhfYncpIHsNCj4gPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBtYXhfYndfcG9pbnRfbWFzayA9IEJJ
VChpKTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBtYXhfYncgPSBtYXhfZGF0YV9yYXRlOw0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqB9IGVsc2UgaWYgKG1heF9kYXRhX3JhdGUgPT0gbWF4X2J3KSB7DQo+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBtYXhfYndfcG9pbnRfbWFzayB8
PSBCSVQoaSk7DQo+IA0KPiBTbyB3ZSBqdXN0IGNhbWUgYmFjayB0byB3aGVyZSB3ZSBzdGFydGVk
LiBXb25kZXJpbmcgc3RpbGwsIHdoeSBpdCBldmVuIGJvdGhlcnMgdG8gZXhwb3NlDQo+IHR3byBl
cXVhbCBQU0YgR1YgcG9pbnRzLiBOb3Qgb25seSBoYXZpbmcgZHVwbGljYXRlIHBvaW50cyBkb2Vz
bid0IG1ha2UgbXVjaCBzZW5zZSBmb3IgDQo+IHRoZSBkcml2ZXIoc2luY2UgdGhlIEJXIHRoZXkg
cHJvdmlkZSBpcyB0aGUgc2FtZSksIGJ1dCBhbHNvIHJlcXVpcmVzIHNvbWUgYWRkaXRpb25hbA0K
PiBsb2dpYyBvbiB0b3AgdG8gaGFuZGxlIHRob3NlLg0KDQpZZXMuIFVuZm9ydHVuYXRlbHkgdGhp
cyBpcyB3aGF0IHBjb2RlIGV4cGVjdHMgZm9yIHBzZiBndiBwb2ludHMuIChQbGVhc2UgaGF2ZSBh
IGxvb2sgYXQgdGhlIGVtYWlsDQp0aHJlYWQgd2l0aCB0aGUgcGNvZGUgdGVhbS9BcnQgZXRjLikN
Cg0KRm9yIHFndiwgaXQgc2V0cyB3aGF0ZXZlciB0aGUgZHJpdmVyIHNldHMhDQoNCkJSDQpWaW5v
ZA0KPiANCj4gU3Rhbg0KPiANCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoH0N
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgfQ0KPiA+IMKgDQo+ID4gLS0gDQo+ID4gMi4zNC4xDQo+ID4g
DQoNCg==
