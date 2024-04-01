Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C53F68939A3
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Apr 2024 11:44:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A17A10F02F;
	Mon,  1 Apr 2024 09:44:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m+Kg7BWL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5C2E10F02C
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Apr 2024 09:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711964646; x=1743500646;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=o+ji7ntMdNoswaBCGS0pTBT1VAkYzUHFwRUvgZPxWpc=;
 b=m+Kg7BWL4KL57QZ9a0ipXA6C/RDB2SFItlV73y9y6PYpInA0GLH91ZFO
 hLq7JwJ9AVnR5rdCbs2dVZOAsQDB2Pj5qjvtGO0RD/gN06FxCV0RArC1B
 Mp/Xkp5ZufUZGtREkm1/5ieDSSUJxABzfGRnf2WNZjQ5U+/4xhv4K23DZ
 RF8MmI45UXVnFYPUPR+CqvvZmyr2CzNTjQsMK/kiNHY+eqi91kFeD2NGG
 1pKP28J8/FqdH2NkU0qpzmwKzscrjocCPAf/8fHi97Yis9dPk6CIVZdx5
 xMo8ez4Ix69ksMIBswn9SGKe/baOydeJabIRK6c3AhkgsouXy+KcZbnOd g==;
X-CSE-ConnectionGUID: rpDbXHfWSmq7Km40PoChag==
X-CSE-MsgGUID: 8SddAojzRO22TewDiqXbZg==
X-IronPort-AV: E=McAfee;i="6600,9927,11030"; a="18526882"
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="18526882"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2024 02:44:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="17537831"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Apr 2024 02:44:06 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 02:44:05 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 1 Apr 2024 02:44:05 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 1 Apr 2024 02:44:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AdRtiqmeb+j9gXrFbP0nI6mIQrizweUFAHatnCAfOs7eAZNGqwZ98WKqsJwCLYVfOsgFgjMXcnv4oW6pzvLuk4p0XhI9FF13NiUxFeTnVL6ViRDZsLHTxOiOborNI43hHr4AXF7YIjdu4Kl3ilf+B1douOSjWrUK0Wc/E/LZUrxIxAxiprt0Rp7iKJyTh5BbpzwEOT/GTuPKsaCAMKym6JmwgqUB0xcL+73Hve8SJoLdyj4HadJR6KCu1DO23OSis92+UR/CajC7+7vRMygXxdESo4rrT37TGOz0hgG3VVxLoHNJXMfHJzqZqbTO1U1dhz6jVJZ/J9xi7ce82rPFWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o+ji7ntMdNoswaBCGS0pTBT1VAkYzUHFwRUvgZPxWpc=;
 b=T4xE9mybiqaDXD7ZNc81Ap1Gl50d8bg/wcv/yu/M/H/D1yKS8SV4IIpY51UKTkmT0FsjTdKdwXuEwvoY/6iNyo1ciLOARNs0LXLO68jzI83ZinMX2F+naawTnowUQ4mriUrfJWZ56z61kQfPhfOmP+Ly8UYYe/D1+MaPHkXJyYUfjpR9jxrN2C+qYTnTTuyvj0fvCZlDVBGfgaW736BR2b7fFg4RlqIP9GWI14IJPnEQTM8Ffyidb8hNKOKQVjmzfjG3IwLPO5yb0Ld5hzhWh+nd/jErAdFa53kfhxHgkFXwzA1uW8z2uAZoVY4fbg1zErGUk1hirw+vPLUVEZ82SQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH8PR11MB6659.namprd11.prod.outlook.com (2603:10b6:510:1c2::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Mon, 1 Apr
 2024 09:44:03 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff%7]) with mapi id 15.20.7452.019; Mon, 1 Apr 2024
 09:44:03 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 13/22] drm/i915/mst: Limit MST+DSC to TGL+
Thread-Topic: [PATCH 13/22] drm/i915/mst: Limit MST+DSC to TGL+
Thread-Index: AQHagXZchwDnXzJF3kyBJ0f8MxJ0aLFTLlyg
Date: Mon, 1 Apr 2024 09:44:03 +0000
Message-ID: <DM4PR11MB63601C388CD619A1CE968D5BF43F2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
 <20240329011254.24160-14-ville.syrjala@linux.intel.com>
