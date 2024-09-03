Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1BF969332
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 07:24:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B02E10E177;
	Tue,  3 Sep 2024 05:24:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jYUzACRA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 233B210E177
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 05:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725341057; x=1756877057;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vjUzPPRNAChLEgAx/kYQ7w2c4HhfZRFtiN1v5oWDSJY=;
 b=jYUzACRApndd2ZP2/RswMHN4U8Tj470TOJgvnr9IkJPIABzU9tcKW2Wc
 GEHlxOwYM727OykblrNsquS33Lx2V8Mwxe5MwZyshTfn0xNGrWfvhZaWV
 E2POl2beNnOTqsWnoPZSIEP5A+l7QCkY8YdX8WCKVqbouwi8Z7SiOQylr
 3ufOORyaLeQ8b/SXT9yqKv34zr3JkQ7uFAAmtKYfeVdrtNCEY/mK4MDBc
 EA3AvypybAYmRr5zsLw0YwKl5779eFmA3d9ou858xe1RZbWWXoAJmTUo1
 ZzPhWvIarfhwwoWelKF3MV6wMWWZ16/jrSKVUEjeI1UtLi0vsfwYRZjWu Q==;
X-CSE-ConnectionGUID: dAQhIkOIQ/KrLJkt0qtIZQ==
X-CSE-MsgGUID: fB0ImmIHSJSPdYKB8fG4qg==
X-IronPort-AV: E=McAfee;i="6700,10204,11183"; a="35285843"
X-IronPort-AV: E=Sophos;i="6.10,197,1719903600"; d="scan'208";a="35285843"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 22:24:17 -0700
X-CSE-ConnectionGUID: ItBgZwdHQUqL4tOTIc2kLw==
X-CSE-MsgGUID: owRGH+wxTj29fuFiSSyZGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,197,1719903600"; d="scan'208";a="64823239"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Sep 2024 22:24:16 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Sep 2024 22:24:16 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 2 Sep 2024 22:24:16 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 2 Sep 2024 22:24:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LRMbrLqRoI3nOngP19lrmkXxMICaspjAyXeXGPzBjoQwwSoyHQSw8a0uV+jwWeLj2TVRSq2oXFY7t/C6SAMuuJq6Ee+KLD1spvBC5FrJQ1yKsSwsVTRlaTsqYCD20mgDJg6Ns9NhtNsyqt+FZA67RZG6+zLLHQrMAjXsrNl90jGHCglde90ec6b6+m46fq3qPn5r7iNPYW39FBEcWYXmlnNb2ugF4hXaYLlOf7xT8dudjZqm8YMJ860Ril9gIQ3FJiox9I7uEeKlH7QfXmt1vnaFt28JIleH8HhG2nFQMl8v2ONyVTyVtfdwokSEJQxllMQchtjIPi1oXn2B0cXgXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cug6D3Jvior2beD3fiY4tf3t4wGwSbnCaGx6XeewweU=;
 b=rkUcXMRBurmx03rN/j12TsCaM+H0OBX/QhTAmykhhfxX7D/1k97fnYCUIipWIghTUhkwULPOmhjzncyGmeQ9rM2YuEJVy4qzRJfKdtKrVRitBPrChiFadxYzYEGmvKfkvHyC5KzaoToAiDAbu8qgAc2nzrPLAl6E2dij8mTJp/OGkQ2uf0Myl0jb1Lx1mS218DZ2yyOvTnkqLdlhXkJYGi4gkt2OIkFZ11E1Ep5xSHw1WxyARhmLcyHXP3ATvBdVdhHiGTBgglKT5GPGAJDJijA8Qdn+5n2iVSCNeLfLhlI6YXfLdog5GsewthI3Nly1JTCEQIHRsjCfCOHRnWjUsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6772.namprd11.prod.outlook.com (2603:10b6:510:1b6::21)
 by SJ1PR11MB6275.namprd11.prod.outlook.com (2603:10b6:a03:456::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Tue, 3 Sep
 2024 05:24:13 +0000
Received: from PH7PR11MB6772.namprd11.prod.outlook.com
 ([fe80::dff2:cc87:74bc:27a1]) by PH7PR11MB6772.namprd11.prod.outlook.com
 ([fe80::dff2:cc87:74bc:27a1%2]) with mapi id 15.20.7918.024; Tue, 3 Sep 2024
 05:24:13 +0000
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "drm-devel@lists.freedesktop" <drm-devel@lists.freedesktop>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCHv2 3/5] Add crtc properties for global histogram
Thread-Topic: [PATCHv2 3/5] Add crtc properties for global histogram
Thread-Index: AQHa87WgCxuhSo9p/EeEQupr06IXXLJFmlCw
Date: Tue, 3 Sep 2024 05:24:12 +0000
Message-ID: <PH7PR11MB6772D84ED6F45849552F514B8D932@PH7PR11MB6772.namprd11.prod.outlook.com>
References: <20240821102349.3961986-1-arun.r.murthy@intel.com>
 <20240821102349.3961986-4-arun.r.murthy@intel.com>
