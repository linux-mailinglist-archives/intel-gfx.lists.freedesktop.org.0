Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7E189742B
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 17:39:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDE0A112768;
	Wed,  3 Apr 2024 15:39:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N7iSR2yV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF859112748;
 Wed,  3 Apr 2024 15:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712158764; x=1743694764;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DLvFfCSePmOx6Vt6041IZ8dqJke/XgoI0kg5e0lqNBc=;
 b=N7iSR2yVuNQe0UP2vc1ENA5SpSJS979yd48/73/mTy0+dJQP2hFxvzUC
 XgVhU0cc4QWXArjmJB76GT+5HfrpeXZFLPIGeMed3ZQX1j1LW3qK6j2O0
 rUyyIUxtdb28H0efT7y5RQSL+miR2BHftVraiAqK1uCK/LTBhXc+mKhp9
 5aQA6SHBdC6dmyd+2OzOebyhlrglIgydjP4sOIPOgTaZNkHG5XoV97mOZ
 Ne9+IvkfkuXxvh5BO+UwDXa4bGvayhCdp8Eqvn/Kus9/H7FUZUEh89Q+y
 r1uvbZStRKM97OaR2x14kKMsbVnp3IpZ/89K3ssjpRs2yCMdmQ7zg8/3E w==;
X-CSE-ConnectionGUID: mpFupjqAQFSYVHkYLg5l4g==
X-CSE-MsgGUID: PBdFFmPdSu2uV8Y+qgflJQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="18849483"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18849483"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 08:39:23 -0700
X-CSE-ConnectionGUID: nkoVSdaMSGyen1EWv2B3bw==
X-CSE-MsgGUID: MWc/YmPVTrWF1unlgBirSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="49442178"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Apr 2024 08:39:24 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 08:39:23 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 08:39:22 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Apr 2024 08:39:22 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Apr 2024 08:39:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TDakk2YbyvYI3iy2RynKhED6fTK5d3IXNY5L41K0681jKjnBJmyznvsYesmGfLgV0lSvQRIm32PG923YeIpmwOFUe7b+pnTZ+dQHWoYZUCMxRewELr1CnZMgtYQOkzaTc6Wlq7MMrRC5oXOWvVl3os/E5Zd7i21ScQ4IJLKgvaGjmISsfxd3V/oCsb/dackLC7Q+1a9IY2On6xvGWXqUPUVOIXmaAwIJX6ZL2AWz+QRd9Y5dgb+UViil2gzq+OyUP3aJyR5gqN0dN8XQxToy9jUy9evYcah+Y+7AJhjtSGjMZK5tslULM32DOA7M0ByLA077UBncoa6SAVaRezYNvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZEQd6RdOtfYp+ATR6kD88ATVhVx7ziSFcCJ6YncyByw=;
 b=bMPC0tZxfsXRQfaAXt5poxhWcddmf9phjTFdWYBIBsLGoNBX9ulbpDT+TdKqPf/CX6aBJZfhy1IHmk+udOLpYI7jjjXb6nHgkYq9TvC/X64Kc6p+/daivwvMJPUrOD4WSKWjg9VlPTR2F9OKFAbm8oz3+oyNUSHVZb02wcQtyjUREen8pvM3C63Z8xa1MvKlyY3qnbpdgstUk9lexjh7zAoZx1EPG4u6Kwe7V93+rAlu/+IE4Mk1Pfl10b85ZfAD9nyhXQa/ffBO1yY3nHr/p8K/htSs2Sd9lQbQwelDVpm80GndzqCcvoCQdQ23bwxRp+QOsEMyFSxcIikPmEbndA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CO1PR11MB5107.namprd11.prod.outlook.com (2603:10b6:303:97::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Wed, 3 Apr
 2024 15:39:19 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7452.019; Wed, 3 Apr 2024
 15:39:19 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/xe/display: fix potential overflow when multiplying 2
 u32
Thread-Topic: [PATCH] drm/xe/display: fix potential overflow when multiplying
 2 u32
Thread-Index: AQHaeST+BZ2JbTA8DUa+q1YvUCX6hLFMqCuAgAofnAA=
Date: Wed, 3 Apr 2024 15:39:19 +0000
Message-ID: <IA0PR11MB730754C98B4AF4EE182BFD62BA3D2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240318110103.3872169-1-arun.r.murthy@intel.com>
 <IA0PR11MB7307DAF583B89D7E008D16EEBA3B2@IA0PR11MB7307.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB7307DAF583B89D7E008D16EEBA3B2@IA0PR11MB7307.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|CO1PR11MB5107:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0Ct7YCGPxq7XdLtVc/oHhOF4WnipGKTxT0ZI4/LloEVMj8TfWyrOe5+HundooWVYKBqWxLY27P5k0CSLDylxYnww19rlwtUPsayqxZUsR28C896JSClijj/TPvf+3TvX4CRYdVhKKTNSEztJQKkssVOnda6H4UfrveWLfAKo1HOiHfhTfBuROwbFuqnc5cG2oBa/JARV1iNY/Fc/dBONYsj1sRk6qvcIsr94bAwEdrdpDsTYZ+b0SoRHHv8Z3WSh3EypCyeHYXAJEOkEkqUbesdIb8t+PcTXXDE8Ym7cN2niTstcGeOXTRxK15x5P1uVa1jHGG+ZHxbUurPPmRfHgEhEcmyt6ouLWHR/JcnSOnPDNDVYbagS3lnsLPVfF6JTMpaFBUkmmlylCLJ59lP20ZuJJATV/Y2kH/MaA8LI/PYVh8nmUCKa2rojMMozdQdogbMZMNcHPJkFhWxwcQlKuWoWj39pUQb2GwRLPcpPIAZHdSDYq88hDciyjTMoIC8SxPi2U/w/ep7KeRfHGea7NbS6Hyi2wUUsJxd9fhIj/Rv5fsAHtE3zeGWt9QQv4vDlIKtYuebofzBVycxmKZxPE/b2jmhqPS1wxCcEdJ1i0GG5ViPYxPZ/UBxvNVjFDHgMk4apw7G8U/luV9ck/lKBUJSuyvXyEDN/Fm1IveWDpLg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5KMVLytfRiE9r2mM1hsORuX2IWUciSXxm6S0rBnwB905SWdcoWNJznTTQ60e?=
 =?us-ascii?Q?6KxJJEmQcoALXcSBRY6PT5yrM0KQ6CS/aB5622j3HymRLWLtla2Sml347+g3?=
 =?us-ascii?Q?sIE9TbglQN7GTPIHFdjI7eOoFB53PatB+PZxqVJp8tmAzuv3ilTYnL9ODxGJ?=
 =?us-ascii?Q?YS0jrejCYXVmd1R5QX4smpaKB0ZCTHWutTsvDNTdnQqgX3qWwOpc75SmD0mB?=
 =?us-ascii?Q?kiXK9szk1A1OPUrIt00tg+HIRz9z4vpE55w0NqARudfxF/CVBOBnwj9o7eKD?=
 =?us-ascii?Q?ee2NjeYNF3sVq/XRcR0DszBRVzRcAjwpDtHY3KiMes7Gf0D9HOKPWBuPK6dd?=
 =?us-ascii?Q?zyHm3GvCCvIztZaRRoXoItoA/231fePgjHJHydfx1IE4qPtMU/9khthbobYp?=
 =?us-ascii?Q?QKWeg4W/IvvJVnobK4cu/wAX2jxfSEkO+kT8Ae23bPY1ecvJPSEZQa0rovzY?=
 =?us-ascii?Q?oubRg0Bh68VijIdF8+dU9tO0ejNAp5TJijVXG++unJ4XBGMkot2m31qU4DXt?=
 =?us-ascii?Q?qfFafroXMS3/7KN8mOzqt8gbGnhNmJ4TdTiuCXeikD7W8lC+QgYn74yq0hDQ?=
 =?us-ascii?Q?hpkRKLXJuNH+RhH5i0kzvIqKvnBN+lweUK4b6D3O6o/ysHPOVWrgVMdPq1On?=
 =?us-ascii?Q?IquHCJs00T2MECqCeXIlZo2LxsYOu/ZSUQ62CZsEbGXVRgyYfEL4SQvY85uH?=
 =?us-ascii?Q?ykv2Nymmh/BNAH8dFgfEoGABzK9N6/LjOp6MGJiircu4UWVp2ZBPJ63ZtgDC?=
 =?us-ascii?Q?I8veKCIahVea1KF0tbPJjxwzfQ0xWDgKb8Fg4/uiE1piqSzjKLY75XvIANMT?=
 =?us-ascii?Q?+gMH7i3opwxWp0YgFftofcqftw1hZUmTBQzr1u+vkTKA3Ult9wpFXOwE8ye3?=
 =?us-ascii?Q?RdToridLP5Rfna8aQXjkljO2NC8/Jnz6HcXKscXMZeUM6krbP+U2vUKEe2K+?=
 =?us-ascii?Q?/fS0IOKyKhPV61VMdxwp2U73UQIULMFuyBpnWp3oZs1kohKXsoii7NuZcBDl?=
 =?us-ascii?Q?9zcT1Z4r3eEjqV136zp8G2hy/OvP55DEUhvjM1eGmsb8XsMybdjiSNmk1lL6?=
 =?us-ascii?Q?XnGRfBGj+v+IAQqoxHK7W5JWwbOSF/1hS0mK9BVFIW/sX/JZkcGUzsTYcUft?=
 =?us-ascii?Q?laGAQIgLgubSvPpiA2OryPd+b/FS/gayHyb30z6Zp7Q7FKgSwA0+W7uSZJfd?=
 =?us-ascii?Q?jisJHU3KPo39Dw+Il48gYTew1FBEF1CdlKVT4yFp1Jeh6K86iW4PmPP9cGwO?=
 =?us-ascii?Q?KD1mLiRcRuzgCMhAFdJ8B7mvJlh9yyLOoJoEUQZaGuh1dBB3Psn/cbKWFAYi?=
 =?us-ascii?Q?Fw8b1ud8CUa6Rg9uESGdwe7IcApxJXy1HFIA6PLdS+IVLYqXScO3cV88A8Ak?=
 =?us-ascii?Q?nOXdDlD3CWWbhQiG2QaD02E15zLzCLEWsk9lj2jwtRa1EIaVI6lgI8P850qY?=
 =?us-ascii?Q?QZNEq9+vtN9X+A/2/3+mCyvImi2t3//CaMIv66kNXP2toyEpj+kJCR/sK+9E?=
 =?us-ascii?Q?ZHhNkonPtm1ibHOWahx4Ij4VigPdv/e8eUCTrUxPVKxSFY9oQeX0fHfbOs5b?=
 =?us-ascii?Q?tP9GWkJ6agbB8DLzqDnRdTsMCGjDYkxp2WbiiWeOK5WuBEQJyQ1DuomqLw0V?=
 =?us-ascii?Q?WaMFpuhZCcA9M4KSFzMJLh40i3saXSS5pRN/DKaCUICz?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 097b30d5-1940-4a11-fe13-08dc53f43a81
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2024 15:39:19.7964 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J0SkkDtTz0lfvzAO/ND9qtMkVTfQux9efKVYvnPgf8EJViWF5JOlw+wAmQwFvMhhmFYrCQuC1sR8CTPZ7rBKdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5107
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

Gentle Reminder!

Thanks and Regards,
Arun R Murthy
--------------------

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mu=
rthy,
> Arun R
> Sent: Thursday, March 28, 2024 10:34 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: RE: [PATCH] drm/xe/display: fix potential overflow when multiply=
ing 2
> u32
>=20
> Any comments?
>=20
> Thanks and Regards,
> Arun R Murthy
> --------------------
>=20
> > -----Original Message-----
> > From: Murthy, Arun R <arun.r.murthy@intel.com>
> > Sent: Monday, March 18, 2024 4:31 PM
> > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> > Subject: [PATCH] drm/xe/display: fix potential overflow when
> > multiplying 2 u32
> >
> > Multiplying XE_PAGE_SIZE with another u32 and the product stored in
> > u64 can potentially lead to overflow, use mul_u32_u32 instead.
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  drivers/gpu/drm/xe/display/xe_fb_pin.c | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> > b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> > index 722c84a56607..e0b511ff7eab 100644
> > --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> > +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> > @@ -29,7 +29,7 @@ write_dpt_rotated(struct xe_bo *bo, struct iosys_map
> > *map, u32 *dpt_ofs, u32 bo_
> >  		u32 src_idx =3D src_stride * (height - 1) + column + bo_ofs;
> >
> >  		for (row =3D 0; row < height; row++) {
> > -			u64 pte =3D ggtt->pt_ops->pte_encode_bo(bo, src_idx *
> > XE_PAGE_SIZE,
> > +			u64 pte =3D ggtt->pt_ops->pte_encode_bo(bo,
> > mul_u32_u32(src_idx,
> > +XE_PAGE_SIZE),
> >  							      xe-
> > >pat.idx[XE_CACHE_WB]);
> >
> >  			iosys_map_wr(map, *dpt_ofs, u64, pte); @@ -61,7
> > +61,7 @@ write_dpt_remapped(struct xe_bo *bo, struct iosys_map *map,
> > +u32
> > *dpt_ofs,
> >
> >  		for (column =3D 0; column < width; column++) {
> >  			iosys_map_wr(map, *dpt_ofs, u64,
> > -				     pte_encode_bo(bo, src_idx * XE_PAGE_SIZE,
> > +				     pte_encode_bo(bo, mul_u32_u32(src_idx,
> > XE_PAGE_SIZE),
> >  				     xe->pat.idx[XE_CACHE_WB]));
> >
> >  			*dpt_ofs +=3D 8;
> > @@ -118,7 +118,7 @@ static int __xe_pin_fb_vma_dpt(struct
> > intel_framebuffer *fb,
> >  		u32 x;
> >
> >  		for (x =3D 0; x < size / XE_PAGE_SIZE; x++) {
> > -			u64 pte =3D ggtt->pt_ops->pte_encode_bo(bo, x *
> > XE_PAGE_SIZE,
> > +			u64 pte =3D ggtt->pt_ops->pte_encode_bo(bo,
> > mul_u32_u32(x,
> > +XE_PAGE_SIZE),
> >  							      xe-
> > >pat.idx[XE_CACHE_WB]);
> >
> >  			iosys_map_wr(&dpt->vmap, x * 8, u64, pte); @@ -
> > 164,7 +164,7 @@ write_ggtt_rotated(struct xe_bo *bo, struct xe_ggtt
> > *ggtt,
> > u32 *ggtt_ofs, u32 bo
> >  		u32 src_idx =3D src_stride * (height - 1) + column + bo_ofs;
> >
> >  		for (row =3D 0; row < height; row++) {
> > -			u64 pte =3D ggtt->pt_ops->pte_encode_bo(bo, src_idx *
> > XE_PAGE_SIZE,
> > +			u64 pte =3D ggtt->pt_ops->pte_encode_bo(bo,
> > mul_u32_u32(src_idx,
> > +XE_PAGE_SIZE),
> >  							      xe-
> > >pat.idx[XE_CACHE_WB]);
> >
> >  			xe_ggtt_set_pte(ggtt, *ggtt_ofs, pte); @@ -381,4
> > +381,4 @@ struct i915_address_space *intel_dpt_create(struct
> > intel_framebuffer *fb)  void intel_dpt_destroy(struct
> > i915_address_space *vm) {
> >  	return;
> > -}
> > \ No newline at end of file
> > +}
> > --
> > 2.25.1

