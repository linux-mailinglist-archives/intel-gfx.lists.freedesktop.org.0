Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93412C672FA
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Nov 2025 04:50:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9DCD10E149;
	Tue, 18 Nov 2025 03:50:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UHqRM5Q2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6422310E149;
 Tue, 18 Nov 2025 03:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763437815; x=1794973815;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ByeuODq3dJ/4/W8XXnB6/iZ3Dm7YF/pxS3uWm5nYPsA=;
 b=UHqRM5Q2/CeMVmTBxdOKx3cS48QOq9RcacFaSurI2DJWfLbh7tjKohlS
 ZY/i1gLYSsRnbLF1S64okK4hL8pdV3Zw7hp1zFvKU5h5aCC+4e1oBhVSy
 bx2ASgQ6h3YkL/SfgguxkTgjmWZu9BYSbN29NS0wghElD2RvR4p/edYBF
 15BG1PxzwrQXWuzb5+RykzN/6Zs3EgLcizGRa51Ve9LN4nBgD55Uw7rhi
 sdEm6nYsGQqOZWPJFd9ES+CI1xxB1PqiBDdBLYmrS9L2Se+k3J1M37LG9
 UKJyk2pdR+F34oqGvvYQKowhL3WlSHNk9FcK35edSKMx3a4oYW9FgKUHn w==;
X-CSE-ConnectionGUID: asqpNQV9T9+GqFRyyhygLQ==
X-CSE-MsgGUID: LYCpsDI4TK6uulvM7I6KyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="69304049"
X-IronPort-AV: E=Sophos;i="6.19,313,1754982000"; d="scan'208";a="69304049"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 19:49:41 -0800
X-CSE-ConnectionGUID: xx910+LSQXWw/EbD0WMorQ==
X-CSE-MsgGUID: c9PkTENdRRyhTpnrAD9wfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,313,1754982000"; d="scan'208";a="194749001"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 19:49:42 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 19:49:40 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 17 Nov 2025 19:49:40 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.69) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 19:49:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TbN0yCu9BnkTVEas+FQHPKqFOB/1Z8B1vZKsrozVHXoncadCxB48KxuTodz78+Q1lcP4rcKwhY+q9GpS+8SykaeY2jIXp3znJtFnWFJ3k4gBm0AshLI9hpz0iO4KAi4zBB2NIUMBHjWE6LsvidODr+aJh2LGd6REw02p7iZWMuZf9gcwZmD5F8LHUCT1lIdTmv1jKUMHiCokytmUD+vWNB9kPdDBIsxtFwGSaW+yB1zE6xB1cMcmJaWJ0X2eDWXT2TDULaFj7OANh8KQYTkANMRjWJWpQv7MXBZNBMy8bgbBJuE29e44UK0CDI+5zZC+/rrCCX0eY2iDjYeSAF9QRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XGA1HmO3nJ+l6AQrkQFbsjVgXCMzNXbraPUNERIX6L8=;
 b=d93YuZN7vzYobAU9g5x41ASR/TLzB9os55xwkgKZy29ngePpT8fEdI61Vyzf16pURrtTCi60QPTwxrLh66cBBQuJPhFsG5OIn4U+/1ypdm1D1sNR/GXM0TZ/F1SnhqKve9mRPhBA3Bf9dBmMBQgtNqYCCXhWUjwaiki4+8QV+bl/vRAIK2++oQ7MY3HA/ewP0vh4PLTQrYXOuwDcjJoNhHZr8Y7QOMPF0yJXbuftkrHj8uBErYocBMvRGCW6eeu8FSSaHgN0baJ8t1TmIV55IBgCVapSWseMDMGeT5VWuCelE5r88YBKkxmRzvXQjslnO3waQUPoQ77U33gooVWdBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM4PR11MB6042.namprd11.prod.outlook.com
 (2603:10b6:8:61::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.21; Tue, 18 Nov
 2025 03:49:33 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%6]) with mapi id 15.20.9343.009; Tue, 18 Nov 2025
 03:49:32 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 14/32] drm/i915/cx0: Print additional Cx0 PLL HW state
Thread-Topic: [PATCH v2 14/32] drm/i915/cx0: Print additional Cx0 PLL HW state
Thread-Index: AQHcV7K1CrIPVL9ygE+noGiaeXUbZbT3zSnQ
Date: Tue, 18 Nov 2025 03:49:32 +0000
Message-ID: <DM3PPF208195D8D0477FDB40397AE97EE59E3D6A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
 <20251117104602.2363671-15-mika.kahola@intel.com>
