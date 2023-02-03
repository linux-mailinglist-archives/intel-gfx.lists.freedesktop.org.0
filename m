Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E49A689491
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 11:01:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FA7110E5DE;
	Fri,  3 Feb 2023 10:01:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADC1610E5DE
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Feb 2023 10:01:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675418491; x=1706954491;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=UhhYXmu060fQOvquNrwDLr7QQpAlZiZdTwbxKLkIhv4=;
 b=EmptNtYJHu3OuA/sCwSl4E010NvWreuABv+xOeL1eLtfGg5Jm15KSKaD
 hD3ser8jGZ0xaAqE3b95nxdjFWdvanUNxOtBjiyFMdhuuwXmHuYAuBr+x
 18sKULgZYPE9zn5XNVtrPybFuSzeIHn05+h9lBlFJ8wmUhKe4P6wZfbkt
 2JHO91xzGme7HsKSVBMPjxDVoSDPKOdeQwfeZJQ6lRxmf0OC+mjS8Nhde
 JlsZBya2DMuGM9JAPhvMCAiR3ey7ppen03WDZeQuME8fTcaHSK7WQFlh+
 4lSVOiO1p9T295COGbL/NH68yzBoCNp77EuXL8eBOb5zHA9gAlg0unnau Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="309044359"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="309044359"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 02:01:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="729210667"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="729210667"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 03 Feb 2023 02:01:31 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 3 Feb 2023 02:01:30 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 3 Feb 2023 02:01:30 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 3 Feb 2023 02:01:30 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 3 Feb 2023 02:01:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jpbz9MkUqB0b8Dwx8lu0Jzr/R0Ma+lcNt1IIb6TzIB/XOE6La2hf93GGio2VHGkzj++NoqBEBcfcs1i/ZYUu52ICVljLtiUpelwOQfcnOhc9ion5nYsu6NZfFTCHm4a8t2HLRkdj8u6xDro7ilC5gbXFEhv0+pT1ygJtV4TsvlPGHuPle7P1H5GrQLZKHM6Y+DRfK1Y9d65ikc89DbiTQ6Tq5bGa5dq0GoiN8m/pRBb5zqt4aK8jbMb+M4bjcBAlah2UnOQIuii54OxeDyt9nO3mps2NsGXHQ/yylw8MfKuqtoPmTdApfJlCEWYDpuBfo5Osfql0L6o+AS4TozHFSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UhhYXmu060fQOvquNrwDLr7QQpAlZiZdTwbxKLkIhv4=;
 b=EsQRE2p8i2rwZc0Dj4ltEGsZxy70Csx2JGxQox2hS71CYvV5tRCEDFY8cpOvN4Y4eh+m1cYlqe2P/HwScmvS6qYY3xAwKhOuL8VlP5FrBkBszdOldq3zQObF5uDu5PaZkLQd53X4TA+GWRN3N32Nc0ZGf1A3DmQM/A0BDf9Lt/RI90kgf9dHCr59Kf+XsB4SgmiAxVrgJRzjuaa5VkCYiNspdVQgZszO+tSgytxkczwJbrDSK+DWFST88jL8C59nobHbLhgbD9k5+N82kaYzap58cSpEE17W0DEnraVQk0NyGCJUKYWMM4E4ZrK0kI3SXqX7JqVFldp5eTQsE7axdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by IA1PR11MB6395.namprd11.prod.outlook.com (2603:10b6:208:3ac::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.24; Fri, 3 Feb
 2023 10:01:23 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::e470:7eba:a68a:78be]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::e470:7eba:a68a:78be%9]) with mapi id 15.20.6064.027; Fri, 3 Feb 2023
 10:01:23 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 08/13] drm/i915/dsb: Skip DSB command buffer
 setup if we have no LUTs
Thread-Index: AQHZK1pZlODambZ8tkyOo4GhSlJkhK69Fguw
Date: Fri, 3 Feb 2023 10:01:23 +0000
Message-ID: <PH7PR11MB5981496894E3DE14C0CCA8BCF9D79@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
 <20230118163040.29808-9-ville.syrjala@linux.intel.com>