In-Reply-To: <20240821102349.3961986-4-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB6772:EE_|SJ1PR11MB6275:EE_
x-ms-office365-filtering-correlation-id: 365a521f-08cd-4dc3-47d4-08dccbd8a575
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?XmvBP+KMBjVV1CR/rXtawTId8C8lUdrelP0/PPJ6YXGefe+7GAyIwnmTRApl?=
 =?us-ascii?Q?DidKXLT1iG+TgZcXfFYocdjhitZpyxB3WOqEkrYYDHrzR1CYFUQNjVZrvlYk?=
 =?us-ascii?Q?t4ArzHZNNPN6jiv9nMg/pS3N21wDNIsRLs7QunZQruEiHmLSLyME+9Gll0Ue?=
 =?us-ascii?Q?ViNzJoGsc//qLK00/zq7HGIwYp5aU5f2Hdppwek2sr+vbspLIij/JwdTcDgy?=
 =?us-ascii?Q?kf+1HU/MmLKMqKtaKE2AAHxf1qT4ReYG/3yMxt2+yofRwZf8Ed7MJTqyvkOO?=
 =?us-ascii?Q?OfzwTVivo1A6Vmm5pU4MoD3S5EPh3FO7IfaQrnuB1BoZqhvUz1AOrrAK/1SJ?=
 =?us-ascii?Q?E21GGlx1fKvFNyYyBNrNLqDtbfPfoqRXmqpNfV+P9QzR/wHohUZUU59VfR3g?=
 =?us-ascii?Q?QLMc9VMG4meO9M06+eFCTFAQFoRs5OCqKv7f9OhXuq8ubEm5AZirpyBZs2ZI?=
 =?us-ascii?Q?FI0ebRUPuXTuz9Tpe+tGe6I7uyCk972IR1HBb5rnRvz9/tVI7lJFgrNWnVwJ?=
 =?us-ascii?Q?zo123xby5ACTzsSgNn+pjhD9w5dDHVQ1uR0xJPsvaOJ2JzNv4aEwLoe6ybRu?=
 =?us-ascii?Q?Wl1WVcJK9SNeAIbyO4tQtE/E3fCvokLrnXv/aUF5FUnFhwEw/WZ8UwAtG3bd?=
 =?us-ascii?Q?XMoQPjcucDC82uVeyDGqDDdUlCQjM9FlR5e2Lo2w7i3Rrze3981XC6mAy6G5?=
 =?us-ascii?Q?/N7tQIRzBPFFNsovF6YlTqiBoRj+I+2ypMU/llOGVsJQzydTRRzHFuXTQ6Te?=
 =?us-ascii?Q?3XD6VtySowtvL9eqXiGNE1G13tEcTgd4AGPYOp+mzA1+wVRzm3A1IDoIbUEt?=
 =?us-ascii?Q?BpjcdgYpE9pV9ZdBqDYH0KPQ7hSHHnLmmx1HykfpK+UrXGgMHETa6WlUp8Ed?=
 =?us-ascii?Q?CKr18IpPaIx9A0xseu8WFuZa38IKk7oiQJ0wu8ceIlIaTHinRbTRHh9b/1jN?=
 =?us-ascii?Q?dJLwvoKsMUYjwt+8SFgkLvRAooGAqA4fSpbPEitZZ1uY4lzoEW0gMA5sraRS?=
 =?us-ascii?Q?ZoPmIKc4N53O472vvhZxeymAF+BG2fqmhbX+hcK2Yfy+F960k6GKu2mNO0Tt?=
 =?us-ascii?Q?TbXqwNId33jLW82Hmom8g7J7i9tFDCw1qw6uerZ8BwWoeDdZ7cA4cIZ4oUn/?=
 =?us-ascii?Q?EDeZnSMxOEgTIpdo9NB2CWF02XLbwDTaPPvUv59c9jsekwJh8Leh+CqH/X9H?=
 =?us-ascii?Q?4eehd0iZfxE6vsBej92zlD4FgagnnXUGVVP65kZocSkymNrD0DvDXdObFx5R?=
 =?us-ascii?Q?HtDHaRwySmEV4nzzOSwnozk3BS+CXxD+mfzpsANiARxp7fcEoucvsKQnnqEf?=
 =?us-ascii?Q?RDKtdyrLbifmcYxlFsIcPNPbYHXaUbOvOWfDFVqpvZGSoN3neSUCpuE8GJxS?=
 =?us-ascii?Q?LAgjVC2uOdX7n14CaDeXElvpERjWo44S7cm5N0/FpkZl6f11Kg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6772.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8yHPe4FoacsFMcfdEKs2SttlYpSA1FZ8wj3Nvl6Ihc2RPSO34VCDUSyOc2V7?=
 =?us-ascii?Q?/ESe+TKLNwCUJhdFNO/t15pmRluHN78zp+nWzCytgUZuS3j6RaIeW78qXUer?=
 =?us-ascii?Q?5r4rHnNVMTSLAgjSrcDl2qptSjXYifkKuG11A09PqUiGqH23qkUQoWkxx6Jt?=
 =?us-ascii?Q?MoMdikczLLI9OW+pHFbtVp/VN4TKF62nPB82lYSW9QSOFZLo6C/GHzE3A3nz?=
 =?us-ascii?Q?gVdlQwt1DNxqgxsBTzV3QWgXoYaUk7CV+W6iS7imoCt4snsZECc1DGO3IiTI?=
 =?us-ascii?Q?n9Ijc715eEFB/wfb8CsN2RnoHp/giSer8T6lHU6HAvjK7n9OgtBJu2P7i7E1?=
 =?us-ascii?Q?shvzXBlgXGn0h+KbhHtjzrWqa/JWdA/Wvsi2LRg5rGL+WogupX1zhjwnqhAz?=
 =?us-ascii?Q?6boMH5X9KFJ4ohqa9P3SVC0Zr2nsd0+XRMgwks0ZJUONeOoTuQKNyd0cupVX?=
 =?us-ascii?Q?4PynB/p/TN1YKS4cXdyi3JbRsrP7jvXYXC5eEsRgG0R9pPrnJIq7AFUjao9Z?=
 =?us-ascii?Q?vHC4W+zap8+e2p+PFPY01u0Nh5y9p4k4PmTRbO9hv2V8Etlc1qloAzG6h3+d?=
 =?us-ascii?Q?lTdukSZAysXvIfuF2i6NbRuFehpeIfRhJyeaJ9mtCioinJtJgPqnF8NQe2qw?=
 =?us-ascii?Q?qboVOkZpBX6vwHUkIx9V/quI/bbYwVkB/DKznkYrD3GeXpe22lPTD6O7pj1N?=
 =?us-ascii?Q?EAUFAZRKDiD0wz5Tm39b183emOYjJuL5ecyTxCpijUQk+KbrqHSmHwPnut6E?=
 =?us-ascii?Q?3KvhHz/MtFCVlmPFPw2LVaaQiMWkzjpurVvHEnRPJ8ZxyAmAW8cGGTFEU7i/?=
 =?us-ascii?Q?yC7Vjq4BgYZMc+otHbH5/3zf2zK3dQ4Kz90FbVz1E3zuO3M2ag2D+2ZvDzV2?=
 =?us-ascii?Q?xZ8Wxw2/PF9st+PEcyifhuWCac8mXml/ebVVJHP6DhQNgVH49gyUjwuJSeA9?=
 =?us-ascii?Q?otUpMbRtlEgKa1M/aObsArWcrGagYJBCur9VvIXkGFLh0lHanCsC52cYTOeN?=
 =?us-ascii?Q?yf2SFRrqAD3rTWWQgFYtLH3SNNnBGAV7oIuGS1Udk0kX+GXHYtf42oQMEkbw?=
 =?us-ascii?Q?yc6CQwMKQfR83bwe9sC2ndUnWGRR+E7yLGflOZGbVeUsG1UtqCR8rQOg+Xop?=
 =?us-ascii?Q?/97/FPyDjG6e7yErRPbqTGL6nPKKVSz8duJDJnSfeA7GNtiP4cgp7N/EGv1g?=
 =?us-ascii?Q?yDJq9Pi8pPgbw3rOz7LnKhAEZyANe2WhS032MXuWZuf0BCVCMy12UUxMsh5i?=
 =?us-ascii?Q?LX2Bv/Z0U5GLCm+5udVXERZ5KHnH29SWCUJHzXAoSKr+REA9eTgD6Gb/y13U?=
 =?us-ascii?Q?i4RrHg1mFomH0khrRBSdlkNNnc/CvKm/KQeFv2fHPeYRTu9+CB6QhPPnLi6k?=
 =?us-ascii?Q?gH+/kX6AbyuTzCKAurkVJWXq4rNUdL6gYhcy5/KT6Qh1U9W6XTSLzb43LRss?=
 =?us-ascii?Q?9z28pjhMAUkjyI1UdPDnt3AR1sVx3eWuiqBvnRBw7En5gePxqaPHiHTLjQiJ?=
 =?us-ascii?Q?6QeLaXXXK9qK1yke+jtkQMGgJ8aNGjbbHL//+Oazh3wXFfhdkmP/g6d1wt/6?=
 =?us-ascii?Q?WUNWKpHWwCqUUSN/gZxklYkXzo9/W1BfigOnTaxC?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6772.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 365a521f-08cd-4dc3-47d4-08dccbd8a575
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2024 05:24:12.8827 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bm9y9HX+CYo+v80WKtnLo6+9KbM4o27Tut67Au+GV5zRajAh/yFrk16VhSS3hw2IRrwO5LdIc5RKcz1VqxFi/ow0iukkkaHE1gFRMYy8uCY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6275
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

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ar=
un
> R Murthy
> Sent: Wednesday, August 21, 2024 3:54 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: [PATCHv2 3/5] Add crtc properties for global histogram
>=20
> CRTC properties have been added for enable/disable histogram, reading the
> histogram data and writing the IET data.
> "HISTOGRAM_EN" is the crtc property to enable/disable the global histogra=
m
> and takes a value 0/1 accordingly.
> "Histogram" is a crtc property to read the binary histogram data.
> "Global IET" is a crtc property to write the IET binary LUT data.
>=20
> v2: Read the histogram blob data before sending uevent (Jani)
>=20
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic.c   |   5 +
>  drivers/gpu/drm/i915/display/intel_crtc.c     | 202 +++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_crtc.h     |   5 +
>  drivers/gpu/drm/i915/display/intel_display.c  |  13 ++
>  .../drm/i915/display/intel_display_types.h    |  17 ++
>  .../gpu/drm/i915/display/intel_histogram.c    |   7 +
>  6 files changed, 248 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c
> b/drivers/gpu/drm/i915/display/intel_atomic.c
> index 76aa10b6f647..693a22089937 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -246,6 +246,8 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
>=20
>  	__drm_atomic_helper_crtc_duplicate_state(crtc, &crtc_state->uapi);
>=20
> +	if (crtc_state->global_iet)
> +		drm_property_blob_get(crtc_state->global_iet);
>  	/* copy color blobs */
>  	if (crtc_state->hw.degamma_lut)
>  		drm_property_blob_get(crtc_state->hw.degamma_lut);
> @@ -277,6 +279,7 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
>  	crtc_state->fb_bits =3D 0;
>  	crtc_state->update_planes =3D 0;
>  	crtc_state->dsb =3D NULL;
> +	crtc_state->histogram_en_changed =3D false;
>=20
>  	return &crtc_state->uapi;
>  }
> @@ -312,6 +315,8 @@ intel_crtc_destroy_state(struct drm_crtc *crtc,
>=20
>  	drm_WARN_ON(crtc->dev, crtc_state->dsb);
>=20
> +	if (crtc_state->global_iet)
> +		drm_property_blob_put(crtc_state->global_iet);
>  	__drm_atomic_helper_crtc_destroy_state(&crtc_state->uapi);
>  	intel_crtc_free_hw_state(crtc_state);
>  	if (crtc_state->dp_tunnel_ref.tunnel)
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c
> b/drivers/gpu/drm/i915/display/intel_crtc.c
> index 1b578cad2813..24f160359422 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -10,6 +10,7 @@
>  #include <drm/drm_fourcc.h>
>  #include <drm/drm_plane.h>
>  #include <drm/drm_vblank_work.h>
> +#include <drm/drm_atomic_uapi.h>
>=20
>  #include "i915_vgpu.h"
>  #include "i9xx_plane.h"
> @@ -26,6 +27,7 @@
>  #include "intel_drrs.h"
>  #include "intel_dsi.h"
>  #include "intel_fifo_underrun.h"
> +#include "intel_histogram.h"
>  #include "intel_pipe_crc.h"
>  #include "intel_psr.h"
>  #include "intel_sprite.h"
> @@ -201,6 +203,7 @@ static struct intel_crtc *intel_crtc_alloc(void)  sta=
tic
> void intel_crtc_free(struct intel_crtc *crtc)  {
>  	intel_crtc_destroy_state(&crtc->base, crtc->base.state);
> +	intel_histogram_deinit(crtc);
>  	kfree(crtc);
>  }
>=20
> @@ -220,6 +223,100 @@ static int intel_crtc_late_register(struct drm_crtc
> *crtc)
>  	return 0;
>  }
>=20
> +static int intel_crtc_get_property(struct drm_crtc *crtc,
> +				   const struct drm_crtc_state *state,
> +				   struct drm_property *property,
> +				   uint64_t *val)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(crtc->dev);
> +	const struct intel_crtc_state *intel_crtc_state =3D
> +		to_intel_crtc_state(state);
> +	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc);
> +
> +	if (property =3D=3D intel_crtc->histogram_en_property) {
> +		*val =3D intel_crtc_state->histogram_en;
> +	} else if (property =3D=3D intel_crtc->global_iet_property) {
> +		*val =3D (intel_crtc_state->global_iet) ?
> +			intel_crtc_state->global_iet->base.id : 0;
> +	} else if (property =3D=3D intel_crtc->histogram_property) {
> +		*val =3D (intel_crtc_state->histogram) ?
> +			intel_crtc_state->histogram->base.id : 0;
> +	} else {
> +		drm_err(&i915->drm,
> +			"Unknown property [PROP:%d:%s]\n",
> +			property->base.id, property->name);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static int
> +intel_atomic_replace_property_blob_from_id(struct drm_device *dev,
> +					   struct drm_property_blob **blob,
> +					   u64 blob_id,
> +					   ssize_t expected_size,
> +					   ssize_t expected_elem_size,
> +					   bool *replaced)
> +{
> +	struct drm_property_blob *new_blob =3D NULL;
> +
> +	if (blob_id !=3D 0) {
> +		new_blob =3D drm_property_lookup_blob(dev, blob_id);
> +		if (!new_blob)
> +			return -EINVAL;
> +
> +		if (expected_size > 0 &&
> +		    new_blob->length !=3D expected_size) {
> +			drm_property_blob_put(new_blob);
> +			return -EINVAL;
> +		}
> +		if (expected_elem_size > 0 &&
> +		    new_blob->length % expected_elem_size !=3D 0) {
> +			drm_property_blob_put(new_blob);
> +			return -EINVAL;
> +		}
> +	}
> +
> +	*replaced |=3D drm_property_replace_blob(blob, new_blob);
> +	drm_property_blob_put(new_blob);
> +
> +	return 0;
> +}
> +
Can we align this design to what we have for get property with similar patt=
ern of if else logic and return 0.
> +static int intel_crtc_set_property(struct drm_crtc *crtc,
> +				   struct drm_crtc_state *state,
> +				   struct drm_property *property,
> +				   u64 val)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(crtc->dev);
> +	struct intel_crtc_state *intel_crtc_state =3D
> +		to_intel_crtc_state(state);
> +	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc);
> +	bool replaced =3D false;
> +
> +	if (property =3D=3D intel_crtc->histogram_en_property) {
> +		intel_crtc_state->histogram_en =3D val;
> +		intel_crtc_state->histogram_en_changed =3D true;
> +		return 0;
> +	}
> +
> +	if (property =3D=3D intel_crtc->global_iet_property) {
> +		intel_atomic_replace_property_blob_from_id(crtc->dev,
> +							   &intel_crtc_state-
> >global_iet,
> +							   val,
> +							   sizeof(uint32_t) *
> HISTOGRAM_IET_LENGTH,
> +							   -1, &replaced);
> +		if (replaced)
> +			intel_crtc_state->global_iet_changed =3D true;
> +		return 0;
> +	}
> +
> +	drm_dbg_atomic(&i915->drm, "Unknown property
> [PROP:%d:%s]\n",
> +		       property->base.id, property->name);
> +	return -EINVAL;
> +}
> +
>  #define INTEL_CRTC_FUNCS \
>  	.set_config =3D drm_atomic_helper_set_config, \
>  	.destroy =3D intel_crtc_destroy, \
> @@ -229,7 +326,9 @@ static int intel_crtc_late_register(struct drm_crtc
> *crtc)
>  	.set_crc_source =3D intel_crtc_set_crc_source, \
>  	.verify_crc_source =3D intel_crtc_verify_crc_source, \
>  	.get_crc_sources =3D intel_crtc_get_crc_sources, \
> -	.late_register =3D intel_crtc_late_register
> +	.late_register =3D intel_crtc_late_register, \
> +	.atomic_set_property =3D intel_crtc_set_property, \
> +	.atomic_get_property =3D intel_crtc_get_property

