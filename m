Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C3A85F45A
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 10:28:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74D1D10E8D9;
	Thu, 22 Feb 2024 09:28:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nn46CtHh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C154A10E8D4
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 09:28:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708594104; x=1740130104;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=4Ys6DrOkStdH3IB+JsrQpj2WAix9PStlNlZ+fyk6fhg=;
 b=nn46CtHhrvK09IJlKh/VygA125+s8WwcWQzyXOnw4j5fKRjicwo4i+rm
 2Cv31NYLf2uHTopHVLQVjnYKHq9dfNk2Yhi19JNks81ZUTqlcoWZfN13K
 0zt5SE4QH3LOnHT1W88sqeGNYe+k44lfUnMsWH37PLt1BupHYAVCIJAkO
 uCB6LfQEIRKUKhPRThXXR9VENc35Es9nFNZu1wcqNs7hIvGh/82V6bepe
 Jn8Dir0H3uPbv30c0NJx4NURWl6rHXWkgljIl3Ap/mo+LUoAjzytNahCt
 iVEZQNZ4sNKlJleGDECacXJtT9DElUm1llL7bK3S/Svt5GdV+/OqJRr88 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="13934332"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; d="scan'208";a="13934332"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 01:28:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; d="scan'208";a="36265835"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Feb 2024 01:28:25 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 01:28:24 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 01:28:23 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 01:28:23 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 01:28:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VTPbCfhTbrkmhLUQvlPaVdmi87GvadTv8alb8dZh3mTC5fi/ndaZOe5Anf+ImqxBquoiwNducKYAlh9cCnmgUVWa2/T7PjqiLzIxnDqvejZq5hrI+jOJhVvvt+rixtYOBtip0ypvPxoiP/QrnzlJaWRPfEYFUwtWcI07aTg+R9tYN6RyqU1xd61mjE2sF/Ill+znhQ9LUPr0N+e5m2/ndxg5aZcagziabs43n5ZIiSfnW+t2bGW27Dec+MT2gIwEieNbLNU1C2NFD9McQt2au5B4u7ffddHY5VSjdcOAgdLiZjo0MGNAxIprks3zWmEnXaZdGChGzayt6cp8oZRsBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4Ys6DrOkStdH3IB+JsrQpj2WAix9PStlNlZ+fyk6fhg=;
 b=eGjYj85mQVIO/X8XDJkmL2ps64tJyakNRr7KCK2or5ZBGVg3amjGXoMEIOwsGkkdOo4RycsclBT9dKH3Df9D0s4kx906RS1TSyG1GFoYmdgtmvyNIM63LEi5YdksqnndYMBH3f3dSyqNTgDec8R1foZSpToFUflsk/tyR18vDPROFnRUI2K1jq/W8J3nzKS0OROri7fSUvUAtGwJ2/6Ht3cOWygQ7ivkvA7d03+xfysfkvUiBu+CQ22AuNba5/JaUaBLTBTg8NxKzXnXY+tZ2jiNqReCS9L3t5ph0DpzqD/rATWRY3cjEMBRrZHvyIPAZLVzcGcpLHgYWScASotnuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB6884.namprd11.prod.outlook.com (2603:10b6:510:203::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.10; Thu, 22 Feb
 2024 09:28:20 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3418:ecc7:297e:ff6f]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3418:ecc7:297e:ff6f%6]) with mapi id 15.20.7316.023; Thu, 22 Feb 2024
 09:28:19 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/3] drm/i915/psr: Improve fast and IO wake lines
 calculation
Thread-Topic: [PATCH 2/3] drm/i915/psr: Improve fast and IO wake lines
 calculation
