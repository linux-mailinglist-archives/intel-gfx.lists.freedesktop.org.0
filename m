Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF18867092
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 11:21:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8E5210E6C4;
	Mon, 26 Feb 2024 10:21:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MteNNY+c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A16CB10E6C6;
 Mon, 26 Feb 2024 10:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708942913; x=1740478913;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ccthV6Wv71G9Jlfp5P2hMPbvIwwarlciapdMRJGA9MA=;
 b=MteNNY+cnTW21HmjTDlSPm433mdv/9wYuJI5ZfJDOQMl9tQp+mBPiH7N
 UU2l32033NEI7BI7RV+i08MYCOoFDyavqZDwrruve8D8ME6U7LhYbBE92
 5J0VruOYOqjbDo+PkK8ywP8S0/qZllTXmoBNW1yIg8H2AtNwxDNHhT67w
 Z+y+wcAm3zutebDHEvphwU0z8pKCgfIV91tkkdq9RJmKp63QL7tKbQrB+
 dVZSks9VR/60gBk1cN9ykxhjkVGYJh0hKKGu1IQjlvPvk505yl2zKAzgV
 zF3co3RgFC+oQJJnzGBX96L61OEUh7zihYvHy5sMuSgvZVAoV+1TwWqFb g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10995"; a="25688262"
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; d="scan'208";a="25688262"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 02:21:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; 
   d="scan'208";a="7047259"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Feb 2024 02:21:32 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 26 Feb 2024 02:21:31 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 26 Feb 2024 02:21:31 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 26 Feb 2024 02:21:31 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 26 Feb 2024 02:21:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jrUOLUFGKOSy14LTzcZRxcBFbNAKvwl7PnEF5lDak1QPv2HdLuU+IfSee0jBvgxyiMiK3UMbtmcnrMj3jkaB+SRKnwwc5KSq+u8HBPw9ebzI9LRVVPoarsfiVTzmzCTE+v3LA9jiNVdCf/NEi3QwudXC36uEUaPslJbHWMfOIV+b8KeXhiJgY4K3Z26f49mWd55RHGjiZ+s2BO/c8hlpv2MdWjaDyVO8Qm79PvSzYn890FIR0fGgMxZ6XPspmKxmyNOSaGbzVHRcwxo50tcqUohZbmvvd+uNgQTpjA0+ysZ69gQtpWYPzmDNF+YFXdcGRr9mjRPh84Rv18GKG1Tt4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ccthV6Wv71G9Jlfp5P2hMPbvIwwarlciapdMRJGA9MA=;
 b=oWjOX/c+GBeOw5IrcPhgbsYd6IlpRQXpvShLFwcxc33yQgVN0LGe6llSmDMoONUer3K2UE0KsH2xZ2ppvbTcNoQqgMvOq89r4n9t+JAhHJ6B1nrLoz7C4DEs22MYzkN8jtgJnyilMJOkxSdlyhunP1YxOVXqSpVemA9UkLvVZmQ2ZvvhOnZE8HM87nN1UtInWSpfWLsLQIvJteQUhSBn07W62PaLHgaWibAlSwKDfoJgK3hDSv3RtCw0tlUv8+muYlRE0GOY1TSYtsZvbfv+cuB/h9Jwe9tW4zV7J4NLgPMer8CBIt21+NNT2jhXJQ3B/VsOgLWRLryaahaD9BvH6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by IA1PR11MB7854.namprd11.prod.outlook.com (2603:10b6:208:3f6::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.13; Mon, 26 Feb
 2024 10:21:08 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5%4]) with mapi id 15.20.7339.024; Mon, 26 Feb 2024
 10:21:08 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>, "Kandpal,
 Suraj" <suraj.kandpal@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 3/5] drm/xe: Use gsc_proxy_init_done to check proxy status
Thread-Topic: [PATCH 3/5] drm/xe: Use gsc_proxy_init_done to check proxy status
Thread-Index: AQHaW0FG3+XLlzJkX0Kik2BoJcDew7EI8GUAgBN5kcA=
Date: Mon, 26 Feb 2024 10:21:08 +0000
Message-ID: <IA0PR11MB7307B36CB5AB50CF24A8FF57BA5A2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240209101412.1326176-1-suraj.kandpal@intel.com>
 <20240209101412.1326176-4-suraj.kandpal@intel.com>
 <863431e0-1897-4d58-8bca-866b8c90cc54@intel.com>
