Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF91974F2A
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 12:00:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB49210E044;
	Wed, 11 Sep 2024 10:00:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FG+1veJ9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D124210E044
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 10:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726048820; x=1757584820;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ziy/hzhdZvL+EOz8jutLJqmCgozroR5sqZ98RyFRmW8=;
 b=FG+1veJ9V4sDg1qTxCc5FDWhX+Kg6QCEOsOA1j3bD84M7P/wJk5tJRA5
 zKxC/89XU3EkfZoXGukwT9Fkge+Dt5sdf6TYufSCH1JgmWYb72RanDFvE
 pHf+yW3DuFFsm5r8uVBA2McwtsR3vGkbhUX/RtfRviNLhNfieuMHUcf70
 Aiy9yRnD0dB074q136b/RFplMrkrWU/0ZCGMR7FEaNFUOFwW8NKbjh9Ox
 njYkkpAwIM82ZRwwO9gsPGb6Gp7taYJuWzZm2/vjhbslIp3lGbUhTZyY6
 rLIe12rlbGjFgruSLUPY0dn8HMakaPfYgimkjErUXscRRibKwORF/B8Mj w==;
X-CSE-ConnectionGUID: ZHjzCN4lQOayRkFqOWyvwA==
X-CSE-MsgGUID: 5oLxOSdjQDuA0VU81IokDw==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="24708807"
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="24708807"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 03:00:19 -0700
X-CSE-ConnectionGUID: iYcRWZ/xToeuKQ2gXlBZag==
X-CSE-MsgGUID: g7ujhj2KTFyrvfudbN6eXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="66944493"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2024 03:00:18 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 11 Sep 2024 03:00:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 11 Sep 2024 03:00:17 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 11 Sep 2024 03:00:17 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 11 Sep 2024 03:00:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ACE7o84wvkuLtl6EueUzevsGTU55x6iR2K7ieaVnVOhpFl0gXmG7nCnTz0gsRUrmjz8r2zocGlTMw3H4gA2FZvswMa9296XssGzbYNnTShMo9c3nzW2QCEpZ4IDwyiXFLwsUDsODWTcsAdBTACGSP8oJtzoUJAcAW+4N6kHliDFMY1Nh1ZezDAFePei80R7/GUwlZ6IQTDLCRcmrM2sSj2yFSCua20ZMPmeCvqB5fkUryQRDeJtURVspfLFUYW11G/F7LXr+mtcSfQInOR2wHWfZasXttzr2xQTJjtgDombyIxTg1nQo6jv72Ott8eNoodHmi11cPDEd5pQ+fnM0gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ImE5ABXHTM7pPjw+t5LB5X1LEIxqpARnDVlWKLtDM/U=;
 b=j9MMjzIWgVbGCLhE1+LM0nI971UoPF3xHIGcIiIiuDM/3nE7Y7OaFuhVkQ92bLAQ4l15VL2LARCVC+ygvAWBsXYR5y5e3LoZLBuE3nW1ZHNLxCOh3+bjzP2ME+zLmZKH4DP3P0rt/z7fFfxz2NSkYNRhk73JELGfGrjcbsFXDNwzDlWvt3M8kNJy6rNcExwdKD31Q8ObnZwCDGD+zpWG6uWCzfaUN/TwV+kKs9y3y2LpHiAIYkiDSc14E93V1RBz8fRRHjkLI8g+8zUPGiYSfJXiAunskgWMe8SYEmnRLXk7zug2PPaNNaKH0HIPOr1/bv/Hlh5GrrNg5CSa24LAww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CH0PR11MB8236.namprd11.prod.outlook.com (2603:10b6:610:184::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Wed, 11 Sep
 2024 10:00:14 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.7918.024; Wed, 11 Sep 2024
 10:00:13 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCHv2 2/5] drm/i915/display: histogram interrupt handling
Thread-Topic: [PATCHv2 2/5] drm/i915/display: histogram interrupt handling
Thread-Index: AQHa87WhRh012r6hHE2erjKOxk8GQLJSeIQg
Date: Wed, 11 Sep 2024 10:00:13 +0000
Message-ID: <SN7PR11MB6750DA63AE737BD354294CADE39B2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240821102349.3961986-1-arun.r.murthy@intel.com>
 <20240821102349.3961986-3-arun.r.murthy@intel.com>