In-Reply-To: <20251117104602.2363671-15-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM4PR11MB6042:EE_
x-ms-office365-filtering-correlation-id: bfc6e31e-6ec2-4bf9-1392-08de26557bbc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?AYHv7WzTCaL+3b2grpt7a3ZHgBaUeRRBhFRjN3oQkDFawCf4uT4Bw6LupMtm?=
 =?us-ascii?Q?7TzEkzjeeFqYDlBVFYfL97SkFOGRJa3bp9ScgGn+kIiR5u/et5jazjcmt2q1?=
 =?us-ascii?Q?aFYuF41eaH5nmSCskMhX5sNlYRknBUSY2epCAjgraUH59SdDXF5ICNfrXGYB?=
 =?us-ascii?Q?mJMfgwYFxmUaoeRV6zNtwr/9s5FTe/RUenL/FOmLWWWUvFqyfDvNdpu30FcG?=
 =?us-ascii?Q?AvqQJ2VUG04BgfGPHk02zT5vFNB3HB0hcr4W4j3DfoAzBXeKSUBo7juOlbBj?=
 =?us-ascii?Q?Xqa6Wl/wGsSo69xpb0xr+qRBrYWSfPfUUbu4+JZ9CCHmX7gmheFJhfxHkH1a?=
 =?us-ascii?Q?bwjTkcjodf+vs3foZFztjSJ390MAm5LLZumDWUKRhVwDshGTw/JNYnnJmRrY?=
 =?us-ascii?Q?OdG4GAZwysgr0CT99hS7Fp8l959CrYzJ6KDhYsTxijkK4RvrlLtT1ZBr9CXL?=
 =?us-ascii?Q?nuwoHFIY/tCDl8AmYFIIJtIPQ6u7Rm5cI5WyyKpL36oomfpigrCKV6CmqAaG?=
 =?us-ascii?Q?JhgciCzY6Vgo7g3PuhzDm7FQet1o3/2jPlCVBde8JcecSs7C3tZC+wBc+Tab?=
 =?us-ascii?Q?Ex+yviZUQACz5YZ796XXM/nNJ0EhEPS6U3Hjm8Y/86k7dsBiuQOr/NRFdist?=
 =?us-ascii?Q?xrH/zSZG6wsZhKIojwB2ZRvDwrW7BxRET+yx9tUc4n3Jod9MYKqJDN4yOAZ+?=
 =?us-ascii?Q?rmAF2wk1qhtlCT8JocWJ51NaDzU52Pm45nBgOb4qJngdb53b9zO8BgIl/hAq?=
 =?us-ascii?Q?ECV1lG/pKepIetTQpSHOxu0V5cnYDjhVL6YzeX0Wrz5PqSPjoCNIraZyfGoM?=
 =?us-ascii?Q?9rVNuFQcNls1doaZZEWIu4196NfC+hmr5Uu15ppYuiWpvgqS/OVVmwpVLtkk?=
 =?us-ascii?Q?Z0LEvWF2TnYFEP5y+ZRcuodMGpzGrWOE74xMG/Icr8fAgwpmda6I/ESbKlAS?=
 =?us-ascii?Q?BmuatatD/79g8xgw5SVkbl7fbkmnyiTH/PPZzhawWYZ57aW2bMvC4f2cYGu5?=
 =?us-ascii?Q?Q6KY0TCAveIopECB2ez+gKNwqQspb5Fk3m2WvtjhKTjsLPab2YB9LSGRIa8w?=
 =?us-ascii?Q?BxnzUGG/RlFaA8vDQrnF8nFM0xZR0ACPr+AJwfxpBHD+W6b56/u2SVLEIIyL?=
 =?us-ascii?Q?5rjpU6uRWLoFHOP29Paec22BKirsnPvE8Si1AZCdByZSMcsBqcuiX4s3oLPB?=
 =?us-ascii?Q?6hl7/QeESMOMwzE8r76czJ1pIdWnqDtjXhcOTx3vwbpzfegDgVD/UCPa2kqR?=
 =?us-ascii?Q?x7moNoWf+GBYQTBkpQUiCXpOS7i3MspFtS01Fr2+HIdAX/mKioVqeEXTx2fx?=
 =?us-ascii?Q?VKXOHvNsRtzBqsAJG8d58Wau3Bj3+wOIsB7sz6OFOGBKDBXPRdz9UhwWGP/6?=
 =?us-ascii?Q?+w894I1ceDYdg/8heaczFKuq/EDhh+fvsr11na1NKhG5LKvWaSjLs/ewuUMv?=
 =?us-ascii?Q?zON2EdJGkcT8eIFHECKVBzTa7j7o9Suml5jCPMmAc98dNg6hlaYQnhg7ZZgA?=
 =?us-ascii?Q?N4KwO2+peOEy7XH6AJXaAtxx2hUK0qqQ1ctO?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qh0fYY3kewVxaqWyM/vkEdO1ZJlgpVogMRvbNOFzpm5300uwU4X7ujj1a/+F?=
 =?us-ascii?Q?mtWnoU4ZakrYqzveuckhPOmtL/A7jV2ndFUp3umJfwamNvTIRnzfQHh81FHM?=
 =?us-ascii?Q?mt1iG1ORH6DS+xQgftp6wVzSaOVxqLZUUsT6AmeSsmyp9M6DY0QY90YZYWcp?=
 =?us-ascii?Q?7IDxRozcRYRKzupW5AxnMQoYQ7iefVbygHxV4+u+o+UL9VdobUTQ83HxsHG8?=
 =?us-ascii?Q?HEu3+eayfmCoPgj2vC/V1zej6nV2DY2pyZ5kbOHRACB9u0RF2vbjnGsZvHn7?=
 =?us-ascii?Q?tfo3I+tFl41hJnjqqfYfEmD+aLUzGP7vtDatW+AemBbGKS+SDJ32PIAHBbDE?=
 =?us-ascii?Q?W7FcErWOC2UMRxGwEPE0SV+sZOD2ZwWl2IKHfHK03VJASPAfCVogPUd4giDK?=
 =?us-ascii?Q?CgMib/4vrRLaSGLevTgwmhYUtIl4JokzABGLLUrBt3+lqsuCRJ4MS83gj6q6?=
 =?us-ascii?Q?lrIn5XN6tnxKDt5YZSVzkD2q7xIpmQ0iEtfb7rI39Bh3XXyYvjgUfzTv1E9r?=
 =?us-ascii?Q?l8is4NughWXOUeJU7Mhncta5qe9eAY3OrZtJoS2U4fb4A8nLO+BAUMY/OHNR?=
 =?us-ascii?Q?hhvXlElcryubvRTf2/NQVndh3mRGPWkV9dc/4kNtKm02NoIOqoEj+wUzxZGg?=
 =?us-ascii?Q?rcLK+CZj6Ic6ygmz/6UVS4YL96dPHh5AFQ/zcf80LOHqZZQ8U0ZTO87LHkXb?=
 =?us-ascii?Q?2N+qwL0sqej3ZzqBNsr0rw11GNI88W33obKBQDyM5r4ewLCy0/AMqE6TdO7N?=
 =?us-ascii?Q?ysxAQrzMw8Hw8/iUnba2cYVioEXUoac+eI2nFHM+ZZq8z2bYz9o7IrUz8Ysj?=
 =?us-ascii?Q?PWhdYOTT0j15lmcIUqSfRCKUxKahowMXThKOcWz6aGTv9RDE4ug5vpeHLirC?=
 =?us-ascii?Q?lmz7Msl6oPf/Ns4AVzpHIKE3B7pxSXlGfA8fUzV16PTxSw/qftTc62si0Bea?=
 =?us-ascii?Q?PexhZNR0YYWeojyyjQQeAKAhRO1Uiz50iDzrg4My7WihL4b1iXQ8mDuM9V3o?=
 =?us-ascii?Q?C6O2KtoLq2Y+EtYZ6asZTYLJ6IE9t/IASstrbYrVRbKZS2XKHVj8nbheozh5?=
 =?us-ascii?Q?DJ/CG3li5AJKbDRoiV7oh/jj/ZdTicOCBHuv8PWHYj1a+8G4DaRloyl7UzBw?=
 =?us-ascii?Q?mZuCcZkAi0hDNlvAmghXbYuurF8OUkIqoXzX2vOjBehZTN/H++wQBKWzWQ7h?=
 =?us-ascii?Q?JbvLK30RGPMcJlLjc3ZejLqftR8KeRGN3nVbbPDYXK8OyaobNckQxmFCyfRP?=
 =?us-ascii?Q?DMbqEqEB3wZwHVVUnd8LVhEemA/pnksNeQaAo2u2UNadkgKpVs+zRakdFlZ4?=
 =?us-ascii?Q?+Ar6jmIl1GUGu0pr3ilMX/CB4xHANwwi5O/9Uedy1qF4V6Jwf2gfyEiHa4XB?=
 =?us-ascii?Q?oRrPS8KlLbhRXe9qW3QkROWGcgm6ZF6gsM25Nnb4D9uxUwwphZ7KimcxaaCd?=
 =?us-ascii?Q?5hDEsWehdAc4wOdouSS1cgOH27W/Abp7qcNEbgDGB80aUzqL/AYC9mGrS7RO?=
 =?us-ascii?Q?BmmUs01q9xKKanUTk9mHqJnGRgEcbOoo32E7A5MWJMsOE21s2f2pyVgFrYTR?=
 =?us-ascii?Q?m36rHll+POZYrQdLm421FoparYQQxOC9796YDRsc?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bfc6e31e-6ec2-4bf9-1392-08de26557bbc
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2025 03:49:32.2834 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w5ede2ejjFjYOnIByz+gdJ9CBmsLeO5I0SQuUqFW9iqRTLHKWfn3rBGJBlHnqvOhbgMDV2mvrMLbd6M2qHaP2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6042
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

