Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7872888FE64
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 12:54:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F29AB10F59C;
	Thu, 28 Mar 2024 11:54:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VV58Bo6x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B343310F59C
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 11:54:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711626883; x=1743162883;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=dSwqiuYmjac1e0FkhZ2TW05bFYslX9Y1tm0oicztZUE=;
 b=VV58Bo6xpR06xFXuCuXN//QJc+z8DvweF6+rHeabmCkEXpFZZ4dsBSHf
 xabtuwvN3EFuwQ5DWL9HxEnSOPWlaTJ11xnhop6gOGzgef0acjB67J0s2
 1OlAVTCppCOxhwXLoylbIk6XsHZt8S/SQFYmKBHZp1zYBWc0AMnJ2CHvV
 34q7rcrOQt+AgkvWB8SyPiwjOJoTEi3aSJ4LKSWAMQKy0UyUnRQYCzorZ
 G93NDRjnFwcx+otO97GY53K16wkbgzDQcz4jiAoHBYBtzIzBbFwJCfXma
 M6uS2Ip1u1fDMvGYhb2a5Cl58LgaIcr7bxEPmxx/tYXvRPVNAEWfR6aXz g==;
X-CSE-ConnectionGUID: 4ZFaGLOzSpaVxnZKnkLKZA==
X-CSE-MsgGUID: kUULynS3Q1G+doervrtFMA==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6991614"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; 
   d="scan'208";a="6991614"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 04:54:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="39757763"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 04:54:43 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 04:54:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 04:54:42 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 04:54:42 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 04:54:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HJX03jaY2esCnsAm5VDSZQQiDY6Sq+1GACZS5qBithzZttWW98iBXJcd+KO0hPEbzhO3nowqiYl3HTNgohgBpjPlO8CrjJIMm4Nc0xwoGCdt0FAVD8CDyILeL8kInKl70AjZoWbhvE8yA1c5lshq3BtlYgCTGWFfez3CiDoLViv1ph+FMkKdSTgaNEBPWWOLCXjxjQXU0X3jZvVGRvVWzMeJqyiiIiwW97g/sYT4fAe1YlRMG7Jjfhh6slCeWQcv+BNmpJyz2IVGY0Mvhpe+5jkxoOAXSmm0o4EySbxMZSONe1yU+0c4GVLjKet5OZ1J5fATAXBn+IAAOEhe2yKpag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dSwqiuYmjac1e0FkhZ2TW05bFYslX9Y1tm0oicztZUE=;
 b=OQK+hXBUTtxXFrtL1rPKg5YNtMOWpMXIUDc7TkmB5KAcTQJqJqmiw8QiZKeT9YAM1ha18vYYwVk0x0QU2urOjlpDqziX17mWKFQMVqp85Vg6Yrh9fdzYxEmiX3dZnJXNLOpItmIQdLGc3E6PpYDzIeZmLEwNM+B4IM7hF5TuDBTMzkT+j3T08+oqxj9pbRvnhEzUuWHxg7lLvGuWUBZVpFHBNAXdKTRKJc2DXyoTURU7kXLyHiEveJxue8SaDPJBoyZASmw59vFnD3qamZx9YvOOslLC45TqG5GqcoNRlMbXKC8HVh17haX9KRigNUOqxp1WrXEvaZoa0ooX9wdHpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH7PR11MB5863.namprd11.prod.outlook.com (2603:10b6:510:135::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Thu, 28 Mar
 2024 11:54:40 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff%7]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 11:54:40 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 06/13] drm/i915: Relocate intel_mbus_dbox_update()
Thread-Topic: [PATCH 06/13] drm/i915: Relocate intel_mbus_dbox_update()
Thread-Index: AQHagG7F+kesEUkaFUmH26gZ+e48PLFNDHvw
Date: Thu, 28 Mar 2024 11:54:40 +0000
Message-ID: <DM4PR11MB6360AF88CCD8775AA31F07CBF43B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
 <20240327174544.983-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20240327174544.983-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH7PR11MB5863:EE_