In-Reply-To: <20240821102349.3961986-3-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CH0PR11MB8236:EE_
x-ms-office365-filtering-correlation-id: abef663f-7ab2-4579-d1ba-08dcd24887e0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?NKwCUVPGxU1vAJKzYiiWzCp4neidfi5mEwJ3zTTu55/ZJIa21SKmBFfho3go?=
 =?us-ascii?Q?hP0X7LFSs0VCVkK5q33MAJHH2pyNtcyvacQdihsgFPmZiWV7Lk2YhUCjowK0?=
 =?us-ascii?Q?nEuSb/AB/YSM5iRebqHDc4jtJMSAUOf/rI6OZP9mo6QfGB7ZfEOsxyXXGweS?=
 =?us-ascii?Q?vYvvH2oOJhtOVt70laX1b2iDLMnjL0Puz7KcJ2BBVlaurV7a33oumbsjbuCn?=
 =?us-ascii?Q?cffkIQaLjdTKNsZXxAeep2MhVfD7b+1K7L+5SFISFrGAD52LjcYVejfoQEcE?=
 =?us-ascii?Q?Rai4Y3vSjxNY2DYRyIwuVUVzASsgeokK6uBUpx1gWaaauNP4BHkJ31BPSBaU?=
 =?us-ascii?Q?PRHO7NJG8hJUlAzVyopg1e7QdeVI588O6QgDRVxmNI7AnE+IkwYIvCsejrPo?=
 =?us-ascii?Q?VLKZJ4Gt0p5mfse/I6pwuCQuoMBVjFBKt5kqsd1fsS7chKtmxc6wXTldjWFu?=
 =?us-ascii?Q?pdapCojEppsZxw9udJludC7SdcxJTczzFMI5xSEDoDCphblBYKuCGFgz4XLL?=
 =?us-ascii?Q?1Bf4Tsn25UuLw9W7uO9G4O3eoNvJrylrza/8OZzeZhsrScpA92bDIp25jHFT?=
 =?us-ascii?Q?QaoBMlrtyNA56nWwUYfk+37rU5Elgz53PyBxNQijAN4V9uJ+RuR7G90wfBZZ?=
 =?us-ascii?Q?aFraCOT01uK+jaPj+n7RuQHrl4+Aq7k2/nJc3/p6vTHsJwOHbDZN7AbCS30R?=
 =?us-ascii?Q?LAJqLLgdaT4zm4kXe/xc96N7kXnmZfx3gqH8Yvxvszuo4aE8kH6rwlp9PywR?=
 =?us-ascii?Q?/cK06JOldhWfy289ni3rkQSSgssJCwwpFudOhlUupZh1VkfSWoDoOSvwjCO/?=
 =?us-ascii?Q?NvSz8648rsWpLm8vqYGq+z3iT3VVSyoVrbt2b7L5gtaSIw8Uz7jGJBfLnHoh?=
 =?us-ascii?Q?+12NxAwvjC1LmkM6eIwW8hV5IqCNvPpfClbkiFeMWaeF5KEWlSWQaXxqUBqd?=
 =?us-ascii?Q?ucI8O8moRYcro8aapvhfcAolAMmSbQca1tjMC+NFTc8rBufZw2HVsf0Gc1j7?=
 =?us-ascii?Q?Po2uhPQkS/0XmAiE4UPmybQjgbISAs1I4YeRSUXyoMpOsEhAtAY893hPJAap?=
 =?us-ascii?Q?ncU8eafUYracqs/pSEVHVXfmsoEtPYMVoreE/uPrjuv7yIVzTxike6ih18uo?=
 =?us-ascii?Q?tq9dg5CeoiWxo7+qZe9YQXIADDxw8n4wc5BFLU7+lZFt5Bm72ZdzDKvrbSdI?=
 =?us-ascii?Q?65M3VcB4p7wNtbMDMYdO5PPh50t324nHBLFOLStoxk8W7iEl/ttX4CbayhUu?=
 =?us-ascii?Q?dFRwjZLTGtgktokW/Ah7RS7//gjSjaPH+02Z218heHicD7/hsUhstSG8FO/p?=
 =?us-ascii?Q?zTOA6nEnwj0CntrEzPgxfQ+7R4AQv56lnBjd1fYuRr6rZ5Qy0mHpWmhGYMa+?=
 =?us-ascii?Q?hx2kqMreFt1UlNghlaywLuLPumSu8rcjUXGuYDdpBQAZwBBBsA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?noAABmmvnBrrkupFXCoxwFPbPYoJD5/XbXOkx62M5BX+lQPOKKzeQFfzxsCw?=
 =?us-ascii?Q?tZzz/LHd3WvC0IVRLqCcTomBqJA3aKIRMkF3ovKITHl1nFsDtG/0PPkzs4Y+?=
 =?us-ascii?Q?bb0/JrxwqDm8XuFNKrfE+yv+gP9kQ9TBu9mpw/31yik7KLZ8qF8mkQTftWdR?=
 =?us-ascii?Q?cr/yO2v/9s4IwgwvEUu0CRbB9uvZ6DuBQa/LEFP+lK85YcY5CJHmlevQ/1va?=
 =?us-ascii?Q?Yv1pPLUZcOJcLxYeR+mP9oYdksYJS6UydKSxpuxLFpAyW1CJPIYLDgZf67jB?=
 =?us-ascii?Q?RO2hoRDj2M30HefQUEMnu3qOuqcbuJEWinBjpJWCYNJJxxlXysC1ij6Px75H?=
 =?us-ascii?Q?V8qkNSAPHl2vseyuuj2qO5at5/t4dZmWCXpsm9c741ysWGD7P79ragyA676y?=
 =?us-ascii?Q?D92JQV9N3pNB+W8k57xhXyLlB8SsB6et/tXu2jMK9kSOMBLYw7iWowHPbOYM?=
 =?us-ascii?Q?AJ+Zb25rpxNlQ21OC2mWBRjnM8LgMQHyhCk3/zp0Zn/vkeQ4j1GqUqmmjWVV?=
 =?us-ascii?Q?BKCMofzGV8Lm24I6F9O1/QXHyhwj1sKw0tUSxskR1aPowad2gNPn7TAUCrp1?=
 =?us-ascii?Q?OSr4U1DZjegtfWtgPpYKHcp0IX3MUY6ivxbJ043fp2LOeWPT6v7QMSZF74e+?=
 =?us-ascii?Q?iv5zrcfn98u44/QrD+bttqPOoOGJl4hQ4anVR0MfNZDaVgFr6zDXKhnqm+Wf?=
 =?us-ascii?Q?Ouy92l4md4Umla3o1Ygr+3DDA0WSzbJ1t+KWPRTvwAgFyWLcD3V3D89esUZH?=
 =?us-ascii?Q?cs0L1qXowiF1bMEJgi3h2AXKqUTjNcJCcmvAF/qiQuhWdhEU4Fb9v+NaCG3b?=
 =?us-ascii?Q?e6Z0fo029ux8jajiwRQgZRj7XXqJ0WLGLitrgGKxEF9ly5ABBVbguE77IY+X?=
 =?us-ascii?Q?ZTHkYVs24aqGqV7fiKsnEYdfDRlk/cV8Aa/w461ruCSzr6C4ViBY9rdvQ8py?=
 =?us-ascii?Q?EzY+OeRVc0v5tmSmE6iE/ulXzDjvarY23XWPgR+EeaHv4suPM6BKFurqTEeZ?=
 =?us-ascii?Q?rnSPVjt7qSCuQI3OyMvuOrXtgr5hqoqDsFohKOhwgCFl/XKxdDk78EiDghrM?=
 =?us-ascii?Q?zTRebDKYNG7SaPhvzxvrZYRuNMLz/n+Z96lR5fWdFCCl1HDgKbUhQMwasMze?=
 =?us-ascii?Q?45dLcQR97RBRAsLwYqkmi+AYHtNUzwxlvqoyEjVpPjPcglsge24fBpO9x49X?=
 =?us-ascii?Q?YNmBtIZbOirYsL4xQGYfIbQauGQaniNpZgiuEEFp5aI7+K4Agn9dZ53iB2kf?=
 =?us-ascii?Q?c4zpqFTKBBezNikSXAHgkTPjIDmK9avDn3yYvCHc8F3uNbgewkcqOPMzHPa1?=
 =?us-ascii?Q?J9sAN0zPGnp5s7ZlQqWtTB0bmPj/NHo9NTKXg+hQJf+QlrN7DQIxiaf2tdNT?=
 =?us-ascii?Q?75L6bWYeGeDrvy/6+1B+Gs+OENLmH3LIEVt4EOwxCIpmCRJmO6K4Ogbh+CoS?=
 =?us-ascii?Q?glXmvS95u/FzwlURT5ntOoIdsUv2trBM/+6Lu1fdzHVRH0O2g9j8fSo4WY6E?=
 =?us-ascii?Q?fRNqvYNkL2J4TttvKWlNx5+MLln9zjASlcioBI0gOiubK68aMxxT06rU6ShH?=
 =?us-ascii?Q?yoayYQRR+Al88ROaMWmJBBVsjKJOGz4QOXeDRpA7?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: abef663f-7ab2-4579-d1ba-08dcd24887e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2024 10:00:13.8803 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tv3JxP2ucX/BI0YADpNRWmmkPea8XvJlWEOZlD/SRcIBCWztqli3jwwJVCW9ILvNTa5r58U2U+UgDDEEJYWvyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8236
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
> Subject: [PATCHv2 2/5] drm/i915/display: histogram interrupt handling
>=20
> Upon enabling histogram an interrupt is trigerred after the generation of=
 the
