Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7666C5095A
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 06:10:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A81A10E694;
	Wed, 12 Nov 2025 05:10:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MvqgRbYi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3CB710E691;
 Wed, 12 Nov 2025 05:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762924256; x=1794460256;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rusEAIGigz+oaCZHrvUKhpZK8Tk+2E+rj0GfYUDcNgw=;
 b=MvqgRbYiLNa1WeOgqCsTS96k4SZFgZd9kd/oq/LM7awrTTpc/JZ+tNVG
 VJ4HWtGU1rTgMEH8QSl4EK4mtQAfc2TPIgmwVKVXXmM24+4Bq2lS2sSWu
 +KnaTQMSGFjcIX9fp9CZUutDcMhf0nn8GgObidxsrM6dLV3I3JOO0Lf3u
 NDQYjntQZfMm7wUFC6zOl//wlvIxhmzY9xkEJ7dFw2xikmtzpq6S/MwDp
 rA/UGTbxb/edcXJ+8vQdI6E15hrJ5uXHB02AYHsQhCbzUQ1Xu+2qZIGlI
 IMudF6LTAyN4g4TNBf/5jt6CMmN8VbUEUB8r1aGOGt2fBEYoJB3l/RH27 A==;
X-CSE-ConnectionGUID: IZNNMjWISeOy84ySaMKMFg==
X-CSE-MsgGUID: 7mqLU/dsQN+IBnC3A99mug==
X-IronPort-AV: E=McAfee;i="6800,10657,11610"; a="90454931"
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="90454931"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 21:10:55 -0800
X-CSE-ConnectionGUID: TJ5FclphTHSVP2PX+CRLXA==
X-CSE-MsgGUID: 0S67OuANRYGOCLUbVM0wkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="188423142"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 21:10:55 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 21:10:55 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 11 Nov 2025 21:10:55 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.64)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 21:10:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hxQQHH+UUV+bfcxVUCsdBKC1i0fqkBqZx05JuLaTCOYhb1MFgP+Cj52O1XDFXE+qHgJFU44Tf3yFdtGNv7VQrpO+qUPLbkSJ49NDfbNo8+q4IC6VZxftuguxgdra4h2T2M+hiCRjUBWXmQB5kldb7korKhrMYRmvnKTj34Z4BG651F37QK2ZlSgPs3p1/z6BJdk8u816Yv6jGnxn7Enzu6DNnG9wF+XQq1VUMOF6SWEe3T2IJTq1nvA0D7pY9aN2a/P6Ga0ryEfFysaAF+uKIIyHJFOYeMjHzoZa1KotjLFUZggXMA2nx9gkPO4/75UubC4LSyWg65vJjK5HP1J85A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iuS1I9WTBCFSlcs2fKGyaFIgz7hM1Im3ISep2E0uCAQ=;
 b=zOGRAxopxcDEiNWr5zYMX8hcLEHuv55otE1qxU38FMCk1fGNRcwe75FPLMLSxFs7LjyEP1qahyKtbtYH+MiG7sjrYawA1pmAS8S0byrIZLLe8L97JcR5a4ZmevK9HEPFIrtEBrn5+bOPmNDas4/SIpiqt00PrRKpDxQsX58aLFCOteTPPrSYReXmdhm0fcyiGvphodAQbR6t8hL7I2Oj8Kl7JAj/+uhzaL+fLmVQxd4/PrDXYkPs/bvcp1AkoOZOMGhN6dK/9nIkifox2kdt0H+W8Pnt00kQBg5CzpAKR2qwSkynlandDuVKyq/KPcDb5AetX7CXQUhq8yFCQUMFvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by IA1PR11MB6123.namprd11.prod.outlook.com
 (2603:10b6:208:3ed::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.15; Wed, 12 Nov
 2025 05:10:52 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%4]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 05:10:52 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [CI 24/32] drm/i915/display: Add .compare_hw_state
