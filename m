Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A1B85FF26
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 18:19:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3548010E3D8;
	Thu, 22 Feb 2024 17:19:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i3NM3uxB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93D4810E3D8
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 17:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708622379; x=1740158379;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ThbUkhs+ZeYnl3hP5ut45pBUCkHFES6yCySSfSKXA2I=;
 b=i3NM3uxBDAElRxI1DYG7z3j73VSdybvWySss9PflbnQgbEhAqLwvrgv2
 v15u51CbzSqc+KD4Cz4h3igGPQ5x7fdVi3ZW3W+Mi7+gE1E3nQhHuU1IK
 BF71xiJ2d1nR8MtAH4cPZ/WmfyAzDpnX7PYOs37KggfO1XIOKhxBWWuAk
 VgIdKYnCkpZBpoBGXeZsr/ZtUBH15V7BOGi2TZl1GvalmxfNZtLje+97I
 H2tfb5fjPs5aylSTlTa0VyknkmuVr/6F7ZaNmnonNQ/v54rGyyWlCsJkZ
 4oTk+gpYXcgV6f79eYsUpmOuJV+SC9I/tAyRsrUmqb5mvSyEv8aq97HnU g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="2740761"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="2740761"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 09:18:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="5528508"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Feb 2024 09:18:57 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 09:18:56 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 09:18:56 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 09:18:56 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 09:18:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=naSF+fIFp5JQ2FAzpdAVPUdCc0J6G9UkVpBSZUK4zUBhd5mn2dpx9pfvZ0oYL12rJU7Up2O5xz7yLE7x4AZlj7WGA6gYFm8EC7s4OlCtV7MdouH/nfLXPsdUOoxM+zXqBe+B02ZaPSYBU0BJkN64++WRtusmJpWMygYPas46DYvygH9nt5ra1l00tB8uVuoHAnSKi7XJ3ncN1/oZtwBnpEQY1CX5yc0Q2sIAmlgsreQC9/clubjhFchVkYJGFxEW5HFA7VU7WpxCYNr69AvNDNR3HJghD3ba/yRrdtZhYs6H8s/Xzka3pOuO8F/8qBRduc0ab6m7BLO6cm6utN+iJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ThbUkhs+ZeYnl3hP5ut45pBUCkHFES6yCySSfSKXA2I=;
 b=WZKDrAP9nAJeKBpSh8AY+h+SdcNoCgWapvvmE7cseYN0HQoOAXB0JUysKfH7+DkJ54uRuDb5XIbaLP0WCYlLBOwNPmTlhvs+uojxDc8qVEPeeHvPiuz88Tmzlnu0eOQa+WugfSXsWHdn+6uMQ7l2xJUb2zj1jyEw3//c+Ab6HE8ePk3piH57MQcNf/ayc7yOAbzv9NaCxOiP3FTZzq6QIeEyfx9H2Vpk7/RxsfmNTWTbmRvxI0j81yp4d470R8FPeljs5HFSCXqyqJF2BmxyeRwphscLFa5r7FcAFDHMdvkMa1n8heYN2Wk4L0Q8VPzUcRiNlTyt8y1uh4OIj8lg/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CY8PR11MB7081.namprd11.prod.outlook.com (2603:10b6:930:53::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.39; Thu, 22 Feb
 2024 17:18:53 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::f175:e111:f672:839d]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::f175:e111:f672:839d%6]) with mapi id 15.20.7292.029; Thu, 22 Feb 2024
 17:18:53 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>
CC: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>
Subject: Re: [PATCH v1 0/6] LNL display
Thread-Topic: [PATCH v1 0/6] LNL display
Thread-Index: AQHaZY6emeQULHOHhES93cPg2JxoA7EWZHCAgAAKVoCAABfhgIAAFKUA
Date: Thu, 22 Feb 2024 17:18:53 +0000
Message-ID: <26b528644757ececf951e46e14d56981f3ec1c9e.camel@intel.com>
References: <20240222125634.275047-1-vinod.govindapillai@intel.com>
 <rjprf5shfn7ewh6dvdhd2bdhy3o4d5ncffadd5p6hvanuycbbr@k56on5zkxcqs>
 <f6b4f07048371afb1d61f122bd3d4d2b9a3b2233.camel@intel.com>
 <170861789903.2814.7356806408680497622@gjsousa-mobl2>
