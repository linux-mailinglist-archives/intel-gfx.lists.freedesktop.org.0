Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5ED4F42D0
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 23:51:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35A9210EEFA;
	Tue,  5 Apr 2022 21:51:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A70C10EEFA
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 21:51:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649195498; x=1680731498;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=kkRo20mcTC25kArYnletnzIHkvKG6pAmsjqWXaJ5P1k=;
 b=ZDpKl3S2BXOhKQZrzEzxj40/GWoBxLTq4yRAZYdRyjks1pVZqgDYNe1R
 ybJUIRKa3sjAR0EMAWggCJ6ch5pDrochH5ov2zQspWI7FyhL3YmAvNVU2
 meBsxTWlFHAqTECpIjlM1+KFTl+aTmfkvQQFrH8x541/TShBDmZqW0Ga/
 KWHPvfJeh0gVD7NoG+VXlG6yA1Epngpa0Jse8ji86S39fsHa8GWwXLQg5
 NBod2sgtUeYl4p6nMj+B/hxYEKRUi7ctuaz4/3PCiBKoLoehfhnpM0jnu
 3dup0QpkuJ8kjt9Tin0UUWlOOIeulQCmDIvW2MQOaArKpDSaJ0tQr7sdx A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="260865281"
X-IronPort-AV: E=Sophos;i="5.90,238,1643702400"; d="scan'208";a="260865281"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 14:51:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,238,1643702400"; d="scan'208";a="722229097"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga005.jf.intel.com with ESMTP; 05 Apr 2022 14:51:38 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Apr 2022 14:51:37 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Apr 2022 14:51:37 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 5 Apr 2022 14:51:37 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 5 Apr 2022 14:51:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aSZzCWHNCJEYtiJ9mtmWji5awDcLwO8P2/pOhtc6vpmG2AZeLNGQGpzNqTxUwuE4iIrsbtjdEtygBe+V8OmoTeUmpi6mhJcOf6lr3XwqSKEOV8JDT0e4jaRclkyGFY1hgV0kBqeQIK6umWCqymg6kyyhDlSQ8DSJ/k5tNGiZO5i3mCbl49A7fgiHaBT4vsr6QCWJlEJSc/swPs2OLaaVTTeZyLLkrOwcmfepeDz7KcFD2AEeBMhjN8rLUCeoc0JEGIfRxJBhUrOqWjQb9v19ucMEckb3FzI7wKDKOYYFD386QDbsxu5xICwoORTBFoz/JahRGUlYgJw5Qm4lzB7gsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kkRo20mcTC25kArYnletnzIHkvKG6pAmsjqWXaJ5P1k=;
 b=ZdeXm7Xf8WV2vzSsfzNRjf4MnP5yKEGZfNv4UuJesvAR2wubf+WrzdRZ4ncluwX0jFPHMzQBT3TzuOR7ywYuhPMW2vEmf1yoTZt3I6NXC7FffpFYU+q0MIZGRMSS6EG63dn5k5QSGn9z9JCXr/NHPDNJ3KCtAZxJ2liqUHQ/FMP9sDo/KGxU2RQObrlIGto6SrqvVXJibT6D1hc2wzlAGhM4h40wDzSYb0sDzjgkOxbmkrLL84316l/Nmi76UyYXasUtfpS9wBQI9I5ZhhMsr0zSEl2Fc2Kvcv5YpJkgpXJjoruDQcPzvgolzv5JXAIONWqkc3YQfaLaoOBEK4l/7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by BYAPR11MB3637.namprd11.prod.outlook.com (2603:10b6:a03:f9::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.31; Tue, 5 Apr
 2022 21:51:29 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::ddc3:c37d:9541:9b7c]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::ddc3:c37d:9541:9b7c%7]) with mapi id 15.20.5123.031; Tue, 5 Apr 2022
 21:51:29 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Fix skl_pcode_try_request function
