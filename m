Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5589388B991
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 05:58:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACEB310E586;
	Tue, 26 Mar 2024 04:58:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e3m3zK3X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6E0A10E586
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 04:58:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711429088; x=1742965088;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kUj+5fd8FraaMBmSZ6uBR/JV/GeDhLyHAJmtd/9RUfg=;
 b=e3m3zK3X4tQd+x9BxR5qfkR3uBJc1Jm6Im/jcvwnjs7SMOGbGLjLhkH6
 VY+m65TRvQUA11i8l0rNXX89V6yN/zaprCea3+RXxJfWd/9bGRVKOMosu
 FOAM42D0DwipLaN2/MvMN6jz+LJQ8dco4TZUS1pLvYpfFEjt1YOB91zPA
 2RQH/leIkHqkzuJZZSGB4rUfe4V+hnYQqjtfZ2cLUvXutk6NZHmYB/Svn
 fowf4LjWQPFd4G6L1GuoguasJ9LVkvNpkWJ3Hbv5cyWo9v8hVGQrTsTVU
 /c81b3JeFodNFV2HbnP0yYf87u/tO0+fJmVqE3jEvl1/Zf1tKtc9U5sZj A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="6591197"
X-IronPort-AV: E=Sophos;i="6.07,155,1708416000"; 
   d="scan'208";a="6591197"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 21:58:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,155,1708416000"; d="scan'208";a="16269053"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Mar 2024 21:58:07 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 25 Mar 2024 21:58:06 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 25 Mar 2024 21:58:06 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 25 Mar 2024 21:58:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hFnflk6mgjecJ+RctWg59aFeeHJucQKSPe/+GqSQYvTP4AuawmFUsr3/sTjnmFzcskskGOpCQb8EhCqhh2/k2KKNYm2lyPBC45mJu4P0u8DFkUVfQNIR4WbH5G2VjJzoV2b6NKCeUOAU0iDswJUUpZRyxPCe1cFu0Kon0f5ErnDYRbmh5nEbbSHMm5usZM2n71k2LDUSEByffpnXT1qCyX2g+loH64k3rxt5I7zsVU0eCSDilodji5gno1J4UQfdFnRHrIoepHkCMQO2RFAUYDRFIBM4DP1wWneIGMpexcTTEeGJX1qx/Wno9m8wOnNuXsvZwWF24Yf5P5HEEVHW3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kUj+5fd8FraaMBmSZ6uBR/JV/GeDhLyHAJmtd/9RUfg=;
 b=PdoZBot0LrqARtM6+8aE95qYpElP+SvDT8dzVOnwO5p7uSDM6JPgh1U4OUdOzU2iHZd3Cb572aROKm0vyc2FlVE9p9k4EnDCSBteDJkJChbRy3VZrsUADkeyuxJ1ED7o+kP6UFBc1FpLL6yR9nOiPt5hSY31GMBsMt63ymkjmOmt0qHRYO76oj/TYS7OFZfptnnb3WRU2jr+lBM/QtFHKkexTTaEyDfgAbNZQmvbf2nA84XWfzjdb2MIgQFQnRiOmwMdpM7jB3EzMGe7kfQcZdLniI5twJPuxqiLEgY4iGTs0ESi6DMt7s/mYlxeizXu63NlH40zL3nrViEqVGApFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by LV8PR11MB8584.namprd11.prod.outlook.com (2603:10b6:408:1f0::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.12; Tue, 26 Mar
 2024 04:57:57 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::86fd:8a6:5f86:104e]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::86fd:8a6:5f86:104e%6]) with mapi id 15.20.7409.031; Tue, 26 Mar 2024
 04:57:57 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "stable@vger.kernel.org" <stable@vger.kernel.org>, Borislav Petkov
 <bp@alien8.de>