x-ms-office365-filtering-correlation-id: 83c63b94-016a-4497-7748-08dc4f1dd987
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bCvs56plHuL+2MRD0Yf0cL+e69t4AYaAQc5xesN8iedKF4f1wV6T/q5g13LVeFZ1sWDcEOX2w7lfuAB0ZKJdCnogVS3ru5/J6EoQsDmi6re8jnv5hfij5zIG8iIztpBTXI/LrMrmDVKdSTjinmZtQBMFowhAh2xozu8LKfvigNIGgsdZaQ25A5xFq1FHmLLjTczaOiDpoVDBRSCe+iZjK9hET8ZAaNI0ycZ0EUMvl+WMtjx2Md+yQ4bFGj4IKzxLqxIA0nOvs+BqoTz63KtW/LtA4pDfsnXektT4smueMVlPYh8WkFYds3eYtOaOhOaGjPeTr4TLhR5DznK0w1pJE00cby3IiGS/AJYxdPIFXfSS90Lgby7qEI4nYyRjPOYeXfjZe0fZsJlKPe2CCmOiU9SxOVf3YBPvxbxeZaec8XYg7RXLgKcXv/WthrZB2YQERhx9OwKYZWQxIVqQLkRIoS9cACYhElfp1J8ROrXYrk4ZZXaAUYAYlBCOcXNAC73MwWK2I/9UADDxw20j6GLTKNqEqe0NQNjvF75kS045gd02DX6k3H9DrBrng4um1ypHXDvE6e3LrnmBXRh8umQX4P3wSwR5VMhkbzl7JWElA0Lw9oSZZn8f4Egc409WBd59nfdb4p83VZq6rE3o2jeDLAoLVvq/HMfO3XnDJ23nz+atk5z+xBti8xxH5Y/7slb6RWssD1AXsCvb/hi3MESTRg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZVFEanFRNE5LSkhGZzVUL1Y3dkN5MjJPT05LZmhXWVJxS21yQjhOelhxWm92?=
 =?utf-8?B?OTFpeTEzTVZ2WE9TVURld1lsVWtrSktySS82V2lSbXJEY0hCS3ZSankyR0FJ?=
 =?utf-8?B?Q0h6N1FPRFRKNXJ0YnJuNDZFUThyanRBL1JubTJlZUErZkZxenVCZzBGcmt5?=
 =?utf-8?B?cm9LSjVlclRQTVBqZzVqZThyaTZSTy91MHZYeDFPVEwwd2Z1Q2RwY09CTEJt?=
 =?utf-8?B?VnZGUXRBY0FIVzJqQnJMS0Y1N0hBZzVCQy8zcDNkaVppOEVmQUJ2Y05vUHhT?=
 =?utf-8?B?Sm52bVVCYXpneWFlVENza0JNSER5TG5XVHF3czhCK1NxYVp6aFJCVklURGE2?=
 =?utf-8?B?SUNiamhKdzUrNk52Q2Rnb3draU1YdEZxSWZVMUtoRlBjNzFUb1pvU2lVQ1VR?=
 =?utf-8?B?K0xHdGpQSUlTQTRIMG5WOXlzOGF3M3g2b2xLdWFPbzB2eWJxRmREN1VKUnl6?=
 =?utf-8?B?UXcwbzFGR2ZWcXdrcDl3VE1RS0hHQUliTGJUK3VoWE52bWt6MlRCRjdkeVdM?=
 =?utf-8?B?c21IbEpielMvRllycDMyNXRGZnBoYTJzcmhHZEtzK0xndkNYWTJERUVGRnZI?=
 =?utf-8?B?WFBFZEIxZmVkUndnL29ab1ViY1l6S2UxMElFVUI5dFR4ZXZCaFIyNXM4cXNT?=
 =?utf-8?B?dDFML0Q1M21zeEhUUTlVdElCN1hwc3VBMnh6RFBMWXZFLzhDazVCRjNmM2Vp?=
 =?utf-8?B?Rlp3cGJqM3lDZzhjOVlVWUhJWHY0VnpBMUtPTDIzVGxxb3k2U21FcUdKZ0s2?=
 =?utf-8?B?akpnMWFtYWRjR3Jpdm9zVWg0TVc0WGFYaVJLK2dRbjJyRVdWbUR1Wm5JM215?=
 =?utf-8?B?a2tJLzFabUs3bTZPYU54SUZMbXpKeUl3SWRMWmdrUllBZCtQNTVmejh4RUdu?=
 =?utf-8?B?Q25sNlhiaS9LdjVleHo5dXF0cGcxRnZNelhMdzh4V0pNZENYeWRZNVFSd1d5?=
 =?utf-8?B?L1NWZmRwVld2QkJwazB2eVFOV01Yanc2dWpLR0RERXREeGVVWTBHeFZsS3hE?=
 =?utf-8?B?TzRhUmc5c1BMNm5qS25EOEZQcDBqdlJYbzZOSzkwSUhuUUxpb2lObUFaZ3c5?=
 =?utf-8?B?RHVKUkF5cXozV1VYK20wVDRCM1NKdUpXQllvTzY5MlVEKzF6MzIvS2NEdmU4?=
 =?utf-8?B?aW1HVVd1MmkzZXdKN2NENnozcW4xTzNvN0pGQktnR09VM3VkSGhCTUl3Nkc4?=
 =?utf-8?B?SnBIOWdQUGlNREs4cW1LSm92M09xQWJPd3pIakhUOXJhSGdoVm56cE1seHhi?=
 =?utf-8?B?NzVKa3JrSGM0RUhoS0RxeHlSMmhnaEk1eTdURGpWVjU3MXR5aFZSck5LdW1j?=
 =?utf-8?B?czNCYUx4RFlqUUxOdjhYT2ZmNTZ0Zk1CL2tkVmVxVmd1NGtwV0VOVjUrLzR0?=
 =?utf-8?B?aUwwbzBrYmkyNmxuNjdjcjBlVTNuYStoa1RsNXBTS1VOc3YwSkZVd0svUFp2?=
 =?utf-8?B?OTh1NmswdFNYYmlKTWVrNmFMSzMyaVBCYktBb08wRlNXTzdrc0dZQ205TGxF?=
 =?utf-8?B?clA2Wi9TWmtJa0xoMGpLOURrSVlXVDRTaTUxMkZGM2dBSEZJaEhzUTBTUGhk?=
 =?utf-8?B?NStQNzJVMzZhcnY4THdwQkYyYWtWUGZFM0xPd2RpajRKT3ZVREJHSnBFRWdo?=
 =?utf-8?B?WWNodFY1MWdCSVkrQ3NuSWRLYmRjbzBaUUJwS1p2UnI2S3hIL1R4KzRxc0ly?=
 =?utf-8?B?OUMyOGNKQkFDQkhjd016aTZuSW9OdGlHVllGYUQ0T3Rramp5emp0eU5wTkxM?=
 =?utf-8?B?OW9RdmxZWkFMYjZ4NUY3dFVQUmErNmFaQm02Q04wK0w3dm1sd3BYQi9VeWVk?=
 =?utf-8?B?Qnh5OG43TkY0ZkJ6bnpvTHVBQUlqWVdIRGVRUHlkUDJUMm14TERQa0R3YXVY?=
 =?utf-8?B?bWh1dnJCZ2ZSMSszSGpwbGYwM1F4K2tRNHJaUEJ4eDA3TUppUVhjSjZCRmtN?=
 =?utf-8?B?SXVmbFVlRjExK3pFT2FwZmVKcDBaTXpNcmpxZFhQR3hiL0I1dGY5YTBSVUZW?=
 =?utf-8?B?YjFoYVRtVy9QRXJ4em4xRWpRbkZoYUdUMHJZcEtxT2lrdTA1ZUFsOXVtOUhO?=
 =?utf-8?B?WFhhcW1mZjJTL0ZQL2JxK05GZmhyL0pzckpwVjNHSlphbXJ1QzNGc2FGamJj?=
 =?utf-8?Q?4YwS/RUFEJWqW0C0aRIbv2nWL?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83c63b94-016a-4497-7748-08dc4f1dd987
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 11:54:40.1744 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dY453Y0lNrafZJyWrDfz2ggUd16sG6W0oGUl9VoJA26DT7SzEPSTpaqnMEbyKqG4ZHWGGuF1297a63GyAfOwVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5863
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
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgTWFyY2ggMjcsIDIwMjQgMTE6MTYgUE0NCj4g
VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDA2
LzEzXSBkcm0vaTkxNTogUmVsb2NhdGUgaW50ZWxfbWJ1c19kYm94X3VwZGF0ZSgpDQo+IA0KPiBG
cm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAN
Cj4gaW50ZWxfbWJ1c19kYm94X3VwZGF0ZSgpIHdpbGwgYmVjb21lIHN0YXRpYyBzb29uLiBSZWxv
Y2F0ZSBpdCBpbnRvIGEgcGxhY2UgdGhhdA0KPiBhdm9pZHMgaGF2aW5nIHRvIGFkZCBhIGZvcndh
cmQgZGVjbGFyYXRpb24gZm9yIGl0Lg0KDQpMb29rcyBHb29kIHRvIG1lLg0KUmV2aWV3ZWQtYnk6
IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYyB8IDE2NiArKysr
KysrKystLS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgODMgaW5zZXJ0aW9ucygrKSwgODMg
ZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Nr
bF93YXRlcm1hcmsuYw0KPiBpbmRleCBmNTgyOTkyNTkyYzEuLjZiZDNmZWMwYWE1NiAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gQEAg
LTM1NDAsNiArMzU0MCw4OSBAQCBpbnQgaW50ZWxfZGJ1Zl9pbml0KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1KQ0KPiAgCXJldHVybiAwOw0KPiAgfQ0KPiANCj4gK3N0YXRpYyBib29sIHhl
bHBkcF9pc19vbmx5X3BpcGVfcGVyX2RidWZfYmFuayhlbnVtIHBpcGUgcGlwZSwgdTgNCj4gK2Fj
dGl2ZV9waXBlcykgew0KPiArCXN3aXRjaCAocGlwZSkgew0KPiArCWNhc2UgUElQRV9BOg0KPiAr
CQlyZXR1cm4gIShhY3RpdmVfcGlwZXMgJiBCSVQoUElQRV9EKSk7DQo+ICsJY2FzZSBQSVBFX0Q6
DQo+ICsJCXJldHVybiAhKGFjdGl2ZV9waXBlcyAmIEJJVChQSVBFX0EpKTsNCj4gKwljYXNlIFBJ
UEVfQjoNCj4gKwkJcmV0dXJuICEoYWN0aXZlX3BpcGVzICYgQklUKFBJUEVfQykpOw0KPiArCWNh
c2UgUElQRV9DOg0KPiArCQlyZXR1cm4gIShhY3RpdmVfcGlwZXMgJiBCSVQoUElQRV9CKSk7DQo+
ICsJZGVmYXVsdDogLyogdG8gc3VwcHJlc3MgY29tcGlsZXIgd2FybmluZyAqLw0KPiArCQlNSVNT
SU5HX0NBU0UocGlwZSk7DQo+ICsJCWJyZWFrOw0KPiArCX0NCj4gKw0KPiArCXJldHVybiBmYWxz
ZTsNCj4gK30NCj4gKw0KPiArdm9pZCBpbnRlbF9tYnVzX2Rib3hfdXBkYXRlKHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlKSB7DQo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUgPSB0b19pOTE1KHN0YXRlLT5iYXNlLmRldik7DQo+ICsJY29uc3Qgc3RydWN0IGludGVsX2Ri
dWZfc3RhdGUgKm5ld19kYnVmX3N0YXRlLCAqb2xkX2RidWZfc3RhdGU7DQo+ICsJY29uc3Qgc3Ry
dWN0IGludGVsX2NydGMgKmNydGM7DQo+ICsJdTMyIHZhbCA9IDA7DQo+ICsNCj4gKwlpZiAoRElT
UExBWV9WRVIoaTkxNSkgPCAxMSkNCj4gKwkJcmV0dXJuOw0KPiArDQo+ICsJbmV3X2RidWZfc3Rh
dGUgPSBpbnRlbF9hdG9taWNfZ2V0X25ld19kYnVmX3N0YXRlKHN0YXRlKTsNCj4gKwlvbGRfZGJ1
Zl9zdGF0ZSA9IGludGVsX2F0b21pY19nZXRfb2xkX2RidWZfc3RhdGUoc3RhdGUpOw0KPiArCWlm
ICghbmV3X2RidWZfc3RhdGUgfHwNCj4gKwkgICAgKG5ld19kYnVmX3N0YXRlLT5qb2luZWRfbWJ1
cyA9PSBvbGRfZGJ1Zl9zdGF0ZS0+am9pbmVkX21idXMgJiYNCj4gKwkgICAgIG5ld19kYnVmX3N0
YXRlLT5hY3RpdmVfcGlwZXMgPT0gb2xkX2RidWZfc3RhdGUtPmFjdGl2ZV9waXBlcykpDQo+ICsJ
CXJldHVybjsNCj4gKw0KPiArCWlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAxNCkNCj4gKwkJdmFs
IHw9IE1CVVNfREJPWF9JX0NSRURJVCgyKTsNCj4gKw0KPiArCWlmIChESVNQTEFZX1ZFUihpOTE1
KSA+PSAxMikgew0KPiArCQl2YWwgfD0gTUJVU19EQk9YX0IyQl9UUkFOU0FDVElPTlNfTUFYKDE2
KTsNCj4gKwkJdmFsIHw9IE1CVVNfREJPWF9CMkJfVFJBTlNBQ1RJT05TX0RFTEFZKDEpOw0KPiAr
CQl2YWwgfD0gTUJVU19EQk9YX1JFR1VMQVRFX0IyQl9UUkFOU0FDVElPTlNfRU47DQo+ICsJfQ0K
PiArDQo+ICsJaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDE0KQ0KPiArCQl2YWwgfD0gbmV3X2Ri
dWZfc3RhdGUtPmpvaW5lZF9tYnVzID8NCj4gTUJVU19EQk9YX0FfQ1JFRElUKDEyKSA6DQo+ICsJ
CQkJCQkgICAgIE1CVVNfREJPWF9BX0NSRURJVCg4KTsNCj4gKwllbHNlIGlmIChJU19BTERFUkxB
S0VfUChpOTE1KSkNCj4gKwkJLyogV2FfMjIwMTA5NDczNTg6YWRsLXAgKi8NCj4gKwkJdmFsIHw9
IG5ld19kYnVmX3N0YXRlLT5qb2luZWRfbWJ1cyA/DQo+IE1CVVNfREJPWF9BX0NSRURJVCg2KSA6
DQo+ICsJCQkJCQkgICAgIE1CVVNfREJPWF9BX0NSRURJVCg0KTsNCj4gKwllbHNlDQo+ICsJCXZh
bCB8PSBNQlVTX0RCT1hfQV9DUkVESVQoMik7DQo+ICsNCj4gKwlpZiAoRElTUExBWV9WRVIoaTkx
NSkgPj0gMTQpIHsNCj4gKwkJdmFsIHw9IE1CVVNfREJPWF9CX0NSRURJVCgweEEpOw0KPiArCX0g
ZWxzZSBpZiAoSVNfQUxERVJMQUtFX1AoaTkxNSkpIHsNCj4gKwkJdmFsIHw9IE1CVVNfREJPWF9C
V19DUkVESVQoMik7DQo+ICsJCXZhbCB8PSBNQlVTX0RCT1hfQl9DUkVESVQoOCk7DQo+ICsJfSBl
bHNlIGlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAxMikgew0KPiArCQl2YWwgfD0gTUJVU19EQk9Y
X0JXX0NSRURJVCgyKTsNCj4gKwkJdmFsIHw9IE1CVVNfREJPWF9CX0NSRURJVCgxMik7DQo+ICsJ
fSBlbHNlIHsNCj4gKwkJdmFsIHw9IE1CVVNfREJPWF9CV19DUkVESVQoMSk7DQo+ICsJCXZhbCB8
PSBNQlVTX0RCT1hfQl9DUkVESVQoOCk7DQo+ICsJfQ0KPiArDQo+ICsJZm9yX2VhY2hfaW50ZWxf
Y3J0Y19pbl9waXBlX21hc2soJmk5MTUtPmRybSwgY3J0YywgbmV3X2RidWZfc3RhdGUtDQo+ID5h
Y3RpdmVfcGlwZXMpIHsNCj4gKwkJdTMyIHBpcGVfdmFsID0gdmFsOw0KPiArDQo+ICsJCWlmIChE
SVNQTEFZX1ZFUihpOTE1KSA+PSAxNCkgew0KPiArCQkJaWYgKHhlbHBkcF9pc19vbmx5X3BpcGVf
cGVyX2RidWZfYmFuayhjcnRjLT5waXBlLA0KPiArCQkJCQkJCSAgICAgIG5ld19kYnVmX3N0YXRl
LQ0KPiA+YWN0aXZlX3BpcGVzKSkNCj4gKwkJCQlwaXBlX3ZhbCB8PSBNQlVTX0RCT1hfQldfOENS
RURJVFNfTVRMOw0KPiArCQkJZWxzZQ0KPiArCQkJCXBpcGVfdmFsIHw9IE1CVVNfREJPWF9CV180
Q1JFRElUU19NVEw7DQo+ICsJCX0NCj4gKw0KPiArCQlpbnRlbF9kZV93cml0ZShpOTE1LCBQSVBF
X01CVVNfREJPWF9DVEwoY3J0Yy0+cGlwZSksDQo+IHBpcGVfdmFsKTsNCj4gKwl9DQo+ICt9DQo+
ICsNCj4gIGludCBpbnRlbF9kYnVmX3N0YXRlX3NldF9tZGNsa19jZGNsa19yYXRpbyhzdHJ1Y3Qg
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwgdTgNCj4gcmF0aW8pICB7DQo+ICAJc3RydWN0IGlu
dGVsX2RidWZfc3RhdGUgKmRidWZfc3RhdGU7DQo+IEBAIC0zNjU3LDg5ICszNzQwLDYgQEAgdm9p
ZCBpbnRlbF9kYnVmX3Bvc3RfcGxhbmVfdXBkYXRlKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3Rh
dGUgKnN0YXRlKQ0KPiAgCQkJCW5ld19kYnVmX3N0YXRlLT5lbmFibGVkX3NsaWNlcyk7DQo+ICB9
DQo+IA0KPiAtc3RhdGljIGJvb2wgeGVscGRwX2lzX29ubHlfcGlwZV9wZXJfZGJ1Zl9iYW5rKGVu
dW0gcGlwZSBwaXBlLCB1OA0KPiBhY3RpdmVfcGlwZXMpIC17DQo+IC0Jc3dpdGNoIChwaXBlKSB7
DQo+IC0JY2FzZSBQSVBFX0E6DQo+IC0JCXJldHVybiAhKGFjdGl2ZV9waXBlcyAmIEJJVChQSVBF
X0QpKTsNCj4gLQljYXNlIFBJUEVfRDoNCj4gLQkJcmV0dXJuICEoYWN0aXZlX3BpcGVzICYgQklU
KFBJUEVfQSkpOw0KPiAtCWNhc2UgUElQRV9COg0KPiAtCQlyZXR1cm4gIShhY3RpdmVfcGlwZXMg
JiBCSVQoUElQRV9DKSk7DQo+IC0JY2FzZSBQSVBFX0M6DQo+IC0JCXJldHVybiAhKGFjdGl2ZV9w
aXBlcyAmIEJJVChQSVBFX0IpKTsNCj4gLQlkZWZhdWx0OiAvKiB0byBzdXBwcmVzcyBjb21waWxl
ciB3YXJuaW5nICovDQo+IC0JCU1JU1NJTkdfQ0FTRShwaXBlKTsNCj4gLQkJYnJlYWs7DQo+IC0J
fQ0KPiAtDQo+IC0JcmV0dXJuIGZhbHNlOw0KPiAtfQ0KPiAtDQo+IC12b2lkIGludGVsX21idXNf
ZGJveF91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpIC17DQo+IC0Jc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KHN0YXRlLT5iYXNlLmRldik7DQo+
IC0JY29uc3Qgc3RydWN0IGludGVsX2RidWZfc3RhdGUgKm5ld19kYnVmX3N0YXRlLCAqb2xkX2Ri
dWZfc3RhdGU7DQo+IC0JY29uc3Qgc3RydWN0IGludGVsX2NydGMgKmNydGM7DQo+IC0JdTMyIHZh
bCA9IDA7DQo+IC0NCj4gLQlpZiAoRElTUExBWV9WRVIoaTkxNSkgPCAxMSkNCj4gLQkJcmV0dXJu
Ow0KPiAtDQo+IC0JbmV3X2RidWZfc3RhdGUgPSBpbnRlbF9hdG9taWNfZ2V0X25ld19kYnVmX3N0
YXRlKHN0YXRlKTsNCj4gLQlvbGRfZGJ1Zl9zdGF0ZSA9IGludGVsX2F0b21pY19nZXRfb2xkX2Ri
dWZfc3RhdGUoc3RhdGUpOw0KPiAtCWlmICghbmV3X2RidWZfc3RhdGUgfHwNCj4gLQkgICAgKG5l
d19kYnVmX3N0YXRlLT5qb2luZWRfbWJ1cyA9PSBvbGRfZGJ1Zl9zdGF0ZS0+am9pbmVkX21idXMg
JiYNCj4gLQkgICAgIG5ld19kYnVmX3N0YXRlLT5hY3RpdmVfcGlwZXMgPT0gb2xkX2RidWZfc3Rh
dGUtPmFjdGl2ZV9waXBlcykpDQo+IC0JCXJldHVybjsNCj4gLQ0KPiAtCWlmIChESVNQTEFZX1ZF
UihpOTE1KSA+PSAxNCkNCj4gLQkJdmFsIHw9IE1CVVNfREJPWF9JX0NSRURJVCgyKTsNCj4gLQ0K
PiAtCWlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAxMikgew0KPiAtCQl2YWwgfD0gTUJVU19EQk9Y
X0IyQl9UUkFOU0FDVElPTlNfTUFYKDE2KTsNCj4gLQkJdmFsIHw9IE1CVVNfREJPWF9CMkJfVFJB
TlNBQ1RJT05TX0RFTEFZKDEpOw0KPiAtCQl2YWwgfD0gTUJVU19EQk9YX1JFR1VMQVRFX0IyQl9U
UkFOU0FDVElPTlNfRU47DQo+IC0JfQ0KPiAtDQo+IC0JaWYgKERJU1BMQVlfVkVSKGk5MTUpID49
IDE0KQ0KPiAtCQl2YWwgfD0gbmV3X2RidWZfc3RhdGUtPmpvaW5lZF9tYnVzID8NCj4gTUJVU19E
Qk9YX0FfQ1JFRElUKDEyKSA6DQo+IC0JCQkJCQkgICAgIE1CVVNfREJPWF9BX0NSRURJVCg4KTsN
Cj4gLQllbHNlIGlmIChJU19BTERFUkxBS0VfUChpOTE1KSkNCj4gLQkJLyogV2FfMjIwMTA5NDcz
NTg6YWRsLXAgKi8NCj4gLQkJdmFsIHw9IG5ld19kYnVmX3N0YXRlLT5qb2luZWRfbWJ1cyA/DQo+
IE1CVVNfREJPWF9BX0NSRURJVCg2KSA6DQo+IC0JCQkJCQkgICAgIE1CVVNfREJPWF9BX0NSRURJ
VCg0KTsNCj4gLQllbHNlDQo+IC0JCXZhbCB8PSBNQlVTX0RCT1hfQV9DUkVESVQoMik7DQo+IC0N
Cj4gLQlpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0gMTQpIHsNCj4gLQkJdmFsIHw9IE1CVVNfREJP
WF9CX0NSRURJVCgweEEpOw0KPiAtCX0gZWxzZSBpZiAoSVNfQUxERVJMQUtFX1AoaTkxNSkpIHsN
Cj4gLQkJdmFsIHw9IE1CVVNfREJPWF9CV19DUkVESVQoMik7DQo+IC0JCXZhbCB8PSBNQlVTX0RC
T1hfQl9DUkVESVQoOCk7DQo+IC0JfSBlbHNlIGlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAxMikg
ew0KPiAtCQl2YWwgfD0gTUJVU19EQk9YX0JXX0NSRURJVCgyKTsNCj4gLQkJdmFsIHw9IE1CVVNf
REJPWF9CX0NSRURJVCgxMik7DQo+IC0JfSBlbHNlIHsNCj4gLQkJdmFsIHw9IE1CVVNfREJPWF9C
V19DUkVESVQoMSk7DQo+IC0JCXZhbCB8PSBNQlVTX0RCT1hfQl9DUkVESVQoOCk7DQo+IC0JfQ0K
PiAtDQo+IC0JZm9yX2VhY2hfaW50ZWxfY3J0Y19pbl9waXBlX21hc2soJmk5MTUtPmRybSwgY3J0
YywgbmV3X2RidWZfc3RhdGUtDQo+ID5hY3RpdmVfcGlwZXMpIHsNCj4gLQkJdTMyIHBpcGVfdmFs
ID0gdmFsOw0KPiAtDQo+IC0JCWlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAxNCkgew0KPiAtCQkJ
aWYgKHhlbHBkcF9pc19vbmx5X3BpcGVfcGVyX2RidWZfYmFuayhjcnRjLT5waXBlLA0KPiAtCQkJ
CQkJCSAgICAgIG5ld19kYnVmX3N0YXRlLQ0KPiA+YWN0aXZlX3BpcGVzKSkNCj4gLQkJCQlwaXBl
X3ZhbCB8PSBNQlVTX0RCT1hfQldfOENSRURJVFNfTVRMOw0KPiAtCQkJZWxzZQ0KPiAtCQkJCXBp
cGVfdmFsIHw9IE1CVVNfREJPWF9CV180Q1JFRElUU19NVEw7DQo+IC0JCX0NCj4gLQ0KPiAtCQlp
bnRlbF9kZV93cml0ZShpOTE1LCBQSVBFX01CVVNfREJPWF9DVEwoY3J0Yy0+cGlwZSksDQo+IHBp
cGVfdmFsKTsNCj4gLQl9DQo+IC19DQo+IC0NCj4gIHN0YXRpYyBpbnQgc2tsX3dhdGVybWFya19p
cGNfc3RhdHVzX3Nob3coc3RydWN0IHNlcV9maWxlICptLCB2b2lkICpkYXRhKSAgew0KPiAgCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gbS0+cHJpdmF0ZTsNCj4gLS0NCj4gMi40My4y
DQoNCg==
