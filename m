Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E20669951F1
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 16:37:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BD3410E569;
	Tue,  8 Oct 2024 14:37:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AyoaOOvj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3345A10E568;
 Tue,  8 Oct 2024 14:37:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728398274; x=1759934274;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6AFTErJEdVh0VP/Gmn9s6IgSmSV2yp0fPtjO012VR84=;
 b=AyoaOOvj5zIolP7MXZWQ5DTT2w2Dd7acMPBdWcjWmnngHNclpzyfhOPL
 Pb802h1Kp1o2FQfUEbc0X4PO6pl3yXpNA/XFlpkhvaSsq4kikjwGRpMaW
 qlXVcmZHd/XevcmY4I5NZ12nqBULNEqe6zwY9gZ+05/3weiPTB28mECHS
 x8hJC3z14WWvnDdp/0he12vksqFuBi/JvZ5IF9bZwhk65RrHL5XjvxxMb
 aO6/ic0prHd6bbNFFeINcmyops90KHYJ1DnzqXGW72ugBw/qWx2w1R1mp
 k5wDGZiccbZs56CdwMhiBH/7Dzy5MwbkBfn8oHdwx5xzUdEItn2FjEjBU A==;
X-CSE-ConnectionGUID: sJEPQfj+S2Oys8z3kOBc1A==
X-CSE-MsgGUID: h+Tst/roQL+t9YPaGaavug==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="50132651"
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="50132651"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 07:37:54 -0700
X-CSE-ConnectionGUID: oYv81TVbSfGPKi3tOrunDg==
X-CSE-MsgGUID: AKPgB/p3QkeO7dRWCx/ggw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="75817866"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Oct 2024 07:37:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 07:37:53 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 8 Oct 2024 07:37:53 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 8 Oct 2024 07:37:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jRAaSM7zed87z9BQiNMaKkL+SVxvYZhQAaX2OREbbnabvtkoruOizbrAFq3AisN2EZinPhIrdxasVF2aSePzaUhdUenPHVtOVQgrK7oBR+ibONmZo1MTmkFiSyMFMVY4K479EGlezqLTq3PXokkB74yU3upXcpu4HXduiZwcmIdc9MMEpAyPKPHu40FyBSSAMBQ0ckIyrU/XuQsVJwFt8wTZVHaBLrVpaAJdKhm+Dpi/NrUTy5UEdgnz5BNtrhN/+gx5imySaeQYa3M8acH4G3YIGs+EGiQA4Fq+Ehx4i8yTMndn49mRVs1yzhWW/q4m1e2lgOWr14G8ITVwr8wx9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C+fo+Y2JB3448GiIvtMRUM05LbBDBc6AhyI+IZsyeFU=;
 b=ji+RTKvRJh4uoVEp9cUFftC9rC6vrxLI7RTxvyp2goffD5ibWA6Gl4Xsu3OF1t9i5pqvu5wPLqXsgC8uf64FaSJMwBLsZn5NvUfc57+w4JVTyS9wtrdmI6rKkOOC0GZuGMosiIK1A/ptqc/TLbkb76G4DSvNSMD/ODPB8lqSHWjgyX5ciS0194ZS8C4iSTBq/DkXZ1eun7HWFtZtoFoVGcKCC/ptu9coAy+uz4uoWOo9aWD6UMPxkzFDaIj4IhQO3N137OBKMRUAHPk1vasrY5/yh+CBa8smwIXPohkPNcgsxv64I4fcMKKI5+z7yAURAgb4pxY22rAyanZmiQ5N+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by SA1PR11MB5898.namprd11.prod.outlook.com (2603:10b6:806:229::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.23; Tue, 8 Oct
 2024 14:37:45 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.8026.020; Tue, 8 Oct 2024
 14:37:45 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 28/31] drm/xe/display: Move display runtime suspend to a
 later point
Thread-Topic: [PATCH 28/31] drm/xe/display: Move display runtime suspend to a
 later point
