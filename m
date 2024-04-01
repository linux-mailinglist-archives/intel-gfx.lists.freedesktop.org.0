Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 920C9893A81
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Apr 2024 13:08:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07FEC10E488;
	Mon,  1 Apr 2024 11:08:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Iwi7g6bw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 180A310E488
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Apr 2024 11:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711969709; x=1743505709;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=0YNmW7LALFNWARgXrUvqHVDXSdYetNW12R3LlWadrTw=;
 b=Iwi7g6bwPLKCh7K5jZtM5r6oJkf2/KihT3nYYiOV9nhCXXBJ4b/jN2sB
 A+Aog+Z3lhIhWkLzDLhUGbaVjNt3p7JDrIOLEGVTZpac4SX2k++M1hFWc
 7j9lysiVb48zyAi5tl3zTHYhFSri5v9RXWJlr3+4bjGN/U78JPECytA0W
 RdO0/z2gVfpcE7g7TwEnrc7Y1fGolwfLXaWuqx+MpsS/hJTol1qqvLKUK
 h/jshrF/tglJDKhvmJCyevIMXKPzYRCBrBYZ1gY0xpaERVhJn5VmoMeLv
 h/n8tC5h2rZbcNu4I4lkBmsGlgS/TXEpLLZE8M0f0XDRawcqXCuU30EXU A==;
X-CSE-ConnectionGUID: dsz10n0tTmWBYDOadjdUyA==
X-CSE-MsgGUID: bUqDKX2HQBGVvWu8VdMFSA==
X-IronPort-AV: E=McAfee;i="6600,9927,11030"; a="10914255"
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="10914255"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2024 04:08:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="17558128"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Apr 2024 04:08:28 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 04:08:27 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 1 Apr 2024 04:08:27 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 1 Apr 2024 04:08:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YfE0EMTuqwIWwraoTsFwH11dw5rz+W/G3tS28+Y9hix70bTQBm97I5OVbArpnQHM5pWocrtFG+i0zioukTKQ0r9FJ+QLfYVkms47EP8kgJmZituKHYEKNtn7FzW0sgFQofNX4tUJQCVCRd0779vOIGDXSpnvyZc/yhOKAHJ99PU4Y51nM8huu3N+wJqGVJHAVIe9Dw1a7vzbpkwJ3rm17Fk41p7ZzrJfO8zq1EUcRo58bU1GCDcNl/qpGGucBxSa8g7IOMDjassF/cWH0TVtzQKP4MYkK1F38e/Y/plcI5EVxy7Op31hsCwCRdTSzUji5Ox9vBS1QQKdEQNzDbhXBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0YNmW7LALFNWARgXrUvqHVDXSdYetNW12R3LlWadrTw=;
 b=EuYLIlIRxtq88YQhkEetSKlRsD8oe4RmhCH+VSjzeWR/814MSj+Zg6CLmLc0xtvxpctW116tQpEFZbLy7M6a0ZWvqo/0BDErNNSB5kZvLTOAJ4lj1Tbh2qjw5jIXPjKP/qMBNzoQ0vPrX5SlPUoUpKZbln3WH8xzp7CwQ6/0uIIXxKZUikfIntTOLDziFJqqXuSzdO5bC5Pdoyg3d2J0yNLH3sw+8Qguusl1TEW8QHTMd/nvqalb23FDKnfq3LNZ1wdjuhdoJioLDsueciQBD+QI6QWC5DlG2hB6ak+E3j3QnnBPdflCXic1PPNkILFB5kT1qi7U7hP2OnC2xMfgOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com (2603:10b6:a03:47f::11)
 by CH0PR11MB8143.namprd11.prod.outlook.com (2603:10b6:610:193::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.20; Mon, 1 Apr
 2024 11:08:25 +0000
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::2e00:6a0:1e21:b016]) by SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::2e00:6a0:1e21:b016%6]) with mapi id 15.20.7452.019; Mon, 1 Apr 2024
 11:08:25 +0000
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 07/22] drm/i915: Clean up glk_pipe_scaler_clock_gating_wa()
Thread-Topic: [PATCH 07/22] drm/i915: Clean up
 glk_pipe_scaler_clock_gating_wa()
