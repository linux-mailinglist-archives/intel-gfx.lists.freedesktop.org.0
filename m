Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4294D88F6F3
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 06:03:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DC5D10EA8A;
	Thu, 28 Mar 2024 05:03:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MKWBOpj+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1462B10E688;
 Thu, 28 Mar 2024 05:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711602217; x=1743138217;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=hkofnT1kyvzOMN9WHyQ/iEdduL0UhYI/jNnLnbQ3gWw=;
 b=MKWBOpj+H8oPuiW1RwkaSsrIXXFpkXV6PTp+nTSoV4XNfuIfZ4t0VSqy
 Hj9RBmHq0ZQ2VgIUlLnaNMaJ4muJcX8/4m6vAaIfFjNENKmzrwC6zqHso
 hjLpoKsBjF93uDAaw9l76ol+cKdr0fjFNCmiY5ZFIZHfy2/8PF0ibRjUp
 YCfMA1U6bXUyuCTatNuHx5SVd2swgcNUSH31sQgKlmxZYcnXF25gCIHkC
 gbTL3BFo1cVYcmHf7xZSbc/arldBzVvnu9YwbbL4A3NDCvSn+jKwsli/4
 uXvBbQU8HM0p0+2kgXocikRBxJwJAN62sv96atNqP9e/+DjJuDdQwgxsr A==;
