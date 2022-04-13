Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3784FF1F3
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 10:31:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65DA910FF52;
	Wed, 13 Apr 2022 08:31:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 617D210FF55
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 08:31:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649838710; x=1681374710;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=XG+F4KHUWU8ZVh1gCCGbpGU4CKw9aA2W8kioW5mcwQ0=;
 b=Plfn7d5cm1aoeZ24n133hYffnhBJw9KEs9dpFZJfxmTMq7Qj7ZbjALen
 /0ynhw9DdJkOyPIibdZf+0u1EVMZ956jyFb+MI/VlXNL/x3rAnPLsbiYV
 2q3RO86N5Ftd1NHtAIELoWFCP9YOkyypiyTIwTJobSlArM6g6dZo2W8l9
 6vloPTlsy9zUDzP+VFdvJBS0gPTzu/KLWiDaBJnZlspf0wvKfLGBt+mbe
 Tx/X0FQ2Sgj30hHXtQibUUr/qwZCyaG4hrWJ8xiTBSLuRAOcxLsvXqqvS
 JI9n4YIZQHAfCYVuCE/Xlzr8LL2NcZTpG/ETj4DclfOBaL4BSlP+cALHe A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10315"; a="325514494"
X-IronPort-AV: E=Sophos;i="5.90,256,1643702400"; d="scan'208";a="325514494"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 01:31:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,256,1643702400"; d="scan'208";a="660843612"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 13 Apr 2022 01:31:49 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 13 Apr 2022 01:31:49 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 13 Apr 2022 01:31:49 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 13 Apr 2022 01:31:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QLCFvMrly9Bmh+GAj0U3ll49VLsr/DQgXYErglMDt0ylV68wFAWUAWMQoydfSliehzBYOWJmlpuzhzvKhyG+h6M9crnqw7wMbbfoa5X+tV1YNcyCl/0OTU8D0EmShlEu1yabRl6PgR/IgrEsrgtSXbjph0url/q1JaM2oxlft3KQwqP6CRG9a72jnqkEMondZSnam2hd00vxBYr5ZGro4od3ImPQxAfzmUDoPDn/15jN2WmnWaDRFl/jZLUmH5BvkLCYrXuNXSjoRnAdfcm2bAli8QJayresGrTubyfl9wd4mpCDWJcAdh5iRfWBGt3VIQJa9OAPGfif0jO9orEOSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XG+F4KHUWU8ZVh1gCCGbpGU4CKw9aA2W8kioW5mcwQ0=;
 b=S9i5NSpecX6+0NQSOM/+LaeqhuXPxKHIZjOQ6FbENY6asAydXDw8XSw7BDHGuse26oonT3k8nypqvhiMrqHAFAZiIVwlWuu83hTt9amqxlWFvZ7HW2u27we5+Mdwr7grqnEzx/MJHfZeJS3NiLZlowW5Az1xu6YoIBcGINBN/+qWUHCMi9AJE3GxZE9Vpm7RtHQc3n9FocuxHVt8cj+3voA9+ERP6seb83iMuvpbArozwL0W11gf7/yeMUgN/lGX6OALD4W4vokm06qJTHePf7Rjd/4FswT/fqeUCvW7uAk23HoqUUnNJQUczOKns3nCNepJXDV4DzaxoLGOi895kQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SN6PR11MB3039.namprd11.prod.outlook.com (2603:10b6:805:d3::27) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5144.29; Wed, 13 Apr 2022 08:31:47 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::95e7:8abc:485a:a90]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::95e7:8abc:485a:a90%7]) with mapi id 15.20.5144.029; Wed, 13 Apr 2022
 08:31:47 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "lyude@redhat.com" <lyude@redhat.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Check EDID before dpcd for possible HDR aux bl
 support