In-Reply-To: <170861789903.2814.7356806408680497622@gjsousa-mobl2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CY8PR11MB7081:EE_
x-ms-office365-filtering-correlation-id: 6a6e4ecf-5251-4886-cf0f-08dc33ca583d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: i/PSWViVtlrvcOvV/7PVaEs4yl9aQSRRn4FrmmdYlKiNHGoQJQPeS287stEyFi8mnC5OysqyZl6VqJwy8o03shIN5ImHs+/XeKQSWBt74H+cYgZvlKqLtJz8L2B2/AUl2upAs1X855ZQyrhVoOJjrCN0SalqXMIlihwsTrrP4YdgLg3xfHgdC+NiZ7PiNOrQgaizZHccjnVOeI/oi1CGTxekHFGBUoTD9ZVDFcgTwng9RZK4Oj08F9pMiqWMzYm/tQtqk38w+D6dedFIGITFcnOOTrZf495KmKzwRxRSMzilZHG222BywBzXkWXIVLaCzQ6Rl7mUMsh6itYV0zxb+FGakzuvy6khmVxum1xWHR/ydf7ANXsnJivkt+G15798o2jpyn3st0Xgsfyo7c3I3/XqEwzBz4xqC5zl3SKd4QSMthN7S6KDLUNNuqj5l9NDrTiapg0kk3r81yp0J5/4thCg5slSXipX1QmYNw1ec4vhRx1uz8W62HXt/fl2eu6IcZR/F0M6OrzQCEnDyhxOlbjec9Hql/nRDwF9P6wShKvKlLNTS8b1xbwabOcfgHgKiD3CKGeLik7rX6vTNHnl4dV5y/jDTKeVN4tyPCuH2yM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dU1SL0VpU1lGeWlLeXZibTFhQ2JQdnpLUXlhcG1iK3F4Nnp4ek15TCtOcEQw?=
 =?utf-8?B?QVpEQWtNdFJzWk1DOHBLNnBHT3lWMGdTVklUT21Ea2ZwalBRM20yalNuZUdi?=
 =?utf-8?B?aXo3d2E2L3FQVFpvTUpnbjZtZ0cyK3dIazMzTE1tejRrbVoveDJOY2pVNjZK?=
 =?utf-8?B?ZktLQ3VDdzVDbjZIbFl5LzBFSFJYS0Q4TFBZeGNhL21CZ1FsMVllb0tKOVox?=
 =?utf-8?B?RnV5WHhtN3V5QzlDSG93WnVUR1FGV1BIaUJrT3Y2UXBLTXQrdzFGd3F2WlEz?=
 =?utf-8?B?SzBwa3MyWW5HNU9YcC9QNFprRys4YjVsK2FtcjFrM3RnemZxeHpucE05eUVz?=
 =?utf-8?B?cDk0QU5FanNDUXlPRWpSU081UExlVENnN0R1TDVNYjZOcXFCY3dzQVR6bHRP?=
 =?utf-8?B?NGRvYXpmcUljVmh2NUdSV3lrQkRXSkdMOHZOelNQTVlPQjV5UkJrRjdOS0ZV?=
 =?utf-8?B?T2xkLzBONUtuN0dWTWFpUW9CcXBCR1U5Nkk2dnh6RHY3SUc3aWZaQzhjTUtY?=
 =?utf-8?B?WHBrSmNWeWlXaHhBZkdzZlRaTEhsOW9kdW95MFlYWU1UbFpzUkZNbXJPd1FW?=
 =?utf-8?B?Z1ZGKzBTTmd6ZzJsRzQ3bW1QWnE5VnRIS3VJQi8zaHdRdFFBYlZsWGhHZ1c3?=
 =?utf-8?B?dXlTbktuMENXOVNIUFNsdkQvd0c0djFVRURYaWI0Q2ZjYkFoWFV5Y0N2cFhW?=
 =?utf-8?B?WUNFU0RhRU4zK3JRL1M0bGRVSTM2UHc1WVJoeGdIUFQ0eXM5RHhwa2xIV2xk?=
 =?utf-8?B?b1kwaEpZQ1pZZmcwemRrL3p1TWRGWmxSNUpHMkU5Rk1jbG56SnVWc3lFTmxp?=
 =?utf-8?B?R0djTXdHTm9XOE41ZEh0Yld3M1NwU01YL3piVGdHdmFhcVgyTmJubTJ0aEhr?=
 =?utf-8?B?aGhFb1VrVDJJNit6bEdGMWpkNC9nWVludWxsOTROZURLMzdodG9xRFd3OHo4?=
 =?utf-8?B?NE9ueGpSY0pDMExiQkFWVG5mZnluMHVlL24vcEZhYnUxcHpSTVpFUGZEaEU1?=
 =?utf-8?B?SUhBbEwraU1WK01GMHVLVjVSa09RMjh4cFlyaDBYbkNrdlRvM0xlbWQ1bGFz?=
 =?utf-8?B?V0FuVnU0NWI2akEwZFZzcGI4UkRBeTh1VjRETXY4ajJBcFcwekJmSHl6Vy9n?=
 =?utf-8?B?QTFHSWxsMThJY2JibE0vTkpsUE01dnNpWDFkb2NGQUdCNXdGUFJ2R0RJNmZL?=
 =?utf-8?B?NDN0M0xTcndRY1NLMzFZcThqM0FyTUthbnlGcEFud3RWSGtYWEdkMUFJSlRR?=
 =?utf-8?B?QWZIRStId2hieW56M09RTjFZa05WRm9jSmlINnpoeHFOS3YrcWpYK0F2QkxG?=
 =?utf-8?B?ZkZXd0xXanZZVzhjRG4xQlRXNFM5V1ZWRnNiY0JBT05HMWIxRTJ3MEY5V2Ri?=
 =?utf-8?B?ZlhIT3NQdnJIbkNPc0dlRFh1MGwwWFdYSkZKbml4NHAvL1Y0OUhiaVk1YWV3?=
 =?utf-8?B?T2s0TTIva2dsUWloS1VkcUc5Skc2TU1iajY5WDN4T0FRdDlSdmtVSXJKNHc1?=
 =?utf-8?B?VmNjNFQyQWdhMVduWm5PalNncTk5ZS9tMzJlUGJUSnpjVGY4VGQydVM0M0tu?=
 =?utf-8?B?T05DZUg2OHRMb3pWTm1ZTE9lb1pLWFhLMG1KMDhCa0srR1kzTExMajN3WUdX?=
 =?utf-8?B?VVJ5RXhqSzZVWVR2aFdlVkVFMTRVa0FCV2FMaVRiOFQzeVJYYVU3SVdkVjZI?=
 =?utf-8?B?QXo2OHBoZzB2aGNGYzJzZVZGRmlya1FQS0cyNlBYSkVORUpFTDFOam5xWGhs?=
 =?utf-8?B?WmRrdVV5dTRVVTU1aGNnWlNZWktKTm53ZjRxV0JYMW9Ma3hYeWpueXlsVzJS?=
 =?utf-8?B?YXZHSFl4YURUODI1MUVxT0R1TWs5V2FXa1dsMGJyZHV3YUVOc0V2dkJVYWhJ?=
 =?utf-8?B?MUk5dTJaUDJzVjdMbnFIUGhpWlV4VS9uc0lEbjhpdlAvUytLVVg3VjBMYTBn?=
 =?utf-8?B?UU9jcUlhT052ckdSRG45K3MyWXNnYlB3UEFiRG9rdWU0YjU4bGE5bTNmemxv?=
 =?utf-8?B?M09OR2I4VU1ZRFZ3eVJEQW9ZYmxDOWJHYmlNTTI4M3dlRzF6ZHFmVUZBTmFk?=
 =?utf-8?B?L1ExUVZpaFVaRFhiZWliSzdFWVdrM0xHejZvdlpQTTJGckNYWm9EamhPK3lG?=
 =?utf-8?B?N004bWtSa0ozYndXQlMwbmw5SVAvQ0FYaG1xM0JLV0d0TVdWY2JEdktSN3pp?=
 =?utf-8?Q?YiBCLghrh89yqUIklgRYz+Y=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E1FE74ECA2729342BC78B71BFAC4AA79@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a6e4ecf-5251-4886-cf0f-08dc33ca583d
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Feb 2024 17:18:53.6206 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DS5MlpgUlRFQjTFPNF21XDlUqFS0EPSUpJvGOkyGU+YKO1lKx9JfbeSqPTASZgj2uIzAixwheCAlATyAjMb7wtRLeceqga6BYYh2Kdd9cfQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7081
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

