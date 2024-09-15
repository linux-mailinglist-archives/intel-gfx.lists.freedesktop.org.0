Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C4A9794A8
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Sep 2024 06:59:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4130D10E051;
	Sun, 15 Sep 2024 04:59:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EPEh897t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37CCA10E051
 for <intel-gfx@lists.freedesktop.org>; Sun, 15 Sep 2024 04:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726376397; x=1757912397;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=G9zrDVX0y/2Fl2sroZOI17nHl+C7Jcu2Uv/4mE7U6bA=;
 b=EPEh897tC/YRclw+TpF2NjmC1sXVtQh89qKjNv5JGUs0Ep00d+SoM8kR
 SVT23HTd39Z1ILBdS/PYfIxffrOPwOmGAWEnTrLghRcfWLqd5yBvQ0o0F
 jX2afxUog3thKpRX9OSFs7DUluJPsewhmbL+4cHqgmH6XF4trZ6uQeeBP
 cYpDBlk476ch+TXl8r6AOFZWTApSaxrZRXkNFIuMOqVIuS5IR7AXXuQON
 a72s6vtuRoNtdze3h+ujLHBIq475cPaHrztnmqjRtUab3i4XKXEwKwBLm
 am6eCPZFgFS7xsQjwzD8My3R+MFdjBFg4y0W+h8DQLpOxYswowYSac6n4 w==;
X-CSE-ConnectionGUID: zRtt3MuHScGql5STY6IN9Q==
X-CSE-MsgGUID: ZgSJBHeTR9uF/U6+lHShMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11195"; a="29023278"
X-IronPort-AV: E=Sophos;i="6.10,230,1719903600"; d="scan'208";a="29023278"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2024 21:59:55 -0700
X-CSE-ConnectionGUID: gmSgjmV3TNSf7bH9fyXbbQ==
X-CSE-MsgGUID: s77tVmKpQ1C9HYEC98dLcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,230,1719903600"; d="scan'208";a="73138141"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Sep 2024 21:59:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sat, 14 Sep 2024 21:59:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sat, 14 Sep 2024 21:59:53 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sat, 14 Sep 2024 21:59:53 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sat, 14 Sep 2024 21:59:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AyLf1RZTLfhkPK6z1n+fVkaUTGpm7T+z3ltW8g4XGmmDmQ9XH23xxZ1IDdn/QXPNCbc21x5INFEjhuJ0u9jNM3gN01uRF/yhnKnHDUH91JKooKZsf9DxxCO2UEvaE6Qt77WFk0zdcmjH9GfSxyVLawtiGY/g7PSBH+EooHi4ps5EFVeP+XHmeL4dAgF+1phHaG4uli5BMeP/vfXEsTTv2BD/9y4tizMWqoEHshe6q0iigM6M1oX0Fy0VaJzfWmFmeHS9d50oV61vcnxZLYNDmes3Sd7ZTRJcR+poIz9w5fKmySq12JCdWrW69ePY8rOQEI+sNQls7pqFA/brIpzoGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u6tgwNAkendT8t45JNUNcEOu7CKDjKFTwRvz2cYSqHE=;
 b=PSHYNnV875qChZYAHYR7wBe9oXa8IOqcuB056846+iz1UlGv4oFluWPJ2kwyP3UK6ZD7hnNwof3Dwha3siBPkoX6ytg9/flc1C7R7z3bhRlr54+zNBiIEmQeAZmKZsvjg9deOVIcp3cVk6wFq9J1MHwvvwc/AGff5H2CYreyGxuKTiRPfhs+grH8Z7ic5nltovt9XE9EfEcoFa5/YbwNivg8tAsAJdtTgQROzo3hJHNvXO6OAMKs2LtMmu9gSFnY+xBRQjEcnv0hNXclBrA5d6px0XKh9vW96J7xZa52/B37uiyp8CTisrCRy1DG6qTSTN2Y9H8FesAsO7AWM2yXhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by DM6PR11MB4596.namprd11.prod.outlook.com (2603:10b6:5:2a6::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.23; Sun, 15 Sep
 2024 04:59:51 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%3]) with mapi id 15.20.7962.022; Sun, 15 Sep 2024
 04:59:50 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCHv2 1/5] drm/i915/display: Add support for histogram
