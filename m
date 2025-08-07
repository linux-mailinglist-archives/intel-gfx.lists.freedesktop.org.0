Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7EAB1D558
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 12:00:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D934A10E3DF;
	Thu,  7 Aug 2025 09:59:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gMTmWPsc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5548210E3DF
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Aug 2025 09:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754560797; x=1786096797;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=P1pGLTrxCgZIeLECOKvoz1GgM3FfqWMFtTeMeytBZ34=;
 b=gMTmWPscK9IAfpDQoPZafYdetIUW8ZaJJ7NP9NKKkN4Lzhm8LSRjUkKA
 KBocAvMvSs65w/JUaxh1xlMkQILkgNIKublRREXRkZ8yC/Bie4DMW6gjF
 xImzSUI3w5i4aKiBV59G9r10CANHsgQRt6ROLIVbhHfaW3xN2tnIfMHRA
 S/eYsecDDJC6x2iJrnl6+Eof4489AYgOs811wpr80OjQyG7a68D/5hkLf
 a4yu6jwEuFKVy7MMuDazU5S1dc/1jtthdEcOsgTsPXZ14ZOqKksoh56/l
 ZO0K2SX/bXYLqGIsaYSHPNIXtebj3AYBupU27a7ZhuyvncmfJ+BOVLcdV w==;
X-CSE-ConnectionGUID: HaKdZyJgSM64O9pi53Xrkg==
X-CSE-MsgGUID: iRDkGRYKSgmyptGGotH9cQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="60730485"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="60730485"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 02:59:57 -0700
X-CSE-ConnectionGUID: i1z4TchvQrOSH1TESJ6JjA==
X-CSE-MsgGUID: nXub1dtMSzO7rwL7jv4KVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="164256907"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 02:59:57 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 02:59:56 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 02:59:56 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.55)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 02:59:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hv4160L2PrmF1ws5zKXrOEm7Skm9Za2WvCruuVYDFnQGdjkERWQ2Q2nT2n/0AzfsXxEKp8yi6XZv4eqjqQNlB0TcybqhGyc0BaHEZZGQ4X8s0bCwMXcQgyU8Bg+7kDFocXlAidHc6dSavMr1YN5XrVWdcsPJXbEImvhxzhWBwTTGodjV7loVrcPW6jrO4j6U1TkNT1jxFv9l+6SoW2AVTXh0ER6Evh3ofuDAW7alrP9gRF6Fmy+1M1qo1HYfhxleDaJAZ4a4sItzmd5/MdSQmwpE7W1pE1jtOi45X45buAyKxMi2Jr0ugt3eEa6pCva1ElGaBz1+KDo9DIOV8sk70g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oKedf6IbcIUsYVdSPMva7kgPIWD4cTJ7K26s/8heny4=;
 b=RB3ATRTEX7RHgoFEuLY2NKHoTOfoZq7sdgOfmYayUJx62jQlcA7AVN5Xkg79ZnFRxeVh1xyNPwc7tg0AFahGu5OIKdER6ETFrMffJtECSfpkED5oB6cCKCL2s66pBn15MMYK7l2Su4XhduD1D2Yacl+OFMul6SR03wJtIMzC93c5UjNRqDL6hR8IJp9ELvVTN+JviS51Leq2o7baQTyY1UnaghKgUb4G3DQibn6v4z/og60EwDScB6x6PElIVAQukf59y12MRYF29fJd3RMsF7em+lrCwKkMgYNoDVZV7S+thDzM1Shey9Ha2hAS7+JjHSS1sjJk/jq0ShORQjUARQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CY8PR11MB7825.namprd11.prod.outlook.com
 (2603:10b6:930:71::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.14; Thu, 7 Aug
 2025 09:59:54 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::76e3:aa2a:a205:819f]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::76e3:aa2a:a205:819f%7]) with mapi id 15.20.9009.016; Thu, 7 Aug 2025
 09:59:54 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Garg, Nemesa" <nemesa.garg@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH] drm/i915/scaler: Fix for WA_14011503117
