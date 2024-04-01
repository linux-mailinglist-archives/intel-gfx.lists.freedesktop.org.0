Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D28B7893827
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Apr 2024 07:57:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5717D10ECA6;
	Mon,  1 Apr 2024 05:57:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OipgZq++";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC9D610ECA6
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Apr 2024 05:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711951073; x=1743487073;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=E22ye4aZACgON931PecsVJlDCpxNV7oUqAc6y0iuRx8=;
 b=OipgZq++8eVteyjy09jB9vu3SaTsVrbu8IVZlKR1nstvrKBrnV1SAdeC
 y+MEW0lCuRHqRk6hgL+2vJsNDYtk9rIjpq3389czgHQr9OO4bTMNZELYy
 fa0j7rGya1cMgeL9VTXWQ/j7SDzRPjrfiB/YBjdXQ2jpq5bvXwC9uaxBc
 oZSTWlmf03VZ0g+T4vY5vlyDT7MtzzrtLnEgOm3TeTOVWIlzRodISsCZP
 DQesI8191FCes9yq1kFHjINZUmHZTLdFWHWmLCdiXN8BR9o/SdE3NNSiO
 VOAFgzeDM7+h3TMgG2tIpZtyDi9W2+Io8Ir7rReCZ8uQ7b7pJm5LNHF+y g==;