Thread-Topic: [PATCHv2 1/5] drm/i915/display: Add support for histogram
Thread-Index: AQHa87WZctRbqxutEUyY7MAGMhxOCrJSMdmAgAGVlnA=
Date: Sun, 15 Sep 2024 04:59:50 +0000
Message-ID: <IA0PR11MB730745BE2B91F2F6AE3853A7BA672@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240821102349.3961986-1-arun.r.murthy@intel.com>
 <20240821102349.3961986-2-arun.r.murthy@intel.com>
 <SN7PR11MB6750823FFE28098879A30E73E39B2@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750823FFE28098879A30E73E39B2@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|DM6PR11MB4596:EE_
x-ms-office365-filtering-correlation-id: f4e38d6b-b8b4-4812-a63c-08dcd5433ae6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?rLTl+0recaN7cx1OO2Sr5BjbolHGzWu73fA1cRNln8DXQY6SeEZkYmGMDW?=
 =?iso-8859-1?Q?QnV+Kzidbzu9R5f+NWpJPOVcNa4N2dzrJZkvkNgcDWhsq/WwOITpC3LVUv?=
 =?iso-8859-1?Q?EyMuvjcso400mx9fsdeyBQIDcpI2CwkWQx+j4QjBY+h+xjPDoeUz6GWTL8?=
 =?iso-8859-1?Q?8xCGQ4sVSzSNdC1oP2jOeu0HTTe5EOc5/I5uprQp/DcWTHsjd4sw3N3QJA?=
 =?iso-8859-1?Q?zpzXHAzmf46FHI5+jKWnS1gO9c6suT/8ys5Cp2lQKmPEylcdxZudIqoNsP?=
 =?iso-8859-1?Q?LnJxV8Y1g6SnLMRS8ZTp20Se/hnTpo/e4xgdBV875dzudl0YDfixcnxjE7?=
 =?iso-8859-1?Q?l3UU9MCz+4+/A3xCY2zh9ojj0G4AAOnCI/r6vw6Iarx3uqkXx+Vm2++moV?=
 =?iso-8859-1?Q?XUvp7d7e095/wtlOCUfpMtLRCzNJh29ZZ4kHDSEmFvJXUzKtm7/I1rSmKy?=
 =?iso-8859-1?Q?EXtLfQPQS6O9kvJ8+0R4wT5qpsXIZ3uM9uyz3vIOgnYmGvYCfQmVeyjvIQ?=
 =?iso-8859-1?Q?c/r4U8RZjz3aIKHP+w0ADkQuaMAs4AtOsCGxr1Bn9AdPW1doaeLQudWyHL?=
 =?iso-8859-1?Q?1ziEh+n1HgTK5OROKfLihNghYTx+bB6UkwfGO///HWAv5+4TwQYzeXVSjn?=
 =?iso-8859-1?Q?+yxV9jkuExBtZDNNJdOyNbcXtuyFRZO27vwM9HqGLmIJB1uwidWKAU3g7z?=
 =?iso-8859-1?Q?vR60Z+uko5pOc2VN81h8w27j4f9iIg37+xB4D33mK6WKuduuff2ej5act4?=
 =?iso-8859-1?Q?zmX2VGZsCdObfAiuYzsqGmz5TmMGZ3KzpOj35RDHWy5InvjeCy0PpO3U45?=
 =?iso-8859-1?Q?V7xLPHwwGjYXp8m8LzlTN6BVbdLYLlVy1bFpDrZqLYe4yj3GASCmkwQeWI?=
 =?iso-8859-1?Q?HB1g3Uzi1MVDzNvZRYSiuH3a/YfLKeqZ9IZTiY5DY6wFo6YNYY1bT9ftjY?=
 =?iso-8859-1?Q?04qKu/A51uByD7tMYKamb/Khs/JKp8yBvNT9Uh4EzRYiIN02Gn8DiHZKL1?=
 =?iso-8859-1?Q?YEhl8Z0r7+0vKWRKPcm4XmtAAHKei8ZZegKFKjX1cjqARk6rzGJiyDM8gG?=
 =?iso-8859-1?Q?E+4tP/E8gVoM5/XBUHDdtGVghPgx8P7sH2qzDqAeF1HZPpbnXA9qNxIVDd?=
 =?iso-8859-1?Q?q7CIpr8t4UF3eR+tWLaC0xMMma2o06/QQFnPF7+wJo2qQa4qXkM49weTS0?=
 =?iso-8859-1?Q?ETsOze7mIhIvvDHGT83gcxxTLZH8r1NigL8nqvg/8892e7Zo+eY8XOehDt?=
 =?iso-8859-1?Q?Ftydgknqs0fU/zevEHW5hvs+3XoY4T8Pm9Pw/OhSGYRGZqSDsri8K2sGBZ?=
 =?iso-8859-1?Q?9w1tSHJkQYqgtNljOTuFzW+Pyw02m9AmAbSmjOHtXIgybC1bXCn6Ufc6bQ?=
 =?iso-8859-1?Q?TjgvLJVnWiONms9O00fs2nQ2WtVie7zk8Gh+8MjYR3OmZ4jYiDnp3ud2MS?=
 =?iso-8859-1?Q?kPHIStSRXgn5QeIfF/9RJx/7645gfkkJWTb1TA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?+RraDx5B7wljXiluE/n9nKpnU+8OtzvFXthK2isW8VyyHQ7KbdgD8msQ5A?=
 =?iso-8859-1?Q?Y9dS+FwJGYPCL067HPTTMIQF0CSalN1pGJUaBg5sx3x/Nmwb51W99KVHzP?=
 =?iso-8859-1?Q?AzgF5OTECq1xaJPqvWB1xzJF10ZsSxY+Eyt27ngdAGZsm020WdiesXVFe3?=
 =?iso-8859-1?Q?WVeudar0z4c/9wDSrAknwiDT+ZgDTMHGnsKDxZwEpPhXmXmRGNN+zFg57D?=
 =?iso-8859-1?Q?cPcuUA9oIKjodcxnQPpkFpRaQLN2Xv+0mdTgZufJ9BNsSa2o9nz31gqL/K?=
 =?iso-8859-1?Q?M+Ku0VtY+1IWAlSQHKcasyEsn8YZjr13P9Dp6AfIRed37HarZ4lopMvzSs?=
 =?iso-8859-1?Q?Z+8eyRisGPOPws0ZfBjlCYR1O9migqDPBkTxKlyNf0zAjs6adO4/RFQpLM?=
 =?iso-8859-1?Q?IG+uI/XiMcdLAkjz7wHZzyZOifdjgOWHk9nXIKy5Zh0ksFHv8XDcKECBcl?=
 =?iso-8859-1?Q?sTn7zWbm1ug+cfo/ETcij80CpbvOKRG2xYnyF/jKKvRs7PpljQFRFcHHF6?=
 =?iso-8859-1?Q?aOpSFF6Pzv9by/vew6FEszD+psl9Pir7/QZ9sXDh1AY1jjVSaSu7P4VuiL?=
 =?iso-8859-1?Q?4Liedeyg0DSLm83vwFEfFFmTH67nauCbazDzIaTuANc93dZUJGO8l3oipe?=
 =?iso-8859-1?Q?r2K2mjovPiVgwQ3d4ds0l2OcAQsXV5WTWlSkRpa+i5A+2GwIy7+QHUAnHw?=
 =?iso-8859-1?Q?GHPWxke1/7+VzTKAuCSsSI0NXmHW+LQ/9vjrboMvg3q4J1lJkjr4zeghrj?=
 =?iso-8859-1?Q?3R4bTKKdXveHCNvav1AX2vMM0oiYx+yIUIPHk/DHW4q2pBWYO03J6wDbak?=
 =?iso-8859-1?Q?rAOb0UvEH9NklpuZh62yq6eOu2upNQ5ztz8q86rFPSaVSZ7tze1qNpOqje?=
 =?iso-8859-1?Q?ha/bt+tMJ4+o1bfnOp7MeFazIFvQEZ8rDW5JopCNR5czuKeb5Myq4Ld7Sr?=
 =?iso-8859-1?Q?+UlixxfF+tamc9Zfmm1h532gaiDnjl/Hlrqsmeu74aYtNeGnJ+EYPMTYkY?=
 =?iso-8859-1?Q?eiGv3QGvgNuRfNv0gRU2LHMz6qSKGIY0cFsBBHCMl6RwUXdy6n6XTycvJe?=
 =?iso-8859-1?Q?A4Og8DPnjASZhuVVYzClIlNQLB+35TRan6FDyabN2sZQKrYGPo2KUl6R/M?=
 =?iso-8859-1?Q?WUjOXMGW9vOmG39i1P0Hm2kuTetEuBf4ZeIgM0CxrqhCim+ekUifAiN+ms?=
 =?iso-8859-1?Q?W6S+v1MW6a2e4+f0hb/U5kn1tPX5tbyyYPeC1MR078jgQiYvr7FLJwJ+nZ?=
 =?iso-8859-1?Q?UzblgfY3G6u9RskLnYKN6PzcGes/nNezQlAfj72GB7tHbgOybbIhQBq1DB?=
 =?iso-8859-1?Q?7xD3AMj976k2RSkwcKX6TH2R1gBY/YUE2IooljEKsKDkri20zVwje06+Ha?=
 =?iso-8859-1?Q?VR/x/Xa/66OjqzePINJRUUGSPU8nXDMCJRvcfixYOg4FYx7I4XNfgb5kce?=
 =?iso-8859-1?Q?TEEUW91ZWZPlOnD6FTTDZGUsmxby+zEmC4xv3G36vlkEcYNjipH8V5VKwk?=
 =?iso-8859-1?Q?EcrgpghT0zA7/5YpzibxjCcmsArkAa21uBA7ni20ZSRVb4rLg1kw4r1IvY?=
 =?iso-8859-1?Q?yf2Sz/tTLmOsl5SH9YfonsEwGL3fziSoSv2zNHPj2hx8UoYsRhfvmGqpFe?=
 =?iso-8859-1?Q?2KxP9HxGi6i0wmBPrcrLAZhhFGPtATLgvk?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4e38d6b-b8b4-4812-a63c-08dcd5433ae6
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2024 04:59:50.7384 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q8/DZniq7nwdc02vDijBkKCrZ1v6qVhHFAFu7LgtXadekzZB8FJvn+7Vvc6dbsO9LH7Ro/ga3JpT2nUrOtKwbQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4596
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