Thread-Index: AQHYSNmZp1g4zlUZC0ugQ5TdFdIzQKzh3JeA
Date: Tue, 5 Apr 2022 21:51:29 +0000
Message-ID: <9436bf0c9b30a5d69a4d3a5cb23304b2f2ed1c5c.camel@intel.com>
References: <20220405104114.20780-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20220405104114.20780-1-stanislav.lisovskiy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f30cdf18-5cf5-43b0-967c-08da174e7115
x-ms-traffictypediagnostic: BYAPR11MB3637:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BYAPR11MB36376B6F0973DD1ABF1CAC45F6E49@BYAPR11MB3637.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0yIvFRo+5EEuLsclCWMjuUUggGlD+KgUaNJralh3W+vjq1/EzIRQI3vKvKV6eA8ZErs3IHG502ShoE7fXnDIRdKgVIH4acCKT/ueu8sDN+8eC/tA1UToMFNUG+SLVw3T8Lw84U2GY5RpgaSFbm0sNQlbw6OLw2bad1hgynpKUvPM9GxLhrEx9ATD3Df++iSJL5yjtdMsTvAln+H1elL7BHmkxAIBNJyDzN5RrVtrPUzlljwdMBkKiGMfjKcDeQMAIJV/pEDj9Sx5ulApEkUeoMS7ZJQKaurMV7wkeWBRQxZ9DLhJtZ/8TuKPyZ5g8+52kb4SytsXHchuiVSC7126WjFgc8JTBEpwhsiyNCjxkTSse/WiA5rAaN0bp91U2LUowOWNjmdjmo4M+p0E+Fn4NobtkCYqBkD58n7a79Yb/dUY6/YDPc5CVVQ0nLbUuoexpQqhN5XGLRvYJc3x81pDSfrkMa5SmjAha8CTPOdc6n9IEVG+ZTW3NeVhoEMedX7vBphtMORJlxO70m7nhjvGtvsWHRsINfrlHwJ0GU2Ndkvw35r2ASDzr7AVL63KEg4M3hWhQf2DktNKaqTwe0tr9/WHM2R9g7baTkyr5QWBRukUfeadcMWKyGgCUnCX5dw39sKpljHHiRR9iijH1cQWRWgBL5LAGA4tB/934t/cb8vc1tngLtZDi6XwjuZl+9x3kG/zpPOXUszcVM0yxKi62w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(8936002)(2906002)(5660300002)(83380400001)(86362001)(26005)(2616005)(186003)(36756003)(38070700005)(71200400001)(8676002)(316002)(82960400001)(38100700002)(508600001)(122000001)(6486002)(64756008)(66476007)(91956017)(110136005)(66446008)(76116006)(66556008)(66946007)(6512007)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZTN2V1NRK1RPQWhVQjY5RWpEU05qQ0NYOTVqSlEybG5sZGNjczNWRHdMMHpo?=
 =?utf-8?B?TTA2aGlneFViZTVJUjR2N1ZVUWRGVHhrMTQwdjc1Z0RJSDFtcWtselgyUzdn?=
 =?utf-8?B?SUUrVTJtTlQ5L09LT2ZtQXJSS1o2dkdqWUZvcXRhTFZsSnc1V0ZmTFpZOHI5?=
 =?utf-8?B?a2FxbGo0Z0F5alRGQWhMNDFSRjV6bGloZkxxMkk5RitzRGl2c25YNkxCVGFi?=
 =?utf-8?B?bkZ3c2p1OHk4SnJHaDRWQkt4amljQStCbkh5K0hDU3d1dlVXVFdZcitqVGIy?=
 =?utf-8?B?elZQTUVvc1lPcFMrb0xqbktpYWkyRzNrY0RQdncrZWdjQWJNTGJwZ09mdmhJ?=
 =?utf-8?B?cStKVjA4UEVTeXgrck9DRkhnSU9DaGtIM0Z0UzhIeW83UFhCbWFPZmtsRTNZ?=
 =?utf-8?B?bUU3dUw4OVBOMkkwV1RCbWt0dVdrNHJIYStQc2J5SmhqZEhWQWN3Zi9XNFN0?=
 =?utf-8?B?a3d2cGpTMVpsSUhNNDBmQUM0VHo2a3NVKzJSckNnS2JPaEFLVENQZlhsQk41?=
 =?utf-8?B?N0hWam1DNUdCaHlIQXpqZVNrbFJyYWlCVWhlcUNkalZBNkpkR0Y4Zi82UWpa?=
 =?utf-8?B?ai9nTUhPbWhXWnNtNFJQSzE0R2Q0Q3RkWnNKS2V6aDMwQTc2MThTcVFhS08v?=
 =?utf-8?B?b3BzeXYrMUdTNmxRNkk3MG9kSktRTUFURE1zTThmK21VR0NwcnhrVDQyTUgx?=
 =?utf-8?B?Y0tyRnp4dmpmZ1R4RTNCUVdCNENzdlY1dmZ6by9WUGlabUcyMWV3Znl3RnVS?=
 =?utf-8?B?ZEU2eVU2T0VXWVZaNDFKckRraDZZY1gzZG9JM0Z3T2lPY2tDUHJISmJHWkZQ?=
 =?utf-8?B?eE9XWHNFbUovK3NwVGdJb3pIaEZwd2dxWGh0ZUdKQ2d4L3B0L1RlODJpZlFQ?=
 =?utf-8?B?SDFFcFFLcmhabDZ1QXBaS21tbUhObURhRFZhbmxiNTlMeTF2V1U0alozb0c2?=
 =?utf-8?B?SE1JWnRDallqdm1EeTFTa0psUXkvODVOVGx5U0E2dGFKaTJyWHlKVkZqalNm?=
 =?utf-8?B?OURBbE8xaEN3dGt3SU9MV0t4SkZ4bGlYZGVQRFFEYVpOd0gwd1paU1ZwaWd0?=
 =?utf-8?B?VFh1aG9QMkNLTjVlekxpVS9Fb0hZajV5Wmc2Y2VkcjJHcHE2eXZjbUZtR2lT?=
 =?utf-8?B?Ym1FZ0MzaDI0VU94S0pSSWpWQmtKR2xaYXlRQ2xWeW5HNXNMVGJBWXhXZU8w?=
 =?utf-8?B?SzMxVDFEWXlONm5GeVkvblplZ3l3cTZkanBtTE1WRVZJcElha1R6T1V1U3Ar?=
 =?utf-8?B?ZlZ6Z3h4b0VhSHBHVzdSVFpDdVZVVGZOR0wvaEZPd0I2YUNNQ2hRS0pGTDdC?=
 =?utf-8?B?a3FwUjlNYmFYZEVtTzRpeWlQZXNMbFpXYTVxUkRxMHA4engxdEhjdnc2cGd4?=
 =?utf-8?B?NGRteEF5NStQS2V3amhFQWkwbFpaSk5ZUmFpT1pIL1pJaVVrT2szdncxS2Ew?=
 =?utf-8?B?aC8ySjFqZ1hrbElUT0RueVM2aGNiZlgvTUhSVFJZN2FnSklVSFJyL1lHbjFB?=
 =?utf-8?B?MEpGSlcvR1ZPUFN4N3FJaHhxWTdrcnVVanlKcVdjMWRNTmZDTGR1bUsvMG1x?=
 =?utf-8?B?VXFidE1vYU9DSFZITFAyWDBLNFIvRGczbHdRSXhKbHJUVUJJUkRsWWVhRnVr?=
 =?utf-8?B?akNIOFpTUWhHM05sb0IzVTl4bG5lNTUyR2MxTTh3YjUxd09HZ29rSWpEQThk?=
 =?utf-8?B?U3pHUlVsSDZ4ODRhd29QbnBaNjhGQk03SityS21TdFBJaHJUcXY4S0oyblVh?=
 =?utf-8?B?QUQ4OXFGZnhqRDhBUm92cTZnWEs1UlNFTEFJODZtTnNTOGxVQUpmOWtTMFVP?=
 =?utf-8?B?S3pYYzBuWXc1K01JUVB3WEVhUGUyTGN6SmxaeU10dUloOVc1NWdITWlIVTl4?=
 =?utf-8?B?L1B3TGNMNnNnVlhBaDdjS1QxMFZDMTFOa3psUmdrR2hZaVVLWWpBL2Ntb1py?=
 =?utf-8?B?WEhPWjdpZjdIQ3ZYajA5OVY3UG9OMEY1RjFkdVpESHhuVzFiKzZIYWFUNHdF?=
 =?utf-8?B?cUMzL3dYQTlVMmdOUlYxeUlneUR4S25GUUFJMndWTHRUcFhCR2hNTTAwZy9I?=
 =?utf-8?B?cXVJcnhxbmxURm0xMG5sK3hLTEtBSHAvR21ObjVmRlVSb3VuUGp6YWVVdy9k?=
 =?utf-8?B?Sjh5K1VzcCs4ME1RREFvc2VGN2ZsdFpZdW8yekZFeHNlNzBweklaaytybDl2?=
 =?utf-8?B?TlhYR3pKUjJGOUw5RTE2ZzBJb3FjRUVTWTFrWS8rRk05R2YrMEtWZUxnWGRk?=
 =?utf-8?B?N0hLZm13cUxWcURVQ3FxbHJmVXR2aGpZS0g5SzhITEMrSU5jL3M2R0FHT3ds?=
 =?utf-8?B?UW5BTzBnN0dYN1E5c0lWRFE3KzN2cjZPa29NeGkvcjdPNXJVVmVBOXJGYldR?=
 =?utf-8?Q?X0lMBF6HrG4RKycXq3GeOsMElVYvYA9NhekO+?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9AFDB20310178A46BA63A1445C536128@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f30cdf18-5cf5-43b0-967c-08da174e7115
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2022 21:51:29.7849 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xzzBXVccL1dsVKWCVQEynyztF1sgWVaeYOf7COTYNXD2W1c9y8FRlY7B2KAZJfZa4TJv0Hv1La8Li+f+3JpirG1WvWdU4WD/L++qL9RGaEw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3637
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix skl_pcode_try_request function
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