Thread-Topic: [PATCH] drm/i915/scaler: Fix for WA_14011503117
Thread-Index: AQHcBrxbTkjETH2N7ku1TruCUotDTbRW8JYQgAACx5A=
Date: Thu, 7 Aug 2025 09:59:53 +0000
Message-ID: <DM3PPF208195D8D87E87FDF4370D190EA6BE32CA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20250806101930.2969802-1-nemesa.garg@intel.com>
 <DM3PPF208195D8DE1EF756F38B634FBF9BCE32CA@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8DE1EF756F38B634FBF9BCE32CA@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CY8PR11MB7825:EE_
x-ms-office365-filtering-correlation-id: 5daa4554-3f0b-4bfc-bbfa-08ddd5992857
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?iUZPdljm0HXpEGFWh0LKeRUDxOxmiFmNipTSEsUwbZYp/kVl4zVNAv4c1JVD?=
 =?us-ascii?Q?TbY2sFMRSY8et4Kaxb72kXu4NeJ89eCgCoGzmOCpvJUxD49I08UH+2iRQJ2F?=
 =?us-ascii?Q?PkXfbPbgq4vO8J3Q8eSpS3M9PpFqbzwgz3fMFPRpfWAJ3WpiBxS9WrF9uUhs?=
 =?us-ascii?Q?eJevCwJ7GcpbYrvg2RmxK6CkAIqa4ZBQjQn5Xu8y5WvxtqCbHh2iARZTkFOc?=
 =?us-ascii?Q?LZLsG6aUnBWCrO4KoEI57b2o2qsmDYTzUW/Wq+0i/U9L6FpPT0gCycEXqQ9/?=
 =?us-ascii?Q?G+t5Dy7TRXfjO4VpOkWS/jz3E4+YqZutIyq0hoKKxpOaQrBnwsc9RJmJDjK8?=
 =?us-ascii?Q?g/Ihnt+SsWNqUznMJoRPiAJLYrIbPnew4fAoM2S160DEfoT4TNLrtJUfPVF4?=
 =?us-ascii?Q?hTAN6dDrn6TpCPTEnh0idrjW6tSW3qwPWZQkDnX/eysUszWppcZgjIQ6zHIw?=
 =?us-ascii?Q?Vks5HTTKH+ZzE5H+v4H1QKL5PmxEeklnPMdjedx+zhT35jZhmEQI+V0nYkTj?=
 =?us-ascii?Q?4cgwyfIzQ/4rLqJKB8WYmtw+sA+51Enk+i2GU31GRfxhFzEGQWu1cwG8pe1r?=
 =?us-ascii?Q?2hiAMKduWzRQ08QJxcDj5wAI39OKAJEuG+iMfOJIFlGizYNYQQiEJQjGX4y2?=
 =?us-ascii?Q?lyWoO4NZeGkdBl7ttRTWkhEascJD+VOuKHCKibEIzzng3B+sFRPubSzRi+uV?=
 =?us-ascii?Q?8gRNclsGmmbxzN8K1Eic9n/J7Ru5TfG8lNPBzmGOFSMlWqRq3rlRYOgTBDUn?=
 =?us-ascii?Q?/6x0zr4bzg46+Uvn7FM7j8LjJUCT2r4dWimL8fAXFrJcnmFsJ35MnxYWIZ27?=
 =?us-ascii?Q?RObSeqiLZMScFR1XmLinEHns9dxQ94N9LZd4BP71h/9vwDniveKmbGIDTigh?=
 =?us-ascii?Q?dLZUGEshNZXdlIqBbbXGzl2f2MsEfjyoGLC2ECFK7hAlT5qxjNy3yyNDtHic?=
 =?us-ascii?Q?km+uCqIaUpKNNmqtoAUOUuRuuUBTYUx+W3Dlt/i+TfE7e/cPTuU0avg5YZRC?=
 =?us-ascii?Q?nk3gNLkO8lpp1HHAn5Z2/pKjC7zcSZw/zCuzPnBWjb7cSr0hP0NryFQezqG6?=
 =?us-ascii?Q?aFw+0jcZ0k5M6OVyGxN4YainIdA3n0wZEl9VTWzZlyhc6dw/yFS3QoIVEczf?=
 =?us-ascii?Q?V4PJsDuofif/iJtQ7TIjZgHX9JeRfx4lp0OD9pfJ5bnmKbdN2BIxJwb3h9vu?=
 =?us-ascii?Q?Gpp3MK1jAHfD9CdTJoFKacPiHNEOXki/3oJgF8Ar0x7VdQM9lmMiNNzcRwzB?=
 =?us-ascii?Q?1U7C4ydAQAhRGuSCBFwVl3t8dlsPCTVt14bHniIAC3bXqS0IACjzyjEn8DI7?=
 =?us-ascii?Q?2tnOUD9ctXaYTHDG4/I2JOqTE7A2Cw01uopGy44mZPBvXizDfLgnFok9xImB?=
 =?us-ascii?Q?JK310XeenQxQas2HnylePTqwtujZwZlPk5B364xXMm3swTvtw3NgCxG9Og54?=
 =?us-ascii?Q?22lu7Sz2DuTaQEjgLeZPhx9AX3oyEj4FNets2ocU7VZyLDSKmDsA0w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Tz4mOQynp4ze2CVhqVuK/U1j8JaiyKIPBbmvYHMbe1naezDa3GDQJyNviT+F?=
 =?us-ascii?Q?unVpMubReLGuGvveZZPt0dPqnm5dt399ysahf5ekXQ/krDRn/0BRup4okIbO?=
 =?us-ascii?Q?Ofyh5SC+yzX89ek8utrR3TMlZZWHZeDYMdnhwSZqsuf3UkBuMCcMOiEM9i3V?=
 =?us-ascii?Q?GcCCUM5IZ2JuDEAVOw2PZhoGJiizxsQo8kS9Wk3BMMwGrUmuf3Q0Mw5DqDKm?=
 =?us-ascii?Q?jyuz3ZyBbHaWvhyPtNwt+kjTx3w3llzsw4NdU6RaFntzOOrMn5EF0FnmLq0L?=
 =?us-ascii?Q?N48cL8LdCbMZ6LVMQWg6r1MmVbqO4LeZg40fPqYQjte/F4A0YWav73ZiSao7?=
 =?us-ascii?Q?9tGmytdZt+Jd147aCumtEWIBsGsLL1c+xth0ckxERBQX6IYIJBoeroFSOxk7?=
 =?us-ascii?Q?577/Jv0Tee9op+PNelXJJ7hCfidPzbW7gCNtnKBpm+vtnCdm2IVagOALFq2b?=
 =?us-ascii?Q?/lYAyt6MNscG4dsztlQGrIHgMLox6NeYcClAuf339qa4gORHEuoLSr4X6S/a?=
 =?us-ascii?Q?/3k4XbSqQjzTawQmI7xFd4dClfXUh/qNdfQ6tA1nWq30sKX7fMsd79E2L+pB?=
 =?us-ascii?Q?Cw5cu9JGy9pf/giWe9dxM9O+9ezZeziT8C3fuR0Oy02aB6M5pUQY8559DpPO?=
 =?us-ascii?Q?0AC2/nRL+G4Ek9yhxrojlyog70uF+mMxAnK6vxsLuOK2rOJmYiHi6Uwbqmyk?=
 =?us-ascii?Q?LRZP4wb7CKOhhsktloW19GiUSS5B3nNsLrnlfVfntINDSQ07/7Hd9OP1ypad?=
 =?us-ascii?Q?JjE5SNBmZYsOVGDc8V7SBIr675XwvwJbDN90ryYVQDJvhi1AG3/iqmoCAq8f?=
 =?us-ascii?Q?uoOAgdqKWRXzMWuVzXTAlDu3M7hoSw4t+ItuvtYdN9IA+3cUndjm0GgtS7g5?=
 =?us-ascii?Q?yQW8pbe9YA1gTqboThanyO98mUswqXshg0Vgs6dS/7dChkNmsNMtOTxbnwz0?=
 =?us-ascii?Q?rGoDXMZnOCJMjSHjywR/fVRu9Kywu65d5d568kls/tNC32G+OMOjkB7GTB9m?=
 =?us-ascii?Q?ZutYFi1YKSRkuERJw8Y9IQQPyfGNXDZ/rV3v0Pz9/jIHGq2mcV0sElazXMW0?=
 =?us-ascii?Q?lGM8POn9N8LPLhZUTRHUmZGSC4UkYwrTFTBPNoV2tyMVtk4MMpeHrEGvM51k?=
 =?us-ascii?Q?JlgqvuH+UkShYnYAT66Epfxw7L6JKLsTwORILl2XqrUdYUV27092BP1v/CEc?=
 =?us-ascii?Q?UY4nCK7uiERy69sBdGYEYo0f43ETUC49cWIwoDbZVqJ/lIm/ygMxsbrivexv?=
 =?us-ascii?Q?JzNCppuVYInjQMytPBlXnqIUFuLWyNPB11Vpsj3fPU1yxNVHCahxKib/Jm1l?=
 =?us-ascii?Q?AQ9EG5riV29Zt6yKSpKSpS9mQJPyJV51flKAbj3i3XNI1yYTIqvziDVf7kVm?=
 =?us-ascii?Q?5Jwtux8/By57XqxtCmHpw0yPEzoI1lVDV9nnTivv8zQRfLP40J6toAsuvFwZ?=
 =?us-ascii?Q?RcI6ydJmY8O2kB/WKINB32a+jKvrrzoLgQMSQyl7vfWSiMEvafMajrPLu29X?=
 =?us-ascii?Q?Dm/i7IOOHnMsCrLA1N19NpnPW6yPBXMNuP/BRPxwfj8nG/0hvQYWO6KH7Qab?=
 =?us-ascii?Q?k75GCG3Vk8lgTHQGzLB6wn5bp12cAzL2qOys+W9Y?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5daa4554-3f0b-4bfc-bbfa-08ddd5992857
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2025 09:59:53.9780 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vnEIyq2ZadSnBM+BUrLbC4aP69/ZyB0ypblGwlskvMkf6zgCUiIUjlT9XDwkjck2kdcoDGX0YN843tk3gIk0Hg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7825
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