Thread-Index: AQHbDsKaD4wZ9ffqX0OCidzjjmijeLJ9AaMg
Date: Tue, 8 Oct 2024 14:37:45 +0000
Message-ID: <CH0PR11MB5444A4FD5EFD8D27E4E98D53E57E2@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-29-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-29-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|SA1PR11MB5898:EE_
x-ms-office365-filtering-correlation-id: 87c76b59-bc60-4645-f54a-08dce7a6c63b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?yxms2gR5UmIHGeO7F1BlvbSE1jGbQEd9Uv5df5814Rh8eFE/12k/xE1T43Qh?=
 =?us-ascii?Q?qo7JsnO9Nk1AUMgojiMSsm8G8F/+IwptTlVXlgZOvPTQ/YHj4Lz6/N3iwYbM?=
 =?us-ascii?Q?OWDGuN0t9nLjP+xhMMgkXmUG9VEzoqVjT6RLhT8wRts/6UKXDIkrbHDw+bfM?=
 =?us-ascii?Q?n6tteZzFMilzJ84SowSPHqPxZBJOCz6FesrH/BHxwjnJOdqhSUM9z0TfSF1N?=
 =?us-ascii?Q?8bwX/FK9Er1DjxA0uj0AgR9qClriju9oUEO8Gco2XEOR9DQqMFhEr6pqaRTF?=
 =?us-ascii?Q?EaEwngDKFKpY0Km7dNzNya0JmDUpZ30wVvWNsjzDQsD6cuMVHNbh+C+kSU1l?=
 =?us-ascii?Q?bJ4ELkHlOdhqJmBabWurhzdJPYsI/yFCCw+bAS2DwI8eCxTzuDsMzh+gCk42?=
 =?us-ascii?Q?FuBHPJroD0vLGVa4jqrEkKSJWedwc7F/ywWvi0dSLP8hzMxrhbfF8+76Z5AW?=
 =?us-ascii?Q?UeAD1smGA0D0Vy4SzjnKzG/bGG0D4sA6CZBMO8Exkb2OTPRZX1dhy2P4FjDt?=
 =?us-ascii?Q?slkzxrG3tmKtRTnPFH5DQhl0p2HfvaZZYucnQ77iw/DactndcIvav71SweO2?=
 =?us-ascii?Q?cMxSXS18FedN+LiJiKMm3X3oJ2E4PzMdzhNVVuXXTHjcS6tP1H6Sxg39OJXq?=
 =?us-ascii?Q?GxVWhq5mcTqANLngEApA6rujrx8J5FREF4xchOkLMuTLmlNFT7C3iM/P3RyJ?=
 =?us-ascii?Q?ipZ/QdeqVbNWAkBv67lYWCv6vWLdWo6rXRdqjsBY0HP5vHHB8YyUiK6NeG5j?=
 =?us-ascii?Q?qlEL3CSGKBscCnYvJgDIBrt2pn5kg9ET/jC6AlTpvi4ICbZ+HZF/grxmLXbI?=
 =?us-ascii?Q?eu5O/23O49vcJtJwj0O3ElsVV7mCO6zEvjkgOsGLG2It+EAVs3kJv7q2SVe8?=
 =?us-ascii?Q?kTEX7MMX0J/N6d/x4nPb3yvUnn0M93CPpoI+BR0NkCiK1iKhTduYagkelX4h?=
 =?us-ascii?Q?DhKxw+Bp42+STkHRZrlvpeL9dIqScby40kTvtuOrPrpZyjrE0ZbReVsDg70e?=
 =?us-ascii?Q?tYJ3rpVixoqwug3u2q6yZiJ5ZNBXB1q0TAdJVlPZnDeN1ARMyJ9hKQ732uG+?=
 =?us-ascii?Q?i8kYp86g/Db4b3p2if63Pv6zxKC94nplHDW2eAY8EGarCYvS41NxpujIP6rX?=
 =?us-ascii?Q?Gyyh5FbLI+hlKCHw1FDovnHIylgD6LX9oy+Y6vatvjl8z61Kx4Ex81CMTTuQ?=
 =?us-ascii?Q?OcasTrXnWztdTr3HprFZKUri8kJpBSNbGVDnDEQfO+/HBSItgOyfxLAgVex6?=
 =?us-ascii?Q?uEttJ5aO4EPEtCILy15ut1QZ11/wuiI6Ck2yKODfDIChlfUsR3jy41i3tNIU?=
 =?us-ascii?Q?zs/dzRykdg8nNLJtHsnrnxlcqNEH4uqOYxXRzu0Lzdg2tQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?34l3l6mvssYh82nT+IYKrN8kIUK5N7ExhQEgH/kV+7DjlE0WteSm0BTddsGI?=
 =?us-ascii?Q?CgVjbUUikzeNChjDPFvzYLmulz/xDePXjv3vtl83N19ZJ8sVf9cEhN6sGI3f?=
 =?us-ascii?Q?bG3Uy2QRGEJlNQgwwllhDn5AkvNK9IudF0uqsNzwjKSgulWKSJRGgRGsm4e8?=
 =?us-ascii?Q?cCfto0HqHjyTvx34FwYLNj0cxucRWqIEs8wThVhskpFpkviWIqJrLE7qMnb3?=
 =?us-ascii?Q?8gdhgXelnI2uRN85A7jnQGwnW5qkuMxARGsdn8k/SekG2QwWigb89BZn3HCR?=
 =?us-ascii?Q?li6msji8lKc6tQLRpk9zogJVdtSw5rj+qsNg2+QaIB6aYT6Hs+tSXHGeGIzX?=
 =?us-ascii?Q?R4fPqwioWqiu9rGpFFliVMcPNNhZy0/73tJpn6/t+/Pnmsbogwt2bVfNYMiO?=
 =?us-ascii?Q?AtD8RHQ8UDcxc6Fqcu5sqpnIxZfJGMsgr465wLmnVAGBzHEAhRgpkZIOJNxB?=
 =?us-ascii?Q?rwhHLqoJRaB87mc88LxesNm+YR2rpjuqlOnTF7CRopKtsCp5AIIeCgZhNjvZ?=
 =?us-ascii?Q?jZir8flU8vGc8LmegUA00ScaPr05ZuUZ5Owg1//yk9kosdgTNQ5/Wo7ugbn8?=
 =?us-ascii?Q?58i0zXaXuEl/hSr+G/EegdQYqbaoz8UW1Z1NJTQdyvajydnp3hNWIS0k+hCq?=
 =?us-ascii?Q?n077Ht949mXRAT+yQoTt+tUntoLdAy5eTBe7oVypdazzxbuzOeVBXkfD5erB?=
 =?us-ascii?Q?hkdh+zkwsRcSNsnoVzTNln3PgoDA6U574bBKufPXcgmE4MIPp7eyQghxK6np?=
 =?us-ascii?Q?nTf3GowvXoiY5Wh2jbUk+Oag8cZhs2JCUlSJiZks445vR7a580aZSbc53Q6p?=
 =?us-ascii?Q?6Qb/X9hxXDbls2BHLU39lWCZueDAoXIjBzhQ0d6c1oZXuLEjHStfGv6Uor2N?=
 =?us-ascii?Q?/KvXhsUzO4HoADE2AKYGR7+8VDicrrZJNMtt418mXMDWxpnnOXnjmCTHcNBv?=
 =?us-ascii?Q?jYdAGiN3yOF3ZR+gTv93i3EWhVMtM+5GdBYbVRRSSNqXl6oE52ZTmcCn4Ooo?=
 =?us-ascii?Q?G4uiZArvDvqV0+svXnmsun/qcL4M4hmjZ91d/jmzGxrECJKt0K//eYVLkIVd?=
 =?us-ascii?Q?NRGJJMbVMMMedPX3QyMeP3IO65046p5C/7OwBZHENBgH6ipTi0fJpCy1eMA2?=
 =?us-ascii?Q?1iXgSxR/zOnTGGQWBKM+c+nxPlj6GhQ+Ga60H+W6bdxJsnLcatiXLH7RYCQy?=
 =?us-ascii?Q?ZAbEP5bxAOJbVpVl9jp37LOmB2IRgvCdKprX03Ke3+QMmTwNd8SQbaOKCRgt?=
 =?us-ascii?Q?sL2K+XsNiZ5zzTLUCEMIrl8tEhyPlfGg6eE/VPP8/3eTGl+Uae8ZkN6rX2kd?=
 =?us-ascii?Q?q7lCBiuF5zlupKZBqbu/RMDvJUr9CdWy1T1f6/fUgEPyajCDNDKU9GnWIWBj?=
 =?us-ascii?Q?7I8700hg8I+7dLqumKl0RmyBGXCb5g6wN5Yi/0PneX3adBM8XVXZtjJMzVib?=
 =?us-ascii?Q?eHSz9KBcKbhyK9DptJYSiPtQHuSRLt289PFSSYG3wxKln7w+Df1PhPUC3vA+?=
 =?us-ascii?Q?+41BkFHPEjhvRq4o+f5uu2I5LF2Xj805EZ5l+/pD9pgWikMLy3Q70JtN8I0n?=
 =?us-ascii?Q?9mhRGItbxP0gotbXZ+sO1f9nAkyYQHi6oLxyuDkxQgLLk+M6chVRVA2aHY89?=
 =?us-ascii?Q?Ug=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87c76b59-bc60-4645-f54a-08dce7a6c63b
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2024 14:37:45.6059 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X9LD6rvY5JrF+Ouwua5SXgB8nW6qZ1qcQpqQlkr+ie3RdsOHyNhL6iLDsjph4ndoUkg162T37ZX37Y867MEcDJNSQyTuhguV+Lr1Rh5K9Sc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5898
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