+drm-devel

Can this be made drm crtc property as histogram is generic?

>=20
>  static const struct drm_crtc_funcs bdw_crtc_funcs =3D {
>  	INTEL_CRTC_FUNCS,
> @@ -374,6 +473,10 @@ int intel_crtc_init(struct drm_i915_private
> *dev_priv, enum pipe pipe)
>  	intel_color_crtc_init(crtc);
>  	intel_drrs_crtc_init(crtc);
>  	intel_crtc_crc_init(crtc);
> +	intel_histogram_init(crtc);
> +
> +	/* Initialize crtc properties */
> +	intel_crtc_add_property(crtc);
>=20
>  	cpu_latency_qos_add_request(&crtc->vblank_pm_qos,
> PM_QOS_DEFAULT_VALUE);
>=20
> @@ -690,3 +793,100 @@ void intel_pipe_update_end(struct
> intel_atomic_state *state,
>  out:
>  	intel_psr_unlock(new_crtc_state);
>  }
> +
> +static const struct drm_prop_enum_list histogram_en_names[] =3D {
> +	{ INTEL_HISTOGRAM_DISABLE, "Disable" },
> +	{ INTEL_HISTOGRAM_ENABLE, "Enable" },
> +};
> +
> +/**
> + * intel_attach_histogram_en_property() - add property to
> +enable/disable histogram
> + * @intel_crtc: pointer to the struct intel_crtc on which the global his=
togram
> is to
> + *		be enabled/disabled
> + *
> + * "HISTOGRAM_EN" is the crtc propety to enable/disable global
> +histogram  */ void intel_attach_histogram_en_property(struct intel_crtc
> +*intel_crtc) {
> +	struct drm_crtc *crtc =3D &intel_crtc->base;
> +	struct drm_device *dev =3D crtc->dev;
> +	struct drm_property *prop;
> +
> +	prop =3D intel_crtc->histogram_en_property;
> +	if (!prop) {
> +		prop =3D drm_property_create_enum(dev, 0,
> +						"HISTOGRAM_EN",
> +						histogram_en_names,
> +
> 	ARRAY_SIZE(histogram_en_names));
> +		if (!prop)
> +			return;
> +
> +		intel_crtc->histogram_en_property =3D prop;
> +	}
> +
> +	drm_object_attach_property(&crtc->base, prop, 0); }
> +
> +/**
> + * intel_attach_global_iet_property() - add property to write Image
> +Enhancement data
> + * @intel_crtc: pointer to the struct intel_crtc on which global
> +histogram is enabled
> + *
> + * "Global IET" is the crtc property to write the Image Enhancement LUT
> +binary data  */ void intel_attach_global_iet_property(struct intel_crtc
> +*intel_crtc) {
> +	struct drm_crtc *crtc =3D &intel_crtc->base;
> +	struct drm_device *dev =3D crtc->dev;
> +	struct drm_property *prop;
> +
> +	prop =3D intel_crtc->global_iet_property;
> +	if (!prop) {
> +		prop =3D drm_property_create(dev, DRM_MODE_PROP_BLOB
> | DRM_MODE_PROP_ATOMIC,
> +					   "Global IET", 0);
> +		if (!prop)
> +			return;
> +
> +		intel_crtc->global_iet_property =3D prop;
> +	}
> +
> +	drm_object_attach_property(&crtc->base, prop, 0); }
> +
> +/**
> + * intel_attach_histogram_property() - crtc property to read the histogr=
am.
> + * @intel_crtc: pointer to the struct intel_crtc on which the global his=
togram
> + *		was enabled.
> + * "Global Histogram" is the crtc property to read the binary histogram =
data.
> + */
> +void intel_attach_histogram_property(struct intel_crtc *intel_crtc) {
> +	struct drm_crtc *crtc =3D &intel_crtc->base;
> +	struct drm_device *dev =3D crtc->dev;
> +	struct drm_property *prop;
> +	struct drm_property_blob *blob;
> +
> +	prop =3D intel_crtc->histogram_property;
> +	if (!prop) {
> +		prop =3D drm_property_create(dev, DRM_MODE_PROP_BLOB
> |
> +					   DRM_MODE_PROP_ATOMIC |
> +					   DRM_MODE_PROP_IMMUTABLE,
> +					   "Global Histogram", 0);
> +		if (!prop)
> +			return;
> +
> +		intel_crtc->histogram_property =3D prop;
> +	}
> +	blob =3D drm_property_create_blob(dev, sizeof(uint32_t) *
> HISTOGRAM_BIN_COUNT, NULL);
> +	intel_crtc->config->histogram =3D blob;
> +
> +	drm_object_attach_property(&crtc->base, prop, blob->base.id); }
> +
> +int intel_crtc_add_property(struct intel_crtc *intel_crtc) {
> +	intel_attach_histogram_en_property(intel_crtc);
> +	intel_attach_histogram_property(intel_crtc);
> +	intel_attach_global_iet_property(intel_crtc);
> +
> +	return 0;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h
> b/drivers/gpu/drm/i915/display/intel_crtc.h
> index b615b7ab5ccd..56c6b7c6037e 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.h
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.h
> @@ -7,6 +7,7 @@
>  #define _INTEL_CRTC_H_
>=20
>  #include <linux/types.h>
> +#include <drm/drm_crtc.h>
>=20
>  enum i9xx_plane_id;
>  enum pipe;
> @@ -49,4 +50,8 @@ void intel_wait_for_vblank_if_active(struct
> drm_i915_private *i915,
>  				     enum pipe pipe);
>  void intel_crtc_wait_for_next_vblank(struct intel_crtc *crtc);
>=20
> +int intel_crtc_add_property(struct intel_crtc *intel_crtc); void
> +intel_attach_histogram_en_property(struct intel_crtc *intel_crtc); void
> +intel_attach_global_iet_property(struct intel_crtc *intel_crtc); void
> +intel_attach_histogram_property(struct intel_crtc *intel_crtc);
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 9f2a4a854548..20caa952d687 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -94,6 +94,7 @@
>  #include "intel_fifo_underrun.h"
>  #include "intel_frontbuffer.h"
>  #include "intel_hdmi.h"
> +#include "intel_histogram.h"
>  #include "intel_hotplug.h"
>  #include "intel_link_bw.h"
>  #include "intel_lvds.h"
> @@ -4335,6 +4336,10 @@ static int intel_crtc_atomic_check(struct
> intel_atomic_state *state,
>  	if (ret)
>  		return ret;
>=20
> +	/* HISTOGRAM changed */
> +	if (crtc_state->histogram_en_changed)
> +		return intel_histogram_atomic_check(crtc);
> +
>  	return 0;
>  }
>=20
> @@ -7512,6 +7517,14 @@ static void intel_atomic_commit_tail(struct
> intel_atomic_state *state)
>  		 * FIXME get rid of this funny new->old swapping
>  		 */
>  		old_crtc_state->dsb =3D fetch_and_zero(&new_crtc_state-
> >dsb);
> +
> +		/* Re-Visit: HISTOGRAM related stuff */
> +		if (new_crtc_state->histogram_en_changed)
> +			intel_histogram_update(crtc,
> +					       new_crtc_state->histogram_en);
> +		if (new_crtc_state->global_iet_changed)
> +			intel_histogram_set_iet_lut(crtc,
> +						    (u32 *)new_crtc_state-
> >global_iet->data);
>  	}
>=20
>  	/* Underruns don't always raise interrupts, so check manually */ diff
> --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 79d34d6d537d..ddf1cb0ab26d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -99,6 +99,12 @@ enum intel_broadcast_rgb {
>  	INTEL_BROADCAST_RGB_LIMITED,
>  };
>=20
> +/* HISTOGRAM property */
> +enum intel_histogram_en_prop {
> +	INTEL_HISTOGRAM_PROP_DISABLE,
> +	INTEL_HISTOGRAM_PROP_ENABLE,
> +};
> +
>  struct intel_fb_view {
>  	/*
>  	 * The remap information used in the remapped and rotated views to
> @@ -1431,6 +1437,13 @@ struct intel_crtc_state {
>=20
>  	/* LOBF flag */
>  	bool has_lobf;
> +
> +	/* HISTOGRAM data */
> +	int histogram_en;
> +	struct drm_property_blob *global_iet;
> +	struct drm_property_blob *histogram;
> +	bool global_iet_changed;
> +	bool histogram_en_changed;
>  };
>=20
>  enum intel_pipe_crc_source {
> @@ -1538,6 +1551,10 @@ struct intel_crtc {
>  	struct pm_qos_request vblank_pm_qos;
>=20
>  	struct intel_histogram *histogram;
> +	/* HISTOGRAM properties */
> +	struct drm_property *histogram_en_property;
> +	struct drm_property *global_iet_property;
> +	struct drm_property *histogram_property;
>=20
>  #ifdef CONFIG_DEBUG_FS
>  	struct intel_pipe_crc pipe_crc;
> diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c
> b/drivers/gpu/drm/i915/display/intel_histogram.c
> index 83ba826a7a89..ad4f75607ccb 100644
> --- a/drivers/gpu/drm/i915/display/intel_histogram.c
> +++ b/drivers/gpu/drm/i915/display/intel_histogram.c
> @@ -66,6 +66,12 @@ static void intel_histogram_handle_int_work(struct
> work_struct *work)
>  			       i, histogram->bindata[i]);
>  	}
>=20
> +	drm_property_replace_global_blob(&i915->drm,
> +			&intel_crtc->config->histogram,
> +			sizeof(histogram->bindata),
> +			histogram->bindata, &intel_crtc->base.base,
> +			intel_crtc->histogram_property);
> +
>  	/* Notify user for Histogram rediness */
>  	if (kobject_uevent_env(&i915->drm.primary->kdev->kobj,
> KOBJ_CHANGE,
>  			       histogram_event))
> @@ -193,6 +199,7 @@ static void intel_histogram_disable(struct intel_crtc
> *intel_crtc)
>=20
>  	cancel_delayed_work(&histogram->handle_histogram_int_work);
>  	histogram->enable =3D false;
> +	intel_crtc->config->histogram_en =3D false;
>  }
>=20
>  int intel_histogram_update(struct intel_crtc *intel_crtc, bool enable)
> --
> 2.25.1