Thread-Index: AQHaZJsgJCI1NUjJUkimhCCNlxfnsbEVKLmAgAAC+QCAACm2gIAAxFCA
Date: Thu, 22 Feb 2024 09:28:19 +0000
Message-ID: <10e66b0d1588e5e8fd988bee26472b3b6927b4a4.camel@intel.com>
References: <20240221075322.2764209-1-jouni.hogander@intel.com>
 <20240221075322.2764209-3-jouni.hogander@intel.com>
 <ZdZJh86BvrrAazou@intel.com> <ZdZMBsxyX1m_n9yy@intel.com>
 <ZdZvA5rs5MhPIK2g@intel.com>
In-Reply-To: <ZdZvA5rs5MhPIK2g@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB6884:EE_
x-ms-office365-filtering-correlation-id: 1d842e9f-8647-45f3-1f73-08dc33889b8b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Lo8KnvQsmmJOSTduEkXguEnPkq6L1FDCbdLJdA9YZUOzAVgZQ80xs7y91m4GD9Qwa3Qcbr8DwbALR0NwUF9F3v0E4CfbcAnZY+lLJFKYkLn2UOVOEGV3qTPbfd3RV7wQ1NT1ypExlyj5hLSTlX0X1Hsu/mJT3BCQINnTuUE1ACWhge8iok9yovF4uJj3hzDE3uKr0POpssK7kFkaHAbmxTGqmKJtUoErOBmXuDHENTlLD2xzDULcsZJioOh7BC1LA4hKJH/TwUPtZYWpJTncyF0uJH9hZ/5NL9mGtCON+pG5Nn+9CFr9c8vrPHJwYWOKe7S6D3iyDxgwBaurTS3vRMRmVXcoEE+4CS1VIyEFBgLZpCY5/YU9V5j4zT+0wKEXUOr64rOx6zhzSo2+Zou948E90N6b5Y5Q250HQ4slR6DboLs0Ds8elNQogDx6d8Tk5Dj7JfbUbjNuZXHPOu0qKYsNBkkC2/s3jCes4Bp0g24evZ0eQIjU9sHBlB0T2bm//hao8r03yZLdGnLqsOpV5hYt8M4JbLM9+8wDV0E4gIGa659QL3pO30fYHRn5m9VyB5BXlZ2IblZu8OAs4F/D4z3RDK5NdWXjf7DVM/qPU8ml6TwcNONt8WbRFZVnZPqw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dnpIRW1Mek15S21mMmducnZ0K3ljYVlKd1Q5YUZnWGtZaEtnTy9qWFYzQjM1?=
 =?utf-8?B?U1hEVnZEbmxQcFAyRjZXbm1VemZtb3g2R2RscTk2ZzNET0c2Q2ZCUjRoQWxp?=
 =?utf-8?B?bjV0RnhLNGhkYVNRaWkySjJCSVQ1bFdHMTdGK2pQaUJJR21GY0RNcExEcE1U?=
 =?utf-8?B?SGhyQUJDdEczYVozcW1LLy9oWG14dzdtVTZMY3Y3WnlGL0c0ZXowU3pUVUIr?=
 =?utf-8?B?d2ZEcUV6d1dEdnVhNElocHIyQ0luWGI1MVZkbWR2UDVtdzdTNDVueHczZ0wz?=
 =?utf-8?B?VGpzcENnMXlUMU0rcHErR1pjaExnRTNrdmlJRFJVSmxEeFo4MVU1T0lmc1Zh?=
 =?utf-8?B?Mk9NYmNIdDl4UGZ4Y3BXOWdBQ2ROSHFDZUE1NHdwME9HVVhQRTNYMXlPQWZt?=
 =?utf-8?B?dzJrSklwa0hMaXVHTU44ZnNDUzVOQ2xaN2xtbkthekR0RGF4SmVyR1pMUlRi?=
 =?utf-8?B?R3hXamg1ZDZ0bU9rZENqYzRMWDdhYkYwVWVqWERjb3gyM0R0VThXRkNRSjVI?=
 =?utf-8?B?NVhaaThaek5pNTFmUGJQK3VrdTZHVFJkemNEL0k2ZFR3RUJDd3lYQmcvS3Ex?=
 =?utf-8?B?Ujc3dkRKOENMT3hPK2pnZ3JtdWIwakJtaWlOZS9QN1BxRlJkSnUwc3I1cUo1?=
 =?utf-8?B?cUxTSVRWMWlUMlh6ZDBUQS9OODdVMi8vK0dQNVFsemxZL3h6VVBKdFYrMUM5?=
 =?utf-8?B?a1AraUlWclRxT2E3R044Rmg0eEpNOVo4MFczbFpuUGRFdjVRK3BTY001b21z?=
 =?utf-8?B?Y25DSFgrNlAzNzFjc3JVaVFmdjAvWmlQYzhWdEJHS2ZwQXFKRnBIbm5HTVdW?=
 =?utf-8?B?QWlIaXZReUIrNzE4UWtYOEhiSkVvSElMM2k1VzlJSlhqK0ErZmNyeTNCb1h2?=
 =?utf-8?B?K1lSNWZ4NVZpdktmdGMwQXF0eGczcENkdi9Id1VhZDU4NmIralBxUVFtUjkw?=
 =?utf-8?B?Z1piMmprUSt5dU50bUpDK0gzVWhBM1FCZUFMTmhiUEJLTFpybnVxSnI3Q1Vl?=
 =?utf-8?B?aStYaUJ2a3VYWW9rdHpCMkFsQk5xem5ISjBQZFFSS09PeWU0V2NkZURvMTR0?=
 =?utf-8?B?a3BuY0hLUUtkdjZabXVuaVo2ZG9IVjlKaE51UU5FYzBud2swMW9tQ0IzUU51?=
 =?utf-8?B?ZndTMzdNZ1h0YUFwcDFNZTdoUU1kVGhBVDVFSzlrbW9IWkNNZ2NEb0pjVFJH?=
 =?utf-8?B?a25ic0hvckxGV0tnR1JTWlRyYzdES0J0L254MlVzL09OaHYzS1FjK1c3a0g4?=
 =?utf-8?B?WENMK1d0dE9uRHhBamFoVWdEQUpERUJaZHBqb05ESm1IaERrY2h3VDl5M0VG?=
 =?utf-8?B?Yld3dENYNG9HMXR6WTVhQ0l0dHBWSEpJelZrYk5vVEFTRGl0NEdncTE1NzRW?=
 =?utf-8?B?MjN2R1JTdlZVZVhQMXl4NmFWNEVqUWxidGdFRFlBdzRDM1AxN0MwanZvdWFs?=
 =?utf-8?B?akdrTjVOZDRwUC9Bc2NYYTZrRkd6UnBTWEJ4cVM1bmxvQzFGcExhZmM1NGly?=
 =?utf-8?B?TXNoZHpXZE9XRlZsa0FWdVFMSjlncURYSnlhSFk0S0FOR1dGMkZ5eE0yWkwx?=
 =?utf-8?B?SVIwQzdLeXYzRWN2YmdKOWFLampUMTNrT0lDTVN6UEs5NSt4UkpFMWxCSzNo?=
 =?utf-8?B?czJLTVJxUXp5anVnaXl6d0dUeUNRa0RsOTZHMVVnTTFyYVIwTVBzVEE3Mi9T?=
 =?utf-8?B?cHZ5TFlFVjRCa1JwbW0wTlNkbkJPS2ZpS2NUVUlGMExaLzcyNEQ4UURqeUNN?=
 =?utf-8?B?eTlZSE9LbXRPckpkRCtDWlRGK1p4NzZpenYzWmhwWlBGejkxeVFaWVlPV3hr?=
 =?utf-8?B?WWVvZlRCWUh6Z1NDeDRJS0pTY3poK1V3bHV1c0RZdkFTUVREQTBnamRFNGg4?=
 =?utf-8?B?UUlCUGVYZGhOUnMwUVpxTFlPRVRFR3k5aVl0RXZNS1pLdC9sdXFtWm5LT01S?=
 =?utf-8?B?TXRPOU12NjA1dlBQNWRLN3F1OFpDR3VhaWYrZXVIaXFNVjdtN2lNaU1jemt4?=
 =?utf-8?B?dXJveDBScnNqWVRpeFIrUTQvdmNsKzlLN3FhaXM5d3BFZGMzeWJNWUZIckZX?=
 =?utf-8?B?ZEFzM3BPSktJdFlVZXpXNnhtK2UwVi95aUNvbWhVb0R3VjVTOGl3VGdhOFdI?=
 =?utf-8?B?RGg1SjI1aE1aS0txNWcyeVVnaWNMUnl3SnprTC80a3dYaW5TdmsxbGc4eWFU?=
 =?utf-8?B?cnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <396748CC2635B342B6324558102BBCF8@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d842e9f-8647-45f3-1f73-08dc33889b8b
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Feb 2024 09:28:19.7534 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mFWgiEjUZDzefXvyv8LblpTiLR+yFo/jTeOPycUrw0S3uLwl25Cd/lvDKzl97csYW0LNleEtKq88FXYxdcFa7gCqf0x/fviY05VcN3s4iZE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6884
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