Thread-Index: AQHagXZR7YJpIsut8Uit76u1yjbovrFTRlww
Date: Mon, 1 Apr 2024 11:08:25 +0000
Message-ID: <SJ0PR11MB67895D1BE20019D8A3AEADC78D3F2@SJ0PR11MB6789.namprd11.prod.outlook.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
 <20240329011254.24160-8-ville.syrjala@linux.intel.com>
In-Reply-To: <20240329011254.24160-8-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB6789:EE_|CH0PR11MB8143:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9hyHeqbMi66sdRcnGFhW3em95GUS3LIWfp0P94lYO/b4VJ6IcSqhzG21nHhhuj6nz+P9qvZh2L2pHdObAu89Ik7RTt3KlzMeyLRYygpFO91ixh7K07n6h7I9QV0R5maakRd9AFSvOud4m3eAozOpEBKEXQfWGKb/7TUN5hUsaT/ia7lHdmgwoTf5gBSe9EeNFeR3ekHCOCfgRDX1T2nQ+luRqU5Zn9kXkHLz+FRjtJjofSadkCGYCZwwiSJQI0YVLCaCgxTHikbnOWdUJGsvNh4ELTSSM8MzyvxBEAFT84VDdvVN63z931W/r2rAzsTtkCMA0QvdSDdrLuhDR2gOhcFXuJfu48OCtMUc69uRU08Iv3tmmnak2aC2UA/qXTbHlyb3ZtUi3c0biokIjxoX9dPJMl2cp3vxvgYCYvFaHPmz6i0QnuhrhcmkJNhuZ1uZxw93Mcocn6ekr2UcKA2ivawJZC7jeltIx5codVuPu5MiOrUBJWvwZtjzMC9gYj33qhjR066JKcGH9UXaWrXTsBxYHmcLxT+DLN0aRJMeF6zOZYsTN9CfkhwUJWofePYagfXldP908t4BDH3Y9NH2wZEajOQgRbgtgjoJN0WHbGx1rExCwf0q85wi6+ztYN32U8inofocYWSCSACvrrN/wDAwl7JYX7+ZmRjPFT2wyTw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB6789.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OFdiOFlreXdEWTZ0UkRjVFprN1JIckpPWUZtcU9Ceno3b2lDRUptOUdlMFlw?=
 =?utf-8?B?RFlZakdMbFBmWTRMNDJFYU5DNUxQUkJZQ1ZaNHg1TExCVWNGYTJyZTdtVnlj?=
 =?utf-8?B?aXU0Qy8rUG9CbnN5UEx5b0RqaFV0T1JndlNMSHYwRkp2VG9DTjAvYkRBdmRX?=
 =?utf-8?B?MmRCemY0bHNpWERlOVVETTlkUGxoaG1TQ1hmNWUyZFRrQkttSTl0eGpXWGdB?=
 =?utf-8?B?SDZTY2VZTytlY3BkNEhRNHdheDVWeEd4U0p4d2ZsYVBqbmJzdGhGdHpheXF6?=
 =?utf-8?B?NFJadE9qVWwySTQzVFgzQlZKZm12dkZHMy9vZ1lOUE1KZllySzVMbDFUVnFJ?=
 =?utf-8?B?V0NqL2hYc0s4ckIwMEI5dkRUcGJrNytuY2R2cVBxYmp5bzU1aWJQbm8wejZq?=
 =?utf-8?B?N3JMVjlVN0F1eFBQNGRXR3VMQkFsMmlZeXZDVmlsdS9ob2txMlgzWml6cDFY?=
 =?utf-8?B?bHArUHZ3RFlTa2Zld2xGTi9xSDBidVovZkozUFZadEZtM28vZkFpVEVrVEFL?=
 =?utf-8?B?b3B4VmJHeXQ5Y0t0Qy8va1BLVDIxZWJsSDRvT1V4eWJCVDRtSnYzSUlKRU1V?=
 =?utf-8?B?V0RGcnZVUXpMTnJXakN2dEUya2pBTjNKRy90V1owMlVTRm8zUmNvZEZSbDlW?=
 =?utf-8?B?aUVNdzZQK2VKMjAzOUE0blk3dVVMZ09DU1d6VXYxaytNYjRCUVNCeVBWWHR2?=
 =?utf-8?B?bG04dTJSbENKSDZxM3RFSFFlUFhPOEhPcVcrYTVIQ2tOYjg4dDY1VnJWZVZj?=
 =?utf-8?B?QlhDSjNOT1QraWNJVUhDQk8xWVNSWVNhVURwOGpBNWtMRWtQRysrWXFQNmhB?=
 =?utf-8?B?Zm1kL3hRZ1A3WllSSmNrQWs2c2RGd1BHOUJjVFAvaFhjZGdhemJxOFErT3lP?=
 =?utf-8?B?ZFJZdVlIeHBwOFMzUm5GWGpIY0RScHgwTncrUjBXQ28rMk1FOU03enB2VlJo?=
 =?utf-8?B?enQ2RFo4cHltbEdSNHcxYjdIeTd5OUlCZ0tIUFlTblBFemRCSVpJbVRhUTlI?=
 =?utf-8?B?U1pJY0UvbjFnempFQnAxWFUxYVhRaGFWWlpiM0FmdUZENVowQmRIbkM0dEJV?=
 =?utf-8?B?Q1NOdllJa25hUE9qRzJVdlIzTld0bGRiZURQM0ZJeVRJVmlObUlGblQzTWVB?=
 =?utf-8?B?dzJMVjB0VGVjRVFNaloyTW1aZWFKZld1a214ODJFekFDS0ZyRmowNkY3Y01X?=
 =?utf-8?B?WnNpNTBvZ2t6STJVM0JmcDJieWNQQkVUUWxCcTd2ckE1U21EK0F4NEQzYnF6?=
 =?utf-8?B?UXNKTE5sZ1VWeFpUNmRRbjNTc2U1RGZwV0YxcEk1K3dYbFZRMjY2SnRTcFUy?=
 =?utf-8?B?U2YrWVI3NXhMa2dudThsY3Z5VlErQ1dsMTJRd3FybmpUZ3ZoR1ZIVnpHbGZo?=
 =?utf-8?B?K2RzaXZybHVzRy95T1VFRitIS0VqU2k0MU5lcjQrSlc2UGE1RVlpRDN3K1lt?=
 =?utf-8?B?TlQ5NUhmUEZ1RVc5RmI0UEN0TjR3Q1hrUFlJZlMwWE9ueTBTTjcxNTUrZVkv?=
 =?utf-8?B?MWhKUVJISjN2Q3psWWZ5OHp5RldjOEd3TVdxbDEzdWs4YytsY1NmcCtpZERG?=
 =?utf-8?B?LzFNUlEvZnp6UUQxK3RwVXcxM1RyY3FjOGFGWTYrdVZQWWFVVzIwRllJTVc1?=
 =?utf-8?B?QTVJQllPVWdvblgzK2gvNlNETXRONDkyWlNFMytrMFdUcnNUTEFiWG1iVENP?=
 =?utf-8?B?SWJ3Qy9CVWxucmtsMVBJVHNQSURHcyt4anR0eS9GYkhVYlNVbmVLTEFsSTdz?=
 =?utf-8?B?Qk1XNWhzZklEWm9SamxWUTNKbkZiY2NzT1RFdUE0MnY1MHdsckxmQi9scHlE?=
 =?utf-8?B?TnkxQzBoQytmRFVZbXVsNWZtcUk0MktqVVJ5Q1pnRU1qWjI1RGMwUXREeE10?=
 =?utf-8?B?cnFHa1NKVStUTlcwWEV3bVN6dkU5K2ZTdHpLbDVhenRueDYrTXdCMHhpWHR5?=
 =?utf-8?B?VG43NEZVWWtLL3NhTmtSSzlKUGtvajZRNTZNTFg4WmdOTnRPR01OWEM1S05Z?=
 =?utf-8?B?ZzJQWjArNVZURTJiNHlEbmFxYWxhU0FzSWM5UHJyTnZPc3djdFZxOU5vQjNp?=
 =?utf-8?B?QnNmVi9DSThPV1FZWXRuSk93Vk9SKysrSHZMcjVZMFo1dUYxKzZlWXhTQlR4?=
 =?utf-8?B?ME1YU1dXc2xaUmFZTitPY04wWUxGUTJzeVFlMnk1SVgyS29uZWhsRW9SQU5H?=
 =?utf-8?B?MHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB6789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16220bbe-05e0-4fb0-365f-08dc523c0d51
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2024 11:08:25.4560 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /QKsapeb6LuH4p2K4i7PCmfjT+vGxTsjSPd2YG9ao7sBVB/gv4K9yxAxkr7ySBKIh1WadVkNX06jdFu69sNdCQrUTnasZhO1tofEJht4NYM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8143
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
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtQQVRDSCAwNy8yMl0gZHJt
L2k5MTU6IENsZWFuIHVwDQo+IGdsa19waXBlX3NjYWxlcl9jbG9ja19nYXRpbmdfd2EoKQ0KPiAN
Cj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4N
Cj4gDQo+IGdsa19waXBlX3NjYWxlcl9jbG9ja19nYXRpbmdfd2EoKSBpcyBtZXNzeS4gQ2xlYW4g
aXQgdXAgdmlhIGludGVsX2RlX3JtdygpLA0KPiBhbmQgYWxzbyBqdXN0IHBhc3MgaW4gdGhlIHdo
b2xlIGNydGMgc28gdGhlIGNhbGxlciBkb2Vzbid0IGRhbmNlIGFyb3VuZCBzbw0KPiBtdWNoLg0K
PiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4NCj4gLS0tDQoNCkxHVE0sDQpSZXZpZXdlZC1ieTogVmFuZGl0YSBLdWxrYXJu
aSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+DQoNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTkgKysrKysrKy0tLS0tLS0tLS0tLQ0KPiAgMSBm
aWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCAw
ODcwNTA0MmI0ZjguLjgzNDc0ZmNmNDEzMSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gQEAgLTE1NTEsMTggKzE1NTEsMTMgQEAgc3Rh
dGljIHZvaWQgaWxrX2NydGNfZW5hYmxlKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0
YXRlLA0KPiAgCWludGVsX3NldF9wY2hfZmlmb191bmRlcnJ1bl9yZXBvcnRpbmcoZGV2X3ByaXYs
IHBpcGUsIHRydWUpOyAgfQ0KPiANCj4gLXN0YXRpYyB2b2lkIGdsa19waXBlX3NjYWxlcl9jbG9j
a19nYXRpbmdfd2Eoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gKmRldl9wcml2LA0KPiAtCQkJ
CQkgICAgZW51bSBwaXBlIHBpcGUsIGJvb2wgYXBwbHkpDQo+ICtzdGF0aWMgdm9pZCBnbGtfcGlw
ZV9zY2FsZXJfY2xvY2tfZ2F0aW5nX3dhKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLA0KPiArYm9v
bCBlbmFibGUpDQo+ICB7DQo+IC0JdTMyIHZhbCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIENM
S0dBVEVfRElTX1BTTChwaXBlKSk7DQo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUg
PSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsNCj4gIAl1MzIgbWFzayA9IERQRl9HQVRJTkdfRElT
IHwgRFBGX1JBTV9HQVRJTkdfRElTIHwNCj4gRFBGUl9HQVRJTkdfRElTOw0KPiANCj4gLQlpZiAo
YXBwbHkpDQo+IC0JCXZhbCB8PSBtYXNrOw0KPiAtCWVsc2UNCj4gLQkJdmFsICY9IH5tYXNrOw0K
PiAtDQo+IC0JaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIENMS0dBVEVfRElTX1BTTChwaXBlKSwg
dmFsKTsNCj4gKwlpbnRlbF9kZV9ybXcoaTkxNSwgQ0xLR0FURV9ESVNfUFNMKGNydGMtPnBpcGUp
LA0KPiArCQkgICAgIG1hc2ssIGVuYWJsZSA/IG1hc2sgOiAwKTsNCj4gIH0NCj4gDQo+ICBzdGF0
aWMgdm9pZCBoc3dfc2V0X2xpbmV0aW1lX3dtKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKQ0KPiBAQCAtMTYzOCw4ICsxNjMzLDggQEAgc3RhdGljIHZvaWQgaHN3X2Ny
dGNfZW5hYmxlKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCWNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSA9DQo+ICAJCWludGVsX2F0
b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOw0KPiAgCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOw0KPiAtCWVudW0g
cGlwZSBwaXBlID0gY3J0Yy0+cGlwZSwgaHN3X3dvcmthcm91bmRfcGlwZTsNCj4gIAllbnVtIHRy
YW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBuZXdfY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXI7
DQo+ICsJZW51bSBwaXBlIGhzd193b3JrYXJvdW5kX3BpcGU7DQo+ICAJYm9vbCBwc2xfY2xrZ2F0
ZV93YTsNCj4gDQo+ICAJaWYgKGRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCBjcnRjLT5hY3Rp
dmUpKSBAQCAtMTY3Nyw3DQo+ICsxNjcyLDcgQEAgc3RhdGljIHZvaWQgaHN3X2NydGNfZW5hYmxl
KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCXBzbF9jbGtnYXRlX3dhID0g
RElTUExBWV9WRVIoZGV2X3ByaXYpID09IDEwICYmDQo+ICAJCW5ld19jcnRjX3N0YXRlLT5wY2hf
cGZpdC5lbmFibGVkOw0KPiAgCWlmIChwc2xfY2xrZ2F0ZV93YSkNCj4gLQkJZ2xrX3BpcGVfc2Nh
bGVyX2Nsb2NrX2dhdGluZ193YShkZXZfcHJpdiwgcGlwZSwgdHJ1ZSk7DQo+ICsJCWdsa19waXBl
X3NjYWxlcl9jbG9ja19nYXRpbmdfd2EoY3J0YywgdHJ1ZSk7DQo+IA0KPiAgCWlmIChESVNQTEFZ
X1ZFUihkZXZfcHJpdikgPj0gOSkNCj4gIAkJc2tsX3BmaXRfZW5hYmxlKG5ld19jcnRjX3N0YXRl
KTsNCj4gQEAgLTE3MDksNyArMTcwNCw3IEBAIHN0YXRpYyB2b2lkIGhzd19jcnRjX2VuYWJsZShz
dHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gDQo+ICAJaWYgKHBzbF9jbGtn
YXRlX3dhKSB7DQo+ICAJCWludGVsX2NydGNfd2FpdF9mb3JfbmV4dF92YmxhbmsoY3J0Yyk7DQo+
IC0JCWdsa19waXBlX3NjYWxlcl9jbG9ja19nYXRpbmdfd2EoZGV2X3ByaXYsIHBpcGUsIGZhbHNl
KTsNCj4gKwkJZ2xrX3BpcGVfc2NhbGVyX2Nsb2NrX2dhdGluZ193YShjcnRjLCBmYWxzZSk7DQo+
ICAJfQ0KPiANCj4gIAkvKiBJZiB3ZSBjaGFuZ2UgdGhlIHJlbGF0aXZlIG9yZGVyIGJldHdlZW4g
cGlwZS9wbGFuZXMgZW5hYmxpbmcsIHdlDQo+IG5lZWQNCj4gLS0NCj4gMi40My4yDQoNCg==