SGkgU3Rhbg0KDQpOaWNlIEZpbmQhIENvdXBsZSBvZiBjbGFyaWZpY2F0aW9ucywgcGxlYXNlIGNo
ZWNrIGlubGluZS4uLg0KDQpPbiBUdWUsIDIwMjItMDQtMDUgYXQgMTM6NDEgKzAzMDAsIFN0YW5p
c2xhdiBMaXNvdnNraXkgd3JvdGU6DQo+IEN1cnJlbnRseSBza2xfcGNvZGVfdHJ5X3JlcXVlc3Qg
ZnVuY3Rpb24gZG9lc24ndA0KPiBwcm9wZXJseSBoYW5kbGUgcmV0dXJuIHZhbHVlIGl0IGdldHMg
ZnJvbQ0KPiBzbmJfcGNvZGVfcncsIGJ1dCB0cmVhdHMgc3RhdHVzICE9IDAgYXMgc3VjY2VzcywN
Cj4gcmV0dXJuaW5nIHRydWUsIHdoaWNoIGJhc2ljYWxseSBkb2Vzbid0IGFsbG93DQo+IHRvIHVz
ZSByZXRyeS90aW1lb3V0IG1lY2hhbmlzbXMgaWYgUENvZGUgaGFwcGVucw0KPiB0byBiZSBidXN5
IGFuZCByZXR1cm5zIEVHQUlOIG9yIHNvbWUgb3RoZXIgc3RhdHVzDQo+IGNvZGUgbm90IGVxdWFs
IHRvIDAuDQo+IA0KPiBXZSBzYXcgdGhpcyBvbiByZWFsIGh3IGFuZCBhbHNvIHRyaWVkIHNpbXVs
YXRpbmcgdGhpcw0KPiBieSBhbHdheXMgcmV0dXJuaW5nIC1FQUdBSU4gZnJvbSBzbmJfcGNvZGVf
cncgZm9yIDYgdGltZXMsIHdoaWNoDQo+IGN1cnJlbnRseSB3aWxsIGp1c3QgcmVzdWx0IGluIGZh
bHNlIHN1Y2Nlc3MsIHdoaWxlIGl0IHNob3VsZA0KPiBoYXZlIHRyaWVkIHVudGlsIHRpbWVvdXQg
aXMgcmVhY2hlZDoNCj4gDQo+IFsgICAyMi4zNTc3MjldIGk5MTUgMDAwMDowMDowMi4wOiBbZHJt
OmludGVsX2NkY2xrX2R1bXBfY29uZmlnIFtpOTE1XV0gQ2hhbmdpbmcgQ0RDTEsgdG8NCj4gMzA3
MjAwIGtIeiwgVkNPIDYxNDQwMCBrSHosIHJlZiAzODQwMCBrSHosIGJ5cGFzcyAxOTIwMCBrSHos
IHZvbHRhZ2UgbGV2ZWwgMA0KPiBbICAgMjIuMzU3ODMxXSBpOTE1IDAwMDA6MDA6MDIuMDogW2Ry
bTpfX3NuYl9wY29kZV9ydyBbaTkxNV1dIFJldHVybmluZyBFQUdBSU4gcmV0cnkgMQ0KPiBbICAg
MjIuMzU3ODkyXSBpOTE1IDAwMDA6MDA6MDIuMDogW2RybTpza2xfcGNvZGVfcmVxdWVzdCBbaTkx
NV1dIFN1Y2Nlc3MsIGV4aXRpbmcNCj4gWyAgIDIyLjM1NzkzNl0gaTkxNSAwMDAwOjAwOjAyLjA6
IFtkcm1dIEVSUk9SIEZhaWxlZCB0byBpbmZvcm0gUENVIGFib3V0IGNkY2xrIGNoYW5nZSAoZXJy
IC0xMSwNCj4gZnJlcSAzMDcyMDApDQo+IA0KPiBXZSBzZWUgZW4gZXJyb3IgYmVjYXVzZSBoaWdo
ZXIgbGV2ZWwgYXBpLCBzdGlsbCBub3RpY2VzIHRoYXQgc3RhdHVzIHdhcyB3cm9uZywNCj4gaG93
ZXZlciB3ZSBzdGlsbCBkaWQgdHJ5IG9ubHkgb25jZS4NCj4gDQo+IFdlIGZpeCBpdCBieSByZXF1
aXJpbmcgX2JvdGhfIHRoZSBzdGF0dXMgdG8gYmUgMCBhbmQNCj4gcmVxdWVzdC9yZXBseSBtYXRj
aCBmb3Igc3VjY2Vzcyh0cnVlKSBhbmQgZnVuY3Rpb24NCj4gc2hvdWxkIHJldHVybiBmYWlsdXJl
KGZhbHNlKSBpZiBlaXRoZXIgc3RhdHVzIHR1cm5zDQo+IG91dCB0byBiZSBFQUdBSU4sIEVCVVNZ
IG9yIHdoYXRldmVyIG9yIHJlcGx5L3JlcXVlc3QNCj4gbWFza3MgZG8gbm90IG1hdGNoLg0KPiAN
Cj4gU28gbm93IHdlIHNlZSB0aGlzIGluIHRoZSBsb2dzOg0KPiANCj4gWyAgIDIyLjMxODY2N10g
aTkxNSAwMDAwOjAwOjAyLjA6IFtkcm06aW50ZWxfY2RjbGtfZHVtcF9jb25maWcgW2k5MTVdXSBD
aGFuZ2luZyBDRENMSyB0bw0KPiAzMDcyMDAga0h6LCBWQ08gNjE0NDAwIGtIeiwgcmVmIDM4NDAw
IGtIeiwgYnlwYXNzIDE5MjAwIGtIeiwgdm9sdGFnZSBsZXZlbCAwDQo+IFsgICAyMi4zMTg3ODJd
IGk5MTUgMDAwMDowMDowMi4wOiBbZHJtOl9fc25iX3Bjb2RlX3J3IFtpOTE1XV0gUmV0dXJuaW5n
IEVBR0FJTiByZXRyeSAxDQo+IFsgICAyMi4zMTg4NDldIGk5MTUgMDAwMDowMDowMi4wOiBbZHJt
Ol9fc25iX3Bjb2RlX3J3IFtpOTE1XV0gUmV0dXJuaW5nIEVBR0FJTiByZXRyeSAyDQo+IFsgICAy
Mi4zMTkwMDZdIGk5MTUgMDAwMDowMDowMi4wOiBbZHJtOl9fc25iX3Bjb2RlX3J3IFtpOTE1XV0g
UmV0dXJuaW5nIEVBR0FJTiByZXRyeSAzDQo+IFsgICAyMi4zMTkwOTFdIGk5MTUgMDAwMDowMDow
Mi4wOiBbZHJtOl9fc25iX3Bjb2RlX3J3IFtpOTE1XV0gUmV0dXJuaW5nIEVBR0FJTiByZXRyeSA0
DQo+IFsgICAyMi4zMTkxNThdIGk5MTUgMDAwMDowMDowMi4wOiBbZHJtOl9fc25iX3Bjb2RlX3J3
IFtpOTE1XV0gUmV0dXJuaW5nIEVBR0FJTiByZXRyeSA1DQo+IFsgICAyMi4zMTkyMjRdIGk5MTUg
MDAwMDowMDowMi4wOiBbZHJtOl9fc25iX3Bjb2RlX3J3IFtpOTE1XV0gUmV0dXJuaW5nIEVBR0FJ
TiByZXRyeSA2DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFu
aXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3Bjb2RlLmMgfCAyICstDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9wY29kZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNvZGUuYw0KPiBp
bmRleCAzOTFhMzc0OTJjZTUuLmZiNmM0M2U4YTAyZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfcGNvZGUuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9wY29kZS5jDQo+IEBAIC0xMzYsNyArMTM2LDcgQEAgc3RhdGljIGJvb2wgc2tsX3Bjb2Rl
X3RyeV9yZXF1ZXN0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1MzIgbWJveCwNCj4g
IHsNCj4gIAkqc3RhdHVzID0gX19zbmJfcGNvZGVfcncoaTkxNSwgbWJveCwgJnJlcXVlc3QsIE5V
TEwsIDUwMCwgMCwgdHJ1ZSk7DQo+ICANCj4gLQlyZXR1cm4gKnN0YXR1cyB8fCAoKHJlcXVlc3Qg
JiByZXBseV9tYXNrKSA9PSByZXBseSk7DQo+ICsJcmV0dXJuICgqc3RhdHVzID09IDApICYmICgo
cmVxdWVzdCAmIHJlcGx5X21hc2spID09IHJlcGx5KTsNCg0KSGVyZSBJIHdvbmRlciB3aGV0aGVy
IHlvdSBuZWVkIHRvIGNoZWNrIHdoYXQgc29ydCBvZiBfX3NuYl9wY29kZV9ydyByZXR1cm4gdmFs
dWVzIG5lZWQgdGhlIHJldHJ5IQ0KSXNuJ3Qgb25seSBFVElNRURPVVQgbmVlZCB0aGUgcmV0cnk/
IE90aGVyIHJldHVybiBlcnJvciBjb2RlcyBjYW4gYmUgcHJvYmFibHkgYmUgaWdub3JlZCBmcm9t
IHJldHJ5Pw0KDQpBbmQgc2hvdWxkIHRoZSwgInJldHVybiByZXQgPyByZXQgOiBzdGF0dXM7IiBp
biAic2tsX3Bjb2RlX3JlcXVlc3QiIGJlIGNoYW5nZSB0byAicmV0dXJuIHJldCA/DQpzdGF0dXMg
OiByZXQ7IiB0byByZWZsZWN0IHRoZSBjb3JyZWN0IGVycm9yIGNvZGUgdG8gY2FsbGluZyBmdW5j
dGlvbnMgYWZ0ZXIgdGhpcyBjaGFuZ2U/DQoNCg0KPiAgfQ0KPiAgDQo+ICAvKioNCg==