In-Reply-To: <863431e0-1897-4d58-8bca-866b8c90cc54@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|IA1PR11MB7854:EE_
x-ms-office365-filtering-correlation-id: 8cc1d14b-5b52-4413-2587-08dc36b4a5fb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: P7J7fhEwETGTmfWbuud4m7tFcInlhSBkyCaSH70if2RMj+tz9e1AoBotiNko6OQjyI5EK9/Xy9Htv710mlX7HfcpKZVoAn33Ku3UPEN8YEjNANJvQvVLRdfjp+c0ERle0jo2lHIhX6v4fMjLdzxChCS7fbfJxRKq7Qf6WISHuCIImNRWIbbgT8bR+8Jl/FqTCobys99CVUakcunGBU87AoOLuhNwRSVoAQhKJylOgWCCqgrUZdVfiUHuPLIPCCDzl/HzeEdLCYTORzRVWofbYZ9DQWd4SMLCxJJvYqIPhEKKKSAzZrNFhcZJRcBO8B4eqT1zfz7ySZtQnONe4zhXByHjYSPB9uulCgZok55t9hcmUH/TdRkR7rMkIuzDa1L8JKFkw4C138g0v48zBVD1fnNtAFO47wCv03sVWeF4Y7bWMqLtKcWZkPsE28UWIBMqE9VXbaK0//sQP3FCD8csu23zdQ9ITMiJ/+50u3a7r6oa+6zf/LAtQd6sa5V0cnk3gFywpfu7RD48tKxOLPhjAuSmH29bGjiDEo+IllfaZ3Iw9oBRvSH2Q8JFN87C6YRICdXxOIQLfp4JHUk4mExvzc8YohQovtB6UGdtdmssJ9800sqCNdjUYmLBH1JYdDN36m5YA4gFekrqSxmPk73Hk80oyA9i8cnjCOfoT83TBYskjDH6m3+cCE+ZTtc3u84eO76BRhwU5NyBQwUjvdD9bSHVysOZ++LsMi/wblX2/MM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T0h6SlhZY2lYT1dKTmx0QmRsMDdFWGg4R1Z0cy8vWWlpbVJIdTNDSEdDN01J?=
 =?utf-8?B?RXoybWxGeGVEVWU3WTJYTGJBem1uYWhndXUxUHhHMVNOdENWTDFqaDVyeG9s?=
 =?utf-8?B?eFlrTVMzd0JxdHcraGZuTHdhNUxTODd2T0VYZG8zaENRT1E5SUkvQlBVNUJN?=
 =?utf-8?B?TTNuUk4weFFwb3VtSmJnZjZvVTFYb0dwWEw3OTdxL1kwWldqQzh1UU9zTkJZ?=
 =?utf-8?B?T2tGNGdHSGlpdGhzazArM2NFSlVreE1IZHZYY0g3ZE8wVjdrMGNob1d0SzB0?=
 =?utf-8?B?OVJySjlOVE1tVWxGTFJ1dEJvTXlvaDc5NmxjWFNGK2FrOEVUSzFxUCsvZ3hY?=
 =?utf-8?B?ekdyMFg0TEk3Uy9qTjRPMzM4NGxoRjZFemd0SG5Gc0U4cEs0U0NFUmtRMDhD?=
 =?utf-8?B?TkNSMFFjdkgwaWtjYktZUm5TNUg2NnRGWndkNmNSVENXRDNaOHNrdVc1N3Iw?=
 =?utf-8?B?UVZIenZmQ1I2WUg4MXExZmxsRnpEbGx4alRoMEdiREdXNlN0L3dCcGtpa01p?=
 =?utf-8?B?TmJ5QXBQbzRCQ2xpVjFLSHVNRFFka2FTaTYrZlJOdC9HN2YwbzlyUGNzdkdv?=
 =?utf-8?B?UkNBWUlOemxnKzI4T09ocEltdkc5ZTlyTDk3S1pyR0xNMDFKSSs2bE9ERFl3?=
 =?utf-8?B?VUZnUlRWRXlOSVJVWjFsaXAxdnBteGtqdStsUldWUUk2d3pBYkRGSHUrR2JD?=
 =?utf-8?B?Mzl1eWt3cDJ1SlZXckRCR0pNOVZqSGM1R2xhci9PRGIvLzJDRi9Nc25ZUzBD?=
 =?utf-8?B?QnN4NEJCSEV0NWZWQmZ1eTlHNzRab3kxRGhQRFRWdVVVOElabmE2L2U1SExm?=
 =?utf-8?B?ZjNVTmhRSFo0UlBHWlU2N3hCSDIxRUpFVUNlTmI4bkN0T2lhd2lPbVRIbEx3?=
 =?utf-8?B?TndnbjJzckkrc1dOV1dJWWM4UW5XdGJRaEh1SytKZmtsd05RSUE0R3JUc0V6?=
 =?utf-8?B?NUZSZFhQRFlKSURjTHltU2dRN0tLN3owaUFYM1lRVU9RUUl4ZTlzaEpyaUNI?=
 =?utf-8?B?VEJCSTNEbjRDYlgxZVFxUzNvMzBCOWNrUGVmY0VJaHE2Y2RVQ1Y3VlFucUtt?=
 =?utf-8?B?QzB3N2xiM2VyVUJPNVFkYUZ6QTNPTTQyMHpsV1RrRE1qd3RpN2VBZVhlN20w?=
 =?utf-8?B?d3BkdXVVa082dmVoRjBuOUJNZGFxSkVQNUZlR0c0R1lBWGZTbzJsYmVqTk9K?=
 =?utf-8?B?REs2Y0hBNitLMTYrN0F4RDJQYi9Uckp5TEIyMEc3MGl2bFIzb2pSYXcrMEpN?=
 =?utf-8?B?TGc3Y0Zob0ZNdmdWZzdJZkszenV3OG1RWEhEZXl1N3R5QXA1YmxwSEQ3K3l0?=
 =?utf-8?B?a0dabnNYRTcvRnFqQSthM2V4V2ZxZDJWQktVWU45N1ppZjVPS2IrK1BaWVhl?=
 =?utf-8?B?b1Rqa3JBOWpnbm81bzhSYjFDLy9sRldla2dLTFZDd2IwcGNqMkRqZklHQ0Rw?=
 =?utf-8?B?ZHdYcnp1NlRFUC9UMGsyUzhpTlpZeUNDdmRmbERsbk9jK05UbTNscUlHbzZ1?=
 =?utf-8?B?OU4yRkpTVm5IbXdPcTU4Mno4TnFlWFp3NzkvZHBSbXJWVEVVL2J4Yk1ueFFY?=
 =?utf-8?B?MmdlYTlZcW1KYmNZd3dEMHJlNDlaaHJId2pVVVAxbm9OZXRLcVQyVVZyUmtM?=
 =?utf-8?B?U1M2NEZTU0E3STlwTFZhTXJTYUZKdTF2V0NvZ2lnV0ZWbmxoRG4rcVM5TndM?=
 =?utf-8?B?WFplVTNEZ2p1bVc4K1dTV05sT0FCZjJpbkkra2lmU3FKZFlUc2RWVDNmSUdL?=
 =?utf-8?B?Q2YrN0xWMExrNEorTnZ0bXBIOEdsbXRxWWFXcGhFa0RtRmozOEIxZ21rSG0r?=
 =?utf-8?B?aHFMeG5pVXVJeDJIMUFPbmNOekFyRVFXS2JkN241QWMxMlczOXJlL0xOMzVV?=
 =?utf-8?B?eUJ4UWwzNXkxazBOd3dKTzRxYlBTRzJuU1NjeVhUK2ZFdEE3T1NyWTh0UzlP?=
 =?utf-8?B?ZTFJaFJLT0FXU0pidDI0WjQzd3laVTkwSjdqU3FRR2owc1kzV1BLbGN3cVpY?=
 =?utf-8?B?SzFtUk1VSk0xbmVveUVXUXR2dXdtbmdJc2lCMGRldC8xSjVGTGNJSEE3K1Y4?=
 =?utf-8?B?VGdxa2hQUjcxa0tmWGQweThJSVlNRVlBeGhiQktmekZpWVRmelk0Z2pTOWxE?=
 =?utf-8?Q?rdpxyOJAqQ8RVj7NbuuRE9m3+?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cc1d14b-5b52-4413-2587-08dc36b4a5fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2024 10:21:08.5970 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tlLl6gRLX71u2YUVABPLUtgbci/VSZeLaoST6u/72bzKSxY4fdxqokB0WvOfXjbE/nfe9DB4defqVKMYDhgs5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7854
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
Z2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgRGFuaWVsZQ0K
PiBDZXJhb2xvIFNwdXJpbw0KPiBTZW50OiBXZWRuZXNkYXksIEZlYnJ1YXJ5IDE0LCAyMDI0IDQ6
NTIgQU0NCj4gVG86IEthbmRwYWwsIFN1cmFqIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT47IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7DQo+IGludGVsLXhlQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIIDMvNV0gZHJtL3hlOiBVc2UgZ3NjX3Byb3h5
X2luaXRfZG9uZSB0byBjaGVjayBwcm94eQ0KPiBzdGF0dXMNCj4gDQo+IA0KPiANCj4gT24gMi85
LzIwMjQgMjoxNCBBTSwgU3VyYWogS2FuZHBhbCB3cm90ZToNCj4gPiBFeHBvc2UgZ3NjX3Byb3h5
X2luaXRfZG9uZSBzbyB0aGF0IHdlIGNhbiBjaGVjayBpZiBnc2MgcHJveHkgaGFzIGJlZW4NCj4g
PiBpbml0aWFsaXplZCBvciBub3QuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBTdXJhaiBLYW5k
cGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvZ3B1
L2RybS94ZS9kaXNwbGF5L3hlX2hkY3BfZ3NjLmMgfCAyNQ0KPiArKysrKysrKysrKysrKysrKysr
KysrKy0NCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS94ZS94ZV9nc2NfcHJveHkuYyAgICAgICAgfCAg
NCArKy0tDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0veGUveGVfZ3NjX3Byb3h5LmggICAgICAgIHwg
IDEgKw0KPiA+ICAgMyBmaWxlcyBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9u
cygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS94ZS9kaXNwbGF5L3hl
X2hkY3BfZ3NjLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS94ZS9kaXNwbGF5L3hlX2hkY3BfZ3Nj
LmMNCj4gPiBpbmRleCA1ZDFkMDA1NGI1NzguLjQyNWRiMzUzMmNlNSAxMDA2NDQNCj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94ZV9oZGNwX2dzYy5jDQo+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfaGRjcF9nc2MuYw0KPiA+IEBAIC00LDggKzQsMTIg
QEANCj4gPiAgICAqLw0KPiA+DQo+ID4gICAjaW5jbHVkZSA8ZHJtL2RybV9wcmludC5oPg0KPiA+
ICsNCj4gPiAgICNpbmNsdWRlICJpbnRlbF9oZGNwX2dzYy5oIg0KPiA+ICAgI2luY2x1ZGUgInhl
X2RldmljZV90eXBlcy5oIg0KPiA+ICsjaW5jbHVkZSAieGVfZ3QuaCINCj4gPiArI2luY2x1ZGUg
InhlX2dzY19wcm94eS5oIg0KPiA+ICsjaW5jbHVkZSAieGVfcG0uaCINCj4gPg0KPiA+ICAgYm9v
bCBpbnRlbF9oZGNwX2dzY19jc19yZXF1aXJlZChzdHJ1Y3QgeGVfZGV2aWNlICp4ZSkNCj4gPiAg
IHsNCj4gPiBAQCAtMTQsNyArMTgsMjYgQEAgYm9vbCBpbnRlbF9oZGNwX2dzY19jc19yZXF1aXJl
ZChzdHJ1Y3QgeGVfZGV2aWNlDQo+ID4gKnhlKQ0KPiA+DQo+ID4gICBib29sIGludGVsX2hkY3Bf
Z3NjX2NoZWNrX3N0YXR1cyhzdHJ1Y3QgeGVfZGV2aWNlICp4ZSkNCj4gPiAgIHsNCj4gPiAtCXJl
dHVybiBmYWxzZTsNCj4gPiArCXN0cnVjdCB4ZV90aWxlICp0aWxlID0geGVfZGV2aWNlX2dldF9y
b290X3RpbGUoeGUpOw0KPiA+ICsJc3RydWN0IHhlX2d0ICpndCA9IHRpbGUtPm1lZGlhX2d0Ow0K
PiA+ICsJYm9vbCByZXQgPSB0cnVlOw0KPiA+ICsNCj4gDQo+IFNvcnJ5IGZvciBtaXNzaW5nIHRo
aXMgaW4gdGhlIHByZXZpb3VzIHJldiwgYnV0IEkganVzdCByZW1lbWJlcmVkIHRoYXQgaWYgdGhl
IEdTQw0KPiBGVyBpcyBub3QgZW5hYmxlZCB0aGVuIHRoZSBmb3JjZXdha2UgZG9tYWluIGlzIG5v
dCBpbml0aWFsaXplZCwgd2hpY2ggd291bGQNCj4gbGVhZCB0byB0aGUgZm9yY2V3YWtlX2dldCB0
aHJvd2luZyBhbiBlcnJvciwgc28gd2UgbmVlZCBhIGNoZWNrIGhlcmUgZmlyc3Q6DQo+IA0KPiAg
wqDCoMKgIMKgwqDCoCBpZiAoIXhlX3VjX2Z3X2lzX2VuYWJsZWQoJmd0LT51Yy5nc2MuZncpKQ0K
PiAgwqDCoMKgIMKgwqDCoCDCoMKgwqAgwqDCoMKgIHJldHVybiBmYWxzZTsNCj4gDQo+IFdpdGgg
dGhpcyBjaGFuZ2U6DQo+IFJldmlld2VkLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5p
ZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPg0KPiANCj4gRGFuaWVsZQ0KPiANCldpdGggdGhl
IGFib3ZlIHNhaWQgY2hhbmdlcw0KUmV2aWV3ZWQtYnk6IEFydW4gUiBNdXJ0aHkgPGFydW4uci5t
dXJ0aHlAaW50ZWwuY29tPg0KDQpUaGFua3MgYW5kIFJlZ2FyZHMsDQpBcnVuIFIgTXVydGh5DQot
LS0tLS0tLS0tLS0tLS0tLS0tDQoNCj4gPiArCXhlX3BtX3J1bnRpbWVfZ2V0KHhlKTsNCj4gPiAr
CXJldCA9IHhlX2ZvcmNlX3dha2VfZ2V0KGd0X3RvX2Z3KGd0KSwgWEVfRldfR1NDKTsNCj4gPiAr
CWlmIChyZXQpIHsNCj4gPiArCQlkcm1fZGJnX2ttcygmeGUtPmRybSwNCj4gPiArCQkJICAgICJm
YWlsZWQgdG8gZ2V0IGZvcmNld2FrZSB0byBjaGVjayBwcm94eSBzdGF0dXNcbiIpOw0KPiA+ICsJ
CXJldCA9IGZhbHNlOw0KPiA+ICsJCWdvdG8gb3V0Ow0KPiA+ICsJfQ0KPiA+ICsNCj4gPiArCWlm
ICgheGVfZ3NjX3Byb3h5X2luaXRfZG9uZSgmZ3QtPnVjLmdzYykpDQo+ID4gKwkJcmV0ID0gZmFs
c2U7DQo+ID4gKw0KPiA+ICsJeGVfZm9yY2Vfd2FrZV9wdXQoZ3RfdG9fZncoZ3QpLCBYRV9GV19H
U0MpOw0KPiA+ICtvdXQ6DQo+ID4gKwl4ZV9wbV9ydW50aW1lX3B1dCh4ZSk7DQo+ID4gKwlyZXR1
cm4gcmV0Ow0KPiA+ICAgfQ0KPiA+DQo+ID4gICBpbnQgaW50ZWxfaGRjcF9nc2NfaW5pdChzdHJ1
Y3QgeGVfZGV2aWNlICp4ZSkgZGlmZiAtLWdpdA0KPiA+IGEvZHJpdmVycy9ncHUvZHJtL3hlL3hl
X2dzY19wcm94eS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0veGUveGVfZ3NjX3Byb3h5LmMNCj4g
PiBpbmRleCAzMDllZjgwZTNiOTUuLjFjZWQ2YjRkNDk0NiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0veGUveGVfZ3NjX3Byb3h5LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
eGUveGVfZ3NjX3Byb3h5LmMNCj4gPiBAQCAtNjYsNyArNjYsNyBAQCBzdGF0aWMgaW5saW5lIHN0
cnVjdCB4ZV9kZXZpY2UgKmtkZXZfdG9feGUoc3RydWN0IGRldmljZQ0KPiAqa2RldikNCj4gPiAg
IAlyZXR1cm4gZGV2X2dldF9kcnZkYXRhKGtkZXYpOw0KPiA+ICAgfQ0KPiA+DQo+ID4gLXN0YXRp
YyBib29sIGdzY19wcm94eV9pbml0X2RvbmUoc3RydWN0IHhlX2dzYyAqZ3NjKQ0KPiA+ICtib29s
IHhlX2dzY19wcm94eV9pbml0X2RvbmUoc3RydWN0IHhlX2dzYyAqZ3NjKQ0KPiA+ICAgew0KPiA+
ICAgCXN0cnVjdCB4ZV9ndCAqZ3QgPSBnc2NfdG9fZ3QoZ3NjKTsNCj4gPiAgIAl1MzIgZndzdHMx
ID0geGVfbW1pb19yZWFkMzIoZ3QsDQo+IEhFQ0lfRldTVFMxKE1UTF9HU0NfSEVDSTFfQkFTRSkp
Ow0KPiA+IEBAIC01MjgsNyArNTI4LDcgQEAgaW50IHhlX2dzY19wcm94eV9zdGFydChzdHJ1Y3Qg
eGVfZ3NjICpnc2MpDQo+ID4gICAJaWYgKGVycikNCj4gPiAgIAkJcmV0dXJuIGVycjsNCj4gPg0K
PiA+IC0JaWYgKCFnc2NfcHJveHlfaW5pdF9kb25lKGdzYykpIHsNCj4gPiArCWlmICgheGVfZ3Nj
X3Byb3h5X2luaXRfZG9uZShnc2MpKSB7DQo+ID4gICAJCXhlX2d0X2Vycihnc2NfdG9fZ3QoZ3Nj
KSwgIkdTQyBGVyByZXBvcnRzIHByb3h5IGluaXQgbm90DQo+IGNvbXBsZXRlZFxuIik7DQo+ID4g
ICAJCXJldHVybiAtRUlPOw0KPiA+ICAgCX0NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL3hlL3hlX2dzY19wcm94eS5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0veGUveGVfZ3NjX3By
b3h5LmgNCj4gPiBpbmRleCA5MDhmOTQ0MWYwOTMuLmM1MTFhZGU2Yjg2MyAxMDA2NDQNCj4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0veGUveGVfZ3NjX3Byb3h5LmgNCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0veGUveGVfZ3NjX3Byb3h5LmgNCj4gPiBAQCAtMTEsNiArMTEsNyBAQA0KPiA+ICAg
c3RydWN0IHhlX2dzYzsNCj4gPg0KPiA+ICAgaW50IHhlX2dzY19wcm94eV9pbml0KHN0cnVjdCB4
ZV9nc2MgKmdzYyk7DQo+ID4gK2Jvb2wgeGVfZ3NjX3Byb3h5X2luaXRfZG9uZShzdHJ1Y3QgeGVf
Z3NjICpnc2MpOw0KPiA+ICAgdm9pZCB4ZV9nc2NfcHJveHlfcmVtb3ZlKHN0cnVjdCB4ZV9nc2Mg
KmdzYyk7DQo+ID4gICBpbnQgeGVfZ3NjX3Byb3h5X3N0YXJ0KHN0cnVjdCB4ZV9nc2MgKmdzYyk7
DQo+ID4NCg0K