SGkuDQoNCg0KDQpPbiBUaHUsIDIwMjQtMDItMjIgYXQgMTM6MDQgLTAzMDAsIEd1c3Rhdm8gU291
c2Egd3JvdGU6DQo+IEhpLCBndXlzLg0KPiANCj4gKFRoaXMgaXMgYSByZS1zZW5kLCBiZWNhdXNl
IEkgKnRoaW5rKiBteSBNVUEgYmFkbHkgZm9ybWVkIHRoZSBhZGRyZXNzIHRvDQo+IHRoZSBtYWls
aW5nIGxpc3QuKQ0KPiANCj4gUXVvdGluZyBHb3ZpbmRhcGlsbGFpLCBWaW5vZCAoMjAyNC0wMi0y
MiAxMTozOTozMi0wMzowMCkNCj4gPiBIaSwNCj4gPiANCj4gPiBXZWxsLi4gc29ycnkuLiBJIGRp
ZG4ndCBrbm93IEd1c3Rhdm8gaXMgYWxyZWFkeSB3b3JraW5nIG9uIHRoaXMhDQo+ID4gQEd1c3Rh
dm8sIHBscyBpZ25vcmUgdGhpcyBzZXJpZXMgaWYgeW91IGFyZSBhcmVhbGR5IHdvcmtpbmcgb24g
dGhpcy4gUGxlYXNlIGxldCBtZSBrbm93DQo+IA0KPiBZZWFoLiBJIGhhdmUgYSBjb3VwbGUgb2Yg
bG9jYWwgZml4ZXMgdG8gYXBwbHkgdG8gdGhvc2UgY29tbWl0cywgYnV0IEknbQ0KPiBub3QgZmlu
aXNoZWQgeWV0LiBJZiB5b3UgYXJlIG9rYXkgd2l0aCB0aGF0LCBJIGNhbiBmaW5pc2ggd2hhdCBJ
J3ZlDQo+IGFscmVhZHkgc3RhcnRlZCBhbmQgc2VuZCBhIGZyZXNoIG5ldyBzZXJpZXMgKGNvbnNp
ZGVyaW5nIHRoYXQgdGhpcw0KPiBzZXJpZXMgaGFzIG5vIG1vZGlmaWNhdGlvbnMgdG8gd2hhdCB3
ZSBhbHJlYWR5IGhhdmUpLg0KDQpZZXMhIFBsZWFzZSBkbyBzbyENCg0KDQpWaW5vZA0KPiANCj4g
LS0NCj4gR3VzdGF2byBTb3VzYQ0KPiANCj4gPiANCj4gPiBPbiBUaHUsIDIwMjQtMDItMjIgYXQg
MDg6MDIgLTA2MDAsIEx1Y2FzIERlIE1hcmNoaSB3cm90ZToNCj4gPiA+ICtHdXN0YXZvIGFzIGhl
IHdhcyBsb29raW5nIGF0IHVwc3RyZWFtaW5nIHRoZXNlIHBhdGNoZXMuDQo+ID4gPiANCj4gPiA+
IFdlcmUgdGhlIGlzc3VlcyB3aXRoIG1kY2xrIGhhbmRsaW5nIHBvaW50ZWQgb3V0IGF0IGxhdGVz
dCBhdHRlbXB0IGZpeGVkPw0KPiA+ID4gwqBGcm9tIHRoZSBjaGFuZ2Vsb2cgaXQgZG9lc24ndCBz
ZWVtIHNvLg0KPiA+ID4gDQo+ID4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMzA5
MDgyMjQzMDMuR1gyNzA2ODkxQG1kcm9wZXItZGVzazEuYW1yLmNvcnAuaW50ZWwuY29tLw0KPiA+
IA0KPiA+IFllYWguLiBpIGRpZCBub3Qgbm90aWNlIHRoZXNlIGNvbW1lbnRzISBMZXRzIHdhaXQg
Zm9yIEd1c3Rhdm8ncyByZXBseQ0KPiA+IA0KPiA+IEJSDQo+ID4gdmlub2QNCj4gPiANCj4gPiA+
IA0KPiA+ID4gYW5kIGFsc28gd29ydGggdGFraW5nIGEgbG9vayBhdCBwcmV2aW91cyB2ZXJzaW9u
czoNCj4gPiA+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8/cT1zJTNBJTIySW50cm9kdWNl
K01EQ0xLX0NEQ0xLK3JhdGlvK3RvK0RCdWYlMjINCj4gPiA+IA0KPiA+ID4gTHVjYXMgRGUgTWFy
Y2hpDQo+ID4gPiANCj4gPiA+IE9uIFRodSwgRmViIDIyLCAyMDI0IGF0IDAyOjU2OjI4UE0gKzAy
MDAsIFZpbm9kIEdvdmluZGFwaWxsYWkgd3JvdGU6DQo+ID4gPiA+IFJlc3Qgb2YgdGhlIGNkY2xr
IHBhdGNoZXMgYXMgd2VsbCBhcyB0aGUgcGF0Y2hlcyB0byBlbmFibGUgdGhlIGRpc3BsYXkgaW4g
TE5MDQo+ID4gPiA+IA0KPiA+ID4gPiBCYWxhc3VicmFtYW5pIFZpdmVrYW5hbmRhbiAoMik6DQo+
ID4gPiA+IMKgZHJtL2k5MTUveGUybHBkOiBMb2FkIERNQw0KPiA+ID4gPiDCoGRybS94ZS9sbmw6
IEVuYWJsZSB0aGUgZGlzcGxheSBzdXBwb3J0DQo+ID4gPiA+IA0KPiA+ID4gPiBSYXZpIEt1bWFy
IFZvZGFwYWxsaSAoMSk6DQo+ID4gPiA+IMKgZHJtL2k5MTUvbG5sOiBBZGQgcHJvZ3JhbW1pbmcg
Zm9yIENEQ0xLIGNoYW5nZQ0KPiA+ID4gPiANCj4gPiA+ID4gU3RhbmlzbGF2IExpc292c2tpeSAo
Myk6DQo+ID4gPiA+IMKgZHJtL2k5MTUvbG5sOiBJbnRyb2R1Y2UgTURDTEtfQ0RDTEsgcmF0aW8g
dG8gREJ1Zg0KPiA+ID4gPiDCoGRybS9pOTE1L3hlMmxwZDogV3JpdGUgREJ1ZiBhZnRlciBDRENM
SyBjaGFuZ2UgaW4gcG9zdCBwbGFuZQ0KPiA+ID4gPiDCoGRybS9pOTE1L3hlMmxwZDogVXBkYXRl
IG1idXMgb24gcG9zdCBwbGFuZSB1cGRhdGVzDQo+ID4gPiA+IA0KPiA+ID4gPiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmPCoMKgwqAgfCA3NCArKysrKysrKysrKysr
KysrKystDQo+ID4gPiA+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jwqAgfMKgIDUgKy0NCj4gPiA+ID4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kbWMuY8KgwqDCoMKgwqAgfMKgIDkgKystDQo+ID4gPiA+IGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jwqAgfCAzNSArKysrKysrLS0NCj4gPiA+ID4gZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmjCoCB8wqAgMSArDQo+ID4gPiA+
IC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrX3JlZ3MuaCB8wqAgMiArDQo+
ID4gPiA+IGRyaXZlcnMvZ3B1L2RybS94ZS94ZV9wY2kuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCB8wqAgMSArDQo+ID4gPiA+IDcgZmlsZXMgY2hhbmdlZCwgMTE4IGluc2Vy
dGlvbnMoKyksIDkgZGVsZXRpb25zKC0pDQo+ID4gPiA+IA0KPiA+ID4gPiAtLSANCj4gPiA+ID4g
Mi4zNC4xDQo+ID4gPiA+IA0KPiA+IA0KDQo=