Thread-Topic: [CI 24/32] drm/i915/display: Add .compare_hw_state
Thread-Index: AQHcSlaH1kNDfsQwqESVd4j1hpOeZbTukHLg
Date: Wed, 12 Nov 2025 05:10:52 +0000
Message-ID: <DM3PPF208195D8D56FAAE7B762B9268B387E3CCA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-25-mika.kahola@intel.com>
In-Reply-To: <20251031103549.173208-25-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|IA1PR11MB6123:EE_
x-ms-office365-filtering-correlation-id: 962d4392-2c20-4453-132e-08de21a9d9f6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?E/ryJlhuKpQq92Zo/aM+x1H/XGESu3SMgYbyRmgzf5PVc+ZJl4dK5SNaBpfk?=
 =?us-ascii?Q?CgLDPVmq3UTNhPB2+lZkkPA+fE9XxYPogxVj6PSTsljNeLrblyTG2rlG5F+m?=
 =?us-ascii?Q?pq+xmzXDGzwfqzsn3Y0hH1qOE7nOChBPVLhvRNSOu7xVy8jL1BDnrXWZ2R87?=
 =?us-ascii?Q?Cp4yK5ku55CIF2x0oIVDhLi96YBBUmAS2mfBExpAKyzqPQuo/ENcCm8/rhz1?=
 =?us-ascii?Q?EmSZbaTOsgPuNSQZAsQ7XX3i0Kf+JjVCZAGYqI+5ev6pNLq5JEdx/kLebVE9?=
 =?us-ascii?Q?5D6H6ZYk5bxHDWpGIa8JmkgUXt5t5SdPo0g/CPCQlAulwuFrYmDig67ks3Sx?=
 =?us-ascii?Q?T4z8VzYaAcYqMsfcqftA0eaUj042WucPBYsIdV+N0C64zOLEBCA6oI3BMNma?=
 =?us-ascii?Q?fdC+fY0XVq5VPeReIMahZv3ts8GmBDZPsyVbvoXnjrUjY4+mLgeCd7upG1TS?=
 =?us-ascii?Q?RqdcoQuGtWp4nCKBzZRLeGr1eYiA4JwI8eE7Gl46TjCzQgP75BmdZIpIBIA7?=
 =?us-ascii?Q?k9nE69dGmF+Wo0U/jLXUBp+mKIwLCXubiu92VV+tbIoZUxSWlZEAvwSse51L?=
 =?us-ascii?Q?1HCA7WJIFcnjRB7uYKXQibjR3gAdhtrEG7lL8pRA95N1AP2L4QkJSYioWFlu?=
 =?us-ascii?Q?nx5BpX4SDuy4fMeLMK+sD+xbZl4lKNTIx9LFeNWQpkQ4r9Y/dFnmIqyhwzgW?=
 =?us-ascii?Q?GhRlQ5NC/UvxLTkFLtol0a/h8CyurML5sjywSwV4fKAP60BRTliAcZI/Jktr?=
 =?us-ascii?Q?YXdvthsWcUD7AZyAfWu1roEUz6l96gLQ6SwkmZF7nn/TmLO7qbOva+PHlnPm?=
 =?us-ascii?Q?gRsNV1KrzRJrTxvshlbJ4pPdDx8qww4ZaNtn1wW1tniTNMG/nvBTTpNTt6+R?=
 =?us-ascii?Q?JCVm2aSzmeIE01VNxeUBaEl/BJUlLJ7nWxdnbWXmDTG/RWBWjXV/nMCBg57A?=
 =?us-ascii?Q?DHbmOHJXh6OG2vm6qgC6Es0cVLluBOHROOUDQkXjzWBXJgELxP+LQqnvHNoc?=
 =?us-ascii?Q?69rannAt3ig4trmPRPRx5xUsewwooWtkgP5M3j8AJ5yRZTqy2WWVatGPlD2k?=
 =?us-ascii?Q?9tpPS2dBnquddFYiEqomC+xCaVKRU8B7pc50f7dSgY3tGB0kkb5MdbzyvLi7?=
 =?us-ascii?Q?dcwxVFuqqUhVzWKRjmw0y3SvKdo3RLpEh983y8UDxckF+JF/SWkJ0cXIUj1c?=
 =?us-ascii?Q?+F9LKNeMDZxFfKtGkbfa6T+WPnHtnQQY9p7uGu/o0GfEO8depY/LsGKiMf1D?=
 =?us-ascii?Q?e27wwzH5KdrDV299+NojqtKyRp1AkeIYSsAozlmDl99hbl6jHK/meatviCbj?=
 =?us-ascii?Q?lqJEMNQw9iFWAK++VxM2sN5iHZwRMKMeLD4M57uFBIRIB3GhbTBG53jCeo95?=
 =?us-ascii?Q?7qRCefI4T0xInIhPDaY1sHA2tqaqrGcNjZwVclvri3gaggmrDev7N+V+oYzJ?=
 =?us-ascii?Q?4l/4vZ9RUxGVFVOJaaygQnC7n6RZ8TSVD90cnXXZyGuh49Uo3M0rtcV3yH3v?=
 =?us-ascii?Q?PAowmnLlUtEWje/MfVdxnNadH3sbX9PvwJ47?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rAhVGP4UuUwcp0oOjsQKrtJE1H9+OtaqsjgSG/CSr6a4fp2e2/MDYEc2Txpp?=
 =?us-ascii?Q?Z04rsJiwOujjn1iEHjD5bUtBlPn/779XU86NjQp1rWB4wtR+lQAk1zzLxdHs?=
 =?us-ascii?Q?v/ahl7L0plga7qFWKlJmKR5cKzYXMSKwBHOtJa0M70jZfZJjKGIgpJgJ651x?=
 =?us-ascii?Q?7wUXOIEFQpjr/OVPCH6HV3Ab/hdmJWamO8JgLaRzNV5A0p3GbBG8yKvLW/le?=
 =?us-ascii?Q?nHcYZnUbdYS7bO2N/wftHbgaoLvf0+ANyZTXIZtojYEvbv003/5w/QiEHY6c?=
 =?us-ascii?Q?wwqpa3yLAR6hPjV1TWje+ByRtRxGGpFzVw2Zv4iMKKwqpfjKjmyzgGgD/wC7?=
 =?us-ascii?Q?y6lloUsN7GY4PfptVM4IEMgvPEDxIcJpDGJFaLwUy9JeqZIkLv1f0TGMyL5m?=
 =?us-ascii?Q?Vg535/6sileMyzjKtcrBcJaAhnklrjIXYks1T/JHy3kXsGEKcY3ElNKEn5i1?=
 =?us-ascii?Q?7ripG5naBUFyLhLs++U/rUhtYYgfHEJTiWwtjERzbn9vR07KCu0Ulx/xw4aM?=
 =?us-ascii?Q?tFBMuK7DZU9eoO2Zwb8phlhIr0i3AYuCx2zEd4AdSXBGjB+NiPsOfK/iX6OC?=
 =?us-ascii?Q?qUU0C2HIj+ZFKnOo6lkKA4V91BwRAhP5NXjsp/nwFipYbTANZ405oxVbzHrE?=
 =?us-ascii?Q?UZ0xu8JSugMwF24AEREDIK6vdzLYaTQ/V6QN3k6H1yS9uT4VE/FCMGdM1lXG?=
 =?us-ascii?Q?aaRfg9/+76TKzcph8N3LjNi+PZsXzQLuDfR9In80oyD3LEnf3/rz2N8zn/rz?=
 =?us-ascii?Q?MwFPpDkDcFmL1I5P2zHbTBM2krUmGM+hgo2YNB/Rq2Kc8sfjtZMoN2oJ0MZi?=
 =?us-ascii?Q?QbgvrI4RGOe0hF96WIvRRQvfgz0wv5ZJtFy0dCt5gWKU1+XRgZanzVTUQdlq?=
 =?us-ascii?Q?NlJifFue4ltw1bRx1FFH2c2WDa0Xknh84xHUDklovLKvIQ6EY86VjeydbR+7?=
 =?us-ascii?Q?c7XcbUz/vIp9SJCukjICMNPjnQ62Y/o19fcMyg3JR+9b1qs6o3ZwKH11hMiW?=
 =?us-ascii?Q?BciJWnV58GFqYISsX5uhklt71t/f3AMCHpORdQ8UIeh1ZNfESac6Ai4AwSRd?=
 =?us-ascii?Q?W1XPSdWZlDkQALWRCdNvkb2fdLG6FRmnXzj83hgShBTqCIR1mG1RGhyluLNW?=
 =?us-ascii?Q?LOSB0s8e/XTZiJJX728zXxQ/VdxwZbZcvp7L4wnS3ACb5za7sMy1mCqi6u66?=
 =?us-ascii?Q?7IanqIb2+NrXlJWlSUyvA/bGuG8nIiFt0vycIU9XHygdUfb98BrE8aItzbBX?=
 =?us-ascii?Q?V4VvzZUeG/vUUTx9jZ5PocjJu0RmclZN6Z/OC634gN6tPvPthKEdPHuIf+6K?=
 =?us-ascii?Q?LoBZjXBlVpHCdHSwP7qjkpvVsbhNPaXkryKZLXH75bv6yKXwk+UMMEGpqILr?=
 =?us-ascii?Q?cnGiAffn//LNDnAjM6gNM6FqkWmdNJwOcEPLAlxmk7uV1BGCSPVg2aN2WM8D?=
 =?us-ascii?Q?7ci0dqkZ/cNZs8mtWGv5B32KUeVMxSC0cE0m9PvTE0iyzOgTWdMtWmptbuxi?=
 =?us-ascii?Q?m8QbkcfbQzdVJx8bG0ucNxIBXUzbVxAGqM4SxzTMkGtNfhfqk7yqQAHewbsh?=
 =?us-ascii?Q?GbIoCnRaBx75agF/dQZjWHKosY4EwIV2g7qZl9UT?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 962d4392-2c20-4453-132e-08de21a9d9f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2025 05:10:52.3115 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JWlF7IFoxhHpQEYhTB2exF4Mfj1WoNwQqN5PudHJ67NG+l5HxO569qgYkOrwIYeYHjJO6jgVkJdQ3hvyCohvmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6123
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

