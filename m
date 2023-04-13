Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 111B36E1377
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 19:26:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D1F010E568;
	Thu, 13 Apr 2023 17:26:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04DA010E568
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 17:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681406765; x=1712942765;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BdXDvwksUuD4+YkscC6CynuPR5GWOENseDlnGibtLFc=;
 b=ObBRz1JYljnAxJVHEEiPMrjboqOmAjsg+Zxpfkd6wT0fhQhv0hLWOeca
 i+nk+KlZr5OFZNDgnAw1BAO0BiDLR44E6IBSO4USbmkcRy743WvI3ku2V
 123K74OGCc4Y5f4ZOlX39EobyuF5eJn1vI078XzfzUtD4B++OzrJUqlqr
 3m+PfTBXLCeVaUnZaymGTt36AAQGDmhBYQRsMuyl7xiZw4snZ2mKuQxxf
 6eiz15AXwqnIseoaQWpcuaU0nXE/KtbBLVo3aXdG9FO64+o5ucaPTZHEM
 RBQlH/0FVXWWjscCXz1gu6oqcCtOaFrsQD4FzO1dvEQorsuP/QqPTwHKx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="372106398"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="372106398"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 10:26:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="813536233"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="813536233"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 13 Apr 2023 10:26:03 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 13 Apr 2023 10:26:03 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 13 Apr 2023 10:26:02 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 13 Apr 2023 10:26:02 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 13 Apr 2023 10:26:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lb19+PZYtDi0SSEvEPAYxSK2aneG4c4taSRE+k8FbcTDw+HVDS+enZG0wiuxIfN4GVnkE8QJQivkZZXD+8niydmjVMmwgPRp+TlZcLd1GdbQqzBdbeT1snjXApFVp357WUyFUC9plyXOe2sKODXQZ4VsEOUns0NRsvL9RbyGPjY2IRPjN+xuBQn0o2KTYdgbW9jGb6+aKxNYLf8D5Y6j78pV/6RehiJebTRrZEUC6S73A9lbDfjwidhhlGDNlqb9rQ4cCGHRBV1OxfSiIwxjg8K11zWVCGWNeaHozvS36auw69Wo2pzXmgoZbS2oIaR1lSF5tav8NiUMKAncCfBW0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BdXDvwksUuD4+YkscC6CynuPR5GWOENseDlnGibtLFc=;
 b=L/XRj8i0MpgHVjy+MtIMSxn+S0rB+ony2A4e36+jOuFlC4vAuFQYuXRG+BSJH7r7mk/o9gsDLzPQYGaVAPfBzcVjpT76Q2JOE6MqR305DVWoM9g6J3FRo+QLD3ImDZtPkPKHZGZqiRaZ3J5HjBZkIRZz+A4flWGYoScw/SFRTexUggeDSgxh75oLXyjXljwZIF/XMoSRudEtmJZbYEP53kDRVknJriKHYyWEDF1ihepnwlXdkP6kHYnhtDcWqwmAI5TUtwDq2sUXsuTupDIFicH6f/HiFKtaxQUD7idoZd5cLqyfb64pKDn9uf0t2KNtab5FA+xITJArqpFx4PqG2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1935.namprd11.prod.outlook.com (2603:10b6:300:10c::20)
 by MN6PR11MB8196.namprd11.prod.outlook.com (2603:10b6:208:47b::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Thu, 13 Apr
 2023 17:25:58 +0000
Received: from MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::47e0:df10:25c7:ce5f]) by MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::47e0:df10:25c7:ce5f%7]) with mapi id 15.20.6298.030; Thu, 13 Apr 2023
 17:25:58 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/3] drm/i915: Use min() instead of hand
 rolling it
Thread-Index: AQHZZx6VrhelzcN4HEKu/xRyNyz98K8pi6EA
Date: Thu, 13 Apr 2023 17:25:58 +0000
Message-ID: <MWHPR11MB1935E877F412C6071B12EB3BB2989@MWHPR11MB1935.namprd11.prod.outlook.com>
References: <20230404175431.23064-1-ville.syrjala@linux.intel.com>
 <20230404175431.23064-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20230404175431.23064-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1935:EE_|MN6PR11MB8196:EE_
