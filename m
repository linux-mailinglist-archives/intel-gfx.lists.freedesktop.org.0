Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C266853808
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 18:32:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D763C10E031;
	Tue, 13 Feb 2024 17:32:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G6wE2H4b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07B6410E031
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Feb 2024 17:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707845543; x=1739381543;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=3v9vJF3Aqv6ueDun4tj5exlEQjCuvNvtfWSYfgHMatA=;
 b=G6wE2H4bUOKMAe5v2w0TKHQOdfs2ev3wIzHVmXbByYmAtjyaSxTvYV97
 mEncR26TTcc1M/fSIcO3wsmOuVRDpzspwWSOcw1g4WC/dfbFwPjW09SOm
 IKy+y6xV3Sdq4uxz1cbfI4k/BOKeSHRXRzV1+KO+buFn5tM0k29FAsZkE
 Eiu6QEYLN1iqhQjT67bf4ak7aKE7cNVaaJtcZetcBu10ne0yBDDl29Bsv
 YIIjAf/YBzol755L5Tmrdlf2y/SKrskcdjOnGMSkrsptHkWQzwBsR6Jz/
 TjSV1z4+YbPTTwuZAYKmnWHYL9vLTnd7MY8CI4MxlpfP5pW32drV6YLTK w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="2005010"
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; 
   d="scan'208";a="2005010"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 09:32:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; 
   d="scan'208";a="7562290"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2024 09:32:18 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 13 Feb 2024 09:32:18 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 13 Feb 2024 09:32:18 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 13 Feb 2024 09:32:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CAkWcX1PFd/oB3tm/0L3wLB/M4WfCgHSfEG/2RH9GDR1kuCPS5UgGWvCnDfiYLiAjFFSftUHPGR4FYCk42U6fNmOJz8zmgDuPSnVF4ajrDuVQs2+cxVHlxGUe8V6KENeSjnfGN5GebzYxNfGPFJSC5gsy7YREsM0hN01EHWmlAbuRdiV536Hrl3W+9UUiT7EoPYB9Mm2Uk4ZhDC21ni+8osj/WgNc362sBjbws498lz+U0ZgNKgfXrni4VBl7gxwWHz6zqjb18z7OVsm/XkUjwFCaHekpDSnG3rSNj+8pccu8B2OaEEsBaaoLN1xSUJP9YBymoJFhwSfIkKtYK4XFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3v9vJF3Aqv6ueDun4tj5exlEQjCuvNvtfWSYfgHMatA=;
 b=bhdm+S8l3wmXpGd2n1/bbrMapwGrGMXvE9Xv+WpoMH+oivn8UC2ER0FxTSQuBavkGFTWIgzCagJCbZ6gbMdvxLmSu/52Tg/zujLQFvU2hznUZCX0+vbtdj9oMhOH9CPSp028C8qI/EKMdP7dL94eGyK4pfNwJ+bmFhSeOnQ8UHvS/r84exiyU9zT0fVbIy8MFK3MmphXfKJJ+okRSgyPHbKvFGSFfBkDOhqt/kdfQMCLGgTHYVH3h315ToAHRv4wl5D9zGAxX8azpf/TqRXvb/Ji9/84trPIEGMqZhKxIMAt7aInhSpLOCdh+tH51DsGcI3XqEZPWfShemV54lzLCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DM4PR11MB5566.namprd11.prod.outlook.com (2603:10b6:5:39c::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.39; Tue, 13 Feb
 2024 17:32:15 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::f175:e111:f672:839d]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::f175:e111:f672:839d%6]) with mapi id 15.20.7270.036; Tue, 13 Feb 2024
 17:32:15 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/2] drm/i915/fbc: Don't use a fence for a plane if FBC is
 not possible
Thread-Topic: [PATCH 1/2] drm/i915/fbc: Don't use a fence for a plane if FBC
 is not possible