Subject: RE: [PATCH] drm/i915: Pre-populate the cursor physical dma address
Thread-Topic: [PATCH] drm/i915: Pre-populate the cursor physical dma address
Thread-Index: AQHaft30fK12yvWYSEe6so8iTEOPSrFJc64g
Date: Tue, 26 Mar 2024 04:57:57 +0000
Message-ID: <SJ1PR11MB612907EA0F41B6CD6ECC9B1AB9352@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20240325175738.3440-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240325175738.3440-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|LV8PR11MB8584:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MzVWZ9gBGxFWErBk1lWmbYuqRLPz4GpTSZZ6zqcFmnS5+kSPrfZEcl+/Oil9aWpJCiP/TO8CDzD+Jv3Pv6jgKdkOWhrp7bEsOfJfe7zdftb7Lku+Y4yNTPGkjw3h5EHfXjC/vPp1SVEtiUl14bIvwnjXI6SuALPNoMJy18bJ7SWTEy3oPjzMsSAHaYM0QDbT/L5mobaiE4hp1/CKq6jK1Is0b5mJTPAFjon2PSeK0BixtEYfCZatbTB/xFlEkR5NxTeppMb5SPkDZKgjeV/8S7MIeMrOoZb7MesnHSdpC3C/c5YEek5fbTTDsu62Dlw8SPpN5Kv8AuVZvPzn0QiraoBV84ECNfrOWpCI5uf/Q8s1Hkz6acEwfFpKJeSXfrjV/FreBf6IoAPIH9+IXOXwHEJ9b7psWCnkWwHDshieWBr5wG5R9Z8YHT6HUHxdAB4l5wnDqOu2oNc7f5fWzjY7FwhHEHVHWeBHsR2ZxMKf1kBnyP9vQkpdKD+sJ/UYWUeqd8fsRQRJA5XCwPsHRkEbpX5J6I4OsA/FPEJ1kYo7/xiIYwjJdZpxu9O+TGfZGRCao0aN9rfuARXX2b7Bd7ZqnmdgLmYVRGWN3ufKDbYFLJg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZUJwUnpId001NGt2aVRpRW9SdnBXdC9RZTB3SjJ2djlnczVUbkM0bmVqRkdi?=
 =?utf-8?B?QUNuZGE3THJYSUdOWDVnUHYvNFZnMWhzMmh0aTFRR0RhR3ZaOVVOR0ozenBp?=
 =?utf-8?B?Yk5LY1hjVWxxSkt5Z1dJVC8ySFFXamVoamh1RWNXNWlLdFBEeGQ4VG1GeTVw?=
 =?utf-8?B?V0ZtZkRXclJGN2RxcWNabFlUcWU0cnFNd3hLd0l3MmlibDkzYzlVOEVXTlI3?=
 =?utf-8?B?ODFTM0RQSmlGMGFRSkZWQ1dkR1NGSkhSVWRvSzFYWVNzcjFOWG5RdmlETHdm?=
 =?utf-8?B?bm5KTmt4bHhBWXlkQkcrVFF2MnMzV0hEMzVxNXFJYkFtV041YnhiK1hjaXU0?=
 =?utf-8?B?UGZqWVNJQWxkb1F0V1RxU3U3eHJoNDcvcmorQW1KUGpFelprbzdHbXN2L2x1?=
 =?utf-8?B?K3h5VHVxUGYzc1g5WmhrUUtEU0VTZCtlaUZiZDBRazgybTJrVlFSY0JLbGNX?=
 =?utf-8?B?d0IwWXZWNWl4cU9FdU1EOWVaWk85eFJTZDhDWXVvSTRVcEg0TUtLeE1WdHlh?=
 =?utf-8?B?cG1OUzliNzJjelcvZnhYdERxeHM4cTUwRGh1REkyOWp0bFFYNWF0NXVuRWl4?=
 =?utf-8?B?WDZTVW01Z1VxVExXZXNtVUl6V09ESE9SZW5MamZIdFBXbURvL1NQOFluUWZo?=
 =?utf-8?B?enhNeVF0SENya20wMzczWldzK1NFZjlFcmVPRWZHdkMvUzB0eExjZlNwd3ZC?=
 =?utf-8?B?cWw5ZUVDT0ZGSWs2Q1ZXd0p6bllLR2ZBUVp2QUhWQmZ0ZjBqZ0FrVG1QQ3Ju?=
 =?utf-8?B?cFA5dkU4VEd4b09icUVMZ0ZMRlhLcUhZMXZ3R0VYOE95MjUzQ085Q3Bzakwy?=
 =?utf-8?B?N0F5Z0NndGJRM2NtL2lLWnE5VjY2UmZsT0lTZG1MYU9kZWV6TFcrbk03WVNi?=
 =?utf-8?B?YkVQWXVERS9PVUlLVVUwdVk0QTNXY0o3L0VlUjlGdlBMd3BCbnFGdjcvdEpJ?=
 =?utf-8?B?S0RqeTRqQ1BMWm80TUlhVnhXN3dINXFWaDFHcmlXczRyQWdvUU9VSFZlWUMw?=
 =?utf-8?B?aEREOS9NN0VTUi9rMDMySG14enZPTVdaSzBZcnd6d0dnVXZLTGtVRmdmd3dr?=
 =?utf-8?B?YUNWMUdYUFRkczNXaHVLcWNPM3JDQzFVWnoxSFQ3Y2VBMGRDd2UzeG9lQXhW?=
 =?utf-8?B?N2pwQlNsTGdxZVVoRXl4N1piUEd5cFZLVzIzOXVweTRJeEcwY3M5QnJUczJr?=
 =?utf-8?B?cVhESHVHWXEyZFV6SHphVVlicHBKblZCbkxOeE00OUlwWjh4K2Y0NFZjSjBt?=
 =?utf-8?B?NldQUTAwRHNpTGl5ZkZwUFFwQjNLNjBFaVlnSk9BL1F4VFgvTEZJMlM3ODc2?=
 =?utf-8?B?VUtVUW9FL2xFaHNsR2NieVlwblMyd2xNT0s5eDF1ZEoyOGV1cmtkK0dsYnRz?=
 =?utf-8?B?NHRoaXZTbkEvaDVjNkMrSWMycVh6RlhlTEhmaGdlWm5NZFZCRHM3Wmw4b09W?=
 =?utf-8?B?Y05ESThVaEVMVVdrT0lRYmc1WUYyYk45TDc0akRkb3d5VzJyQ2dyYW90Sjcz?=
 =?utf-8?B?QlVLR1VCU2ZnZGxidFNzcE9yeFVOcHRER0JqQWFzWDJRVWNCallXOGhJUXNS?=
 =?utf-8?B?cmtYcHZlVWtiNkduVkhXL3RnckN1dGRSWWRJZUNnYnZxUEhQc2xrY3JOM3JR?=
 =?utf-8?B?eGhwUXc2SlFnQTZya29xc3VqVllhOUVDUVBWZFFUS2NrUnQwRU5wY3VUUUxJ?=
 =?utf-8?B?M3kzbTlMVXRJblBIcnBSR0U2M3FhRzVoVzNQY0lhdzRvbFQvY2tVSWN6dzQ4?=
 =?utf-8?B?Q2MwTGlJc200N0FiejYwRDhXRmxRK1A4b3AzYWhJUXptUnZKd09vY2pHbkp3?=
 =?utf-8?B?UytFUW9ZVjVvbmhITXlMVzBDZ0E4V3Q4SFdZUk5BTDByN3lEUlFTdk16R3JV?=
 =?utf-8?B?YjNVM0NZUG9OM1pkSFJqbHJUaGRPaFVLZStFazB1SGpWdGVENG1LbDM3WFAy?=
 =?utf-8?B?aUtCVXNQNWpQUUh4di9RTG14djdNTlhxR3YyWlR1MnhzeVdMQmNKL2VHMWJI?=
 =?utf-8?B?RWdxVGU5Tm1yeW05cTY2NkNDM2pUc0tCRmJmbXhNUlhIV08rc2YvNzAxRXQ3?=
 =?utf-8?B?a0svWWxURG0vZ3lHRWtZYjlGZkk5TmJDekd0SlcrQS9OK04rbzdKajRsOGth?=
 =?utf-8?B?RDRVYW43Z1ZXRCs1dldTbUo3d2lIR3Q3T2JuRHc2UGZRS2FmYk1lZVVDc0Ry?=
 =?utf-8?B?dFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2f2d08a-7d72-49ee-0b68-08dc4d514df8
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2024 04:57:57.4998 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NHzABc1qZIfXViRjGwGMPAF8A8adIC1qm2GFrBAAR3xw7Tr0wMXFSl71T+0CEhImNvHCubFUuoiZ5yF4ppJCDFMljdHLPBEmoWiEPYFd/rc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8584
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlDQo+IFN5
cmphbGENCj4gU2VudDogTW9uZGF5LCBNYXJjaCAyNSwgMjAyNCAxMToyOCBQTQ0KPiBUbzogaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9y
ZzsgQm9yaXNsYXYgUGV0a292IDxicEBhbGllbjguZGU+DQo+IFN1YmplY3Q6IFtQQVRDSF0gZHJt
L2k5MTU6IFByZS1wb3B1bGF0ZSB0aGUgY3Vyc29yIHBoeXNpY2FsIGRtYSBhZGRyZXNzDQo+IA0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gQ2FsbGluZyBpOTE1X2dlbV9vYmplY3RfZ2V0X2RtYV9hZGRyZXNzKCkgZnJvbSB0aGUg
dmJsYW5rIGV2YWRlIGNyaXRpY2FsDQo+IHNlY3Rpb24gdHJpZ2dlcnMgbWlnaHRfc2xlZXAoKS4N
Cj4gDQo+IFdoaWxlIHdlIGtub3cgdGhhdCB3ZSd2ZSBhbHJlYWR5IHBpbm5lZCB0aGUgZnJhbWVi
dWZmZXIgYW5kIHRodXMNCj4gaTkxNV9nZW1fb2JqZWN0X2dldF9kbWFfYWRkcmVzcygpIHdpbGwg
aW4gZmFjdCBub3Qgc2xlZXAgaW4gdGhpcyBjYXNlLCBpdA0KPiBzZWVtcyByZWFzb25hYmxlIHRv
IGtlZXAgdGhlIHVuY29uZGl0aW9uYWwgbWlnaHRfc2xlZXAoKSBmb3IgbWF4aW11bQ0KPiBjb3Zl
cmFnZS4NCj4gDQo+IFNvIGxldCdzIGluc3RlYWQgcHJlLXBvcHVsYXRlIHRoZSBkbWEgYWRkcmVz
cyBkdXJpbmcgZmIgcGlubmluZywgd2hpY2ggYWxsDQo+IGhhcHBlbnMgYmVmb3JlIHdlIGVudGVy
IHRoZSB2YmxhbmsgZXZhZGUgY3JpdGljYWwgc2VjdGlvbi4NCj4gDQo+IFdlIGNhbiB1c2UgdTMy
IGZvciB0aGUgZG1hIGFkZHJlc3MgYXMgdGhpcyBjbGFzcyBvZiBoYXJkd2FyZSBkb2Vzbid0DQo+
IHN1cHBvcnQgPjMyYml0IGFkZHJlc3Nlcy4NCj4gDQo+IENjOiBzdGFibGVAdmdlci5rZXJuZWwu
b3JnDQo+IEZpeGVzOiAwMjI1YTkwOTgxYzggKCJkcm0vaTkxNTogTWFrZSBjdXJzb3IgcGxhbmUg
cmVnaXN0ZXJzIHVubG9ja2VkIikNCj4gTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvaW50
ZWwtDQo+IGdmeC8yMDI0MDIyNzEwMDM0Mi5HQVpkMnpmbVljUFNfU25kdE9AZmF0X2NyYXRlLmxv
Y2FsLw0KDQpOaXQuIFRoaXMgY291bGQgYmUgY2hhbmdlZCB0byBDbG9zZXMgYW5kIG1vdmVkIGFm
dGVyIFJlcG9ydGVkLWJ5IHRvIGtlZXAgY2hlY2twYXRjaCBoYXBweSBidXQgb3RoZXJ3aXNlLCBM
R1RNLg0KDQpSZXZpZXdlZC1ieTogQ2hhaXRhbnlhIEt1bWFyIEJvcmFoIDxjaGFpdGFueWEua3Vt
YXIuYm9yYWhAaW50ZWwuY29tPg0KDQo+IFJlcG9ydGVkLWJ5OiBCb3Jpc2xhdiBQZXRrb3YgPGJw
QGFsaWVuOC5kZT4NCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2N1cnNvci5jICAgICAgICB8ICA0ICstLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIHwgIDEgKw0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYl9waW4uYyAgICAgICAgfCAxMCArKysrKysrKysrDQo+
ICAzIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jdXJzb3Iu
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3Vyc29yLmMNCj4gaW5k
ZXggZjhiMzM5OTlkNDNmLi4wZDNkYTU1ZTFjMjQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3Vyc29yLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jdXJzb3IuYw0KPiBAQCAtMzYsMTIgKzM2LDEwIEBAIHN0YXRp
YyB1MzIgaW50ZWxfY3Vyc29yX2Jhc2UoY29uc3Qgc3RydWN0DQo+IGludGVsX3BsYW5lX3N0YXRl
ICpwbGFuZV9zdGF0ZSkgIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PQ0KPiAgCQl0b19pOTE1KHBsYW5lX3N0YXRlLT51YXBpLnBsYW5lLT5kZXYpOw0KPiAtCWNvbnN0
IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiID0gcGxhbmVfc3RhdGUtPmh3LmZiOw0KPiAtCXN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmogPSBpbnRlbF9mYl9vYmooZmIpOw0KPiAgCXUz
MiBiYXNlOw0KPiANCj4gIAlpZiAoRElTUExBWV9JTkZPKGRldl9wcml2KS0+Y3Vyc29yX25lZWRz
X3BoeXNpY2FsKQ0KPiAtCQliYXNlID0gaTkxNV9nZW1fb2JqZWN0X2dldF9kbWFfYWRkcmVzcyhv
YmosIDApOw0KPiArCQliYXNlID0gcGxhbmVfc3RhdGUtPnBoeXNfZG1hX2FkZHI7DQo+ICAJZWxz
ZQ0KPiAgCQliYXNlID0gaW50ZWxfcGxhbmVfZ2d0dF9vZmZzZXQocGxhbmVfc3RhdGUpOw0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV90eXBlcy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3R5cGVzLmgNCj4gaW5kZXggOGEzNWZiNmIyYWRlLi42OGYyNmEzMzg3MGIgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5o
DQo+IEBAIC03MjgsNiArNzI4LDcgQEAgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlIHsgICNkZWZp
bmUgUExBTkVfSEFTX0ZFTkNFDQo+IEJJVCgwKQ0KPiANCj4gIAlzdHJ1Y3QgaW50ZWxfZmJfdmll
dyB2aWV3Ow0KPiArCXUzMiBwaHlzX2RtYV9hZGRyOyAvKiBmb3IgY3Vyc29yX25lZWRzX3BoeXNp
Y2FsICovDQo+IA0KPiAgCS8qIFBsYW5lIHB4cCBkZWNyeXB0aW9uIHN0YXRlICovDQo+ICAJYm9v
bCBkZWNyeXB0Ow0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9mYl9waW4uYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJf
cGluLmMNCj4gaW5kZXggN2I0MmFlZjM3ZDJmLi5iNmRmOWJhZjQ4MWIgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJfcGluLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYl9waW4uYw0KPiBAQCAtMjU1LDYgKzI1
NSwxNiBAQCBpbnQgaW50ZWxfcGxhbmVfcGluX2ZiKHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZQ0K
PiAqcGxhbmVfc3RhdGUpDQo+ICAJCQlyZXR1cm4gUFRSX0VSUih2bWEpOw0KPiANCj4gIAkJcGxh
bmVfc3RhdGUtPmdndHRfdm1hID0gdm1hOw0KPiArDQo+ICsJCS8qDQo+ICsJCSAqIFByZS1wb3B1
bGF0ZSB0aGUgZG1hIGFkZHJlc3MgYmVmb3JlIHdlIGVudGVyIHRoZSB2YmxhbmsNCj4gKwkJICog
ZXZhZGUgY3JpdGljYWwgc2VjdGlvbiBhcw0KPiBpOTE1X2dlbV9vYmplY3RfZ2V0X2RtYV9hZGRy
ZXNzKCkNCj4gKwkJICogd2lsbCB0cmlnZ2VyIG1pZ2h0X3NsZWVwKCkgZXZlbiBpZiBpdCB3b24n
dCBhY3R1YWxseSBzbGVlcCwNCj4gKwkJICogd2hpY2ggaXMgdGhlIGNhc2Ugd2hlbiB0aGUgZmIg
aGFzIGFscmVhZHkgYmVlbiBwaW5uZWQuDQo+ICsJCSAqLw0KPiArCQlpZiAocGh5c19jdXJzb3Ip
DQo+ICsJCQlwbGFuZV9zdGF0ZS0+cGh5c19kbWFfYWRkciA9DQo+ICsNCj4gCWk5MTVfZ2VtX29i
amVjdF9nZXRfZG1hX2FkZHJlc3MoaW50ZWxfZmJfb2JqKGZiKSwgMCk7DQo+ICAJfSBlbHNlIHsN
Cj4gIAkJc3RydWN0IGludGVsX2ZyYW1lYnVmZmVyICppbnRlbF9mYiA9IHRvX2ludGVsX2ZyYW1l
YnVmZmVyKGZiKTsNCj4gDQo+IC0tDQo+IDIuNDMuMg0KDQo=