> > pipe's current pixel count.
> > +#define HISTOGRAM_GUARDBAND_PRECISION_FACTOR 10000   // Precision
> > factor for threshold guardband.
> > +#define HISTOGRAM_DEFAULT_GUARDBAND_DELAY 0x04
> > +
> > +struct intel_histogram {
> > +	struct drm_i915_private *i915;
>=20
> Lets use intel_display here instead of i915 as I can see this is mostly b=
eing used
> for reg read/writes Read/write/rmw also work with intel_display well.
>=20
Sure!

> > +	bool enable;
> > +	bool can_enable;
> > +	enum pipe pipe;
> > +	u32 bindata[HISTOGRAM_BIN_COUNT];
> > +};
> > +
> > +int intel_histogram_atomic_check(struct intel_crtc *intel_crtc) {
> > +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> > +
> > +	/* TODO: Restrictions for enabling histogram */
> > +	histogram->can_enable =3D true;
> > +
> > +	return 0;
> > +}
> > +
> > +static void intel_histogram_enable_dithering(struct drm_i915_private
> > *dev_priv,
>=20
> Use intel_display here
Done

> > +					     enum pipe pipe)
> > +{
> > +	intel_de_rmw(dev_priv, PIPE_MISC(pipe), PIPE_MISC_DITHER_ENABLE,
> > +		     PIPE_MISC_DITHER_ENABLE);
>=20
> So every where below drm_i915_private can be replaced with intel_display
> Ditto.
>=20
Done
> > +}
> > +
> > +static int intel_histogram_enable(struct intel_crtc *intel_crtc) {
> > +	struct drm_i915_private *i915 =3D to_i915(intel_crtc->base.dev);
> > +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> > +	int pipe =3D intel_crtc->pipe;
> > +	u64 res;
> > +	u32 gbandthreshold;
> > +
> > +	if (!histogram)
> > +		return -EINVAL;
> > +
> > +	if (!histogram->can_enable) {
> > +		return -EINVAL;
> > +	}
>=20
> No need for brackets here now atleast
>=20
Done

> > +
> > +	if (histogram->enable)
> > +		return 0;
> > +
> > +	/* Pipe Dithering should be enabled with GLOBAL_HIST */
> > +	intel_histogram_enable_dithering(i915, pipe);
> > +
> > +	/*
> > +	 * enable DPST_CTL Histogram mode
> > +	 * Clear DPST_CTL Bin Reg function select to TC
> > +	 */
>=20
> Nit: maybe make it Enable DPST... and If we are mentioning the steps lets=
 add
> some number or points(-)
>=20
Done

> > +	intel_de_rmw(i915, DPST_CTL(pipe),
> > +		     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_IE_HIST_EN |
> > +		     DPST_CTL_HIST_MODE |
> > DPST_CTL_IE_TABLE_VALUE_FORMAT,
> > +		     DPST_CTL_BIN_REG_FUNC_TC | DPST_CTL_IE_HIST_EN |
> > +		     DPST_CTL_HIST_MODE_HSV |
> > +		     DPST_CTL_IE_TABLE_VALUE_FORMAT_1INT_9FRAC);
> > +
> > +	/* Re-Visit: check if wait for one vblank is required */
> > +	drm_crtc_wait_one_vblank(&intel_crtc->base);
> > +
> > +	/* TODO: one time programming: Program GuardBand Threshold */
> > +	res =3D (intel_crtc->config->hw.adjusted_mode.vtotal *
> > +				intel_crtc->config->hw.adjusted_mode.htotal);
> > +	gbandthreshold =3D (res *
> > 	HISTOGRAM_GUARDBAND_THRESHOLD_DEFAULT) /
> > +
> > 	HISTOGRAM_GUARDBAND_PRECISION_FACTOR;
> > +
> > +	/* Enable histogram interrupt mode */
> > +	intel_de_rmw(i915, DPST_GUARD(pipe),
> > +		     DPST_GUARD_THRESHOLD_GB_MASK |
> > +		     DPST_GUARD_INTERRUPT_DELAY_MASK |
> > DPST_GUARD_HIST_INT_EN,
> > +		     DPST_GUARD_THRESHOLD_GB(gbandthreshold) |
> > +
> >
> DPST_GUARD_INTERRUPT_DELAY(HISTOGRAM_DEFAULT_GUARDBAND_DELAY)
> > |
> > +		     DPST_GUARD_HIST_INT_EN);
> > +
> > +	/* Clear pending interrupts has to be done on separate write */
> > +	intel_de_rmw(i915, DPST_GUARD(pipe),
> > +		     DPST_GUARD_HIST_EVENT_STATUS, 1);
> > +
> > +	histogram->enable =3D true;
> > +
> > +	return 0;
> > +}
> > +
> > +static void intel_histogram_disable(struct intel_crtc *intel_crtc) {
> > +	struct drm_i915_private *i915 =3D to_i915(intel_crtc->base.dev);
> > +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> > +	int pipe =3D intel_crtc->pipe;
> > +
> > +	if (!histogram)
> > +		return;
> > +
> > +	/* Pipe Dithering should be enabled with GLOBAL_HIST */
> > +	intel_histogram_enable_dithering(i915, pipe);
> > +
> > +	/* Clear pending interrupts and disable interrupts */
> > +	intel_de_rmw(i915, DPST_GUARD(pipe),
> > +		     DPST_GUARD_HIST_INT_EN |
> > DPST_GUARD_HIST_EVENT_STATUS, 0);
> > +
> > +	/* disable DPST_CTL Histogram mode */
> > +	intel_de_rmw(i915, DPST_CTL(pipe),
> > +		     DPST_CTL_IE_HIST_EN, 0);
> > +
> > +	histogram->enable =3D false;
> > +}
> > +
> > +int intel_histogram_update(struct intel_crtc *intel_crtc, bool
> > +enable) {
> > +	if (enable)
> > +		return intel_histogram_enable(intel_crtc);
> > +
> > +	intel_histogram_disable(intel_crtc);
> > +	return 0;
> > +}
> > +
> > +int intel_histogram_set_iet_lut(struct intel_crtc *intel_crtc, u32
> > +*data) {
> > +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> > +	struct drm_i915_private *i915 =3D to_i915(intel_crtc->base.dev);
> > +	int pipe =3D intel_crtc->pipe;
> > +	int i =3D 0;
> > +
> > +	if (!histogram)
> > +		return -EINVAL;
> > +
> > +	if (!histogram->enable) {
> > +		drm_err(&i915->drm, "histogram not enabled");
> > +		return -EINVAL;
> > +	}
> > +
> > +	if (!data) {
> > +		drm_err(&i915->drm, "enhancement LUT data is NULL");
> > +		return -EINVAL;
> > +	}
> > +
> > +	/*
> > +	 * Set DPST_CTL Bin Reg function select to IE
> > +	 * Set DPST_CTL Bin Register Index to 0
> > +	 */
> > +	intel_de_rmw(i915, DPST_CTL(pipe),
> > +		     DPST_CTL_BIN_REG_FUNC_SEL |
> DPST_CTL_BIN_REG_MASK,
> > +		     DPST_CTL_BIN_REG_FUNC_IE |
> DPST_CTL_BIN_REG_CLEAR);
> > +
> > +	for (i =3D 0; i < HISTOGRAM_IET_LENGTH; i++) {
> > +		intel_de_rmw(i915, DPST_BIN(pipe),
> > +			     DPST_BIN_DATA_MASK, data[i]);
> > +		drm_dbg_atomic(&i915->drm, "iet_lut[%d]=3D%x\n", i, data[i]);
> > +	}
> > +
> > +	intel_de_rmw(i915, DPST_CTL(pipe),
> > +		     DPST_CTL_ENHANCEMENT_MODE_MASK |
> > DPST_CTL_IE_MODI_TABLE_EN,
> > +		     DPST_CTL_EN_MULTIPLICATIVE |
> > DPST_CTL_IE_MODI_TABLE_EN);
> > +
> > +	/* Once IE is applied, change DPST CTL to TC */
> > +	intel_de_rmw(i915, DPST_CTL(pipe),
> > +		     DPST_CTL_BIN_REG_FUNC_SEL,
> > DPST_CTL_BIN_REG_FUNC_TC);
> > +
> > +	return 0;
> > +}
> > +
> > +void intel_histogram_deinit(struct intel_crtc *intel_crtc) {
> > +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> > +
> > +	kfree(histogram);
> > +}
> > +
> > +int intel_histogram_init(struct intel_crtc *intel_crtc) {
> > +	struct drm_i915_private *i915 =3D to_i915(intel_crtc->base.dev);
> > +	struct intel_histogram *histogram;
> > +
> > +	/* Allocate histogram internal struct */
> > +	histogram =3D kzalloc(sizeof(*histogram), GFP_KERNEL);
> > +	if (!histogram) {
> > +		return -ENOMEM;
> > +	}
> > +
> > +	intel_crtc->histogram =3D histogram;
> > +	histogram->pipe =3D intel_crtc->pipe;
> > +	histogram->can_enable =3D false;
> > +
> > +	histogram->i915 =3D i915;
> > +
> > +	return 0;
> > +}
> > diff --git a/drivers/gpu/drm/i915/display/intel_histogram.h
> > b/drivers/gpu/drm/i915/display/intel_histogram.h
> > new file mode 100644
> > index 000000000000..b25091732274
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/display/intel_histogram.h
> > @@ -0,0 +1,78 @@
> > +// SPDX-License-Identifier: MIT
> > +/*
> > + * Copyright =C2=A9 2024 Intel Corporation  */
> > +
> > +#ifndef __INTEL_HISTOGRAM_H__
> > +#define __INTEL_HISTOGRAM_H__
> > +
> > +#include <linux/types.h>
> > +
> > +struct intel_crtc;
> > +
> > +/* GLOBAL_HIST related registers */
> > +#define _DPST_CTL_A					0x490C0
> > +#define _DPST_CTL_B					0x491C0
> > +#define DPST_CTL(pipe)
> > 	_MMIO_PIPE(pipe, _DPST_CTL_A, _DPST_CTL_B)
> > +#define DPST_CTL_IE_HIST_EN				REG_BIT(31)
> > +#define DPST_CTL_RESTORE				REG_BIT(28)
> > +#define DPST_CTL_IE_MODI_TABLE_EN			REG_BIT(27)
> > +#define DPST_CTL_HIST_MODE				REG_BIT(24)
> > +#define DPST_CTL_ENHANCEMENT_MODE_MASK
> > 	REG_GENMASK(14, 13)
> > +#define DPST_CTL_EN_MULTIPLICATIVE
> > 	REG_FIELD_PREP(DPST_CTL_ENHANCEMENT_MODE_MASK, 2)
> > +#define DPST_CTL_IE_TABLE_VALUE_FORMAT			REG_BIT(15)
> > +#define DPST_CTL_BIN_REG_FUNC_SEL			REG_BIT(11)
> > +#define DPST_CTL_BIN_REG_FUNC_TC
> > 	REG_FIELD_PREP(DPST_CTL_BIN_REG_FUNC_SEL, 0)
> > +#define DPST_CTL_BIN_REG_FUNC_IE
> > 	REG_FIELD_PREP(DPST_CTL_BIN_REG_FUNC_SEL, 1)
> > +#define DPST_CTL_BIN_REG_MASK
> > 	REG_GENMASK(6, 0)
> > +#define DPST_CTL_BIN_REG_CLEAR
> > 	REG_FIELD_PREP(DPST_CTL_BIN_REG_MASK, 0)
> > +#define DPST_CTL_IE_TABLE_VALUE_FORMAT_2INT_8FRAC
> > 	REG_FIELD_PREP(DPST_CTL_IE_TABLE_VALUE_FORMAT, 1)
> > +#define DPST_CTL_IE_TABLE_VALUE_FORMAT_1INT_9FRAC
> > 	REG_FIELD_PREP(DPST_CTL_IE_TABLE_VALUE_FORMAT, 0)
> > +#define DPST_CTL_HIST_MODE_YUV
> > 	REG_FIELD_PREP(DPST_CTL_HIST_MODE, 0)
> > +#define DPST_CTL_HIST_MODE_HSV
> > 	REG_FIELD_PREP(DPST_CTL_HIST_MODE, 1)
> > +
> > +#define _DPST_GUARD_A					0x490C8
> > +#define _DPST_GUARD_B					0x491C8
> > +#define DPST_GUARD(pipe)				_MMIO_PIPE(pipe,
> > _DPST_GUARD_A, _DPST_GUARD_B)
> > +#define DPST_GUARD_HIST_INT_EN				REG_BIT(31)
> > +#define DPST_GUARD_HIST_EVENT_STATUS			REG_BIT(30)
> > +#define DPST_GUARD_INTERRUPT_DELAY_MASK
> > 	REG_GENMASK(29, 22)
> > +#define DPST_GUARD_INTERRUPT_DELAY(val)
> > 	REG_FIELD_PREP(DPST_GUARD_INTERRUPT_DELAY_MASK, val)
> > +#define DPST_GUARD_THRESHOLD_GB_MASK
> > 	REG_GENMASK(21, 0)
> > +#define DPST_GUARD_THRESHOLD_GB(val)
> > 	REG_FIELD_PREP(DPST_GUARD_THRESHOLD_GB_MASK, val)
> > +
> > +#define _DPST_BIN_A					0x490C4
> > +#define _DPST_BIN_B					0x491C4
> > +#define DPST_BIN(pipe)
> > 	_MMIO_PIPE(pipe, _DPST_BIN_A, _DPST_BIN_B)
> > +#define DPST_BIN_DATA_MASK
> > 	REG_GENMASK(23, 0)
> > +#define DPST_BIN_BUSY					REG_BIT(31)
> > +
> > +#define INTEL_HISTOGRAM_PIPEA			0x90000000
> > +#define INTEL_HISTOGRAM_PIPEB			0x90000002
> > +#define INTEL_HISTOGRAM_EVENT(pipe)		PIPE(pipe, \
> > +						     INTEL_HISTOGRAM_PIPEA,
> \
> > +						     INTEL_HISTOGRAM_PIPEB)
>=20
> I don't think this is the right way. Lets have a file for intel_histogram=
_regs.h and
> intel_histogram.h That will look a lot cleaner.
>=20
Done