X-CSE-ConnectionGUID: nc2mW7tcSjGkqN/RAUP+Xw==
X-CSE-MsgGUID: eU5IhYxZRdCiniMCR6aNEg==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6631133"
X-IronPort-AV: E=Sophos;i="6.07,160,1708416000"; 
   d="scan'208";a="6631133"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 22:03:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,160,1708416000"; d="scan'208";a="16554693"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Mar 2024 22:03:35 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 27 Mar 2024 22:03:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 27 Mar 2024 22:03:35 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 27 Mar 2024 22:03:35 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 27 Mar 2024 22:03:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YbZVXi7D8yavCDePoOBlc2zs3X9oxzFl6Vsy2GC5enaYIRjioXtMJlT6RLmKlkxv3WimaPT8uEE6DnzmId4PGQO+dA46nh/HLByV8NXvJ2WW3kPz0Wj7TD8JX6ApfkB6a+dL7GaMYhHCPr5cCi3DjigjAw/4HrxqlOvblekKqZ6Kc0QbZOdR+tp58iph0KnuYVpV6Tu6lvpGyTgTZxwsysghkfTuc87GbqNkTaw6+QfHS6FLtomXia2ZPpw9i1Z4zRZDxrsIPMG/WVsa9KdbCNOpmCyIH9rV+cdotYuYnY1t+vJCXKcxZDcKhhCdDoqB4B1NQGqf/+mTf2TPgd4Hjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jBhnZ3MKn2xgFm2VYq7FEAQRiCJy6smRaZhbBqcxc5Q=;
 b=X8+vcFaPij9oXV3fLie6fehNpL9JI/S9gpcbLW2Azqdqw1/0imoQcbZr8M3qVELypVGrmwItRulvuPKr4dF8BNsQDd7TU7Xa2gNUaU5gwPggk/80Ijii4aSVuGsbcKic9wetvPxHUnJLy9uny7UXfoc0px34Flld87f/Ot8rjrRO9vRMeDI6YmRa85y6sGZ6ZNSn3JD6gzEUahC7V1QaBryYagyHTzKhthHaPDDLvbyaWwXiHKnqIgzIm+H0D6A+vpCGBlN4H0dpG9EUvKqcsF3WrL95YM5OdArByLErAKbOFYtZWXOIcH9OoxXd9gENrz9xxhOXvpmPOxGIXqNKtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by BN9PR11MB5274.namprd11.prod.outlook.com (2603:10b6:408:133::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Thu, 28 Mar
 2024 05:03:33 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 05:03:33 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/xe/display: fix potential overflow when multiplying 2
 u32
Thread-Topic: [PATCH] drm/xe/display: fix potential overflow when multiplying
 2 u32
Thread-Index: AQHaeST+BZ2JbTA8DUa+q1YvUCX6hLFMqCuA
Date: Thu, 28 Mar 2024 05:03:33 +0000
Message-ID: <IA0PR11MB7307DAF583B89D7E008D16EEBA3B2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240318110103.3872169-1-arun.r.murthy@intel.com>
In-Reply-To: <20240318110103.3872169-1-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|BN9PR11MB5274:EE_
x-ms-office365-filtering-correlation-id: fbdd9641-4532-42f6-3770-08dc4ee46acf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GyLcYb0cLv12giV3Ic09yfrLIbmbktIySoX0o8aFHywQXY4Q537AYU/yjOaZZmI01Xg0E9z4q2qCelHOhCy/CxXvRNdyp490apET/UEjCm9ssHtoFWrCgC3NMcj+aPC86676Zjb2dcsC7RZ8bhV/RH6ObVfi9sbfaQNA0wPaC/X1t9bZHuEsFb9mwu1BkVVQOmmZFF3moGQl0waKcKrn8oZwpuA+JnBpH1q+SmNqQd1QF67fa/BIfKRT7wxoEfifzeCFw0i7UzNczGrstCxA/cCDKKsLFeuFc+rUelbfmy0LjuQ7Uh1M6LLO2jHT5aFtv5RDFDs5i/9h645iOeVR3lbl1lHbbhYEuBMH5OJQzH/uX4gjJSBde908ePr6oNi32d2gcut7HmBc6u4b1lP2O9i2z2S2CBvo8oA8bKaQZnNoNsfL2U3+m50dzAFUAcSAB3EWK/PdUIjc6msat2fS00Jr0ZNoUQV0lUk4gZbINsJ6GvnULiD45/vwzaJMBjkAKfFLq/eJ4iCo/bDP2vV6ljLW1oS6+FAR2tPDpEblvW+04h11EFu8yA/l5LFp84sfzUSN+Nex8oEvZcj8BkV1pK4AGRmyxyzy4uH9d03kV9C439GybBfvRYbLzUa1+bdFk8wD4e89ODI0Dv8io+bgwQag+XMRT4fQOn+K9Oj1BRhWXModcCDOfNE/E7YaOeztP4ufeBJbdcgzOp56fFpNnw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?R6jfgPpJyQ//74y/uY8qSn986Cl3hwJAfWnuCuQdqgmTyzSiuVKXqtvkowjI?=
 =?us-ascii?Q?NgSUyfE3FXmOHIRvlR+LBILlFK1nwSt9fHqfygKI9ke6aezJLWpKega8wQJE?=
 =?us-ascii?Q?J8QwdCY2HVkcGajGYJUDjmUwfgim9207YhFUKKfl/ZFk7QhV2jlP+fCxTqdw?=
 =?us-ascii?Q?DjiOGwklwrZRZP2KbTziHU2YByY0I4F1+uB8/yLv7KRj6PBm9MiwPDUD/ZkR?=
 =?us-ascii?Q?Q8qrXCxPSEluJvdlfz4yAXHMO35z9n7CYQ4PrbCGS5pcSFAk/fT0ld+K5ML9?=
 =?us-ascii?Q?lQcDmjaqNmqXDFNyRgEKWvDTmsgJXzu1Slss3LYHVLl7Q2O8tvLBbPlus7I5?=
 =?us-ascii?Q?qvaHoy6S9LYduBQrM07TMWYZEcsHUegg3X3jeefhmaflOFVgd1BB/6CfbaQI?=
 =?us-ascii?Q?ndNCU0jBezM1Nm1B/KpGAp+iYz+wDl5ixkZrKFWUUpltcjb8LGOXeJIB2QYj?=
 =?us-ascii?Q?73CSsFSMr1uwz4Aq+CKie2l5MXedVAPck/Dn5Y5ctQvv901ODFGaI4qrzSpd?=
 =?us-ascii?Q?Ar3xS45z+QI58SQAF1wl6sY9tTP+GQeJ2iVAg6iN8IcuYw3QtG6lyFkXw+ly?=
 =?us-ascii?Q?rfzoOshG3cQEhuUgktTyHEYcpPvZFxLBie74w8RFafX7Eo6C+HfUDqmRPSVp?=
 =?us-ascii?Q?1+pwxcMzY8dhoWiCVjVMsQG5o/MBRF97Yb6LNs3gLCUQe/JRHogeknsS5tKl?=
 =?us-ascii?Q?JA349regdnoCHTOIZIJVWPUhBgP0SM7jati+OEU81JqoK9lsaLu89xXUV5Bx?=
 =?us-ascii?Q?heNMUdW//qF2HB1wdxFRZWa9jyc4zvm0+JL1csevHhoY9yS/P+T0OcksIFL0?=
 =?us-ascii?Q?IWHjdPUiItxboC2Uz1/0GIkXmdWegTjHzhJf6HFYEjY1ruvJ/9mG3jQNfJTm?=
 =?us-ascii?Q?kLzSAUeniaTtF1wkHq/dC0IkOCpYK0D8+OP3jk9wyc/Uto8JkttfCIK9zQkn?=
 =?us-ascii?Q?NoV3DAZuvZhdOxDVpAs5SHRgdHGgt4Dx//Lr+tF5dWg9rIXpHXkwLPCc3Us+?=
 =?us-ascii?Q?uz9UvQqrA65nYkYPIodt1jHL4CmuYp3l13iCuLV8t+yv/EWgc7m8xRqewxHC?=
 =?us-ascii?Q?89YEE8dpUn9NJI8MK/8RfBa+6s1g/3VtL/afo9ml4Q4Slk6+6ONcZ+mBjPsB?=
 =?us-ascii?Q?8Pw6ZDZOc6aK440wuBLUD+BH8u6SQHbRmQDTOruKR63pElgz0gRv4hFrn7kF?=
 =?us-ascii?Q?ADw//sEThH2NYw5XT7yNN7hHKUX6gSg7TKffantKLVjIYtQVr54BD4spyOnk?=
 =?us-ascii?Q?EJ5uihggnH3GV9olCRbnkjCQ5gdyPrGzNI1jJItdmdoGaIsxXqRZbk9fYept?=
 =?us-ascii?Q?9n17kQAR6w/H3FQE7qI/d+CQlTPbz/3zu1IZSQ2zBcaOpPMgeUdRzcH38rWw?=
 =?us-ascii?Q?ClWg90Q6G5vXEUH2oEVZ3h6iM4AjmEtfeqE7UiP2pul885UNjeWx2HbAVvd7?=
 =?us-ascii?Q?J9imyB2b/xbwFuGt4b6LCL7FsNLvJ60uhgtZjDj98VHT/OokloIYK316UXFn?=
 =?us-ascii?Q?nc968xw+UeeJX3ovwxrbPpb2rTe533fMEBrE8PqIsm9XRoAGkT+/r2BGhD8z?=
 =?us-ascii?Q?rsXcZOGIPb1Mz3ymTLiIXz2FEyabdQHNh30cG1iLpCYC8geCzpSK4TANQhWc?=
 =?us-ascii?Q?9KtmzbezOcXkIDf7elhNPKEIqX2YOOeu++SMgWzZSua/?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fbdd9641-4532-42f6-3770-08dc4ee46acf
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 05:03:33.0745 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /5eNRib4Mmpiud9XzxBMgOgO5Il9o50HcEjy4BoMxw07uFXeV6ubrvfea1gtYnxpJO6OxatQJNEn9kNSx7hnvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5274
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

Any comments?

Thanks and Regards,
Arun R Murthy
--------------------

> -----Original Message-----
> From: Murthy, Arun R <arun.r.murthy@intel.com>
> Sent: Monday, March 18, 2024 4:31 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: [PATCH] drm/xe/display: fix potential overflow when multiplying =
2 u32
>=20
> Multiplying XE_PAGE_SIZE with another u32 and the product stored in
> u64 can potentially lead to overflow, use mul_u32_u32 instead.
>=20
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/xe/display/xe_fb_pin.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> index 722c84a56607..e0b511ff7eab 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -29,7 +29,7 @@ write_dpt_rotated(struct xe_bo *bo, struct iosys_map
> *map, u32 *dpt_ofs, u32 bo_
>  		u32 src_idx =3D src_stride * (height - 1) + column + bo_ofs;
>=20
>  		for (row =3D 0; row < height; row++) {
> -			u64 pte =3D ggtt->pt_ops->pte_encode_bo(bo, src_idx *
> XE_PAGE_SIZE,
> +			u64 pte =3D ggtt->pt_ops->pte_encode_bo(bo,
> mul_u32_u32(src_idx,
> +XE_PAGE_SIZE),
>  							      xe-
> >pat.idx[XE_CACHE_WB]);
>=20
>  			iosys_map_wr(map, *dpt_ofs, u64, pte); @@ -61,7
> +61,7 @@ write_dpt_remapped(struct xe_bo *bo, struct iosys_map *map, u32
> *dpt_ofs,
>=20
>  		for (column =3D 0; column < width; column++) {
>  			iosys_map_wr(map, *dpt_ofs, u64,
> -				     pte_encode_bo(bo, src_idx * XE_PAGE_SIZE,
> +				     pte_encode_bo(bo, mul_u32_u32(src_idx,
> XE_PAGE_SIZE),
>  				     xe->pat.idx[XE_CACHE_WB]));
>=20
>  			*dpt_ofs +=3D 8;
> @@ -118,7 +118,7 @@ static int __xe_pin_fb_vma_dpt(struct
> intel_framebuffer *fb,
>  		u32 x;
>=20
>  		for (x =3D 0; x < size / XE_PAGE_SIZE; x++) {
> -			u64 pte =3D ggtt->pt_ops->pte_encode_bo(bo, x *
> XE_PAGE_SIZE,
> +			u64 pte =3D ggtt->pt_ops->pte_encode_bo(bo,
> mul_u32_u32(x,
> +XE_PAGE_SIZE),
>  							      xe-
> >pat.idx[XE_CACHE_WB]);
>=20
>  			iosys_map_wr(&dpt->vmap, x * 8, u64, pte); @@ -
> 164,7 +164,7 @@ write_ggtt_rotated(struct xe_bo *bo, struct xe_ggtt *ggtt=
,
> u32 *ggtt_ofs, u32 bo
>  		u32 src_idx =3D src_stride * (height - 1) + column + bo_ofs;
>=20
>  		for (row =3D 0; row < height; row++) {
> -			u64 pte =3D ggtt->pt_ops->pte_encode_bo(bo, src_idx *
> XE_PAGE_SIZE,
> +			u64 pte =3D ggtt->pt_ops->pte_encode_bo(bo,
> mul_u32_u32(src_idx,
> +XE_PAGE_SIZE),
>  							      xe-
> >pat.idx[XE_CACHE_WB]);
>=20
>  			xe_ggtt_set_pte(ggtt, *ggtt_ofs, pte); @@ -381,4
> +381,4 @@ struct i915_address_space *intel_dpt_create(struct
> intel_framebuffer *fb)  void intel_dpt_destroy(struct i915_address_space =
*vm)
> {
>  	return;
> -}
> \ No newline at end of file
> +}
> --
> 2.25.1