> Subject: [CI 24/32] drm/i915/display: Add .compare_hw_state
>=20
> Add .compare_hw_state function pointer for MTL+ platforms to support dpll
> framework.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index d4b58c426044..d22771cf2ebd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4449,6 +4449,15 @@ static void mtl_dump_hw_state(struct
> drm_printer *p,
>  	intel_cx0pll_dump_hw_state(p, &dpll_hw_state->cx0pll);  }
>=20
> +static bool mtl_compare_hw_state(const struct intel_dpll_hw_state *_a,
> +				 const struct intel_dpll_hw_state *_b) {
> +	const struct intel_cx0pll_state *a =3D &_a->cx0pll;
> +	const struct intel_cx0pll_state *b =3D &_b->cx0pll;
> +
> +	return intel_cx0pll_compare_hw_state(a, b); }
> +
>  __maybe_unused
>  static const struct intel_dpll_mgr mtl_pll_mgr =3D {
>  	.dpll_info =3D mtl_plls,
> @@ -4458,6 +4467,7 @@ static const struct intel_dpll_mgr mtl_pll_mgr =3D =
{
>  	.update_active_dpll =3D icl_update_active_dpll,
>  	.update_ref_clks =3D icl_update_dpll_ref_clks,
>  	.dump_hw_state =3D mtl_dump_hw_state,
> +	.compare_hw_state =3D mtl_compare_hw_state,
>  };
>=20
>  /**
> --
> 2.34.1

