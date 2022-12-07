Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E18645659
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 10:20:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3D9710E07C;
	Wed,  7 Dec 2022 09:20:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 029FC10E07C
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 09:20:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670404828; x=1701940828;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=0uAPGceSUpz1z8j0Vef3Vr42rlPmPISEGHNchIqnR2U=;
 b=MjV65H/kxD23OvltOGPOrP9A9RQXVC/HFQ7TtuIXm0MM8nPfLCX8sd3z
 8tq/UZuSSH+GuTDxqb5l7Gzhf0rZMAAHmZxTd18U1IwGmI8qfVGfb8oXJ
 Cn2n+NyPrVXO/tkPFmnEVIdIQ3ISs7X0pfV9bUpnfvAbTImBsmY3S64Xo
 6zvladixTchHr56KMUXLa/H0VyLKv6/9Cn9TNkbjx6tDXb2zUnwPrrSVe
 LnZUop6hwtk+WrY15SrzNAEclaIbddZlzRIlYIFTnv/iXe779DBzx4DAS
 XVxjQrLb31fd3vIJHaj4bp7aw06hWmiN2N736UKwBMg0Ot+6HKa5NHwsZ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="317986303"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="317986303"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 01:20:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="709996706"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="709996706"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 07 Dec 2022 01:20:25 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 7 Dec 2022 01:20:24 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 7 Dec 2022 01:20:24 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 7 Dec 2022 01:20:24 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 7 Dec 2022 01:20:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KDU4Hx8dt4C4n+hAc+hhreJu49QisfISco9x4DwnBxSKWBzEmc2cAVLUo69rU7wRd8MyBFon9Uowy89I6rYqhCT2TMoSpi3V3dk/k7kRPgFxxE8Roa7SiLMYcyLtzoYYi5PUQxh6N2J2id35j2tzaIG7Cc054DpCIeWujPq3ddUsuIGu5+UNanWBo7My3D6Tv3fFcL2duHhzOWngkkCp0tm2wQymMIA2H6CVxucTG6drZd4EwG8WMjvSt0YRAk16CgPAHfKgcICHHSCORZP06mXyT5AaoJi1RShxrqoAZiUzfHDiboWMcOCfdb97+T5hWJcJuc+OFs2bT1Zj0lpSmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0uAPGceSUpz1z8j0Vef3Vr42rlPmPISEGHNchIqnR2U=;
 b=FcCD0rg5qp2URmMKmZd3KHiLN6v++V/diaNahv/qqYmqjYvkSiOIjNPgheECPyFE13XelFIAR2glw6ugTMZKkNjDN/WlgpxoEtum/SZVkcrCDB55LH0zU3V7OX4hBZYnMVaxUErjhvBeTPtlTYzc9d77I0B0KrJnAF68h4N6GcYGJRBW5b+VTqPznUEtfkr5VtiFndbH8w9wJ1zA4av1nrx77gvshbzaW8nnNGRap8WQkDhnfhSIRa37/qAeOKNIGDq1J1oRHO90rp3DaQYnlASPlyYEvvSsHY7Q8/eqf2BAVihvMC9yP8ovUH8PAN1I3PsmiPlfg3mXo33bdjaCqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 IA0PR11MB7257.namprd11.prod.outlook.com (2603:10b6:208:43e::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Wed, 7 Dec
 2022 09:20:21 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6%4]) with mapi id 15.20.5880.014; Wed, 7 Dec 2022
 09:20:21 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 2/5] drm/i915/guc: Add unaligned wc memcpy
 for copying GuC Log
Thread-Index: AQHZCVO9DZInYrxis0OeofdpS6HJDa5gpGIAgAC/EgCAAMTxgA==
Date: Wed, 7 Dec 2022 09:20:21 +0000
Message-ID: <bf11bfe51f218f8104af21d1a93535281eb92abc.camel@intel.com>
References: <20221206092100.274195-1-alan.previn.teres.alexis@intel.com>
 <20221206092100.274195-3-alan.previn.teres.alexis@intel.com>
 <1f453b64-3444-9d0e-bf9b-668229e763ef@linux.intel.com>
 <53fb72c915990cb4c5bf0fe8ebd976203f5556ea.camel@intel.com>