-----Original Message-----
From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Rodrig=
o Vivi
Sent: Tuesday, September 24, 2024 1:36 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Deak, Imre <imre.deak@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com=
>
Subject: [PATCH 28/31] drm/xe/display: Move display runtime suspend to a la=
ter point
>=20
> On runtime suspend (regardless of d3cold), there's no need
> to perform the display power sequences before we disable the GT
> and IRQ.
>=20
> In a matter of fact, the i915 runtime suspend needs to
> disable power, which asserts that IRQs are disabled.
> So, before the runtime_pm sequences can be reconciled, it is needed to
> ensure that the Xe's IRQ are disabled before the display.
>=20
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

LGTM.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/xe/xe_pm.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
> index 4cacf4b33d83..16854215bea6 100644
> --- a/drivers/gpu/drm/xe/xe_pm.c
> +++ b/drivers/gpu/drm/xe/xe_pm.c
> @@ -402,8 +402,6 @@ int xe_pm_runtime_suspend(struct xe_device *xe)
>  		xe_bo_runtime_pm_release_mmap_offset(bo);
>  	mutex_unlock(&xe->mem_access.vram_userfault.lock);
> =20
> -	xe_display_pm_runtime_suspend(xe);
> -
>  	if (xe->d3cold.allowed) {
>  		err =3D xe_bo_evict_all(xe);
>  		if (err)
> @@ -418,6 +416,7 @@ int xe_pm_runtime_suspend(struct xe_device *xe)
> =20
>  	xe_irq_suspend(xe);
> =20
> +	xe_display_pm_runtime_suspend(xe);
>  	xe_display_pm_runtime_suspend_late(xe);
>  out:
>  	if (err)
> --=20
> 2.46.0
>=20
>=20