Thread-Index: AQHYTi3cVrmmCUwmOEC4GSSZ3+yRhazsj1uAgAD2GwA=
Date: Wed, 13 Apr 2022 08:31:46 +0000
Message-ID: <2f768d2c5d51c31d507d2d10fbb9c19a39eb2111.camel@intel.com>
References: <20220412052542.681419-1-jouni.hogander@intel.com>
 <5294707cfceb018778f7ff1164f88581acb08015.camel@redhat.com>
In-Reply-To: <5294707cfceb018778f7ff1164f88581acb08015.camel@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c1699e02-208b-426d-ade8-08da1d280c6a
x-ms-traffictypediagnostic: SN6PR11MB3039:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <SN6PR11MB303905AAC63EB719425FC5038AEC9@SN6PR11MB3039.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 40XmwGxqFHFBN4sEkw6VP81apZ8qi2z6BAM5kyIv8sC3kVjcZBE3SKsXHYTOaedYdEnXZMBrQHTEXdkcI2q6KO2y+CUC49WqWDdiSefd9rz5YL5b9Og1aacKDZ19aT35BehG2BN1hbwlINicts6Qw/BnBlXOHNu4xtlC9snm/IZQtXRz80lULWXb4JSO4HVs/NA51uiS/POsx9YB+eZf6r1vunwyrP54Q/Yg4yb/6G+BrptsIkcvyKyrDWZtf1AcgfAdxZdolQoHPhnZSYB2Y7oTaHcHZmCs6IFn9I025f9jwE6t32IwbM7foJogOLNWx3NOe8qdwNaOutmSj/5q03XzdAmcpbXyU/SFzKCWkNdq4EtcDnw0ikZ6tcGQ3NGHi4Uth5OEYBmzWQ7ybONzcrMGH/kNT5Ssp8ouaLadM2qsYPXL6z091zHVfRSWaAu679ENe8NuHDcaUvTHNs5ImeIjIsEUxGPLE0rBlY3yDTdHTsKWTrCVNnFg8kd+PshL1N4uOCvyfDoNav/9Lb1WIw769W59vmbzDz8HiMHgGITrQzhk+DAPr4hedpCdgKdzzG21z6nuFzDs71HMzj0zCYBTyqXzBzPxkPWijCGP4zzzErieYHdBdkb0nESbL3BNfR4oY12RtRaESI81TjTgA0GyBxTgIUiSwK4VKUhBMiY32Sc7UhOR6IVUsdWiP0bwK+yypgaYNSrkUkCiGzc7IA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(2616005)(38100700002)(91956017)(66446008)(8676002)(64756008)(66556008)(66476007)(76116006)(966005)(66946007)(6486002)(122000001)(26005)(66574015)(6512007)(316002)(86362001)(6506007)(83380400001)(110136005)(2906002)(82960400001)(4326008)(5660300002)(8936002)(71200400001)(54906003)(38070700005)(36756003)(186003)(508600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dkVyQklzZGlhMVdLcE4xWFdhcloxUmM2ZUhBQm1Kb21ubzltMmx2UWliTm50?=
 =?utf-8?B?RFRtb1ZRQWZzUVFTc0JJck9xOHo5U3ZtaVlxRWRHbFhob2Nhbm5VNWg3bGxn?=
 =?utf-8?B?WVp4QkxKcEtqdnp3UGxqU1J1TE9TN1kwQ1BzVkFsWEVwcHlSYmpQb2Z4MEIr?=
 =?utf-8?B?RklVZWtyQ3BmUisybGt1eE9HWDZuSlN3TFcxRjF0R0lqSXI3WjBDWDVQR2Fx?=
 =?utf-8?B?UTdURjRHN1I4cXVvZ0QyMVI0N0lHYXhCcHR3UzVJZUlJZW81RC9MSWFZK3Nh?=
 =?utf-8?B?NFprZjFmMUp1UHRLaW5TdjVZRzJqQmdzdkJEMHpBMjRrNThoUWZOaWdEVjN4?=
 =?utf-8?B?MjZZbUhmdUtrbXVYRjR0UDRUSzJHdHJpUWFlM3dYcXNXOGZWbG91ems1RW04?=
 =?utf-8?B?UzNkdTNGZmw4bmhuVTRuUndkN2EwQ1ZhMVVpZElDUnAwQlFZa2NucmNPQ2dO?=
 =?utf-8?B?Q2dZREJmeVpneGpYR1ZaT3FnT1ZZS1hOa0sxVVQ0aVZuUHlaOTZDZnVSVGtm?=
 =?utf-8?B?NzErM2craDBsdFJ6cjBqU3lJZTFyV050OHdDdEEvMjNxZG44UStrLy9xcEVF?=
 =?utf-8?B?ZEcwaFU0Zklyb1o5dTZBTTFUZUJlTGpXdHBmajIraHV0NkhjOTlDMjV5ZTNG?=
 =?utf-8?B?aEx0RDRveUMyMGJaekxBb1NwMm96dzFzV3ZGaEdWT2tDZ3d1cXF2UFVwZldT?=
 =?utf-8?B?MlNwdC9NeFRtWTMvL05DWVpCbklrVGl3bXVWZ1FNc29jWGJKelM5K2dyR2NJ?=
 =?utf-8?B?RVJpU1dlZ2J4S1dVcGcxdVpldDBrejZPMURBRWRHWmRKWWxLbndWV1BjcGZh?=
 =?utf-8?B?ZHcwbEtobE4zOVc0dFBFSURhNkUrRW9hQkpxb21OamthcVRaREtObjNFOW1C?=
 =?utf-8?B?Y2JWNDhHWEg3alo0dGJ5MXBwYW5BY3plM3NzWjFhY3k0S1Q0TzhPTzZneHp6?=
 =?utf-8?B?ZkFlTGZMeEo4RTNyWXdUbFlEL3ZMMXR4NnlZcTB2ckFkVVFRbm5ZT0d1MStH?=
 =?utf-8?B?Q2hBUXhTVmFPVVBrc0pDSWl0VkFhOGE1dXpqR2Z5ZnpvOEtlQ3VFQmh1VG9w?=
 =?utf-8?B?NUdVTnRYdFFVelB5QzlNZlJBRVVHVjRGOUVRbG55VXdGVG9UcEhjUE9NZVgy?=
 =?utf-8?B?ZnNIbzdaQlZrUS9KQlpLRFIzNklIUnFpNGd5WldaSUJZV0tFVGE1RnFrU1dm?=
 =?utf-8?B?N0dSb0l0bUlXMWpYeWFNTnR6eXJ3dCs0NFVIMG9qeWo2cThWWlZ6SDRUdVYw?=
 =?utf-8?B?QWM4Qnk3SDhhTXpKSzBZNUZTbXdOblNBS2dsVjIxSzU2Sk1SSjhMWGdHazFV?=
 =?utf-8?B?dnV5UzQzaDRuSUFrUG1GUmtYMDgyWmpLQTN6WWkvSEhsRG5FUFBTeXhZZGl4?=
 =?utf-8?B?L3ZsQXNob3VuRnRyclpHTGJBdURMNXVua0E4T3pLdWxRREJWNnkvcWVFekdU?=
 =?utf-8?B?ZFFHODM2M1RURkRZRGVCd0VxTllLdjNFK2tvZUtkclB0RXQvZUlBMUp4MDRZ?=
 =?utf-8?B?Qmk4M0l3WkZmYThhY1NIRU9rRG11emhIaEt5bnF3eHFSQStRZEczbWRiQVNa?=
 =?utf-8?B?akl5Vlh5ZTl6UUJUVXp4MmFyYS9iMmNiNkdHTmwrV1laMWRsSzVVVGc1NFZz?=
 =?utf-8?B?N2pFcjUyVWlIS1BQdll1Q3FDTUQ3Q21VRW1JclZIUS9mY0s0bXJNREQraEFm?=
 =?utf-8?B?T3YxUXZYNjZ4RkFMbWwxQWhHZGErNmkrMUpHZTVCZ2VCZzJwNjZyZG1wUVpk?=
 =?utf-8?B?T01Nd1p1OWFhZU9ZUjIyaE92Uml2R1Frd2VrcXVmUGYvK2pjOVA0NFdOY2E2?=
 =?utf-8?B?b0Q2bEFLL09WL3ZoSzFmcjB1QjMyZm5mZU9ONEdZUUtSaVpSNmg5aytjU0xM?=
 =?utf-8?B?R3dwMFBrcmNIWFVQQXZnZWpEYWk1YVUySFptOGRlam9aa2d3ODhIMXdCaEFq?=
 =?utf-8?B?cnAxOW05eTE4STBlaGN2aEdkMGhUei81ZVREaEZRcFc5dGJSWHpjV2ZSTHJi?=
 =?utf-8?B?ZUNkMzNOVU53WUpkQTRGcTBxeUxOKzFhMFdUM0lrRjg1MEhXNUVRYWtUQ0Rw?=
 =?utf-8?B?WWh5VEk0NHFZWWw3RHl1L1NnZytqb2RjV0M4ZEFJRldPaWkvV3dJeTgvcnNW?=
 =?utf-8?B?RS9TcXV3cUVSZUtjVWRONURQeStFajFPNTNFcWVQb05FbjY5MllRdDhOZzdt?=
 =?utf-8?B?QktiMEpaR0I4cVhidnZRVUhMNmo5V0tVM1FrYlJkQXdSVDJCUVI5VWZpbzEx?=
 =?utf-8?B?U0dtMm15Rzk2b3Y5TVdoZ01qVmJ4TXkvQnk4RWYxR0k5anROaEZiVWttWUlD?=
 =?utf-8?B?VkZmd0tsVmxXQ1FaWnBDY3ErdzZTWHRWR2VmdlFPeW1VeHl5OTFXZG1oZWFp?=
 =?utf-8?Q?FK0PY4tGOjyhDkaCroKuEvWHsZruG/zCQcljG?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C24005E66BC60A479B1A1A97DB108240@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1699e02-208b-426d-ade8-08da1d280c6a
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2022 08:31:46.9936 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Mx1F4WmhRRNDjbWx7XL70sEmL5+KCBHLlC/DaP6v/xTcytSJtgzc5K6AECT1aDaUfKJ5pbyWZOPVI4iR/d3fJvRATJbW4pyPimEtPx3t6Rc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3039
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Check EDID before dpcd for
 possible HDR aux bl support
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "filippo.falezza@outlook.it" <filippo.falezza@outlook.it>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGVsbG8gTHl1ZGUsDQoNClNlZSBteSByZXNwb3NlIGJlbG93Lg0KDQpPbiBUdWUsIDIwMjItMDQt
MTIgYXQgMTM6NTAgLTA0MDAsIEx5dWRlIFBhdWwgd3JvdGU6DQo+IE9uIFR1ZSwgMjAyMi0wNC0x
MiBhdCAwODoyNSArMDMwMCwgSm91bmkgSMO2Z2FuZGVyIHdyb3RlOg0KPiA+IFdlIGhhdmUgbm93
IHNlZW4gcGFuZWwgKFhNRyBDb3JlIDE1IGUyMSBsYXB0b3ApIGF2ZXJ0aXppbmcgc3VwcG9ydA0K
PiA+IGZvciBJbnRlbCBwcm9wcmlldGFyeSBlRFAgYmFja2xpZ2h0IGNvbnRyb2wgdmlhIERQQ0Qg
cmVnaXN0ZXJzLCBidXQNCj4gPiBhY3R1YWxseSB3b3JraW5nIG9ubHkgd2l0aCBsZWdhY3kgcHdt
IGNvbnRyb2wuDQo+ID4gDQo+ID4gVGhpcyBwYXRjaCBhZGRzIHBhbmVsIEVESUQgY2hlY2sgZm9y
IHBvc3NpYmxlIEhEUiBzdGF0aWMgbWV0YWRhdGENCj4gPiBhbmQNCj4gPiBkb2VzIGRldGVjdGlv
biBmcm9tIERQQ0QgcmVnaXN0ZXJzIG9ubHkgaWYgdGhpcyBkYXRhIGJsb2NrIGV4aXN0cy4NCj4g
PiANCj4gPiBGaXhlczogNGE4ZDc5OTAxZDViICgiZHJtL2k5MTUvZHA6IEVuYWJsZSBJbnRlbCdz
IEhEUiBiYWNrbGlnaHQNCj4gPiBpbnRlcmZhY2UNCj4gPiAob25seSBTRFIgZm9yIG5vdykiKQ0K
PiA+IENsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lz
c3Vlcy81Mjg0DQo+ID4gQ2M6IEx5dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+DQo+ID4gQ2M6
IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+ID4gQ2M6IEphbmkgTmlrdWxh
IDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+ID4gVGVzdGVkLWJ5OiBGaWxpcHBvIEZhbGV6emEg
PGZpbGlwcG8uZmFsZXp6YUBvdXRsb29rLml0Pg0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjD
tmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICAuLi4vZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4X2JhY2tsaWdodC5jICAgfCAxMw0KPiA+ICsr
KysrKysrKysrKysNCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKykNCj4gPiAN
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9h
dXhfYmFja2xpZ2h0LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfYXV4X2JhY2tsaWdodC5jDQo+ID4gaW5kZXggOTdjZjNjYWMwMTA1Li5mNjllMTg1YjU4YzEg
MTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9h
dXhfYmFja2xpZ2h0LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwX2F1eF9iYWNrbGlnaHQuYw0KPiA+IEBAIC0xMDgsNiArMTA4LDE5IEBAIGludGVsX2Rw
X2F1eF9zdXBwb3J0c19oZHJfYmFja2xpZ2h0KHN0cnVjdA0KPiA+IGludGVsX2Nvbm5lY3RvciAq
Y29ubmVjdG9yKQ0KPiA+ICAgICAgICAgaW50IHJldDsNCj4gPiAgICAgICAgIHU4IHRjb25fY2Fw
WzRdOw0KPiA+ICANCj4gPiArICAgICAgIC8qDQo+ID4gKyAgICAgICAgKiBJZiB3ZSBkb24ndCBo
YXZlIEhEUiBzdGF0aWMgbWV0YWRhdGEgdGhlcmUgaXMgbm8gd2F5IHRvDQo+ID4gKyAgICAgICAg
KiBydW50aW1lIGRldGVjdCB1c2VkIHJhbmdlIGZvciBuaXRzIGJhc2VkIGNvbnRyb2wuIEZvcg0K
PiA+IG5vdw0KPiA+ICsgICAgICAgICogZG8gbm90IHVzZSBJbnRlbCBwcm9wcmlldGFyeSBlRFAg
YmFja2xpZ2h0IGNvbnRyb2wgaWYgd2UNCj4gPiArICAgICAgICAqIGRvbid0IGhhdmUgdGhpcyBk
YXRhIGluIHBhbmVsIEVESUQuIEluIGNhc2Ugd2UgZmluZA0KPiA+IHBhbmVsDQo+ID4gKyAgICAg
ICAgKiB3aGljaCBzdXBwb3J0cyBvbmx5IG5pdHMgYmFzZWQgY29udHJvbCwgYnV0IGRvZXNuJ3QN
Cj4gPiBwcm92aWRlDQo+ID4gKyAgICAgICAgKiBIRFIgc3RhdGljIG1ldGFkYXRhIHdlIG5lZWQg
dG8gc3RhcnQgbWFpbnRhaW5pbmcgdGFibGUNCj4gPiBvZg0KPiA+ICsgICAgICAgICogcmFuZ2Vz
IGZvciBzdWNoIHBhbmVscy4NCj4gPiArICAgICAgICAqLw0KPiA+ICsgICAgICAgaWYgKCEoY29u
bmVjdG9yLQ0KPiA+ID5iYXNlLmhkcl9zaW5rX21ldGFkYXRhLmhkbWlfdHlwZTEubWV0YWRhdGFf
dHlwZSAmDQo+ID4gKyAgICAgICAgICAgICBCSVQoSERNSV9TVEFUSUNfTUVUQURBVEFfVFlQRTEp
KSkNCj4gPiArICAgICAgICAgICAgICAgcmV0dXJuIGZhbHNlOw0KPiANCj4gVGhlIGJsb2NrIHVz
ZWQgZm9yIHRoaXMgaXMgYWN0dWFsbHkgZm9yIEhETUk/PyBIb3cgYml6YXJyZeKApg0KPiANCj4g
QW55d2F5IHllYWggLSBwYXRjaCBsb29rcyBnb29kIHRvIG1lLCBidXQgSSB0aGluayB3ZSBzaG91
bGQgcHJpbnQgYQ0KPiBkZWJ1Z2dpbmcNCj4gbWVzc2FnZSBvZiBzb21lIHNvcnQgd2hlbiB3ZSBk
ZXRlcm1pbmUgdGhhdCB0aGVyZSdzIG5vIEhEUiBiYWNrbGlnaHQNCj4gYmVjYXVzZQ0KPiBvZiB0
aGUgRURJRCAtIGFsb25nIHdpdGggcHJpbnRpbmcgaW5zdHJ1Y3Rpb25zIGZvciBob3cgdGhlIHVz
ZXIgY2FuDQo+IG92ZXJyaWRlDQo+IGl0IGlmIHdlJ3ZlIG1hZGUgdGhlIHdyb25nIGNob2ljZSBh
bG9uZyB3aXRoIHJlcG9ydGluZyBhIGJ1Zy4gQWxzbyAtDQo+IHdlIHNob3VsZA0KPiBoYXZlIHRo
ZQ0KDQpobW0sIGN1cnJlbnRseSB0aGVyZSBpcyBubyBvdmVycmlkZSBwb3NzaWJpbGl0eQ0KaW4g
aW50ZWxfZHBfYXV4X3N1cHBvcnRzX2hkcl9iYWNrbGlnaHQuIERvIHlvdSB0aGluayBJIHNob3Vs
ZCBhZGQgb25lPw0KDQpJIHNlbnQgdmVyc2lvbiAyLiBEaWRuJ3QgYWRkIHlvdXIgcmIgdGhlcmUg
YXMgSSB3YXNuJ3Qgc3VyZSBpZiBJDQp1bmRlcnN0b29kIHlvdXIgY29tbWVudCBjb3JyZWN0bHku
IFBsZWFzZSBjaGVjayBuZXcgdmVyc2lvbi4NCg0KPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9y
Zw0KDQp0YWcgZnJvbSBkaW0gYWRkZWQgaGVyZSB1c2luZyBgZGltIGZpeGVzICRjb21taXRgLg0K
DQpXaXRoIHRoYXQgZml4ZWQ6DQoNClJldmlld2VkLWJ5OiBMeXVkZSBQYXVsIDxseXVkZUByZWRo
YXQuY29tPg0KDQorDQogICAgICAgIGludGVsX2RwX3dhaXRfc291cmNlX291aShpbnRlbF9kcCk7
DQogDQogICAgICAgIHJldCA9IGRybV9kcF9kcGNkX3JlYWQoYXV4LCBJTlRFTF9FRFBfSERSX1RD
T05fQ0FQMCwNCnRjb25fY2FwLA0Kc2l6ZW9mKHRjb25fY2FwKSk7DQoNCkJSLA0KDQpKb3VuaSBI
w7ZnYW5kZXINCg0K