In-Reply-To: <53fb72c915990cb4c5bf0fe8ebd976203f5556ea.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|IA0PR11MB7257:EE_
x-ms-office365-filtering-correlation-id: 17580da2-9d7a-4f4e-5569-08dad8344407
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2WN1tQbVEtr3oCI2dhokXU25R8swQWcYx73UpUNKHN6Mkd4/2nGihE8Oacfb9S8oIDdkVj7NTad7GjA9Y1j6fbdjvw3bHDqarOUx5ZrgtzDSUgFZLubg1qbtFrF1I4Vcv9YA3ViNT6T7Zf2dqQI9wn+bDkIYZ5XW86TvAp+ltssM0Xr8T5Z24s+l4yRV/8GgVAZlLShcDFqJ22sOQfj+NEhYoZA+UfTT5H4cudeGGP7MldGeWlYNneL3eZew+y3HCVdfWixj3wnQfeUhaNIDSHl6PU2molDszIjjPrz9kL8pUDn+JOMeenqTtcug0jW+Bxg13adjHnxEIAUL87WeSLC7Qh+go7enTOFSJg0BWVN3cuM2OBmdoAHOcmxl95M00AhZakqgxwuOFwBAH9itC804EwaWNCWlTf1k01fDiq1ljkaoVPTyeUo+/ftQkdorRAv0BNTjJYfsmm+uFkqBXqaUQmJAj0daSnkn4LlUknbJpaH4Aw6L3lDgTtbeD/RLeeHa7FXdmU4lx+pDYN4wNnSuzjFPoYXxNAAuA9VUbAUF2xUwWKar7X8o+4V8LQ8jUaYf+C9xjmgRkp+HjGVZ2qr0JJ3oBfa2fB69MeGi6NFew67wLGh/zzxRml9InS0QzVSQa41JF6X4VlzNA+McCRgI73fEJX9+sOStWoLyJ7xX0It6lISTBnPUxDIYKtwvsp2oQUlzUs/HdgWM0W36mg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(366004)(396003)(39860400002)(136003)(376002)(451199015)(82960400001)(122000001)(4744005)(38100700002)(36756003)(316002)(41300700001)(66446008)(38070700005)(64756008)(66556008)(66946007)(76116006)(8676002)(91956017)(66476007)(2906002)(8936002)(83380400001)(71200400001)(86362001)(186003)(2616005)(478600001)(6486002)(110136005)(5660300002)(6512007)(26005)(53546011)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WGxxWG1jN3RTYVRTdGkvZU5xbXpmMzRlRUQ2RHhzUSs2NkZXekVIaGJ0eTgr?=
 =?utf-8?B?b0FYQk9XWFFOa3NueTIrQU0rT2hTVXJibnJ5eTNPWjBROTB6T0VQTld5dEhG?=
 =?utf-8?B?WUllR3FVc2l1M2ZSVUQxUDJCVDNiQm5uSk1IVWdUcjgrckU1dTdyZWN4VmpW?=
 =?utf-8?B?UVdDZmxuT1Avbk5wYXlrQWVpN1UvZGhFS3hwdzV4L1NmVDNDQ1RhMWVLazQz?=
 =?utf-8?B?TE42M09VUjdzeW51MmVhelRGSTRZY0QwZXJSSmNjbURTSHZMZzBkVzJpK2NV?=
 =?utf-8?B?b0RoaHV2Z1Fva0Y4Rk1iUTFSOHRrWTY0NFJxL1dzaHU1T1JKcWc0VDBoQ2dG?=
 =?utf-8?B?S0p3c3U1Y2tzYldXVUJjb0JsQjViSHllQTljWVJpM0RwMHJnVzZReGJ6by9j?=
 =?utf-8?B?bXU0T0ljRmdGSzM4bEQ5QUk4YnpiYnpjbzlkUnBTZlF4RGVHZ21KeW9nMUsw?=
 =?utf-8?B?ZWx4U09WTjEvTmpEOWJlTENaelFsS2ZIdzNhOFlwVVdrVXhnK2RaVUp1UWlJ?=
 =?utf-8?B?ZjUwR2MzU3k0RXk0dkwydSt1Ym4vblVhMG9sL0dCQ3RvK1pSaFArb1dBZmpD?=
 =?utf-8?B?TVkyV0xiamdSMEh2c0hVZzdQZW4xbWZiNXdnbHliN0hqcmJTL2JIelNHVUp3?=
 =?utf-8?B?T3J6S3ZUY1EvT0V1bTV4T3V0WWZJdzc2QUhCNHdXcmtRQVZvNU1hNThHN0hR?=
 =?utf-8?B?L3dMTHBPWVBjUGhYYzVQcmdjMGhXV0pzWjcxVEdua3NBMGZXSEt4R0ZUMXdl?=
 =?utf-8?B?M2o3b3Z5WUl1Mmtoa0c0ZnJIMlBVZFpkQkdId1ZVOUR1cW53UzZBcTJoVlBD?=
 =?utf-8?B?UUUzT1A5elNIdUVJS2FNc3VDUTM2SHJxY21WVkNrVitjSWNJVmRnbUJ2MHpB?=
 =?utf-8?B?em1LT3VFRkUwZzV1QldJWnV3VzNHMUV1cGdQTXZwZTNJZWxidGhFZ2ZRMzJZ?=
 =?utf-8?B?WitkSFg3andDSWhIU3NoYklNYXcyZ0xIbkdJaE53b2duYTVzcjMxTUZyblph?=
 =?utf-8?B?SzRuYUo3NWlMWkZpV1hacXNOUGJ4dlRjeTh1L1UvTm9GeW9ueXN5WHh6by9T?=
 =?utf-8?B?c3FrRU1tWWljcTM5cUFXaXRnSE1ZeGNMRDBQcDErOVlLRkk4TklSc3lqVFQ3?=
 =?utf-8?B?TTd0OW1HK2p3MmVLcnc3RVAxT3JPTW51eEZUUWdBSmJvYi8raU5UeURwOFpW?=
 =?utf-8?B?cEIxb0JFTTJaWVBUbjRYTER1akFQajN3YkxqWlNrZ2lsY1RTdkVHKzUrNlRp?=
 =?utf-8?B?ZVl0Q1JUT1B5Ylc3Q0VHdjRIVmJpcnduOVIyOWF5ejhGczROQ2hHdFlJOEVT?=
 =?utf-8?B?YlF3REVQL2xCbmw5cmJTWmlKbUlIK1JmS2p3c0NuUi9BZktjN0lkTUVqMS9p?=
 =?utf-8?B?dlFpa0ExRHd6U2NuSU1iRTJqUm5YQUQ1dEdVRUlLc1BmSlYwNzVsTFNzQnZy?=
 =?utf-8?B?OThVQVNzTUdEQnp4NngyeHdXQ3QzUmhTY3d5dEdjc05sME1PZzBmWExhY3Jm?=
 =?utf-8?B?Smo3c0JFcmRyTVJ3SjFram41Mm9wZ3lrV2FWVFQyaVFyRFJRbHl2emZQcTQw?=
 =?utf-8?B?alJCS3Q5a0Fsd3hISHZLVlQwemlyVDFIOUlFZU9KaGhqOGw1S242Z1ZrVUR5?=
 =?utf-8?B?Qll5S1BMWnE5T1FDc05CeTNYUmdsZ01XOU9weks0Z01HaXhGdWNzMEN3T1Ex?=
 =?utf-8?B?Q1F4akZ4dVVpTGlMZVhWTExZdmVUdDBGQ2UvK0FuRUNtSE9YSXhEN1hZSW5B?=
 =?utf-8?B?aHJVQ3EvRVFkUEhHSVNJaHpSck1VdXg5aSsreFR5djlOWnVhSUx2ZWttb3R4?=
 =?utf-8?B?V3RxMHVoeEMycWlqeGUzeG5XTnRrN3dkK2ZPcTRwdWhQWmE4WW9WTlpUamdF?=
 =?utf-8?B?d0FNc0RiWkk3ZjhKQUFVbHA5VHE4RUxDcUorUWdudWthaGU2d0FiTHcrS040?=
 =?utf-8?B?M0VPd3lreGU3YzJ5R1QwME5LRUF5ck5LbktRbEhyaXRXNGhNbnVFKzhONXFx?=
 =?utf-8?B?ZVl0WlVocnkvOGs4MXBpYkd0V2o5QkhNQThPWUV1MTFubzlNZHl5dnA2MktM?=
 =?utf-8?B?Wkcwc0FvVmZuVFBQZEM2emhiNEpJcUFxQmpDNkkweGsvQXpKQ01hWHUvbGFE?=
 =?utf-8?B?ekZFNTd2aEJqeFcwNitHUTIxN3hRS1NlemtnbUI4NEJZK25ETzhXWmVXM2tE?=
 =?utf-8?Q?xHICBTTLHngMNAp+gTW+YdA=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <92B94626C9546447ADF4BBA8582E5B7B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17580da2-9d7a-4f4e-5569-08dad8344407
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2022 09:20:21.7264 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C8IWEMl5IxbWotbv3bvAJVCMIGjM6csWI83wCVLIPmj7QRqk/LUG7QYec4uFBGxTBjCkmKIC/OZUALisdqc9vt4U7Pyw5cgbuXHQDxUCzfJIE5dnpt0/hTkQLxzTwONw
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7257
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/5] drm/i915/guc: Add unaligned wc
 memcpy for copying GuC Log
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