x-ms-office365-filtering-correlation-id: b0f28ccb-29df-4cb7-e12f-08db3c442545
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mQgg+TWkjGZFdORXp5siBXVcIFrcRsZM/xWXfpHB4izSFaFJqV8Yc7fu7GONvGn11aGPcUsH2dSh6qVIQQWaJ8innwpd6GcgVuwvOA9p4BiDoJ5tUvmtp4MnSpTHkBA4/RlRWCrcEJkyWEVeV34rmtt70ROUk/QzgS5aTqfVgI8XCozFToYZyPMvNqqxig8Bb7aMtWTZyI++V+iwf66aG7/kOj2g7DPZ7k6G47MxZFycu04Vk+ToKbzH/mfgblglf4/xx+qu2szR2DnOnU8tyqLZg3S4qJy9NDo1JeX/cS/uJlF73ZOkillqroyta6hsXQLopEdNzpQN/k3ZwskMS7dP1YhFJYFZkPEmcHwMTc4qoFYeULnQY2DjfHgJit6s9nZo+1hUYtWuIJ6ylwBsv5NAzDqKrDW6M5VkvKFb3KTOgph+hgjTCdDOjHOrXIlTR1iVpAOfP83PcP2gq6P4lnPXgoGTULBBbQJLDs2rx9u0n1ZDzdKCApcGW5j5vlV9REZd0lH+ut7jiRThmeRawO/5L6mOsxMx+pPHWGR2p6VjgrxAN0NAYw6SOLc2h4zU916cmsMyOPB/LM3ZNwPEOmnTsf3bMypRmjfPGLDXxqy820FcXa54krKbQ7l+vXM2
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1935.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(366004)(346002)(376002)(39860400002)(451199021)(33656002)(76116006)(83380400001)(26005)(71200400001)(478600001)(186003)(9686003)(55236004)(53546011)(7696005)(6506007)(52536014)(2906002)(38100700002)(38070700005)(122000001)(4326008)(66476007)(66556008)(66946007)(6916009)(82960400001)(41300700001)(66446008)(55016003)(8936002)(86362001)(64756008)(5660300002)(8676002)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cDBsYXk3VmwvS2hzYlhMSk5TOGI1bTRFRyt1TklJanJ0b05CbXg4QVhOb3Zt?=
 =?utf-8?B?ZnhlWnJKYnVsMWovbHNQVUZyTHlocTQrUjFtbUI0TnQ5MURGUjY4VkdTRzhL?=
 =?utf-8?B?OXdFdkNQNmpNNFlLdzhBV3dKNDNPNjQzbVRxR1h6V0kyVnJUNEQxWWpLVkkx?=
 =?utf-8?B?YmpUVDNLZzdxWmlyWEx5Q2xBeVVoNWhRQ2ttNUZqaUIzNzBEZEtDQTEwZ3pL?=
 =?utf-8?B?UEVLZzF4NGtqWnd4OVJPdHp3UDQ0SThzNlJ0MHBkTGMwT0pZVVlENWp2bHU4?=
 =?utf-8?B?Sm1SRkNZOUQxTmk0SWNGbDQxNHpuZ1Z4N0U3ekRITkVPZE5TTDEreWtNSkhY?=
 =?utf-8?B?UElFZDNrNlVQSjBXQjN4aWtHOHd5cVN1amkvWjdFZUs3SWNrZW95Q3lUVjhl?=
 =?utf-8?B?VHZ1eFU0bkVOQllHU3NFb0F6QkYrVkw0c2NWb0dYTmJlZTlyMUJ1WmlBWktK?=
 =?utf-8?B?TFBGNnhWNFplZWtLdi9EZy9JUEl5U1dCQnhTbk5aT0tJV29vZFMxdERYYmRD?=
 =?utf-8?B?Wk9oZG1OcEh0UWtiZDBWTmJWV2RiQWhNczZ0OFg5aGVNa0toRnlqL0F1NEcv?=
 =?utf-8?B?SEZVZDR5UnYvNFlBK2tDTkJmVEJIdm1ISVpUN1U2SGdlUXJtakJJQlJyNXRO?=
 =?utf-8?B?YlZKU1ROQUNCUXBiVzFSbGg4ZHJvWjNIM0ZNMko2eFM0MVRyM25aWnRJb3Q0?=
 =?utf-8?B?bm1sV0UxUlgyeWZQekFEeWdxcjNSd3ZVUmdXT3laNmNMd3lvYjNsVVBxeXVH?=
 =?utf-8?B?ak5pazEraEVoWUNrd1VUNmljaTNJa1U3SlVGOEhObDRGb29YT0xXWTNaN3lR?=
 =?utf-8?B?M0RuNVRYR2paREhZRU15bGZEd2lUVFlKWWxlVmVRNG1RTUZMRWs4NkZxTng3?=
 =?utf-8?B?d1NyVkhwZXlVM1IrN25MdWlsUS9acTR5YnhxemU0Z1JKSGZ3RVZRa1Z1Vzhu?=
 =?utf-8?B?ZWZ4S05MaCtkVmhvbTQwOFVkNVd0YkgvMXgvRjllVHJncklERDBZamNzeW9n?=
 =?utf-8?B?TWlrZmdXWkt5YWNTajBKb21pdk9wRzdpQVluUlFzWEdPcWhJOXFZMnBNL3lo?=
 =?utf-8?B?WXQ3VTcyOE83S3RaalBqRmJKUWZDQ21YeldRbFRlK1JaNm5VQ3NmQzUwbVFu?=
 =?utf-8?B?WGpGN3lWY09pQkR0bEhlRmxRT3Q5NlFxYTFaV294eHNlOVltZENVem1VRUtF?=
 =?utf-8?B?c05lczJRV0xIYU5BSSt0VDMvZnQ5c3hKR0FGN2NFNWFSWWh2K3FPMkszUmxB?=
 =?utf-8?B?dXhjUmVLSlJVcmEveGlNNDVlaEpiemJqR2JYNXZvaGVZZlBuYWI5NHI5UzRP?=
 =?utf-8?B?QWRQdStYNEFZWG1Ma2xSUFdCN21oZTMvem9mTVpabTJjZTlQL0VDNjRpTENp?=
 =?utf-8?B?dnVka3YvcWgxYlZlQWdQdGZtTTUrMnhweXZvWTZZbm9WaGVIUnozTVRyRWdz?=
 =?utf-8?B?RkYzUU95NG5yY25Cc3VMNll5VGhIZmZ0c0dXU1poeUNlV0ExU1lYalFhWFF1?=
 =?utf-8?B?akc0VGtGY0JaVG44a0dQUUczZjBUR0ZLYzdpV1Fhd3JtZ01CUWJjYTcrTUFi?=
 =?utf-8?B?TXM3Uld0b1VGa2MvTmRSd2hpV2F3QmQxTjFCWmVkNVlXbVFhcE9KUHFBUHVL?=
 =?utf-8?B?aGoyanlXVWo2UEMzTlJDazFQK2IvRGlBUWx2K0JGS0dJdWk5QXlmVU1yb2hu?=
 =?utf-8?B?YjJKSkVXMlJSaG8rbG9lSndNUWZDRE12WWZuaVRYRzBweEMwUmdQR1FqRHdT?=
 =?utf-8?B?ZFFyQTAzZDRJVHJkbXhOUWFRNFRyb0FuODdDd2l4UnAxTjdSWFhtQ2ptS0NM?=
 =?utf-8?B?YkJzdW13UUhRZmQ0QzFsRjhNZGJ2ZWE1cURmaGwrbWNYNkhCcUxKcWlYVFhL?=
 =?utf-8?B?WnQ0Q0RKYkZramtxd0VMRHRubXE3Y0dOdFQ2emZFQkFyckNWNVRoajJQdGFJ?=
 =?utf-8?B?NFJUZklHUG9zMkIrWXVWUEJhUFpnUVBSdDVxVXhxKysyRTlsczhUdFBUV3Nl?=
 =?utf-8?B?Y1l3VU01eVVxbW1kUHVFblJQcU9Oc1A1Wk5tQ0NlbG9wMk15dDVaZ1p1aFBQ?=
 =?utf-8?B?c09LYTQzYmQzREFZQVBSRnBBclpYNndpcmIxejJFVWtJdWtmcjRHTEIwSFl4?=
 =?utf-8?B?dlJpOVdTNXQ0SU9UMGd1bzRzeE92U0lYRXJzQjBuTm12eUpnQUwxMC9VU0RG?=
 =?utf-8?Q?NMQ0gf/WurhClnI9x1S7r5w=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1935.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0f28ccb-29df-4cb7-e12f-08db3c442545
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2023 17:25:58.3635 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gfQqaxgjjb5VBlUeDzeagJ0BFIx0Bu8d+ZKJ+0T7XsW5u5v8c4xvWr+/v0rfNXtASElXOsY0VIrs4vgSq+3oZBuKq+458wBybSf8RGAmNF6DyOMo/YToP+gzDzmUrQ7M
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8196
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Use min() instead of hand
 rolling it
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

SGkgVmlsbGUNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1n
ZnggPGludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9m
IFZpbGxlDQo+IFN5cmphbGENCj4gU2VudDogMDQgQXByaWwgMjAyMyAyMzoyNQ0KPiBUbzogaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFU
Q0ggMy8zXSBkcm0vaTkxNTogVXNlIG1pbigpIGluc3RlYWQgb2YgaGFuZCByb2xsaW5nIGl0DQo+
IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pg0KPiANCj4gTW9zdCBwbGFjZXMgaW4gdGhlIHZibGFuayBjb2RlIHVzZSBtaW4oKSB0byBjbGFt
cCBzY2FubGluZSBjb3VudGVycyBiZWxvdw0KPiB2dG90YWwuIEJ1dCB3ZSBtaXNzZWQgb25lIGlu
IHRoZSBnZW4zLzQgcGl4ZWwgY291bnRlciBiYXNlZCBjb2RlcGF0aC4NCj4gDQo+IFNpZ25lZC1v
ZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+
IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YmxhbmsuYyB8IDMg
Ky0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92Ymxh
bmsuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMNCj4g
aW5kZXggZjhiZjk4MTA1MjdkLi4xMzYzOTNkOTkyOTggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YmxhbmsuYw0KPiBAQCAtMzQwLDggKzM0MCw3IEBAIHN0
YXRpYyBib29sIGk5MTVfZ2V0X2NydGNfc2Nhbm91dHBvcyhzdHJ1Y3QgZHJtX2NydGMNCj4gKl9j
cnRjLA0KPiAgCQkgKiBtYXRjaGVzIGhvdyB0aGUgc2NhbmxpbmUgY291bnRlciBiYXNlZCBwb3Np
dGlvbiB3b3Jrcw0KPiBzaW5jZQ0KPiAgCQkgKiB0aGUgc2NhbmxpbmUgY291bnRlciBkb2Vzbid0
IGNvdW50IHRoZSB0d28gaGFsZiBsaW5lcy4NCj4gIAkJICovDQo+IC0JCWlmIChwb3NpdGlvbiA+
PSB2dG90YWwpDQo+IC0JCQlwb3NpdGlvbiA9IHZ0b3RhbCAtIDE7DQo+ICsJCXBvc2l0aW9uID0g
bWluKHBvc2l0aW9uLCB2dG90YWwgLSAxKTsNCg0KY2hhbmdlcyBMR1RNLiANClRoYW5rcw0KIA0K
UmV2aWV3ZWQtYnk6IE1pdHVsIEdvbGFuaSA8bWl0dWxrdW1hci5haml0a3VtYXIuZ29sYW5pQGlu
dGVsLmNvbT4NCg0KPiANCj4gIAkJLyoNCj4gIAkJICogU3RhcnQgb2YgdmJsYW5rIGludGVycnVw
dCBpcyB0cmlnZ2VyZWQgYXQgc3RhcnQgb2YgaHN5bmMsDQo+IC0tDQo+IDIuMzkuMg0KDQo=
