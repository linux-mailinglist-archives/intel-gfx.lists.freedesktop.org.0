Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 454B5893958
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Apr 2024 11:22:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88E7D10E1F3;
	Mon,  1 Apr 2024 09:22:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X768w93X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54C6310F007
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Apr 2024 09:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711963341; x=1743499341;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=aT8pi1r7MwI8XCyKDojDGisAQC5PILtjM4tH7hPeezY=;
 b=X768w93Xt6IP0rYZCsCKUXtscntre5hlHA5vndWjn6dgGh3qw2MpXgSN
 aDYUZKnaP3qQDY7MC6ylh0cpTOcmyy/eNAti9MpNvdIifvDqtpDuuUmh2
 j9AHKpqIcbEqruTkjVDwjNcnnxhXVKSLCDbmYDVkQtPqF/RjK7mC9NX3v
 sP5uCl63kFu8Fsd7J+2xef5tFQ+3Db1dVciNuXb05Ca/wXoz2L3RU563H
 GSr69lTaLoWinURWUuHR8o9aDpOPXgQJbBub59T8br82gIfFf9JiExl92
 jBQUotZwm0uLHqhdRzJCIyADPVghdfB3ERZmmSN/TZ2GYIttopJn8Fmr9 g==;
X-CSE-ConnectionGUID: XETeKHfZTDOTh7Hh2BSlUQ==
X-CSE-MsgGUID: CN5x41dMTVCVdX3UyHLBiQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11030"; a="6946426"
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; 
   d="scan'208";a="6946426"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2024 02:22:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="17693408"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Apr 2024 02:22:20 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 02:22:20 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 02:22:19 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 1 Apr 2024 02:22:19 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 1 Apr 2024 02:22:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N3/dA4nQuCToaOrusvnmEipt0Sbe0q4/TuzZ6rbjFxiSBPh2axLcNqRXF8hWJbYeosXs5hWhE61x95LMY7hxCODu4Vz0Ghg4ovrWIlyyC0+26G37cDWOmFIzaIwFj8cfVNNK+pU6ub4cumy+xJe4zgvfHHKWfQsdOysOCdBNAs5MCh/LVwRvgxp77wUZn0SfhOozAAHEQ6pRHwYFTRk6GCFe7fnFEQPnUJpk8VCyTkM+/Hxl7f7s/huVh0mid/LpJWFTmuHkKeVI5SwmASSrruQ+w74FdCDlU/OETL54DFBYeStl1Td7vGR5Kj4BgwDpAvmp3zABSlN4PmO6sQqfOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aT8pi1r7MwI8XCyKDojDGisAQC5PILtjM4tH7hPeezY=;
 b=J+6rvXGs8E0W07TYG9Crxc+N02Bk+VRXSKznxgV2LLpMXqYe6h7ti1ZcvGfqbSkl9Fn22KNSgxDuZUgDx1mFQAJFAnpbs0RWdr7PBkbuRkIFOd7Btd7XiWUuEQT4IEfc1IOhq5itCWar4xC0xx6zTSvw9hdUqu3j8V66tw9IqQp8e8ahOITDUD/OHILZCqaqSdeceO/hy8DdyXjg8OPID0SzBgqnHcMIzN9AKVWRkMnupx8FIgLHt1cKzDw0kTXQg6EH0rRiV5YHDhzRQJHH74qIeB0R0iOcPviG1q2hr3RnKKSPrHJpkk99I941D5zY/wfDx4OMyDZQ4G9CEBY/Hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA1PR11MB6896.namprd11.prod.outlook.com (2603:10b6:806:2bd::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7452.25; Mon, 1 Apr 2024 09:22:17 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff%7]) with mapi id 15.20.7452.019; Mon, 1 Apr 2024
 09:22:17 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 10/22] drm/i915: Extract intel_dp_joiner_needs_dsc()