Thread-Index: AQHaTdrGRLMyDeMY2kSlpTYvP5ZijLEIqXOA
Date: Tue, 13 Feb 2024 17:32:15 +0000
Message-ID: <8a5d33df48c9cbc1f3efdc96e6110dd2a470d0c5.camel@intel.com>
References: <20240123090051.29818-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240123090051.29818-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DM4PR11MB5566:EE_
x-ms-office365-filtering-correlation-id: 1dbda923-3d95-46cd-dc20-08dc2cb9b87d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: P9SgyrHKi2fqoVPRx2Q8Z/CJ1t75sUuoIqNCjiw7ptOKcrqx1WvtHicVAMcNfl5Tpvvl2lyCl4EWF7J14oFIudQeE30yWYUluydA0s2RztahAC6v5r0cguUl1J72Mh2wdsDeLz6fnJqirMPJpkFiaAVHIOHnGTTE6/KlJOmO6IXvUas8vEHVXMP4MozSlOhw0NnBMqPc0VBsKwT8GMYRTElPZBCyD066s7Aa27NBLtzmYP6k/rQJw6M1ksRMtF0IZds7xwRH8XjvaeIb5CsOu/igWCXp0AWKJP1UzisM9iyASvuiCjrmdHiVk/qXryCaeOHWQZwpMvdZMcrjU/v/0cefPVnT9nNCZZJAnKJQ5aQKBdRIVVdbVS52Cx16QYHU+XvJLchZLZLR83HGfQhhLuJrW3pAlr1gYk2lCdztw9pdAN4lrKg2Qm5nrpM89few9HCug/6HAya9gvQkMe0j6gWzjWmh/8tieWai03IUJ9mE2P3Ji4zXO1hDSGpqtT15XUMAFVrjJOXxLQ2xJlvlUBBcwlDJ9f3qGUCHIBr9O48PraH7D1a7c0/wvDF9oxOQmNuuYVrOAvwy4iBMOYNf7xGPh/OiXYeztpBos1hjspxZUQmsFDcwV94aS4nSYQBa
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(366004)(39860400002)(346002)(376002)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(8676002)(5660300002)(66446008)(66556008)(66476007)(64756008)(8936002)(66946007)(76116006)(2906002)(4744005)(66574015)(36756003)(122000001)(86362001)(110136005)(38100700002)(83380400001)(316002)(478600001)(6506007)(6512007)(82960400001)(38070700009)(6486002)(26005)(41300700001)(71200400001)(2616005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dUMzc2tycWNrUmIrOStzcytrOFZTUGE2eWFGR1dLWjJCR0VHODJVUmxaVkpS?=
 =?utf-8?B?NThsNXlPMmFHcGdRUkw1b1g5ekJxOW51T3p2SGVGUWZITm5ZKzJ1eE56NnR2?=
 =?utf-8?B?ejNhc3hONVQweFRyWkxxVFh0ZmRoTnVPL29rNC9UTVRKQm0yRGZKV3l1eDla?=
 =?utf-8?B?b1FDQyt4eVVtWTI1b2NXcXNBQmk4S2lKUmQxbU5wem1kcFVlMTJKaS9JTkh5?=
 =?utf-8?B?VTBKUmxJYU1halZuRkhMdk1GSFduMzBmYnYrcGxoUVlXNk5RWktCV01HSmlS?=
 =?utf-8?B?dVNDeEhhZnMrRlpwM2tmMVN5VTkzTzJTSm15dkVvcjBrdnJUUzkvQjU4Ukdz?=
 =?utf-8?B?Z2lPTUkzYXFacHp5aW9aK0pHeloyS3RuRnV2Q0U3ZDRRQWpWTXhRckJEdzF2?=
 =?utf-8?B?VWU5M3F1bEFXeHJnWVUvQXhFT21mTlZvQnU5Tk1scERURVlBWkErU2hFQXlx?=
 =?utf-8?B?eWIxeEpybXR4bWxCT3JKVGNLc1VYZC9YRHNyVkxGWENHU3Iyb1NMUjV6YTVP?=
 =?utf-8?B?LzYyS25KQTNVRVJNM2VvR1NJeVNvaEhCQkNlczhOTWJnWldvV3NUZjRWQmYx?=
 =?utf-8?B?cmEwdTRxNUFLSE8rTjVvcWdQVXVZaDhqeVZpZlU5dkE4cUxWcEJYYnZOVE4r?=
 =?utf-8?B?amM1UFJScytrektVdHNLWUNKS2xqb2ROQnVQbWZHdG9pSlV2bTlVeVJMNGNS?=
 =?utf-8?B?MWtFTll3Z3k3U0ttdHIwbWhOOVZMaGdnNERqN3JMUzl1c2llblRpMXlybjZB?=
 =?utf-8?B?YkM1M1JZdm1TN1lYdFB1MkVGaVFud1p3enNPSFZZK1ZzT1RBMmhCdDNyQUEx?=
 =?utf-8?B?eVpvTmIwQ2NueDVscHZnQUlEbkEvMDhQM2hhUDBIYlZLay9SeDg1NGdJR1Ns?=
 =?utf-8?B?cXY4VnQvU0RhNVFrMU1wUXl1N0RkckhsMlc3bCtnNnN6TUtNbU53TVErNEw5?=
 =?utf-8?B?Z0dTRFNmcGxHR215alZVTzdiZkVnTWNBZXpJcnZyaFpnMWdpdlc3MWlxbFBQ?=
 =?utf-8?B?c1NhYkg4dENMa0tIK0xKcTgzM1RxNUNRamxpaDc2QXpBWEQ2Z09kVjV3OEll?=
 =?utf-8?B?alpacWFDTGhZalNBaFhkSVgvTnVLT0I2SnVVZ3hLMUR2M2ZhYVJNbGF5R2No?=
 =?utf-8?B?dVJvN3MvdXIvdEJERkdFMkFXN0NaeGwrVVdDUGxiS21VN2xJYUR2VVZITm0w?=
 =?utf-8?B?YjIvdk1CSEIxODBPcHJGWWg2NVh2WFFaL2JRc3UwSEd2bWNUY09pNG5xK2hw?=
 =?utf-8?B?UjhDUzdJdnpldGs5eG5oNlQwUGNxM2g4SWVlQ1A1emM2TnRyMzdKaXRKYVhN?=
 =?utf-8?B?OVAzUW4zcGJYa0VIeFlDbU1ja2pkbzJNams2L2FWT0VqU2hsVU1yaElocnQz?=
 =?utf-8?B?L0dXRWs1NzVhZzZuaEZUY2tEZThWYW9RTDBqQlppTUNraVVZSHNuSS9IWVZl?=
 =?utf-8?B?Mm5zN2NDMXR2Ym1EUEFuRThzYzEvSkxrSlNoOW5KRlMvYlVlUldLRTNqc0tp?=
 =?utf-8?B?N1QyVCs5dEFQdWF1eEJIbE15NkRZalJtdHVNaUhyUTZVTlg2VEdwcWJzdFZL?=
 =?utf-8?B?U1l4aUVSUUN3RzlTbTl0Sjl3blhpdEtRNTFiK1Mxa1RJeFZ3Z3JqRWVkUE1J?=
 =?utf-8?B?bUJIQk9FbnNyVzE0NmJxT3R2a0pIN2VGNm1KVi9EUEE4OWpFeDRZNW1ob3pW?=
 =?utf-8?B?SDJVWHAyWjFpblMwZ0EwcmNXQTNjenZVQWtBOFl6bEk1Q2M4dnVCWW1DeHIw?=
 =?utf-8?B?RWtEaG5jSm1vRVJUTUwxUmJiUVgrMnB5dzloNjJxL1ZnSC9WVWhVS1RGK0Vs?=
 =?utf-8?B?dTZiSHhmQVhnUGRnRmtBdUdaRVdwNG1kdzJDWFNuNXA5ZWxPd2lvMWdmNnM0?=
 =?utf-8?B?ZFdVUzd6SXVBdXkzWWxINzQvQTM2dlY0aHlJUUxFVW9Kdi8xWkZwR2FaY0Z0?=
 =?utf-8?B?NFArWjFGTlQxTHVlU0U1SDJ4cnI0RkNhZGpwcmZtVGRpMDkvSFN4azU1S1F4?=
 =?utf-8?B?b2pDM21PNDhZTUxMZmhraU0xcVIrNC9kbGVpQjEvbUFjc3Q5MUhQSDlXb21B?=
 =?utf-8?B?WStQR3lxcktqalRqUjk4ZjUvUEFDUzJYYkZNeGdrVE9QbzNSejlpTEhDZEc0?=
 =?utf-8?B?emdoZEl6Y3o0Umt2eGJ5bGNWMld4QTlRSE9VOEt6MWp2UVRyM3pMNTBUNEE4?=
 =?utf-8?Q?gRZnxXjv6B9rkR+C9ZmZHD4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3805A9CD6D0077499DEF5AE48D62A045@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1dbda923-3d95-46cd-dc20-08dc2cb9b87d
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2024 17:32:15.5076 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Fy9sfd2yL8DHMD8qcaxeWPp5lmUNz3+B1I9BU2kFAAL2dgMOTyUXCniLwhWbGNlTbju3D5sz+O/ysOKnSR7s/2nMgSzfcCFxwUEcTWoHxj4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5566
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

T24gVHVlLCAyMDI0LTAxLTIzIGF0IDExOjAwICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gTm8gcG9pbnQgaW4gd2FzdGluZyBhIGZlbmNlIG9uIGEgcGxhbmUgaWYgaXQgY2FuJ3Qg
ZG8gRkJDIGFueXdheS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMiArLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KDQpSZXZpZXdlZC1ieTogVmlub2QgR292aW5k
YXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQoNCj4gDQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IGE5MmU5
NTljOGFjNy4uOTZhMzFkNzNmODY5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBAQCAtNTMzLDcgKzUzMyw3IEBAIGJvb2wgaW50ZWxf
cGxhbmVfdXNlc19mZW5jZShjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0
YXRlKQ0KPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
ID0gdG9faTkxNShwbGFuZS0+YmFzZS5kZXYpOw0KPiDCoA0KPiDCoMKgwqDCoMKgwqDCoMKgcmV0
dXJuIERJU1BMQVlfVkVSKGRldl9wcml2KSA8IDQgfHwNCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoChwbGFuZS0+ZmJjICYmDQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAocGxhbmUtPmZiYyAmJiAhcGxhbmVfc3RhdGUtPm5vX2ZiY19yZWFzb24gJiYNCj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcGxhbmVfc3RhdGUtPnZpZXcuZ3R0LnR5cGUgPT0g
STkxNV9HVFRfVklFV19OT1JNQUwpOw0KPiDCoH0NCj4gwqANCg0K