> > +
> > +#define HISTOGRAM_BIN_COUNT			32
> > +#define HISTOGRAM_IET_LENGTH			33
> > +
> > +enum intel_global_hist_status {
> > +	INTEL_HISTOGRAM_ENABLE,
> > +	INTEL_HISTOGRAM_DISABLE,
> > +};
> > +
> > +enum intel_global_histogram {
> > +	INTEL_HISTOGRAM,
> > +};
> > +
> > +enum intel_global_hist_lut {
> > +	INTEL_HISTOGRAM_PIXEL_FACTOR,
> > +};
> > +
> > +int intel_histogram_atomic_check(struct intel_crtc *intel_crtc); int
> > +intel_histogram_update(struct intel_crtc *intel_crtc, bool enable);
> > +int intel_histogram_set_iet_lut(struct intel_crtc *intel_crtc, u32
> > +*data); int intel_histogram_init(struct intel_crtc *intel_crtc); void
> > +intel_histogram_deinit(struct intel_crtc *intel_crtc);
> > +
> > +#endif /* __INTEL_HISTOGRAM_H__ */
> > diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> > index b9670ae09a9e..424ea43016dd 100644
> > --- a/drivers/gpu/drm/xe/Makefile
> > +++ b/drivers/gpu/drm/xe/Makefile
> > @@ -238,6 +238,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
> >  	i915-display/intel_hdcp.o \
> >  	i915-display/intel_hdcp_gsc_message.o \
> >  	i915-display/intel_hdmi.o \
> > +	i915-display/intel_histogram.o \
> >  	i915-display/intel_hotplug.o \
> >  	i915-display/intel_hotplug_irq.o \
> >  	i915-display/intel_hti.o \
>=20
> Lets try to separate xe and i915 changes into different patches as well a=
s we can
> I know its tough to decouple some Changes but the ones that can be done
> should be.
>=20
Done

Thanks and Regards,
Arun R Murthy
--------------------