> Subject: [PATCH v2 14/32] drm/i915/cx0: Print additional Cx0 PLL HW state
>=20
> From: Imre Deak <imre.deak@intel.com>
>=20
> Print all the Cx0 PLL state in the PLL state dumper.
>=20
> v2: Use BUILD_BUG_ON() instead of WARN_ON() (Jani)
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 18 +++++++++++++++---
>  1 file changed, 15 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index df3daa81a698..763546fe152b 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2306,8 +2306,8 @@ static void intel_c10pll_dump_hw_state(struct
> intel_display *display,
>  	unsigned int multiplier, tx_clk_div;
>=20
>  	fracen =3D hw_state->pll[0] & C10_PLL0_FRACEN;
> -	drm_dbg_kms(display->drm, "c10pll_hw_state: fracen: %s, ",
> -		    str_yes_no(fracen));
> +	drm_dbg_kms(display->drm, "c10pll_hw_state: clock: %d, fracen: %s, ",
> +		    hw_state->clock, str_yes_no(fracen));
>=20
>  	if (fracen) {
>  		frac_quot =3D hw_state->pll[12] << 8 | hw_state->pll[11]; @@ -
> 2816,7 +2816,7 @@ static void intel_c20pll_dump_hw_state(struct
> intel_display *display,  {
>  	int i;
>=20
> -	drm_dbg_kms(display->drm, "c20pll_hw_state:\n");
> +	drm_dbg_kms(display->drm, "c20pll_hw_state clock: %d:\n",
> +hw_state->clock);
>  	drm_dbg_kms(display->drm,
>  		    "tx[0] =3D 0x%.4x, tx[1] =3D 0x%.4x, tx[2] =3D 0x%.4x\n",
>  		    hw_state->tx[0], hw_state->tx[1], hw_state->tx[2]); @@ -
> 2832,12 +2832,24 @@ static void intel_c20pll_dump_hw_state(struct
> intel_display *display,
>  		for (i =3D 0; i < ARRAY_SIZE(hw_state->mplla); i++)
>  			drm_dbg_kms(display->drm, "mplla[%d] =3D 0x%.4x\n", i,
>  				    hw_state->mplla[i]);
> +
> +		/* For full coverage, also print the additional PLL B entry. */
> +		BUILD_BUG_ON(ARRAY_SIZE(hw_state->mplla) + 1 !=3D
> ARRAY_SIZE(hw_state->mpllb));
> +		drm_dbg_kms(display->drm, "mpllb[%d] =3D 0x%.4x\n", i,
> +hw_state->mpllb[i]);
>  	}
> +
> +	drm_dbg_kms(display->drm, "vdr: custom width: 0x%02x, serdes rate:
> 0x%02x, hdmi rate: 0x%02x\n",
> +		    hw_state->vdr.custom_width, hw_state->vdr.serdes_rate,
> +hw_state->vdr.hdmi_rate);
>  }
>=20
>  void intel_cx0pll_dump_hw_state(struct intel_display *display,
>  				const struct intel_cx0pll_state *hw_state)  {
> +	drm_dbg_kms(display->drm,
> +		    "cx0pll_hw_state: lane_count: %d, ssc_enabled: %s, use_c10:
> %s, tbt_mode: %s\n",
> +		    hw_state->lane_count, str_yes_no(hw_state->ssc_enabled),
> +		    str_yes_no(hw_state->use_c10), str_yes_no(hw_state-
> >tbt_mode));
> +
>  	if (hw_state->use_c10)
>  		intel_c10pll_dump_hw_state(display, &hw_state->c10);
>  	else
> --
> 2.34.1