DQoNCk9uIFR1ZSwgMjAyMi0xMi0wNiBhdCAyMTozNSArMDAwMCwgVGVyZXMgQWxleGlzLCBBbGFu
IFByZXZpbiB3cm90ZToNCj4gT24gVHVlLCAyMDIyLTEyLTA2IGF0IDEwOjE0ICswMDAwLCBUdnJ0
a28gVXJzdWxpbiB3cm90ZToNCj4gPiBPbiAwNi8xMi8yMDIyIDA5OjIwLCBBbGFuIFByZXZpbiB3
cm90ZToNCj4gPiA+IEFkZCB1c2FnZSBvZiB1bmFsaWduZWQgd2MgbWVtcHkgaW4gcmVhZF91cGRh
dGVfbG9nX2J1ZmZlcg0KPiA+ID4gYXMgbmV3ZXIgZm9ybWF0cyBvZiBHdUMgZGVidWctbG9nLWV2
ZW50cyBhcmUgbm8gbG9uZ2VyDQo+ID4gPiBndWFyYW50ZWVkIHRvIGJlIGV4YWN0bHkgNC1kd29y
ZHMgbG9uZyBwZXIgZXZlbnQuDQo+ID4gDQo+ID4gSWYgdGhpcyAibmV3ZXIgZm9ybWF0IiBhcHBs
aWVzIHRvIERHMiBhbmQgR3VDIGxvZyBoYXMgYmVlbiAicHJvZHVjdGl6ZWQiIA0KPiA+IHRoZXJl
IChhcyBpbiB3ZSBleHBlY3QgdG8gdGVsbCB1c2VycyBwbGVhc2UgY29sbGVjdCBhbmQgYXR0YWNo
KSwgcGljayBhIA0KPiA+IGZpeGVzIHRhZyBzbyB0aGlzIGdldHMgaW50byA2LjIuDQo+IA0KPiAN
Cg0KdGhlIGp1bXAgdG8gcG9zc2libGUgNSBkd29yZCBsb2ctZXZlbnQgd2FzIGF0IDc3YjZmNzlk
ZjY2ZWQyOTE5ZGVkYjgzNGVkZWE2MzBmNDAwNzlmMTIuDQpXaWxsIGZpeCB0aGlzIG9uIG5leHQg
cmV2Lg0KDQoNCg0K