Thread-Topic: [PATCH 10/22] drm/i915: Extract intel_dp_joiner_needs_dsc()
Thread-Index: AQHagXZi3q161FT3dkG7+o0+/7ljNLFTKRag
Date: Mon, 1 Apr 2024 09:22:17 +0000
Message-ID: <DM4PR11MB63604E085AF2ABCBCD4DAA3BF43F2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
 <20240329011254.24160-11-ville.syrjala@linux.intel.com>
In-Reply-To: <20240329011254.24160-11-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA1PR11MB6896:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CTUdsmBIawvZt4n3jVzFdgjrZlBYZF0h0ySCZUYCmimbwVbUSjEwuk9vAK93BwF3b8Dz9SWEenbNjpKFJCzDgrMagcxML3s3XQ4/vsjcoQnEysbu0zBW71+sv4/GmtHjWOFu54NMLc9N5yK3YX/54jbF/fdU0+A0AbVGLQm+uvve/ysicRV012SA+k4cureZh4IkYeuw/b/qf5nzi5l0aAZFNE7Pn/Yp48tLZx9A4ndXwta2wyRpuJUpOzsCIc4sSFxhjMLp/jCzgdMyFm37C7MTAFLE2CSOFZy3oKyq7LjG7mX8yzinV8+Vt7ueNU7Fms9W1nWly7+QJVBeqV9djZNUuLUIxkoNlp8m9XcF9lKEB3wbKR0gpQNeWn00syweOUV+AICC6hKgjaXgr2K63CA23LUU0MTUT0+ndcbakdtOIKUY8b0PSyVD7Upwo069AQU/KIfhb1/9yRYfeBv/oMIJc0AUmXDNmDOCEcPreV9X1PaPjqg3iUskpEUoun8eGcQfYdUcMObSvfXVgtoYzLV5UBSV5hJzMxjbbs0kHvxVjTfiPMMq08UZPootwOEpPPKh0NusJrCDJkimf1QG0UBi8pAeeStL9zd7e2OHbtNeQvznEvNCA0S4m2FPx+3UUVIFRbAtlBbUqG74Lg1/u0YfNsF/YUWc3fVetXYVuPM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QW42dWcxbFNrUTFOM0xwZTZiRlZFZ0s0UWE4eHU1ZWFDdHBMS01HN0YwQ3NL?=
 =?utf-8?B?Y0YrRG80NmV5ZTJweHNFQ3BDWkcveTJwSGZHR21KZjdtSFE4bmhFTkRZOUtP?=
 =?utf-8?B?OVUwMjZQSlJJS1dScE14ZHZoejk4Y05kRFptWHBWMkc3aXhFNm51UlE5VzBQ?=
 =?utf-8?B?NmlrcE9CTCtKWThyMTZBVUg0YnJmZ1J3eGQ3eWZuQmVWUGhoakxhZTJNckI4?=
 =?utf-8?B?SkZHRi9DSnAzdWg4bGR6QjZ0V2VvOFM3NVgyQjJPN29BYnhKQVp0REF2WlZP?=
 =?utf-8?B?UXZyODBvVEZ1K0JLRWdVNkNtQm1xK1ZSVkNQSzhSQlNzWDJTSlR3enV0K2gr?=
 =?utf-8?B?SC9yRElaOEFsUTB4QWhyYU80cTdtQk50dnB3bFdCVnQzYXlDc1pOYXRRRUI1?=
 =?utf-8?B?aEkrQ2EzRzR5MHN3Tm43ckZ0dVR3TzFwS3B5U09GSCs0aEtxL0lDeHZBNWE4?=
 =?utf-8?B?c2tkN2U0MHhEMkVKTU1XZVkzTVVXYjNhM3N4VHlZZHErN283N3lyYUMwNzQy?=
 =?utf-8?B?dVFKd0FjcXBlNEkzK1htdmtwNUNseE5HY1o2VStOMjRTTU1OTks0cktySFFC?=
 =?utf-8?B?aUQzNzU2WFpLQnBUcnYrdUdaTWdFb2UrQWdIZ1BjYlJrZGE0ZVNvWlRLVXZJ?=
 =?utf-8?B?Q05nOGR3dEhKeHBjOW5USjFkQ0V4STY1eUIwejRlam1USll5M3pKWi9PMHlw?=
 =?utf-8?B?L1Y0RjVseE9vL05SdHk2aGo0TlZlUmNkNjcyOG5pOFZ4S29GMGo5VFV6bXNj?=
 =?utf-8?B?bWV3VGYrMGgxcElRdDZEbTZsZUIxWUNSMXdQNjg4bit6QVlmeGs3aDVyZVRv?=
 =?utf-8?B?QmlyME82UGJEVkl6NGpqWDllUkovTVVSVlZyZUIzRXczZk1xZ0cyVjhCczF6?=
 =?utf-8?B?eU9NZVBRUXd5Z2RhVTVtS0F3NUhEbFVVZWxVRllsMXdzemVQeUNETHZsazNi?=
 =?utf-8?B?dllkRm80Z1craEYycmsyWWZEVkVwL0JPVm92cUtzdmRvOHNaZXdCMGs5T2tT?=
 =?utf-8?B?dlhjQ2ViK1FBVWpUTnBZODZXcDFpVEpzclZXdWFhbWR6OXJtU3ZYNHMxOWhj?=
 =?utf-8?B?RlhNaTF2dkxQRXA4QTRRenhDUUNpM2NORnVZTWdOR2RpRVpNTExVWEtDdUhR?=
 =?utf-8?B?Y0l0UFRpQVZjd0N3cWFhY3A1NFhvdG40QTlqbk1HNld0MjRvWnN0VE02Nm1z?=
 =?utf-8?B?SXZscWFOU3JoZXJQc3IzZnloSHN0TTdRNndHVk5zTy9rVzBYU3JEdVhjS0NI?=
 =?utf-8?B?eEhaalVpTTFySUFFakdMZkpQcXBJNmQyODE2K3VtYnJSeGlhRW1EejRxdGlP?=
 =?utf-8?B?aTRUWUNKaHlrRTdSbG52bm05VUk3b1haOCtzRUdiN2ExZEczb1lnN2RlQjYv?=
 =?utf-8?B?REFmRDlnOXdPditDdVZsTExxc0VLdHVDYnVnUkoyRkIvemlBYXdRNjV0Y3FP?=
 =?utf-8?B?akJpRzI3T0J5Sk16UjdBOEVieENkNGJjdUhLa25Camw1LzZ4ZlFvM2ExYnZx?=
 =?utf-8?B?Q1BBVEdwZjZlZnVMQjJZZlJIT2MreldEanlJQStPTzF5ZGFyVE9Pc3FyanQ2?=
 =?utf-8?B?Uy9mRzVZUVVvbnNSQnV5b0NZb3h2L0J6eXcwM1RCM2EwbncxeWhRd3lPTXdp?=
 =?utf-8?B?b3NNTTM0bk9GTnhoV2dXaGkwYlJVdld0dkJFM3NkZStlTTBYOFV0VW9VODJ3?=
 =?utf-8?B?ZGNpNSs4emMwR1Z6WFB6TFRRY0xZNFY1ZmVOdHJRUno5ZVV3b29sOWJZTkNX?=
 =?utf-8?B?TW4xTHU4cjA0NGtGbmhmZkFJOHpheUdRendIcUNFbnFiVzl1bHg5ckpxK1ZI?=
 =?utf-8?B?d0lpUm1jQjM1NG5pV2JtaGgxTXVld1FhTWJ0cWJhOEtkc2lLaitXOXF6cVlW?=
 =?utf-8?B?elFEdmJJdzYydVNiYnNacVFxMFBQeXZYVFFoZVNsM052N3llQ1dMaDdMTUIv?=
 =?utf-8?B?cGFFcHBWVXl0a2dsY1FUTnZULzh5cGNLYlQ1YU1JR3FzMEJhZTBNMjJHVlNX?=
 =?utf-8?B?bWtGWFdQcHh0cWtPR1pVaEVlOFZiVXVhUk02d3h1V3k3U1lsVGRNU0NMcnJm?=
 =?utf-8?B?OUlveXkwTy9IblFjeHhXdVNmTkRiKzN6cHJmbEtVZ1QrOUx5L0ZpVXZ0WUhs?=
 =?utf-8?Q?/g1zLWiGpKgSSml0j1md1r3Wd?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67172e2a-8cc7-4561-afb7-08dc522d39c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2024 09:22:17.5796 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ykf09uRJSNPljTBqp+mUwWJ8lQffeT5TjpDo3I7pIGB45wcjjo+UssNj1MfJH8b9FMN5pUmDtYsMEIZyrxfI1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6896
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IEZyaWRheSwgTWFyY2ggMjksIDIwMjQgNjo0MyBBTQ0KPiBUbzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggMTAvMjJd
IGRybS9pOTE1OiBFeHRyYWN0IGludGVsX2RwX2pvaW5lcl9uZWVkc19kc2MoKQ0KPiANCj4gRnJv
bTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+
IFB1bGwgdGhlICJkb2VzIGpvaW5lciBuZWVkIERTQz8iIGNoZWNrIGludG8gYSBoZWxwZXIuIE1T
VCB3aWxsIHdhbnQgdG8gdXNlIHRoaXMgdG9vDQo+IGF0IHNvbWUgcG9pbnQuDQoNCkxvb2tzIEdv
b2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNv
bT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYyAgICAgfCAyNiArKysrKysrKysrLS0tLS0tLS0tLS0NCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaCAgICAgfCAgMSArDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jIHwgIDYgKy0tLS0NCj4gIDMgZmlsZXMgY2hhbmdl
ZCwgMTUgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGluZGV4IDQwMmIzYjhmNjM4Mi4uNmZhOGZj
NTZhMzljIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+
IEBAIC0xMzAyLDExICsxMzAyLDcgQEAgaW50ZWxfZHBfbW9kZV92YWxpZChzdHJ1Y3QgZHJtX2Nv
bm5lY3Rvcg0KPiAqX2Nvbm5lY3RvciwNCj4gIAkJZHNjID0gZHNjX21heF9jb21wcmVzc2VkX2Jw
cCAmJiBkc2Nfc2xpY2VfY291bnQ7DQo+ICAJfQ0KPiANCj4gLQkvKg0KPiAtCSAqIEJpZyBqb2lu
ZXIgY29uZmlndXJhdGlvbiBuZWVkcyBEU0MgZm9yIFRHTCB3aGljaCBpcyBub3QgdHJ1ZSBmb3IN
Cj4gLQkgKiBYRV9MUEQgd2hlcmUgdW5jb21wcmVzc2VkIGpvaW5lciBpcyBzdXBwb3J0ZWQuDQo+
IC0JICovDQo+IC0JaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA8IDEzICYmIGJpZ2pvaW5lciAm
JiAhZHNjKQ0KPiArCWlmIChpbnRlbF9kcF9qb2luZXJfbmVlZHNfZHNjKGRldl9wcml2LCBiaWdq
b2luZXIpICYmICFkc2MpDQo+ICAJCXJldHVybiBNT0RFX0NMT0NLX0hJR0g7DQo+IA0KPiAgCWlm
IChtb2RlX3JhdGUgPiBtYXhfcmF0ZSAmJiAhZHNjKQ0KPiBAQCAtMjM5NSw2ICsyMzkxLDE2IEBA
IGludCBpbnRlbF9kcF9jb25maWdfcmVxdWlyZWRfcmF0ZShjb25zdCBzdHJ1Y3QNCj4gaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gIAlyZXR1cm4gaW50ZWxfZHBfbGlua19yZXF1aXJl
ZChhZGp1c3RlZF9tb2RlLT5jcnRjX2Nsb2NrLCBicHApOyAgfQ0KPiANCj4gK2Jvb2wgaW50ZWxf
ZHBfam9pbmVyX25lZWRzX2RzYyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgYm9vbA0K
PiArdXNlX2pvaW5lcikgew0KPiArCS8qDQo+ICsJICogUGlwZSBqb2luZXIgbmVlZHMgY29tcHJl
c3Npb24gdXAgdG8gZGlzcGxheSAxMiBkdWUgdG8gYmFuZHdpZHRoDQo+ICsJICogbGltaXRhdGlv
bi4gREcyIG9ud2FyZHMgcGlwZSBqb2luZXIgY2FuIGJlIGVuYWJsZWQgd2l0aG91dA0KPiArCSAq
IGNvbXByZXNzaW9uLg0KPiArCSAqLw0KPiArCXJldHVybiBESVNQTEFZX1ZFUihpOTE1KSA8IDEz
ICYmIHVzZV9qb2luZXI7IH0NCj4gKw0KPiAgc3RhdGljIGludA0KPiAgaW50ZWxfZHBfY29tcHV0
ZV9saW5rX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gIAkJCSAgICAg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnLCBAQCAtMjQwOSw4DQo+ICsyNDE1
LDcgQEAgaW50ZWxfZHBfY29tcHV0ZV9saW5rX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAq
ZW5jb2RlciwNCj4gIAkJJnBpcGVfY29uZmlnLT5ody5hZGp1c3RlZF9tb2RlOw0KPiAgCXN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoZW5jb2Rlcik7DQo+ICAJc3Ry
dWN0IGxpbmtfY29uZmlnX2xpbWl0cyBsaW1pdHM7DQo+IC0JYm9vbCBqb2luZXJfbmVlZHNfZHNj
ID0gZmFsc2U7DQo+IC0JYm9vbCBkc2NfbmVlZGVkOw0KPiArCWJvb2wgZHNjX25lZWRlZCwgam9p
bmVyX25lZWRzX2RzYzsNCj4gIAlpbnQgcmV0ID0gMDsNCj4gDQo+ICAJaWYgKHBpcGVfY29uZmln
LT5mZWNfZW5hYmxlICYmDQo+IEBAIC0yNDIxLDEyICsyNDI2LDcgQEAgaW50ZWxfZHBfY29tcHV0
ZV9saW5rX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2Rlcg0KPiAqZW5jb2RlciwNCj4gIAkJCQkg
ICAgYWRqdXN0ZWRfbW9kZS0+Y3J0Y19jbG9jaykpDQo+ICAJCXBpcGVfY29uZmlnLT5iaWdqb2lu
ZXJfcGlwZXMgPSBHRU5NQVNLKGNydGMtPnBpcGUgKyAxLCBjcnRjLQ0KPiA+cGlwZSk7DQo+IA0K
PiAtCS8qDQo+IC0JICogUGlwZSBqb2luZXIgbmVlZHMgY29tcHJlc3Npb24gdXAgdG8gZGlzcGxh
eSAxMiBkdWUgdG8gYmFuZHdpZHRoDQo+IC0JICogbGltaXRhdGlvbi4gREcyIG9ud2FyZHMgcGlw
ZSBqb2luZXIgY2FuIGJlIGVuYWJsZWQgd2l0aG91dA0KPiAtCSAqIGNvbXByZXNzaW9uLg0KPiAt
CSAqLw0KPiAtCWpvaW5lcl9uZWVkc19kc2MgPSBESVNQTEFZX1ZFUihpOTE1KSA8IDEzICYmIHBp
cGVfY29uZmlnLQ0KPiA+Ymlnam9pbmVyX3BpcGVzOw0KPiArCWpvaW5lcl9uZWVkc19kc2MgPSBp
bnRlbF9kcF9qb2luZXJfbmVlZHNfZHNjKGk5MTUsDQo+ICtwaXBlX2NvbmZpZy0+Ymlnam9pbmVy
X3BpcGVzKTsNCj4gDQo+ICAJZHNjX25lZWRlZCA9IGpvaW5lcl9uZWVkc19kc2MgfHwgaW50ZWxf
ZHAtPmZvcmNlX2RzY19lbiB8fA0KPiAgCQkgICAgICFpbnRlbF9kcF9jb21wdXRlX2NvbmZpZ19s
aW1pdHMoaW50ZWxfZHAsIHBpcGVfY29uZmlnLCBkaWZmIC0tDQo+IGdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuaA0KPiBpbmRleCA0YTRiMzlmMjc0OGIuLmQ1Njk3Yjk5YWMyMSAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaA0KPiBAQCAtMTE5LDYg
KzExOSw3IEBAIGludCBpbnRlbF9kcF9lZmZlY3RpdmVfZGF0YV9yYXRlKGludCBwaXhlbF9jbG9j
aywgaW50DQo+IGJwcF94MTYsDQo+ICAJCQkJIGludCBid19vdmVyaGVhZCk7DQo+ICBpbnQgaW50
ZWxfZHBfbWF4X2xpbmtfZGF0YV9yYXRlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ICAJ
CQkJaW50IG1heF9kcHJ4X3JhdGUsIGludCBtYXhfZHByeF9sYW5lcyk7DQo+ICtib29sIGludGVs
X2RwX2pvaW5lcl9uZWVkc19kc2Moc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGJvb2wN
Cj4gK3VzZV9qb2luZXIpOw0KPiAgYm9vbCBpbnRlbF9kcF9oYXNfYmlnam9pbmVyKHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHApOyAgYm9vbA0KPiBpbnRlbF9kcF9uZWVkc192c2Nfc2RwKGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiAgCQkJICAgIGNvbnN0IHN0
cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlKTsgZGlmZiAtLQ0KPiBnaXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jDQo+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiBpbmRleCAxNDA1YWI1ZTNhY2Mu
LjZkYTAzMWY5NzI0ZCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcF9tc3QuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwX21zdC5jDQo+IEBAIC0xMzc3LDExICsxMzc3LDcgQEAgaW50ZWxfZHBfbXN0X21vZGVf
dmFsaWRfY3R4KHN0cnVjdCBkcm1fY29ubmVjdG9yDQo+ICpjb25uZWN0b3IsDQo+ICAJCWRzYyA9
IGRzY19tYXhfY29tcHJlc3NlZF9icHAgJiYgZHNjX3NsaWNlX2NvdW50Ow0KPiAgCX0NCj4gDQo+
IC0JLyoNCj4gLQkgKiBCaWcgam9pbmVyIGNvbmZpZ3VyYXRpb24gbmVlZHMgRFNDIGZvciBUR0wg
d2hpY2ggaXMgbm90IHRydWUgZm9yDQo+IC0JICogWEVfTFBEIHdoZXJlIHVuY29tcHJlc3NlZCBq
b2luZXIgaXMgc3VwcG9ydGVkLg0KPiAtCSAqLw0KPiAtCWlmIChESVNQTEFZX1ZFUihkZXZfcHJp
dikgPCAxMyAmJiBiaWdqb2luZXIgJiYgIWRzYykgew0KPiArCWlmIChpbnRlbF9kcF9qb2luZXJf
bmVlZHNfZHNjKGRldl9wcml2LCBiaWdqb2luZXIpICYmICFkc2MpIHsNCj4gIAkJKnN0YXR1cyA9
IE1PREVfQ0xPQ0tfSElHSDsNCj4gIAkJcmV0dXJuIDA7DQo+ICAJfQ0KPiAtLQ0KPiAyLjQzLjIN
Cg0K