T24gV2VkLCAyMDI0LTAyLTIxIGF0IDIzOjQ1ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgRmViIDIxLCAyMDI0IGF0IDA5OjE2OjIyUE0gKzAyMDAsIFZpbGxlIFN5cmrD
pGzDpCB3cm90ZToNCj4gPiBPbiBXZWQsIEZlYiAyMSwgMjAyNCBhdCAwOTowNTo0M1BNICswMjAw
LCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6DQo+ID4gPiBPbiBXZWQsIEZlYiAyMSwgMjAyNCBhdCAw
OTo1MzoyMUFNICswMjAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6DQo+ID4gPiA+IEN1cnJlbnQg
ZmFzdCBhbmQgSU8gd2FrZSBsaW5lcyBjYWxjdWxhdGlvbiBpcyBhc3N1bWluZyBmYXN0DQo+ID4g
PiA+IHdha2Ugc3luYw0KPiA+ID4gPiBsZW5ndGggaXMgMTggcHVsc2VzLiBMZXQncyBpbXByb3Zl
IHRoaXMgYnkgY2hlY2tpbmcgdGhlIGFjdHVhbA0KPiA+ID4gPiBsZW5ndGguDQo+ID4gPiA+IA0K
PiA+ID4gPiBBbHNvIDEwIHVzIElPIGJ1ZmZlciB3YWtlIHRpbWUgaXMgY3VycmVudGx5IGFzc3Vt
ZWQuIFRoaXMgaXMNCj4gPiA+ID4gbm90IHRoZSBjYXNlDQo+ID4gPiA+IHdpdGggTHVuYXJMYWtl
IGFuZCBiZXlvbmQuIEZpeCB0aGlzIGJ5IGFkZGluZyBnZXR0ZXIgZm9yIElPDQo+ID4gPiA+IHdh
a2UgdGltZSBhbmQNCj4gPiA+ID4gcmV0dXJuIHZhbHVlcyB0aGVyZSBhY2NvcmRpbmcgdG8gQnNw
ZWMuDQo+ID4gPiA+IA0KPiA+ID4gPiBCc3BlYzogNjU0NTANCj4gPiA+ID4gDQo+ID4gPiA+IFNp
Z25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0K
PiA+ID4gPiAtLS0NCj4gPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jIHwgNDANCj4gPiA+ID4gKysrKysrKysrKysrKysrKysrKy0tLS0tDQo+ID4gPiA+IMKg
MSBmaWxlIGNoYW5nZWQsIDMzIGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+ID4gPiA+
IA0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gPiA+ID4gaW5kZXggNzJjYWRhZDA5ZGI1Li40YTFlMDc0MTE3MTYgMTAwNjQ0DQo+ID4g
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4g
PiBAQCAtMTE1MCw2ICsxMTUwLDI4IEBAIHN0YXRpYyBib29sDQo+ID4gPiA+IF9sbmxfY29tcHV0
ZV9hbHBtX3BhcmFtcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+ID4gPiDCoMKgwqDC
oMKgwqDCoMKgcmV0dXJuIHRydWU7DQo+ID4gPiA+IMKgfQ0KPiA+ID4gPiDCoA0KPiA+ID4gPiAr
LyoNCj4gPiA+ID4gKyAqIEZyb20gQnNwZWM6DQo+ID4gPiA+ICsgKg0KPiA+ID4gPiArICogRm9y
IFhlMiBhbmQgYmV5b25kDQo+ID4gPiA+ICsgKiBSQlIgMTV1cywgSEJSMSAxMXVzLCBoaWdoZXIg
cmF0ZXMgMTB1cw0KPiA+ID4gPiArICoNCj4gPiA+ID4gKyAqIEZvciBwcmUtWGUyDQo+ID4gPiA+
ICsgKiAxMCB1cw0KPiA+ID4gPiArICovDQo+ID4gPiA+ICtzdGF0aWMgaW50IGdldF9pb193YWtl
X3RpbWUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiA+IA0KPiA+ID4gTm8gcG9pbnQg
aW4gcGFzc2luZyB0aGF0LiBZb3UgY2FuIGRpZyBvdXQgdGhlIGk5MTUgZnJvbSB0aGUgY3J0Yw0K
PiA+ID4gc3RhdGUuDQo+ID4gPiANCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkN
Cj4gPiA+IA0KPiA+ID4gY29uc3QNCj4gPiA+IA0KPiA+ID4gPiArew0KPiA+ID4gPiArwqDCoMKg
wqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGRwX3RvX2k5MTUoaW50ZWxf
ZHApOw0KPiA+ID4gPiArDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihp
OTE1KSA8IDIwIHx8IGNydGNfc3RhdGUtPnBvcnRfY2xvY2sgPg0KPiA+ID4gPiAyNzAwMDApDQo+
ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gMTA7DQo+ID4gPiA+
ICvCoMKgwqDCoMKgwqDCoGVsc2UgaWYgKGNydGNfc3RhdGUtPnBvcnRfY2xvY2sgPiAxNjIwMDAp
DQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gMTE7DQo+ID4g
PiA+ICvCoMKgwqDCoMKgwqDCoGVsc2UNCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoHJldHVybiAxNTsNCj4gPiA+IA0KPiA+ID4gVGhlIG5ldyByYXRlIGRlcGVuZGVudCBz
dHVmZiBzaG91bGQgYmUgYSBzZXBhcmF0ZSBwYXRjaC4NCj4gPiA+IA0KPiA+ID4gQW5kIGxvb2tz
IGxpa2UgdGhlIDEwIHVzZWMgd2lsbCBnaXZlIHVzIDQ0IHVzZWMgaW8gd2FrZSB0aW1lLCBzbw0K
PiA+ID4gdGhhdCBzaG91bGQgcHJvYmFibHkgYmUgYSBzZXBhcmF0ZSBwYXRjaCBhcyB3ZWxsLCB0
byBhdm9pZA0KPiA+ID4gYW55IGZ1bmN0aW9uYWwgY2hhbmdlcyB3aGVuIHdlIGludHJvZHVjZSB0
aGUgZm9ybXVsYS4NCj4gPiA+IA0KPiA+ID4gPiArfQ0KPiA+ID4gPiArDQo+ID4gPiA+IMKgc3Rh
dGljIGJvb2wgX2NvbXB1dGVfYWxwbV9wYXJhbXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwN
Cj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ID4gPiAqY3J0Y19z
dGF0ZSkNCj4gPiA+ID4gwqB7DQo+ID4gPiA+IEBAIC0xMTU3LDEzICsxMTc5LDE3IEBAIHN0YXRp
YyBib29sIF9jb21wdXRlX2FscG1fcGFyYW1zKHN0cnVjdA0KPiA+ID4gPiBpbnRlbF9kcCAqaW50
ZWxfZHAsDQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBpbnQgaW9fd2FrZV9saW5lcywgaW9fd2Fr
ZV90aW1lLCBmYXN0X3dha2VfbGluZXMsDQo+ID4gPiA+IGZhc3Rfd2FrZV90aW1lOw0KPiA+ID4g
PiDCoMKgwqDCoMKgwqDCoMKgdTggbWF4X3dha2VfbGluZXM7DQo+ID4gPiA+IMKgDQo+ID4gPiA+
IC3CoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAxMikgew0KPiA+ID4gPiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW9fd2FrZV90aW1lID0gNDI7DQo+ID4gPiA+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAvKg0KPiA+ID4gPiAtwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgICogQWNjb3JkaW5nIHRvIEJzcGVjIGl0J3MgNDJ1cywgYnV0IGJh
c2VkIG9uDQo+ID4gPiA+IHRlc3RpbmcNCj4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAqIGl0IGlzIG5vdCBlbm91Z2ggLT4gdXNlIDQ1IHVzLg0KPiA+ID4gPiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICovDQo+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBmYXN0X3dha2VfdGltZSA9IDQ1Ow0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqBp
ZiAoaW50ZWxfZHAtPmdldF9hdXhfZndfc3luY19sZW4pIHsNCj4gPiA+ID4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGludCBpb193YWtlX3RpbWUgPSBnZXRfaW9fd2FrZV90aW1lKGlu
dGVsX2RwLA0KPiA+ID4gPiBjcnRjX3N0YXRlKTsNCj4gPiA+IA0KPiA+ID4gTG9va3MgbGlrZSB0
aGlzIHdpbGwgc2hhZG93IHRoZSB2YXJpYWJsZSB5b3UncmUgdHJ5aW5nIHRvIGNoYW5nZS4NCj4g
PiA+IERvZXMgdGhlIGNvbXBpbGVyIG5vdCBjb21wbGFpbiBhYm91dCB0aGlzPw0KPiA+ID4gDQo+
ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnQgdGZ3X2V4aXRfbGF0ZW5j
eSA9IDIwOyAvKiBlRFAgc3BlYyAqLw0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgaW50IHBoeV93YWtlID0gNDvCoMKgwqDCoMKgwqDCoMKgwqAgLyogZURQIHNwZWMgKi8N
Cj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludCBwcmVhbWJsZSA9IDg7
wqDCoMKgwqDCoMKgwqDCoMKgIC8qIGVEUCBzcGVjICovDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBpbnQgcHJlY2hhcmdlID0gaW50ZWxfZHAtPmdldF9hdXhfZndfc3lu
Y19sZW4oKQ0KPiA+ID4gPiAtIHByZWFtYmxlOw0KPiA+ID4gPiArDQo+ID4gPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpb193YWtlX3RpbWUgPSBtYXgocHJlY2hhcmdlLCBpb193
YWtlX3RpbWUpICsNCj4gPiA+ID4gcHJlYW1ibGUgKw0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHBoeV93YWtlICsgdGZ3X2V4aXRfbGF0ZW5j
eTsNCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGZhc3Rfd2FrZV90aW1l
ID0gcHJlY2hhcmdlICsgcHJlYW1ibGUgKw0KPiA+ID4gPiBwaHlfd2FrZSArDQo+ID4gPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdGZ3X2V4aXRfbGF0
ZW5jeTsNCj4gPiA+ID4gwqANCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAvKiBUT0RPOiBDaGVjayBob3cgd2UgY2FuIHVzZSBBTFBNX0NUTCBmYXN0DQo+ID4gPiA+IHdh
a2UgZXh0ZW5kZWQgZmllbGQgKi8NCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBtYXhfd2FrZV9saW5lcyA9IDEyOw0KPiA+ID4gDQo+ID4gPiBJIHdvdWxkIGFsc28gY29u
dmVydCB0aGUgb2xkZXIgcGxhdGZvcm1zIHRvIHVzZSB0aGUgZm9ybXVsYS4NCj4gPiA+IFdlIGRv
IG5lZWQgdG8gcmV2ZXJzZSBjYWxjdWxhdGUgdGhlIGlvIGJ1ZmZlciBvbiBsYXRlbmN5IHNpbmNl
DQo+ID4gPiBBRkFJQ1MgaXQncyBub3QgZGlyZWN0bHkgc3BlY2lmaWVkIGluIGJzcGVjLiBCdXQg
SSB0aGluaw0KPiA+ID4gdGhhdCdzIGJldHRlciB0aGFuIG5vdCBjb252ZXJ0aW5nIGl0IHNpbmNl
IHdpdGggdGhlIGZvcm11bGEgd2UNCj4gPiA+IGNhbid0IHRvdGFsbHkgc2NyZXcgdGhpbmdzIHVw
IHdoZW4gZWcuIGNoYW5naW5nIHRoZSBwcmVjaGFyZ2UNCj4gPiA+IGxlbmd0aC4NCj4gPiANCj4g
PiBIbW0uIFRoZSBvbGRlciBwbGF0Zm9ybXMgYXJlIGFwcGFyZW50bHkgdXNpbmcgZmFzdF93YWtl
PTMyDQo+ID4gd2hpY2ggaW1wbGllcyB6ZXJvIHByZWNoYXJnZSBwdWxzZXMuIFRoYXQgZGVmaW5p
dGVseSBkb2VzDQo+ID4gbm90IG1hdGNoIHdoYXQgd2UgcHJvZ3JhbSBpbnRvIHRoZSBBVVggY29u
dHJvbCByZWdpc3Rlci4uLg0KPiANCj4gTG9va3MgbGlrZSBXaW5kb3dzIGp1c3QgdXNlczoNCj4g
cHJlLXRnbDoNCj4gwqBmYXN0X3dha2U9NTANCj4gwqBpb19mYXN0X3dha2U9NTANCj4gdGdsLW10
bDoNCj4gwqBmYXN0X3dha2U9NDINCj4gwqBpb19mYXN0X3dha2U9NDINCg0KV2l0aCBteSBwYXRj
aGVzIHdlIHdpbGwgaGF2ZQ0KDQpwcmUtdGdsOg0KIGZhc3Rfd2FrZT01MA0KIGlvX2Zhc3Rfd2Fr
ZT00NA0KdGdsLW10bDoNCiBmYXN0X3dha2U9NDQNCiBpb19mYXN0X3dha2U9NDQNCg0KPiANCj4g
QWxzbyBmb3IgcHJlLXRnbCB0aGV5IGNsYW1wIHRoZXNlIHRvIDUtOCBpbnN0ZWFkIG9mIHVzaW5n
DQo+IHRoZSBtaW49NyB3ZSBoYXZlLiBGb3IgdGdsKyB0aGV5IGRvIGNsYW1wIHRvIDctMTIuDQoN
CkF0IGxlYXN0IEJzcGVjIDQyODkgc2F5IGl0J3MgNy04Lg0KDQpCUiwNCg0KSm91bmkgSMO2Z2Fu
ZGVyDQoNCj4gQW5kIGlmIHRoZSB2YWx1ZXMgZXhjZWVkIHRob3NlIGxpbWl0cyB0aGV5IGp1c3Qg
cHJvY2VlZA0KPiBibGluZGx5IHdpdGggdGhlIGNsYW1wZWQgdmFsdWVzLCB3aGljaCBpcyBwcmV0
dHkgZG9kZ3kuDQo+IA0KDQo=