> statistics. This patch registers the histogram interrupt and handles the
> interrupt.
>=20
> v2: Added intel_crtc backpointer to intel_histogram struct (Jani)
>     Removed histogram_wq and instead use dev_priv->unodered_eq (Jani)

Typo here "wq"

>=20
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_irq.c  |  6 +-
>  .../gpu/drm/i915/display/intel_histogram.c    | 80 ++++++++++++++++++-
>  .../gpu/drm/i915/display/intel_histogram.h    |  3 +
>  drivers/gpu/drm/i915/i915_reg.h               |  5 +-
>  4 files changed, 89 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c
> b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index afcd2af82942..0178595102bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -17,6 +17,7 @@
>  #include "intel_fdi_regs.h"
>  #include "intel_fifo_underrun.h"
>  #include "intel_gmbus.h"
> +#include "intel_histogram.h"
>  #include "intel_hotplug_irq.h"
>  #include "intel_pipe_crc_regs.h"
>  #include "intel_pmdemand.h"
> @@ -1170,6 +1171,9 @@ void gen8_de_irq_handler(struct
> drm_i915_private *dev_priv, u32 master_ctl)
>  		if (iir & gen8_de_pipe_underrun_mask(dev_priv))
>  			intel_cpu_fifo_underrun_irq_handler(dev_priv,
> pipe);
>=20
> +		if (iir & GEN9_PIPE_HISTOGRAM_EVENT)
> +			intel_histogram_irq_handler(dev_priv, pipe);
> +
>  		fault_errors =3D iir & gen8_de_pipe_fault_mask(dev_priv);
>  		if (fault_errors)
>  			drm_err_ratelimited(&dev_priv->drm,
> @@ -1701,7 +1705,7 @@ void gen8_de_irq_postinstall(struct
> drm_i915_private *dev_priv)
>  	struct intel_uncore *uncore =3D &dev_priv->uncore;
>=20
>  	u32 de_pipe_masked =3D gen8_de_pipe_fault_mask(dev_priv) |
> -		GEN8_PIPE_CDCLK_CRC_DONE;
> +		GEN8_PIPE_CDCLK_CRC_DONE |
> GEN9_PIPE_HISTOGRAM_EVENT;
>  	u32 de_pipe_enables;
>  	u32 de_port_masked =3D gen8_de_port_aux_mask(dev_priv);
>  	u32 de_port_enables;
> diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c
> b/drivers/gpu/drm/i915/display/intel_histogram.c
> index 45e968e00af6..83ba826a7a89 100644
> --- a/drivers/gpu/drm/i915/display/intel_histogram.c
> +++ b/drivers/gpu/drm/i915/display/intel_histogram.c
> @@ -19,12 +19,83 @@
>=20
>  struct intel_histogram {
>  	struct drm_i915_private *i915;
> +	struct intel_crtc *crtc;
> +	struct delayed_work handle_histogram_int_work;

Too long of a name delayed_work should be enough since it will be called as
Histogram->delayed_work which is self explanatory

>  	bool enable;
>  	bool can_enable;
> -	enum pipe pipe;
>  	u32 bindata[HISTOGRAM_BIN_COUNT];
>  };
>=20
> +static void intel_histogram_handle_int_work(struct work_struct *work) {
> +	struct intel_histogram *histogram =3D container_of(work,
> +		struct intel_histogram, handle_histogram_int_work.work);
> +	struct drm_i915_private *i915 =3D histogram->i915;

Lets not use it like this here we have intel_crtc use this to get intel_dis=
play
by to_intel_display(crtc)
and I don't see the use for i915 since display will do the job

> +	struct intel_crtc *intel_crtc =3D histogram->crtc;
> +	char *histogram_event[] =3D {"HISTOGRAM=3D1", NULL};
> +	u32 dpstbin;
> +	int i, try =3D 0;
> +
> +	/*
> +	 * TODO: PSR to be exited while reading the Histogram data
> +	 * Set DPST_CTL Bin Reg function select to TC
> +	 * Set DPST_CTL Bin Register Index to 0
> +	 */

You may have to think on how you will be able to get the intel_dp structure=
 here
You may need to add it in you histogram structure to get intel_psr structur=
e
Then check if psr->enabled
And suspend and resume psr based on that=20
Something to think about

> +retry:
> +	intel_de_rmw(i915, DPST_CTL(intel_crtc->pipe),
=20
I915 can be replaced with intel_display . can be also replaced in all other
Occurrences of i915 in this patch where we don't need the unordered_wq


> +		     DPST_CTL_BIN_REG_FUNC_SEL |
> DPST_CTL_BIN_REG_MASK, 0);
> +	for (i =3D 0; i < HISTOGRAM_BIN_COUNT; i++) {
> +		dpstbin =3D intel_de_read(i915, DPST_BIN(intel_crtc->pipe));
> +		if (dpstbin & DPST_BIN_BUSY) {
> +			/*
> +			 * If DPST_BIN busy bit is set, then set the
> +			 * DPST_CTL bin reg index to 0 and proceed
> +			 * from beginning.
> +			 */
> +			if (try++ >=3D 5) {
> +				drm_err(&i915->drm,
> +					"Histogram block is busy, failed to
> read\n");
> +				intel_de_rmw(i915, DPST_GUARD(intel_crtc-
> >pipe),
> +
> DPST_GUARD_HIST_EVENT_STATUS, 1);
> +				return;
> +			}
> +			goto retry;
> +		}
> +		histogram->bindata[i] =3D dpstbin & DPST_BIN_DATA_MASK;
> +		drm_dbg_atomic(&i915->drm, "Histogram[%d]=3D%x\n",
> +			       i, histogram->bindata[i]);
> +	}
> +
> +	/* Notify user for Histogram rediness */

Typo "readiness"

> +	if (kobject_uevent_env(&i915->drm.primary->kdev->kobj,
> KOBJ_CHANGE,
> +			       histogram_event))
> +		drm_err(&i915->drm, "sending HISTOGRAM event failed\n");
> +
> +	/* Enable histogram interrupt */
> +	intel_de_rmw(i915, DPST_GUARD(intel_crtc->pipe),
> DPST_GUARD_HIST_INT_EN,
> +		     DPST_GUARD_HIST_INT_EN);
> +
> +	/* Clear histogram interrupt by setting histogram interrupt status
> bit*/
> +	intel_de_rmw(i915, DPST_GUARD(intel_crtc->pipe),
> +		     DPST_GUARD_HIST_EVENT_STATUS, 1); }
> +
> +void intel_histogram_irq_handler(struct drm_i915_private *i915, enum
> +pipe pipe) {
> +	struct intel_crtc *intel_crtc =3D
> +		to_intel_crtc(drm_crtc_from_index(&i915->drm, pipe));
> +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> +
> +	if (!histogram->enable) {
> +		drm_err(&i915->drm,
> +			"spurious interrupt, histogram not enabled\n");
> +		return;
> +	}
> +
> +	queue_delayed_work(i915->unordered_wq,
> +			   &histogram->handle_histogram_int_work, 0); }
> +
>  int intel_histogram_atomic_check(struct intel_crtc *intel_crtc)  {
>  	struct intel_histogram *histogram =3D intel_crtc->histogram; @@ -
> 120,6 +191,7 @@ static void intel_histogram_disable(struct intel_crtc
> *intel_crtc)
>  	intel_de_rmw(i915, DPST_CTL(pipe),
>  		     DPST_CTL_IE_HIST_EN, 0);
>=20
> +	cancel_delayed_work(&histogram->handle_histogram_int_work);
>  	histogram->enable =3D false;
>  }
>=20
> @@ -181,6 +253,7 @@ void intel_histogram_deinit(struct intel_crtc
> *intel_crtc)  {
>  	struct intel_histogram *histogram =3D intel_crtc->histogram;
>=20
> +	cancel_delayed_work_sync(&histogram-
> >handle_histogram_int_work);
>  	kfree(histogram);
>  }
>=20
> @@ -196,9 +269,12 @@ int intel_histogram_init(struct intel_crtc *intel_cr=
tc)
>  	}
>=20
>  	intel_crtc->histogram =3D histogram;
> -	histogram->pipe =3D intel_crtc->pipe;
> +	histogram->crtc =3D intel_crtc;

Why even add it in patch 1 to delete it patch 2 lets not add it to begin wi=
th,=20
Also we don't need the intel_pipe variable in intel_histogram since it can =
be derived from
Intel_crtc.

Regards,
Suraj Kandpal

>  	histogram->can_enable =3D false;
>=20
> +	INIT_DEFERRABLE_WORK(&histogram->handle_histogram_int_work,
> +			     intel_histogram_handle_int_work);
> +
>  	histogram->i915 =3D i915;
>=20
>  	return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_histogram.h
> b/drivers/gpu/drm/i915/display/intel_histogram.h
> index b25091732274..f35ea76719d8 100644
> --- a/drivers/gpu/drm/i915/display/intel_histogram.h
> +++ b/drivers/gpu/drm/i915/display/intel_histogram.h
> @@ -9,6 +9,8 @@
>  #include <linux/types.h>
>=20
>  struct intel_crtc;
> +struct drm_i915_private;
> +enum pipe;
>=20
>  /* GLOBAL_HIST related registers */
>  #define _DPST_CTL_A					0x490C0
> @@ -70,6 +72,7 @@ enum intel_global_hist_lut {  };
>=20
>  int intel_histogram_atomic_check(struct intel_crtc *intel_crtc);
> +void intel_histogram_irq_handler(struct drm_i915_private *i915, enum
> +pipe pipe);
>  int intel_histogram_update(struct intel_crtc *intel_crtc, bool enable); =
 int
> intel_histogram_set_iet_lut(struct intel_crtc *intel_crtc, u32 *data);  i=
nt
> intel_histogram_init(struct intel_crtc *intel_crtc); diff --git
> a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 569b461022c5..f7b974691381 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1655,7 +1655,7 @@
>  #define   PIPE_HOTPLUG_INTERRUPT_ENABLE		(1UL << 26)
>  #define   PIPE_VSYNC_INTERRUPT_ENABLE		(1UL << 25)
>  #define   PIPE_DISPLAY_LINE_COMPARE_ENABLE	(1UL << 24)
> -#define   PIPE_DPST_EVENT_ENABLE		(1UL << 23)
> +#define   PIPE_HISTOGRAM_EVENT_ENABLE		(1UL << 23)
>  #define   SPRITE0_FLIP_DONE_INT_EN_VLV		(1UL << 22)
>  #define   PIPE_LEGACY_BLC_EVENT_ENABLE		(1UL << 22)
>  #define   PIPE_ODD_FIELD_INTERRUPT_ENABLE	(1UL << 21)
> @@ -1678,7 +1678,7 @@
>  #define   PIPE_HOTPLUG_INTERRUPT_STATUS		(1UL << 10)
>  #define   PIPE_VSYNC_INTERRUPT_STATUS		(1UL << 9)
>  #define   PIPE_DISPLAY_LINE_COMPARE_STATUS	(1UL << 8)
> -#define   PIPE_DPST_EVENT_STATUS		(1UL << 7)
> +#define   PIPE_HISTOGRAM_EVENT_STATUS		(1UL << 7)
>  #define   PIPE_A_PSR_STATUS_VLV			(1UL << 6)
>  #define   PIPE_LEGACY_BLC_EVENT_STATUS		(1UL << 6)
>  #define   PIPE_ODD_FIELD_INTERRUPT_STATUS	(1UL << 5)
> @@ -2516,6 +2516,7 @@
>  #define  GEN11_PIPE_PLANE7_FLIP_DONE	REG_BIT(18) /* icl/tgl */
>  #define  GEN11_PIPE_PLANE6_FLIP_DONE	REG_BIT(17) /* icl/tgl */
>  #define  GEN11_PIPE_PLANE5_FLIP_DONE	REG_BIT(16) /* icl+ */
> +#define  GEN9_PIPE_HISTOGRAM_EVENT	REG_BIT(12) /* skl+ */
>  #define  GEN9_PIPE_CURSOR_FAULT		REG_BIT(11) /* skl+ */
>  #define  GEN9_PIPE_PLANE4_FAULT		REG_BIT(10) /* skl+ */
>  #define  GEN8_PIPE_CURSOR_FAULT		REG_BIT(10) /* bdw */
> --
> 2.25.1