> Subject: RE: [PATCH] drm/i915/scaler: Fix for WA_14011503117
>=20
>=20
> > Subject: [PATCH] drm/i915/scaler: Fix for WA_14011503117
>=20
> We already have a commit with that name don't really want many commits
> with the same subject
>=20
> >
> > Remove the redundant check statement.
>=20
> The is statement is not redundant just wrong will need to fix the commit
> description
>=20
> >
> > v2: Add scaler_id check [Jani]
> >
> > Fixes: 73309ed9d598 ("drm/i915/display: WA_14011503117")
> > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_scaler.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c
> > b/drivers/gpu/drm/i915/display/skl_scaler.c
> > index cd7ebbeb9508..6891a0b00f41 100644
> > --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> > +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> > @@ -960,7 +960,7 @@ void adl_scaler_ecc_unmask(const struct
> > intel_crtc_state *crtc_state)
> >  	const struct intel_crtc_scaler_state *scaler_state =3D
> >  		&crtc_state->scaler_state;
> >
> > -	if (!scaler_state && scaler_state->scaler_id =3D=3D -1)
> > +	if (scaler_state->scaler_id =3D=3D -1)
>=20
> Hmm but what if scaler_state ends up being null now
>=20
> This should have been scaler_state && scaler_state->scaler_id =3D=3D Also=
 please
> add people who had bought this issue up in cc to keep them in loop in thi=
s case
> that would be Jani.
> It's very easy to miss fixes like this in all the mails that end up getti=
ng sent
> upstream more so if they are not cc'ed

Also rather than all this I would like the condition to be something like
!scaler_state || scaler_state->scaler_id < 0
Looks cleaner and also takes care of scaler state is null case
There is a good chance that if scaler state really ends up being null it wi=
ll blow elsewhere in code
Before reaching here but still good thing to have in place

Regards,
Suraj Kandpal
>=20
> Regards,
> Suraj Kandpal
> >  		return;
> >
> >  	intel_de_write_fw(display,
> > --
> > 2.25.1