In-Reply-To: <20230118163040.29808-9-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|IA1PR11MB6395:EE_
x-ms-office365-filtering-correlation-id: db1811a3-a84a-45e5-8cfa-08db05cd9b33
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lWAlcpsmuAndXCtNlv/FUD8iZVxe/UAIOHdJkDgVrwOpg9hcumTTwqDMeo3cp1KZQ0LHkwAd6eJSwVk7QeBA4cnkE5gadFhGJSj0P0h3dHF/EqhDzIzms8SyGkWa9kH0IRibZBl2gGBYeSLXJIzpUL6hTwGzZSgbooIC7wJvgfTNReNTFsvhFfsHyuN6vvq6FA1VrzaipruAkBAI/13/gEH7XALMB++MF3FpBBMS6lsmH1sH/ILcuRIhTLkZK6+vW9f4t1WHPawO7pRZsfeFIsK62wyIEL3SD+BW9q1OX6DrjGhFCCJ7dccQRyie7hPSbnxNnp4FLqxrBJvo2SsVWBBem6tfIruSSNm4t9SBBlefw8OunBN7JIDfAT+2tAyv32EksISfNkKgizUG2wl54onF/Dc3SaBsJWm6NmDF/YQNAW3odyeMqY0TYxyKIYJ/tb1+velfcO0licjt03gypoo1A8I0yTYSNAb4nggF8uBnKln+RZFbDD80e5GEYeMWl16K1urNxjECYHyWWJMQeaVJjx2OFC1S6WDyYVg4n4/+FpulScRK9BJfjiQsh8wxp/zevLqByhX5WvnUQLj+HTriJ1SaVCLAUoNAPB/m4lmoSDYfxS1iUkX5QbiA2RPMGsHlVfvoxbDsTXmHjnDhXPz4lXVsBbKo/QIWPl+kkK0G2zbUBrMXjP+xxef37Zy2S0dI2JZOiQWOazLF2dDh5Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(136003)(396003)(376002)(346002)(366004)(451199018)(83380400001)(71200400001)(316002)(110136005)(33656002)(2906002)(82960400001)(38100700002)(6506007)(122000001)(66476007)(76116006)(53546011)(66556008)(478600001)(66946007)(8676002)(52536014)(66446008)(26005)(9686003)(186003)(7696005)(64756008)(8936002)(86362001)(41300700001)(5660300002)(55016003)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZGc2cXcvRU53SjM1Q2t6ZVFnZHV6ODh6VTJmVFUvTDJYS2xVVVdIWm1POXdh?=
 =?utf-8?B?cy9tMnV5L0lyUGM4WGlpdzRMSGwzQTJCM2xISUEvS0tySDhpL0kyYTA3WHRw?=
 =?utf-8?B?MXg2UFIzc085L2puRjhlWGpqdjVVMGVBNVRLMXRDVHRwVDFDVTBUNmI3dUZH?=
 =?utf-8?B?VUFGYUNPMG5lN0tCaDBRWFU5ZTVpcXM0aHZKdmFHTTZUd0JnSHF3bXFNa09F?=
 =?utf-8?B?U1RNdVlkMzRabHhoNDRXSkNjQkh0S012cmwrYTArbHVtR0YvWHRQejFqWWdh?=
 =?utf-8?B?ZXlHbzQrMHh5WTdZbTJTd1NJQnR3aDBaVUZwQk1ZcmxjTEp6UEkvTjZFUlph?=
 =?utf-8?B?UjBUdndWcXVsVUZ3aGU1ZkRtTUgrT1VIdndXMzE1SHpXZjhFaUUyNmk3Wmlq?=
 =?utf-8?B?ZzBOMUVRKzNwUW8vd1dSR0RTc3ZqRGZjRlp3RWc3RTF6UG5vSXpzK1g5dFJN?=
 =?utf-8?B?M1ovZHQxUFVVbkFpalU2TXhFVHE1WDdEcm53dWVhbktNYjNHcTM4cUFyUlUz?=
 =?utf-8?B?dVV2cFhQbmduRHgrdVJSekQ4R3phZVY5QVc4d1BVeC8vcW1aUGtqeWtza2Fk?=
 =?utf-8?B?RVRrQ25GZkFXaVNhOXA3ZGk4cm1FOXNkcWVTZ1VMYlpiWVQ5WjgwbEhjbzJy?=
 =?utf-8?B?M0RacVZqajBEZ1ZOK0xudENVZkdWRHJGQ2owQldPNGUxanVtbzA1UkVXWUpz?=
 =?utf-8?B?azlTZy84WHBBYndPTFkxNDFNbm5CUnNrVE5wbnBON3pXRUNLOEVkK2EzekdD?=
 =?utf-8?B?SURCUkdoeHZlNXZ6b0dSeWVFK3hST1p2dnVDaEI1ZG5YOXFkcU9BSTd4ajlR?=
 =?utf-8?B?clN0cW5qd3AyaCtBSEM0dWlPWG1FRmw4NEFSZ0JJcDdjZDR6UC82WmVlWFEx?=
 =?utf-8?B?Z3ExYWJQOHpQYUFMYW43YXZaSkxJVmRHY1c2WnhWZkxCWnlodlE2QndHOTlG?=
 =?utf-8?B?T2x3d3RVRjY1bm5HWExDZ1JJZVdxOFBzK0ptdjV0SGlwKy9yS2w2SWNqRHc4?=
 =?utf-8?B?YnMvTFVBd2hIVUFKSGZURkZaQW0wNW1iZ2JSVWVRaGhIQmZPUDJYR2xxTC9X?=
 =?utf-8?B?aitGSHJENkVobk9ZSWY1dTUwdWZSdDcvSUQ4bW5jOWFEamVVQ29MbkVvVU1G?=
 =?utf-8?B?czVhdU1mVHlKOXpJeWxrOUg2TTZvMDdIb2hMV1J3SVRSMFdxeEJBZmxqYUlR?=
 =?utf-8?B?djRMN3ZEZE5SeCtzM2d1RzJXNUhkSkdkRS9Kc1NNZHR6ZUdEYzZ2MEdIUDFG?=
 =?utf-8?B?U1I5R3ozRk5XV3U5c1JrUFVaS2Q2MmhSTVpEYjFNdXk0MHhkcGtXY28yWmNv?=
 =?utf-8?B?S1Q4Y0dpcUVVckJ4YjBCMGxJVGVWWERmS2toK0VZQkdLeWxmd2RVVlJuMDhV?=
 =?utf-8?B?bm0yM2ZRWUw1VTBxb3BqWlJXQWhTd2VKTTJEMFk1TlRzNFJMRHdQVlFZSHlQ?=
 =?utf-8?B?MWQzbEo2eFM5NGQ5YUhSQlJyd2Z0Z0hmdm1DWFdTbmFGRStESGV4a2t1Snk3?=
 =?utf-8?B?bk02OEYzRW8rcEo5cCtnYStLdUlrZXVPN3NzakpiaWxNZmV6dGk4cDZFVklM?=
 =?utf-8?B?NUNkYVNkdm9vWUZ3d1VvZTNicXBicmkyOURUN0JET1hOdmJGdmg2dUhUM3B5?=
 =?utf-8?B?WitvYlFXNG9aNHI5ZW5YS2wranZhYnZBR0NsMFo0V1ZQTVFHdkhyR3hmZ05T?=
 =?utf-8?B?QXhmZGlCR3Y3WTNVWG4vVndFQzE1R3g3QWFGbGlQenlTVC81YlJSL0RpcFA1?=
 =?utf-8?B?bWZwNHd5Ymg4U0VLL2h0b1NoZnJYMEJhcEJUMEpuR3dEb3JVanZYWEppTHBz?=
 =?utf-8?B?dTBWa3Zic0NmKzE5UGtQRTdIOW9zbVZ5VmFZVFUzRy9vWnlJWWgwbVNjM0RS?=
 =?utf-8?B?T0VrZ01nUEtyMWZGZnBabDEwQ0RvUWVlNTR2eHJiUXdRQ2pYRW5Qa0lJTjNp?=
 =?utf-8?B?NXE5U3hhblhuWFBwc3hMTHdrbmRwZjR4ZkcwaE1PUUc2MTJ4emtPVGlXTTZB?=
 =?utf-8?B?SHZaN1pqb2x5TG9adE02TVdRa3JPdTZsQi9FU0duSGZZQ3Flb3Z1VDRpWUhh?=
 =?utf-8?B?YnU4dlByMExZVlNYaCtGUFFYZU9MU21pdWIxeE00dUlkUXViMzlMcHVVOTVQ?=
 =?utf-8?Q?U3LGYH13/i/4oJ0y3nqToo5iY?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db1811a3-a84a-45e5-8cfa-08db05cd9b33
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2023 10:01:23.3182 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OocVj24KMS5Mjob6/VC1kCCM/aQl11HMIeRv6qT/BhdwBpOnyFGDss5hsoHs6VwGovbCzLCWBNJN+Djtm8UPlg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6395
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 08/13] drm/i915/dsb: Skip DSB command buffer
 setup if we have no LUTs
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
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAxOCwgMjAyMyAxMDowMSBQTQ0K
PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwt
Z2Z4XSBbUEFUQ0ggMDgvMTNdIGRybS9pOTE1L2RzYjogU2tpcCBEU0IgY29tbWFuZCBidWZmZXIN
Cj4gc2V0dXAgaWYgd2UgaGF2ZSBubyBMVVRzDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gSWYgd2UgaGF2ZSBubyBMVVRz
IHRvIGxvYWQgdGhlcmUgaXMgbm8gcG9pbnQgaW4gc2V0dGluZyB1cCB0aGUgRFNCIGNvbW1hbmQN
Cj4gYnVmZmVyLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCg0KTEdUTS4NClJldmlld2VkLWJ5OiBBbmltZXNoIE1h
bm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyB8IDMgKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwg
MyBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jb2xvci5jDQo+IGluZGV4IDE2MmQ2NzExODJlMy4uZjRhNTI3YTNjMjY1IDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+IEBAIC0xMzgz
LDYgKzEzODMsOSBAQCB2b2lkIGludGVsX2NvbG9yX3ByZXBhcmVfY29tbWl0KHN0cnVjdA0KPiBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiAgCS8qIEZJWE1FIERTQiBoYXMgaXNzdWVz
IGxvYWRpbmcgTFVUcywgZGlzYWJsZSBpdCBmb3Igbm93ICovDQo+ICAJcmV0dXJuOw0KPiANCj4g
KwlpZiAoIWNydGNfc3RhdGUtPnByZV9jc2NfbHV0ICYmICFjcnRjX3N0YXRlLT5wb3N0X2NzY19s
dXQpDQo+ICsJCXJldHVybjsNCj4gKw0KPiAgCWNydGNfc3RhdGUtPmRzYiA9IGludGVsX2RzYl9w
cmVwYXJlKGNydGMsIDEwMjQpOyAgfQ0KPiANCj4gLS0NCj4gMi4zOC4yDQoNCg==
