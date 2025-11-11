Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F34E4C4B931
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 06:55:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 332F310E0FA;
	Tue, 11 Nov 2025 05:55:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hakfQCmF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8616310E0FA;
 Tue, 11 Nov 2025 05:55:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762840529; x=1794376529;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lv3zNtdZycSRjgkPt+0e8Akp/dGzs33va5VhF24YevU=;
 b=hakfQCmFQ7Os0noVxyBZU43sw12Vy59amFfFe4g5j/+37h9e1caTobDp
 mXL+1Vl2CMJjwOHCHI9XHHSbbmGUJF3GGbuR8NFw1gxe52nWKhhbjsq3y
 ZIcw07G+X+6tWUoOdlbSUXqUxcy9TfGOYJyAEqsIVE6t538Nx2StjIAFq
 DtCEKEr8Hfp/SwgQZJzYDbmCwdFMLHBguzTpveK6bJ+NPaMOq1FOOahAv
 ZQ4VLcAPL7Opfg+tQ3V+JcST5M/JGmOx8hV6YP3NwdaBLbKA7cp7vm7Zh
 5hpcVBKvhJ0OPIrI6GIKGxQBMAEHEJ6aw/TJGCfqCnUswwX+NB9GZ+tFD g==;
X-CSE-ConnectionGUID: MS3lKc7xRaqzzGFFrtU/kA==
X-CSE-MsgGUID: VaPP/Wl1RNCXAFhqzwqHtg==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="64103384"
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="64103384"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 21:55:29 -0800
X-CSE-ConnectionGUID: X/2yup2OTpSfG2Z6zFsYQg==
X-CSE-MsgGUID: Vhk+nQH6QoK6cQVsZ+s7iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="226134338"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 21:55:29 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 21:55:28 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 21:55:28 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.12) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 21:55:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aWoPCF1QB0OHWsKw2u53oHyoRRLbsXdUmHdpFTgXYPDWrXi8nGd2/WqrC6g4F1Zuw/NuKY7xKz6Wd3emuvTG9tBgwgJKhXHAY2Cq1/kop8t1wPlKhnfuTB881urtJdBiB/XYH/KVGK8n6irMOVs0LyYBRpIKWkEDrAaHwGKEyUwJadh8T2/IxLPgbu78E1VKbfWWufDcClomkznUZ7xSMAnjJ15AkCGvA/ZC+SRc6uriz9M9oHQg995IS1EIO4Qn+1WY1FWZ3tYxJPYBhLKApplaQQgblH7cA2Z4ENW0jN8vwSM1u0Iv54HRjr3QmqIpFD77v2xoNgoyKNKQLKStnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TZ8UXAzaMWrAlDNgQGKYeQaFVQUd97TcyWphdA6o+o8=;
 b=rJpF3iLZB1xA1ZO3YgkkrIsBgg8XYFcuefCDhKIGDxEgFuG+CkA1ukPHaEJ6DFCEHpUfiL7gH68mxyuJFbSNn3l6T9H7Pf6yYTsNSn6f/4VvVWHcBvWWa8Pge4mTZVbuWZAOH+VJZh7yv0RZQaAjABa3UmGO7YQ/Vba9XSXBDvGz4sjPNL8qjMncCqv068N7a3psHWYw9A4QfDuu2TE8WdUpZ2D0PmME3nfEYuUHiIQ72TmeIeVZJFZMRbyPsnY2SMnSUtM98roR/8RST55bXe4DwxGWb1RKeO2XXzCnDFlhhnTIMHkpD9kUbpiTVzW/1ueneNTl21inX8WmwmpwqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by DM6PR11MB4753.namprd11.prod.outlook.com (2603:10b6:5:2ac::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Tue, 11 Nov
 2025 05:55:26 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9298.015; Tue, 11 Nov 2025
 05:55:20 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [CI 08/32] drm/i915/display: Track the Cx0 PHY enabled lane count
 in the PLL state
Thread-Topic: [CI 08/32] drm/i915/display: Track the Cx0 PHY enabled lane
 count in the PLL state
Thread-Index: AQHcSmiykSETQ+rf9Ui/p7JBPFzHoLTtCoyA
Date: Tue, 11 Nov 2025 05:55:20 +0000
Message-ID: <IA3PR11MB893788865516BCB7E2E14427E3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-9-mika.kahola@intel.com>
In-Reply-To: <20251031103549.173208-9-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|DM6PR11MB4753:EE_
x-ms-office365-filtering-correlation-id: 0bd2f5b3-6335-46d1-adfc-08de20e6e5e7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?f4nT9qsWjDflKWZt8RCqYSFCBtq6YMez/4pjoKKAmV9UuZLqwNBEYZOKgvCg?=
 =?us-ascii?Q?YGws3E3+9mE0AcacucFoOVDG8Do7W1UjxeDRtQPB3binl0uyJn2eaBUcsebB?=
 =?us-ascii?Q?f99m59WQS+lX7HxlkG2fL5QIvrf9TIBWdi5/TO+cuhSn0fM6HXg0akRCrarY?=
 =?us-ascii?Q?IgfdCBT5IYHWGqp65paAAL03oaHNB7is+OX41HwLaolKCHaRYreoQ4VKLZmK?=
 =?us-ascii?Q?hOshgpXJojTGiBpxn9UwAlC2qUMSPRjfNJoyAPeCCiiOusDLfS0HvDJWcWHT?=
 =?us-ascii?Q?8Qwi08RGuq4d2y9PnbEoVy5T8U0MsoBtcY2LivmWirHWtBf+U9TJt0aMwY1+?=
 =?us-ascii?Q?guvtoap65h774aEppRQHtYml54s5ThuUbl53mGA6x4vSKMm4khQ2IESaNX3h?=
 =?us-ascii?Q?95Tlm4+cAJIjAOEExI9oIshxHUv73Vi0tKwNA//0aMeBQDVI8/e1m3rRbe7N?=
 =?us-ascii?Q?0A7uHva3PtbumpLOr5YmxOczSmJhhKIsWVp/bvVEa0G0lrXDKb+u3UMrSHmy?=
 =?us-ascii?Q?ES6xCC2ilDUUYZbbt4TrXMVGb0Qis6Xbj2V+Yfz3cZw1cEVDYfQWNvyHfMGE?=
 =?us-ascii?Q?cb0O9dTY87lVm7BylVeeypjC5/W85SnH46yx+iknEQPCj+0LOBOeftmMGZ87?=
 =?us-ascii?Q?C+sGhpW0iVsWIZRfIx0YSvD1w9QV3NiC7PkEcZ28zux/SazCNPT6j0GkI60Y?=
 =?us-ascii?Q?xlA1NO+2KrkLFUp1L2JWX0dXyltrdohs9ysvqRccTvfJBn2ax/LJa29UDkJ7?=
 =?us-ascii?Q?4kJQYq7jReEyBGyUtBtZQXvUp19cnSIYezuWag4qVM/qXtKy1qZNi0zmSa+f?=
 =?us-ascii?Q?2siixrQI5XBqsvJBRH5lgDnp3D1OQyKZYCDliQwAhfvdZsQe1QT18AU10m7n?=
 =?us-ascii?Q?WJ7C2vIUw/vMhJymfuhTZ6mzWMEeICN27fzZDFaCebyG6hePGlFE5P4rhKVT?=
 =?us-ascii?Q?4G0xOwpgoJ+ZCk3CEeD/oNVwOQJhdt/jwOdz2jOlAT5vCcOhttvSEHWUzwf4?=
 =?us-ascii?Q?nzAoQtr8r9WVCJEfRbQFRqmDz/zGqWrORGcX3NtZID1uaGnaizHGAJiyt1hX?=
 =?us-ascii?Q?tBAWCnFf17dXMhw5YVvVEVEVRqLl4PqW6tPejVJS3c96atNSOA/ndYCuXccO?=
 =?us-ascii?Q?0dvc2xTnOaCoLXsFYUe0u603NgPF+fBQfvbtjh8BIAeWqDxrYt/Xqg9SQxQD?=
 =?us-ascii?Q?n5E6q69bLhR3eNEXp2V15IWmDDDsPrazm5Y/f1SgPMRqOBUA56YXrBgys9lq?=
 =?us-ascii?Q?1j4nBUqUApDCQrHfHpUhZr7R2per1V+DEUo2S6hwKJ1y9SkurErS18VR/nZZ?=
 =?us-ascii?Q?j7i2EMNyznTJVZFCSgngoWZvdvVs2wtDMTbQH5O96eui9uuLqHs+Te9F3Oa/?=
 =?us-ascii?Q?YCH8QptTsIwXtw40lErjrMRHpxFe3eYoAhsHaBPqZaLKbtPZcex1m2O+KjKC?=
 =?us-ascii?Q?fb00MYrQJQr51ttoB/8YVSBQzjzi+LWMwyFUOI8ugrRvpIe6ajGbGzfmdb3B?=
 =?us-ascii?Q?/nGEAVX1OTj8+qGaGAHu24x+/ONu9uSOdqNo?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ddAE9wMVFhDUMYXJCb4aWe8ghHR0f1qxgg6Lo/hFK8d1WFJM5gVoQ/WWOTaJ?=
 =?us-ascii?Q?Ij0J6pNVEl9q2P71d/UccOinKZKErWiMTl8Bc9XEOWIUY/AECeGmHJ6oqmD+?=
 =?us-ascii?Q?cBUSY1sJaK4xi7beXzMYHwOlyLZC4LSPn9B5+Z0uVH5adfAbI6Rl4r8ydLt1?=
 =?us-ascii?Q?0E/D41bTtIP+CWC9yUIMMzZZwQOou7CJP/ph5Pl2Ieg8rwHu88EWc3WPa3KI?=
 =?us-ascii?Q?2U/hhxAgZtpZ8GlvTvqLaSExf8GpzN3gp34aYQqEs4wbm28jPjT3hp1Ojhbo?=
 =?us-ascii?Q?lAiRL9jiWL4p0KK8zo8NMOMsAfaC53brlgFWP9EJs92DNp8HfL6UNZU6xHXn?=
 =?us-ascii?Q?ABn1S5SrcWUhJwqjNDczYtHGJrtiGpTdTAhZyeZ+vFWZBjpL17bPrrznCzEi?=
 =?us-ascii?Q?7F/NrTbYqB+kIRj09qFJwJwOOzLhezvuPyp+807P3IFol6hoxVD5r/HTNe3y?=
 =?us-ascii?Q?2nkn0Ndd3/l2w15HYwICFb9ehTFZQh21IMw80sbYpHdL33jHmQfMFfueJcTi?=
 =?us-ascii?Q?AlZV8VsIPXCAXhJDeW3jqDG3f3fn42pWRJLxLoMfEddUzICgYp8vmAWhJ+L5?=
 =?us-ascii?Q?u2FEnGumB7NDkA6XAWWSfV78UFQktqg5wv4kqAxGy1/IJ2FNGBe24seWxGff?=
 =?us-ascii?Q?Hzd9g4P3PCzmKW7Q7A6O6MBbvFfsQPDUDUVEm7Wa29dsTMDPb1SU2WCpoghA?=
 =?us-ascii?Q?qb5F+KWgj0G4Mlr7WGSOfmdbAGu20ZEWOekbAJAanzb2/8PwyG0/cOz/WUac?=
 =?us-ascii?Q?LEv+yjoviH7qUa80btwvDcxVkmVqVLFQV9S485kDLjIURd8ug6VPh4g1YgHh?=
 =?us-ascii?Q?KU1Y6Nr/b9TwTq72wdOvSEO6RocdavUj+6HtUg7fX+kA0TuaXDtvPASFpgFp?=
 =?us-ascii?Q?pxdYnNyf+MOVcKqaY7mfPECbq8cmriOKxpXULs9rauPMtuhwv920T8FQ9CnC?=
 =?us-ascii?Q?UtmTj6hQKrW1ArAeZp5WFGuOqcaaCOnfibpprHHMSGHjtykDRbSyq4j5WvrJ?=
 =?us-ascii?Q?VXb9avFGDWEVe24gawk29J/iqhaDP6BS8ELI1igyNibyLvRW5wcIfkcaZITK?=
 =?us-ascii?Q?of3atP1jdvFsVtWnq0pKWSY4EC0WkOyfOZfi/K+LQ08TWwJrFuIz5p7MeIYK?=
 =?us-ascii?Q?c1ilSIrPwcjun3eBVJljoTF7QMJmtcs4Id4T0OmuwL4+lv4wyip81ce8a6c3?=
 =?us-ascii?Q?xWdjz8+sr+Tq72GguSKgPno3lMaSEW/FrL/ZzwUJhmhap7LzQ3emKgjAYYAw?=
 =?us-ascii?Q?QY/jCxtsx4gFxbwzuPtL2S9x6+EfgZEuIRv6jcKUVPa/xIYDGd+aNg6v0tQc?=
 =?us-ascii?Q?kdCOHvMbfdswZggu8H6B8jmY8tmxHTqMW56UcxVbISbzQkHNSdfok4vI9Yzj?=
 =?us-ascii?Q?kuUFZlIvqqD8F4obGHv71ci9yJaH98PB59lC9ambwl/CtI4vBp+xRF5KwvWS?=
 =?us-ascii?Q?vuPfVGiByJboQyqSQGMD3ZIK64XEd2tOOLBPfMPJpxgKI7nkJEl+M3VSE/ny?=
 =?us-ascii?Q?UpM4P68QPWHcUFGUGpUtNY7Cq3Boruj3gECLvdW7Ew0V7QMOmC49iwsBn/p2?=
 =?us-ascii?Q?i1dk+4CUI6ZyOIQBj1wKTDRyDhx8wGaYPuayHgZ/?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0bd2f5b3-6335-46d1-adfc-08de20e6e5e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2025 05:55:20.4586 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8Z0kTRRxH9FpL9zEMuChuyQ8lI2SkTQANrDcpHfGmtCgMNI3nee2lxPXEf1rylMaR36sI6JhpsZ1/6PRczgMdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4753
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

> Subject: [CI 08/32] drm/i915/display: Track the Cx0 PHY enabled lane coun=
t in
> the PLL state
>=20
> From: Imre Deak <imre.deak@intel.com>
>=20
> The Cx0 PLL enable programming requires the enabled lane count. The PLL
> manager framework doesn't pass the CRTC state to the PLL's enable hook, s=
o
> prepare here for the conversion to use the PLL manager, by tracking the
> enabled lane count in the PLL state as well. This has the advantage, that=
 the
> enabled lane count can be verified against the PHY/PLL's enabled TX lanes=
.
>=20
> This also allows dropping the lane count param from the
> __intel_cx0pll_enable() function, since it can retrieve this now from the=
 PLL
> state.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 55 ++++++++++++++++---
> drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  1 +
>  2 files changed, 49 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 949727d3fc6d..cc5aa38c3364 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -12,6 +12,7 @@
>  #include "intel_alpm.h"
>  #include "intel_cx0_phy.h"
>  #include "intel_cx0_phy_regs.h"
> +#include "intel_display_regs.h"
>  #include "intel_ddi.h"
>  #include "intel_ddi_buf_trans.h"
>  #include "intel_de.h"
> @@ -2083,7 +2084,7 @@ static void intel_c10pll_update_pll(struct
> intel_encoder *encoder,
>   */
>  static int intel_c10pll_calc_state_from_table(struct intel_encoder *enco=
der,
>  					      const struct intel_c10pll_state *
> const *tables,
> -					      bool is_dp, int port_clock,
> +					      bool is_dp, int port_clock, int
> lane_count,
>  					      struct intel_cx0pll_state *pll_state)
> {
>  	int i;
> @@ -2093,7 +2094,9 @@ static int intel_c10pll_calc_state_from_table(struc=
t
> intel_encoder *encoder,
>  			pll_state->c10 =3D *tables[i];
>  			intel_cx0pll_update_ssc(encoder, pll_state, is_dp);
>  			intel_c10pll_update_pll(encoder, pll_state);
> +
>  			pll_state->use_c10 =3D true;
> +			pll_state->lane_count =3D lane_count;
>=20
>  			return 0;
>  		}
> @@ -2114,7 +2117,7 @@ static int intel_c10pll_calc_state(struct
> intel_crtc_state *crtc_state,
>=20
>  	err =3D intel_c10pll_calc_state_from_table(encoder, tables,
>=20
> intel_crtc_has_dp_encoder(crtc_state),
> -						 crtc_state->port_clock,
> +						 crtc_state->port_clock,
> crtc_state->lane_count,
>  						 &crtc_state-
> >dpll_hw_state.cx0pll);
>=20
>  	if (err =3D=3D 0 || !intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)=
)
> @@ -2126,6 +2129,7 @@ static int intel_c10pll_calc_state(struct
> intel_crtc_state *crtc_state,
>  	intel_c10pll_update_pll(encoder,
>  				&crtc_state->dpll_hw_state.cx0pll);
>  	crtc_state->dpll_hw_state.cx0pll.use_c10 =3D true;
> +	crtc_state->dpll_hw_state.cx0pll.lane_count =3D crtc_state->lane_count;
>=20
>  	return 0;
>  }
> @@ -2157,6 +2161,37 @@ static int intel_c10pll_calc_port_clock(struct
> intel_encoder *encoder,
>  	return tmpclk;
>  }
>=20
> +static int readout_enabled_lane_count(struct intel_encoder *encoder) {
> +	struct intel_display *display =3D to_intel_display(encoder);
> +	u8 enabled_tx_lane_count =3D 0;
> +	int max_tx_lane_count;
> +	int tx_lane;
> +
> +	/*
> +	 * TODO: also check inactive TX lanes in all PHY lanes owned by the
> +	 * display. For now checking only those PHY lane(s) which are owned
> +	 * based on the active TX lane count (i.e.
> +	 *   1,2 active TX lanes -> PHY lane#0
> +	 *   3,4 active TX lanes -> PHY lane#0 and PHY lane#1).
> +	 */
> +	max_tx_lane_count =3D DDI_PORT_WIDTH_GET(intel_de_read(display,
> DDI_BUF_CTL(encoder->port)));
> +	if (!drm_WARN_ON(display->drm, max_tx_lane_count =3D=3D 0))
> +		max_tx_lane_count =3D
> roundup_pow_of_two(max_tx_lane_count);
> +
> +	for (tx_lane =3D 0; tx_lane < max_tx_lane_count; tx_lane++) {
> +		u8 phy_lane_mask =3D tx_lane < 2 ? INTEL_CX0_LANE0 :
> INTEL_CX0_LANE1;
> +		int tx =3D tx_lane % 2 + 1;
> +		u8 val;
> +
> +		val =3D intel_cx0_read(encoder, phy_lane_mask,
> PHY_CX0_TX_CONTROL(tx, 2));
> +		if (!(val & CONTROL2_DISABLE_SINGLE_TX))
> +			enabled_tx_lane_count++;
> +	}
> +
> +	return enabled_tx_lane_count;
> +}
> +
>  static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
>  					  struct intel_cx0pll_state
> *cx0pll_state)  { @@ -2175,6 +2210,8 @@ static void
> intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
>  	 */
>  	intel_c10_msgbus_access_begin(encoder, lane);
>=20
> +	cx0pll_state->lane_count =3D readout_enabled_lane_count(encoder);
> +
>  	for (i =3D 0; i < ARRAY_SIZE(pll_state->pll); i++)
>  		pll_state->pll[i] =3D intel_cx0_read(encoder, lane,
> PHY_C10_VDR_PLL(i));
>=20
> @@ -2581,6 +2618,7 @@ static int intel_c20pll_calc_state(struct
> intel_crtc_state *crtc_state,
>  	int err =3D -ENOENT;
>=20
>  	crtc_state->dpll_hw_state.cx0pll.use_c10 =3D false;
> +	crtc_state->dpll_hw_state.cx0pll.lane_count =3D crtc_state->lane_count;
>=20
>  	/* try computed C20 HDMI tables before using consolidated tables */
>  	if (!is_dp)
> @@ -2670,6 +2708,8 @@ static void intel_c20pll_readout_hw_state(struct
> intel_encoder *encoder,
>=20
>  	wakeref =3D intel_cx0_phy_transaction_begin(encoder);
>=20
> +	cx0pll_state->lane_count =3D readout_enabled_lane_count(encoder);
> +
>  	/* 1. Read VDR params and current context selection */
>  	intel_c20_readout_vdr_params(encoder, &pll_state->vdr, &cntx);
>=20
> @@ -3107,7 +3147,7 @@ static u32 intel_cx0_get_pclk_pll_ack(u8
> lane_mask)
>=20
>  static void __intel_cx0pll_enable(struct intel_encoder *encoder,
>  				  const struct intel_cx0pll_state *pll_state,
> -				  bool is_dp, int port_clock, int lane_count)
> +				  bool is_dp, int port_clock)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	enum phy phy =3D intel_encoder_to_phy(encoder); @@ -3149,7
> +3189,7 @@ static void __intel_cx0pll_enable(struct intel_encoder *encode=
r,
>  	 * 6. Program the enabled and disabled owned PHY lane
>  	 * transmitters over message bus
>  	 */
> -	intel_cx0_program_phy_lane(encoder, lane_count, lane_reversal);
> +	intel_cx0_program_phy_lane(encoder, pll_state->lane_count,
> +lane_reversal);
>=20
>  	/*
>  	 * 7. Follow the Display Voltage Frequency Switching - Sequence @@ -
> 3192,7 +3232,7 @@ static void intel_cx0pll_enable(struct intel_encoder
> *encoder,  {
>  	__intel_cx0pll_enable(encoder, &crtc_state->dpll_hw_state.cx0pll,
>  			      intel_crtc_has_dp_encoder(crtc_state),
> -			      crtc_state->port_clock, crtc_state->lane_count);
> +			      crtc_state->port_clock);
>  }
>=20
>  int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder) @@ -372=
3,6
> +3763,7 @@ void intel_cx0_pll_power_save_wa(struct intel_display *display=
)
>  	for_each_intel_encoder(display->drm, encoder) {
>  		struct intel_cx0pll_state pll_state =3D {};
>  		int port_clock =3D 162000;
> +		int lane_count =3D 4;
>=20
>  		if (!intel_encoder_is_dig_port(encoder))
>  			continue;
> @@ -3735,7 +3776,7 @@ void intel_cx0_pll_power_save_wa(struct
> intel_display *display)
>=20
>  		if (intel_c10pll_calc_state_from_table(encoder,
>  						       mtl_c10_edp_tables,
> -						       true, port_clock,
> +						       true, port_clock,
> lane_count,
>  						       &pll_state) < 0) {
>  			drm_WARN_ON(display->drm,
>  				    "Unable to calc C10 state from the
> tables\n"); @@ -3746,7 +3787,7 @@ void
> intel_cx0_pll_power_save_wa(struct intel_display *display)
>  			    "[ENCODER:%d:%s] Applying power saving
> workaround on disabled PLL\n",
>  			    encoder->base.base.id, encoder->base.name);
>=20
> -		__intel_cx0pll_enable(encoder, &pll_state, true, port_clock,
> 4);
> +		__intel_cx0pll_enable(encoder, &pll_state, true, port_clock);
>  		intel_cx0pll_disable(encoder);
>  	}
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> index 43c7200050e9..839b1a98534f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -267,6 +267,7 @@ struct intel_cx0pll_state {
>  		struct intel_c10pll_state c10;
>  		struct intel_c20pll_state c20;
>  	};
> +	int lane_count;
>  	bool ssc_enabled;
>  	bool use_c10;
>  	bool tbt_mode;
> --
> 2.34.1