X-CSE-ConnectionGUID: t1vIfogqSmuFe2slEHwl7w==
X-CSE-MsgGUID: IHQTjuNvToCVRaJ5OG39aQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11030"; a="18216330"
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="18216330"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2024 22:57:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="17690124"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Mar 2024 22:57:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 31 Mar 2024 22:57:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 31 Mar 2024 22:57:52 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 31 Mar 2024 22:57:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mpkiv+D6H7z7h06Q8N13I4KhL02Cx0nssVIQlJclrSCPk7Vba70ITJCvASSjKPo7AR0AWCctomibzJp5FyPgno3POuTqwdcJPBWNRKhNbXvaBSWZjfLV7WiU71gpUR/dOCU7u85pidpE5VNLWi9831sHVSLuysau7X0x3BKbpz0BCHn30FGozZhBMYV8RKcJ1iRZ6lk8NJY8CEwO4txGru422Gqt/kqAB/4i9tnZyWH+kl68KAqZXo6mwrGqVejOujIA8jCuSyIozPLJN499bOA3arpovPPYhSXgRBE5HstCajd1qkxOfVvL2rpgCVM1SxAeUyHlDeVGLNVaXXb1/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E22ye4aZACgON931PecsVJlDCpxNV7oUqAc6y0iuRx8=;
 b=Xi3QWREhZzrmwF7IA8949Q767WE9punqOM7NKv5Cjmj81IkGm1oLa61szBJIn79bWnsX//xJQ2EA9ZhUQLVM137dPFqew6cI7pCrLvzpgO7vG9fnfBnaoJLp2Z0jw5/OwqCiDbIlgZ7f4duAdeuTYwybJOGe4xh3c7FpfjvxwJN28DEiK7D3hUBYDNbhcDgIvk5kXiAj2e4IRE8D1esLskkqVnDcS2SzA0zZZvWQWh34eDCuV6p28zrOn7BmdHwokRTWFTR/x/vB6CPWHoqwMzM8miq79ArLxrLl5TmTnPFEJkTtJaZb31Xg6puoi66/k0jRDXV372MtOJvQUPJSfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com (2603:10b6:a03:47f::11)
 by SA2PR11MB5147.namprd11.prod.outlook.com (2603:10b6:806:118::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Mon, 1 Apr
 2024 05:57:50 +0000
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::2e00:6a0:1e21:b016]) by SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::2e00:6a0:1e21:b016%6]) with mapi id 15.20.7452.019; Mon, 1 Apr 2024
 05:57:50 +0000
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 01/22] drm/i915: Disable port sync when bigjoiner is used
Thread-Topic: [PATCH 01/22] drm/i915: Disable port sync when bigjoiner is used
Thread-Index: AQHagXZJAOytrLAM/EODtl9sjWHcgLFS7scQ
Date: Mon, 1 Apr 2024 05:57:50 +0000
Message-ID: <SJ0PR11MB6789384E4DE93E6EF4A019638D3F2@SJ0PR11MB6789.namprd11.prod.outlook.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
 <20240329011254.24160-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20240329011254.24160-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB6789:EE_|SA2PR11MB5147:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: G30k3IiVoCV208rLfy6hESCEGmov44CZ0xkKx6c+vYcHJ2OBGKQTKpVgGB5GoH41rEWXY3i7i9dDpqd8x0znuUcKY00Za4aFBx+zcc693e/mQVo5UO8u5aM3MYjbgS99j5/hvdffI00kYcS402L6iqqGM35e9tBd0ILtGCrJDoIj2ZS9AE1Zl/X2d6HNTINDjZDX/NK+5qU29F5WoXIHdfFuS/w8LYIGBggU4ir8cyyfN9paZsT74SLVMjGKOujDlW1k50Bltexj7YQz+zh9jNqgmAi0yBxVoDY9xZNlibOlnqtId4Z5hDhIHA+1lh/veGVsz5YiU273Ox7x+nykChuOVQLSFQkHkELiauVd7sV6LrB6V4lUkKrZwRNe/F4Fv2cVW7DZflpZSgt421fVX48EnWo1eZbchgMKi+D/rOi8mfczQxClmBrixuzk5Vu2jOgYMl7n7iq2yV53p4pQdNMAXtIOdjQeuTgMNTy5ahtI30cg3sTY8Kgax7LZV8OoL5jtPIi/ih2l7Yll55S0VKc4kPs/t/X+v0bLFi7nhV5f6oSdlz3lX8FPadQeG1g2JwIicYH64DLZvgue4uNtAvEEBcjJpDhxsVYoGrjCWyPU3FIVHtxmG6PMZv34gt8mymZO0kt0/poZjl69dSu6iA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB6789.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QjFTNkVTZUp4eTRLelJDTU5IbGVCQnRDZWU1VDBXSFFFWWV4ajBRZ3VYK1lQ?=
 =?utf-8?B?ZUNPVGNPdkVDTHNWUVQ5QzE5SFFRTjN4N2NiYWVTNjJwZXhQa1JDMzVweWtu?=
 =?utf-8?B?Q3dORjB2TDdtdmNEUy8yaGhoM2IyeHhneGNRVVQyRzZkbjY4NkZrbTNGN3Y3?=
 =?utf-8?B?TG43R3N0bnNsMHhqeERzTGpkRkJ2NUhTblpGUEFzTDZPSUh3VzZ6UGxmMU9q?=
 =?utf-8?B?b0p0SUhjbjB3WlIzMGtxVW9EKzJ5VXlaM0hlTUZjWVVlWWFaN2Zac2tzWDNq?=
 =?utf-8?B?b3oxRzdMejdTN0k1QzNVY1VQbjFLTDFyQ1RYb1dBNVVmQ0ovNENaNDFxcU5M?=
 =?utf-8?B?ZU5LcG5xWS9hQXFzekdORXROZ2dwb2xUNzFpYlRvR2ExeldGWUxoTmxEazNZ?=
 =?utf-8?B?bzdHaFNBemlORkxhVXQrWVhwcmt4RWZjSGp0d2tlRitZK1JnNW5kMnpJRUJp?=
 =?utf-8?B?cy85LzFqSjN5c0pVTkVib2pUVFFtb0FaREVrUFd2bm5rbXNNRU5XRWgwMFkw?=
 =?utf-8?B?eVk3NTZQVktIQm51dkpzVWhlS1FzY1ZWVmozUm4wdDlBVm1xSEk2Y1JzbFM3?=
 =?utf-8?B?c2FkVlovaThuaVF5Q3ZuUGdZWDRqWnlnV0Zpa1lqNGNTVnpyRFFVODZJYzU1?=
 =?utf-8?B?N29aMmswODlxczQ3U2gvZ3NjK1RwOUp0cEEwb21sRG9XV2IwRU1IeEZHRWhy?=
 =?utf-8?B?eWdaM2JwSnhQRkZXN25yeU15azBWQW96TXNaK041SFhHV0w5SWFYMFBncDdI?=
 =?utf-8?B?cDlscXNjTXBOZlpJSWNrekxjMFgvMUJSTFFFQWFpQjZlS24zSXo4ZjQycXQ1?=
 =?utf-8?B?VVQ2MCsxdFk5UnVoZkFxZkN2cVAvc09WVEdDN2ExcFJsUnAxTmt6QjQwN0tP?=
 =?utf-8?B?YitCeGxLZ2ozU3lSWmNYRzMrenlKRU9XcW1YaUdGUWs4ZUVFc1JwcnhabEVy?=
 =?utf-8?B?MFVsTE1INWd3OW1oYm5KeXYrREViK0syVjBNaW5VUDdDUU5RVGtTUFJzMVF0?=
 =?utf-8?B?NWUya1lzSjU4MU5MRTlqU01ITzZQVHM1Ly9oYmE3QWVibjI4R3ZHMWlOR2NX?=
 =?utf-8?B?QWRneHIwT2huVUpoOEJtbkNsaXJXbm9hTk00VGdxT3RWNCtnOEt6b3NvYjdH?=
 =?utf-8?B?NnQyekc1elI2b0RJbDUxV2JENjRsbW9xcWpjc0dxdE90VkwvbDczS1RDU1Nq?=
 =?utf-8?B?eDYyZFYraCttcEtDVDNEOG5GdGdpWGVMdHRaTlJYUUs1Z1dBTkZGN2hvbEJZ?=
 =?utf-8?B?aExqU2hYOGd5WmlTZzFnOWMvZWQxUFh6RkpUS2dJSGJiWnlaWlJHdGpmRUl5?=
 =?utf-8?B?Y2J0T296QndzMmZuQTFIOGYvamtRbWppV0FPQ2hMZVEzZHhWZ1VzSTA0aWFy?=
 =?utf-8?B?b0RaYVI5NGgxOHFrMjdLNjlZV3RZd0FjVjZJUTVXZU1iREF0VmlxbU44ZUNu?=
 =?utf-8?B?NU1TWDZsRVVuTThSRk04ZCthTWVQbmpHZ0NrSTJrSG1hWWJvVW54akRMZzlv?=
 =?utf-8?B?RnM1ak1wdVRmblk5TmFZUzJmbGw5VVB6UVVWTHJXbjF4VVpYTk5uT1NkVk9k?=
 =?utf-8?B?bVlMVDF0RzQxcXVKcEF5Vm9qZkJSZ1hqRGpxTVpqTm9BSU9KdStWeWpEYnhl?=
 =?utf-8?B?MlgrRW12ekVHcGtBSnpHSEVOTVhGNGdzbm9CQXlxeWVuZXVEeCsvcE1iTElK?=
 =?utf-8?B?ZmFPQ1Vubm5TcVczMlA1NkJ0RWdUanljWUZndEUrM3JQQTd6Sjd0TGxZVWRT?=
 =?utf-8?B?dXhwSFR5aEVyd0F6RmhFZGV1bkM2ZHVDN0x1c0dZcjJBMmZzZFBUOGdOMjRv?=
 =?utf-8?B?Tjdab2NQcWdBZlU4T2F3UlhWQ1M2RUhtTThDZENFckw4aUpITy9PRDdNa1pS?=
 =?utf-8?B?MGVmUFIvanJGbWk5eVV6UFIyNnhXUHNqbDVweTNWUEFaUDhqTWx0cVRWYWRy?=
 =?utf-8?B?NmM2aVZ4T3Y4RVMzWk81dUFqTUFkSFlUN2dWTlRNaFJzcDM5d3NKNjNwMEw2?=
 =?utf-8?B?cGhFR285SUhUeExzTmJxdW81Z3pvUy9hVlpOaUloNllXTGl0c0VBTmgvWFVn?=
 =?utf-8?B?NlBKREV2RWNRRW1iSFN6NUxmS3dYck1zb3E3MUprWmQvVWc3bHFWUzRSRHR5?=
 =?utf-8?B?eW9Ya1M3RUNOSiszMjU2MGsrdlFqakZNVGVmTnllbmZONkJYdnVXd2R1VEdX?=
 =?utf-8?B?NFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB6789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58773b38-dd00-47bb-8ea9-08dc5210aa28
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2024 05:57:50.7451 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cC4JZV6XWjkBurU1m0v9qFTOvJG0HTA9eFZQRq8kMD0Az4lceJb5UF5dmUJv8NhFVFBEm3NnYS1bu6HODfY90338E0qgGM+5z9cUGpBMLMQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5147
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
cmphbGENCj4gU2VudDogRnJpZGF5LCBNYXJjaCAyOSwgMjAyNCA2OjQzIEFNDQo+IFRvOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtQQVRDSCAwMS8yMl0gZHJt
L2k5MTU6IERpc2FibGUgcG9ydCBzeW5jIHdoZW4gYmlnam9pbmVyIGlzIHVzZWQNCj4gDQo+IEZy
b206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0K
PiBUaGUgY3VycmVudCBtb2Rlc2V0IHNlcXVlbmNlIGNhbid0IGhhbmRsZSBwb3J0IHN5bmMgYW5k
IGJpZ2pvaW5lciBhdCB0aGUNCj4gc2FtZSB0aW1lLiBSZWZ1c2UgcG9ydCBzeW5jIHdoZW4gYmln
am9pbmVyIGlzIG5lZWRlZCwgYXQgbGVhc3QgdW50aWwgd2UgZml4DQo+IHRoZSBtb2Rlc2V0IHNl
cXVlbmNlLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4NCg0KTGlrZSB5b3UgaGF2ZSBzYWlkIGluIHRoZSBzZWNvbmQg
cGF0Y2ggaW4gdGhlIHNlcmllcyAiIHBvcnQgc3luYytiaWdqb2luZXIgd291bGQgcmVxdWlyZSBh
IHRpbGVkIGRpc3BsYXkgd2l0aCA+NWsgdGlsZXMgKG9yIGEgdmVyeSBoaWdoIGRvdGNsb2NrIHBl
ciB0aWxlKS4iIHRoaXMgd291bGQgYmUgYSByYXJlIGNhc2UsIHNpbmNlIGl0IG5lZWRzIHRvIGJl
IGZpeGVkIGxhdGVyLCBhIHRvZG8gY29tbWVudCB3b3VsZCBiZSBoZWxwZnVsLCB0byB0YWtlIGNh
cmUgb2YgaXQgZm9yIGxhdGVyLg0KV2l0aCB0aGF0DQpSZXZpZXdlZC1ieTogVmFuZGl0YSBLdWxr
YXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgMSArDQo+ICAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYw0KPiBpbmRleCBhM2QzZDQ5NDJlYjEuLmZhNmZlOWVjODAyNyAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+IEBAIC00MjQ0LDYgKzQyNDQs
NyBAQCBzdGF0aWMgYm9vbCBjcnRjc19wb3J0X3N5bmNfY29tcGF0aWJsZShjb25zdA0KPiBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZQ0KPiAgCQkJCSAgICAgICBjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZTIpDQo+IHsNCj4gIAlyZXR1cm4gY3J0Y19z
dGF0ZTEtPmh3LmFjdGl2ZSAmJiBjcnRjX3N0YXRlMi0+aHcuYWN0aXZlICYmDQo+ICsJCSFjcnRj
X3N0YXRlMS0+Ymlnam9pbmVyX3BpcGVzICYmICFjcnRjX3N0YXRlMi0NCj4gPmJpZ2pvaW5lcl9w
aXBlcyAmJg0KPiAgCQljcnRjX3N0YXRlMS0+b3V0cHV0X3R5cGVzID09IGNydGNfc3RhdGUyLT5v
dXRwdXRfdHlwZXMgJiYNCj4gIAkJY3J0Y19zdGF0ZTEtPm91dHB1dF9mb3JtYXQgPT0gY3J0Y19z
dGF0ZTItPm91dHB1dF9mb3JtYXQNCj4gJiYNCj4gIAkJY3J0Y19zdGF0ZTEtPmxhbmVfY291bnQg
PT0gY3J0Y19zdGF0ZTItPmxhbmVfY291bnQgJiYNCj4gLS0NCj4gMi40My4yDQoNCg==