In-Reply-To: <20240329011254.24160-14-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH8PR11MB6659:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SVzEi721M8MZq5mE9OP9fq+t8KiTTUo1n2c2ip/qDq1AoFDp4d36MaDxnT/OlJPrPV8T2KU/OwJ1G+InSRAC2ugJvl2oroI4hmSZE+GHZtRf8Dx36LZ9WKa6wsAwVvDk1IyccuFu9FW/WkG+TgKimh0oKqpV8ShnpjH1pq0oPjJpoVWhb1Gy+UVlyLw2CfHeqptQIHNODTqO/hfzThuWz83nGMCgpMuN+xVXo9NhayOhSpdiLBREBe4NJygRCySTF6SQyYNZFxwdfOmUkTvXcnDhhqMQ119i4wDQmgg2NTZhjoqMiTFCidhoiO1FkPaa1E4sLgMpEmY7QoeqbF6jAvtDYh/DZ7uN036mXepwNK2BIatev3ygdwWCAXcGJXxxNYgBfYsaM1is1jLERGYueHoexb8QAoLxno/FwzlfCtyAO951OGM6DMAYHRDRAe8nOLDy1DeDWkAPGyH6w+P/bRKQ8F82jYylp3v6O3Zn1zy8cZhtn5L99hsTfO/xAOPukCVQkZ1fPxn6Dpka0CngERl4DdPzuIEtd6Gi63joUOTLycJdyGxqh13RfEEiXvHPS5dfzn6VcU5RxVPTp6Hs/148kzklpAjyPgvw2jU1+LCkKK4nXE4PMIwyblfBVLgtRil38VRuzrKEpsIu5w0QYArDBHjKTCvKm4igqOt62PI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RGExeTFLSFo3aDJYVU84MjFLTGFKaHYvdmE4Zlh4T0ZMZVpPNG1vYkJHdnlK?=
 =?utf-8?B?SnhMTStPbzIrVEU4ektqeVlVb0dFVFI4UGk3WFBBYnBEREp5N0c0QmJ0S2VQ?=
 =?utf-8?B?NnVrc0xpampiY1hPYXpUSko0K3hYUXJzUTN6Y3M1SEh6VVV2VzVrWnFqYVJj?=
 =?utf-8?B?MG5EQkZxa1hOcU5lejBvemY0WnA1enA4Q0ZQNDV3TXFIaFppS3VjRVZVQkp2?=
 =?utf-8?B?U0ZXVHlJMTZTMUJUUXVCUTZVQzd3Q2tZL2dPQ3FQZXJzMU1idUJXWFo2a0hk?=
 =?utf-8?B?bHEvd2M4bHR3TUVnbDVndkNuMVM1M2UyV3E4TENYYjlTZjhvcU9jZi83Nlpm?=
 =?utf-8?B?Mk94bWxwRFRzYUdYbFJUWWQrNjB2N3J4UFR2Q2ZyQVNYcWpSSjQyckVzUVh4?=
 =?utf-8?B?QmpSeFNiaERuZENsNTkrSTlhbmNhbGNLdnNWVHVzMzBjK09nSDRoem5QRDZx?=
 =?utf-8?B?U0g2bzU5anIxajhkeS9sRy9DNFdGTkZKQ211MmxENGdDNVZFcFZMWXVyQjNT?=
 =?utf-8?B?Qk1sdGFYaGNadlkvTnBaOVdaM0p4T2V5ZGZLS1FSNmVFSXQ0eUtPYS9ZdlVO?=
 =?utf-8?B?KzhEL1J4cTlJdjVvMTdVQjJGZldpMkxkUDdIeHhRWDBYQWo2eSs0b09pdUdL?=
 =?utf-8?B?b3dPeTNhd1IzR3NnakVkOVNMdWF5K3NRTFVqNEZUQW92cE1VZHdQck5sYnFF?=
 =?utf-8?B?WW9YcWtZcXRVbTdzbzNwTzRxTGVHWkZrM0ZqbzVYZk54STRIWVlrZzU4a1Rm?=
 =?utf-8?B?bkhpSHZpZk14Wm5yOWRZYVlITTlNSzlOclllZVovY0paN2E0MmJtUXBEZGJ3?=
 =?utf-8?B?QUQ1aGlPYVpzQWZpS0g3ZEUxVitaVmNYVzZKSzFUTTJEUWpOZi94NE4yY0dR?=
 =?utf-8?B?US9WSHh1SE1hU3k5RVFkc2o5WjVWZW1XVUU0OGYvRkRPdm5CUHVIc1JWalVV?=
 =?utf-8?B?Qm5PU3RheG0wRkxyRU4rRUtBT2Y3Rlg0bGJCbnRGVWJ5Z2pHOWV6aG0wOEZo?=
 =?utf-8?B?QkdkVnUwbWRIZ3JyVElWeEcySzhoOU9jSlN2dXdsU2pQZzVETStYblphNHFG?=
 =?utf-8?B?MzhHSjRTTFhwTDhmbkdpTW5XR2NpS2s5d3pDSmxaVlh4eVhhOGFNQkJjQmFy?=
 =?utf-8?B?QkVrSVdyREhjZzdyekwrRDBpRGYvYktIeG1Uditid1lyMWxHMEY5V1VGK3ZC?=
 =?utf-8?B?TndVSWJ4K2Q3S0N3S2xzMGRIcU5iSS9BeDR3K1RpYkFyMzlTMEg0TVJNd2Ni?=
 =?utf-8?B?YWFlMlBGMGt4em5wTjBoL3NacFFGSEkyd01tVm04TnI4aTJ6N3ZzdzdmeStH?=
 =?utf-8?B?MzRQc3VyNTdvbktqMkQxcTBJM0E3RGsyV1VPVEtkRWJibTkzZUhSeGs0V0Rv?=
 =?utf-8?B?cDBDTUM4U09nTGtHV2htSU9HN1M1T2lOdzB4YlM2aDVvcHJMN0Z2Vm5WZitX?=
 =?utf-8?B?S2psaWx4Y1ZTUU96UElja2x1eVlzOTMrRGlMdmlnekhMZGtaUDNWeHVsSGNW?=
 =?utf-8?B?ZGNEa0ZFZVVrck96aUJoVnFPRkN6RWE5T215ZllDT0FyS1NWZ3VHSkxUdGQ0?=
 =?utf-8?B?cXlGemJ0OUxqeHlKaWh2MVRlTVBicGM1Rm8xQnZGNkxyY1dGMytCaXFvbHUr?=
 =?utf-8?B?RnlUYXNPb1BHM1p1cGZhcnJCaUlGR1Y4ZmtyL1VUak5wTVJJbXFpYkNyanNR?=
 =?utf-8?B?eEJVVnJUVW53TmFBZWV1TW1RaXR1V3BWbnJJcTVhaW4vLzVBcGV0RHlCaGlZ?=
 =?utf-8?B?bmdIcDdTNWdXeUNEQTdlc29OT1RsSkdxeVhtL3NMSkg0dWtiVXF4VGVzWDk0?=
 =?utf-8?B?RjJPaGRVUEJjcTlKY045bE0xZVR1SWdJT3dlbTlDNi9NNVBsbWQzSkFsR2NI?=
 =?utf-8?B?RjFoSy9XQXhSVm9MYjVaSFFqTUt2RUJjYzlTcGI0OFlvWWdyUTd1YUdCWjBq?=
 =?utf-8?B?RWNJaTUwMlZKOE1nYjFEYUEwN0xmb25jak9KcUhhbTRiKzN4c2orWEU0WEU2?=
 =?utf-8?B?RGxIUUlPSDRKeFBBWDhaS2x4ZUxsWU1WS0NpY2M5NjVqWkEyUkpwalVKSCt5?=
 =?utf-8?B?dVVKeTlnYlFyLy9uNkZ2MWs4T1RyaWY3ODlyWHlaL1g1NkxBWW16YUlrNFpY?=
 =?utf-8?Q?eOQqqlkhT6CxgMnn0+4eKthAW?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 655eea74-c5b4-4cdb-e596-08dc52304429
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2024 09:44:03.4845 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aWOn7kb7B+xFIc9IQv0hbt8a7IwOb1RmX+0pBzozJc7V09Tce+hVWChKesZ9MyMTKSSuEZSQnXQ5hvhy3Ctv4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6659
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
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggMTMvMjJd
IGRybS9pOTE1L21zdDogTGltaXQgTVNUK0RTQyB0byBUR0wrDQo+IA0KPiBGcm9tOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gVGhlIE1TVCBj
b2RlIGN1cnJlbnRseSBhc3N1bWVzIHRoYXQgZ2xrKyBhbGVyYWR5IHN1cHBvcnRzIE1TVCtEU0Ms
IHdoaWNoIGlzDQoNCk5pdDogVHlwbyBpbiBhbHJlYWR5IA0KDQo+IGluY29ycmVjdC4gV2UgbmVl
ZCB0byBjaGVjayBmb3IgVEdMKyBhY3R1YWxseS4gSUNMIGRvZXMgc3VwcG9ydCBTU1QrRFNDLCBi
dXQNCj4gc3VwcG9zZWRseSBpdCBjYW4ndCBkbyBNU1QrRkVDIHdoaWNoIHdpbGwgYWxzbyBydWxl
IE1TVCtEU0MuDQo+IA0KPiBOb3RlIHRoYXQgYSBzdHJhaWdodCBUR0wrIGNoZWNrIGRvZXNuJ3Qg
d29yayBoZXJlIGJlY2F1c2UgRFNDIHN1cHBvcnQgY2FuIGdldA0KPiBmdXNlZCBvdXQsIHNvIHdl
IGRvIG5lZWQgdG8gYWxzbyBjaGVjayAnaGFzX2RzYycuDQoNClllYWggcmlnaHQuDQoNCkxvb2tz
IEdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVs
LmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9kZXZpY2UuaCB8IDEgKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcF9tc3QuYyAgICAgICAgIHwgMiArLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgNCj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgNCj4gaW5kZXggZmU0
MjY4ODEzNzg2Li45YjFiY2UyNjI0YjkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgNCj4gQEAgLTQ3LDYgKzQ3LDcg
QEAgc3RydWN0IGRybV9wcmludGVyOw0KPiAgI2RlZmluZSBIQVNfRFBUKGk5MTUpCQkJKERJU1BM
QVlfVkVSKGk5MTUpID49IDEzKQ0KPiAgI2RlZmluZSBIQVNfRFNCKGk5MTUpCQkJKERJU1BMQVlf
SU5GTyhpOTE1KS0+aGFzX2RzYikNCj4gICNkZWZpbmUgSEFTX0RTQyhfX2k5MTUpDQo+IAkoRElT
UExBWV9SVU5USU1FX0lORk8oX19pOTE1KS0+aGFzX2RzYykNCj4gKyNkZWZpbmUgSEFTX0RTQ19N
U1QoX19pOTE1KQkJKERJU1BMQVlfVkVSKF9faTkxNSkgPj0gMTIgJiYNCj4gSEFTX0RTQyhfX2k5
MTUpKQ0KPiAgI2RlZmluZSBIQVNfRkJDKGk5MTUpCQkJKERJU1BMQVlfUlVOVElNRV9JTkZPKGk5
MTUpLQ0KPiA+ZmJjX21hc2sgIT0gMCkNCj4gICNkZWZpbmUgSEFTX0ZQR0FfREJHX1VOQ0xBSU1F
RChpOTE1KQkoRElTUExBWV9JTkZPKGk5MTUpLQ0KPiA+aGFzX2ZwZ2FfZGJnKQ0KPiAgI2RlZmlu
ZSBIQVNfRldfQkxDKGk5MTUpCQkoRElTUExBWV9WRVIoaTkxNSkgPj0gMykNCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jDQo+IGluZGV4IGEzYjAwMjZh
ZGIyZC4uZGUzNjRlZDc3YzA4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX21zdC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBfbXN0LmMNCj4gQEAgLTEzNTIsNyArMTM1Miw3IEBAIGludGVsX2RwX21zdF9t
b2RlX3ZhbGlkX2N0eChzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcg0KPiAqY29ubmVjdG9yLA0KPiAgCQly
ZXR1cm4gMDsNCj4gIAl9DQo+IA0KPiAtCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTAg
JiYNCj4gKwlpZiAoSEFTX0RTQ19NU1QoZGV2X3ByaXYpICYmDQo+ICAJICAgIGRybV9kcF9zaW5r
X3N1cHBvcnRzX2RzYyhpbnRlbF9jb25uZWN0b3ItPmRwLmRzY19kcGNkKSkgew0KPiAgCQkvKg0K
PiAgCQkgKiBUQkQgcGFzcyB0aGUgY29ubmVjdG9yIEJQQywNCj4gLS0NCj4gMi40My4yDQoNCg==
