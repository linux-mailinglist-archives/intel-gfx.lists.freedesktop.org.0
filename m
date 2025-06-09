Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C23FAD24ED
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jun 2025 19:21:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6780410E3C8;
	Mon,  9 Jun 2025 17:21:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aS4jvKH3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C6E110E3C6;
 Mon,  9 Jun 2025 17:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749489703; x=1781025703;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BuelcNL7Oage2qEsibmtBhGmQpngpQgbIT4bfoKy9E8=;
 b=aS4jvKH3ISYBhumDWk2z5eCRRefQjkO8cvlDsOhIJuMSeZd1OVp8yExR
 YE/zzks+Gp66/rAbkH5ZbIbeM8fTT9BjXEXuiYAnBatk0gZETDNHZWTWr
 LoVWTjmTFywlxKOBH1e//l1AoIEl9x8xUyPIoDGveQAvext7/QLIomQ9Q
 AYHufBDaukwKGswJtRxfYepAbdCW2DFhpiGNSIPu3QcmjGKFe59QeoPfe
 8T3/XxYg6w+me8X+V/Qvyt+/IfBrAevWFJUxHvtGt5LawZadKeSvc0aka
 i5ew33f/jUgLF2VtRfUlS7OKJjwc67zsj7GieSw1YsjBvM2haICqgngZo g==;
X-CSE-ConnectionGUID: aCQW4pjwTzqD1iX70imffA==
X-CSE-MsgGUID: flcob2XmRXmAMTsTqXJU/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="51720714"
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="51720714"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 10:21:43 -0700
X-CSE-ConnectionGUID: PBH3+f32RaOa31FAOGEgMA==
X-CSE-MsgGUID: CyV3L5ivSGKEJm0keUZAOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="151827014"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 10:21:31 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 9 Jun 2025 10:21:31 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 9 Jun 2025 10:21:31 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.54)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Mon, 9 Jun 2025 10:21:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Lr9Y1WmxoKPCw2U7CD+aIGfMdaHPqoeolunlE1M2VNItgWhcC2XHLrd9MxLGGIW0CdP/9VSAtVYLEZ7UPXgpVKNkao0rFqEktm98geHjKlJFwTjR+VlYJqa1Cwftfd+NnI6jE2V7DtfaCm1Mr/lWS0MMILkDdNxGH3jRuMsuyomr+7UVnIuYUZVyc3ex/JfCS5z4zgdewSXSHZdk/GbfJHCPsuhi+JWvVUael1u7O3jiHqfwWmqRkrXEomExYVo9cPCfP8APSvPVhL/Vr7aE25UmYz16Rvo48dKSt67d53SdXFFQYCoOdKUPmx99rXV2KZFIrznBCtG3v5iI4AYmIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yBJx+ufDswM4CI7cmSCRxCSAE2/kSIbujxwMZQbVc0A=;
 b=kxG22KZw/0EuZcTe3iwsjsrH8BMQbUuPNcMUGSWl8rga71TGtnjZpCga74PaCM+4PuNO0CoSVNO3t2wuaXpGgUf/T4g1KfjO8I5zpQSYhdewhZANff4UhnqCG2MwJg6GAnp2+YIkGWVY1hTCPrTG6X0l4krnJT0wQ3k7+fektF3+OEu9dPhhBwk0O2IZRwzpD5lCePIy06tbe0EyPA9+R5UNTmAaCh6jIemPusoWJAuYhhOjbt7nJuFJc6X+PIKxTsKdCMA7bDJ8RcNIFcYFH9tSTC8W+jHosmHwVTFYWMJuo8gH53XAgfCIZHuj33P5i9fW4GY3RJR9g06y0cPAyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by DM4PR11MB7302.namprd11.prod.outlook.com (2603:10b6:8:109::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.21; Mon, 9 Jun
 2025 17:20:59 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.8813.024; Mon, 9 Jun 2025
 17:20:59 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915/xe3lpd: Prune modes for YUV420
Thread-Topic: [PATCH] drm/i915/xe3lpd: Prune modes for YUV420
Thread-Index: AQHb2V4MPbe15BtzXE+XEKrqZatQaLP7EQ0w
Date: Mon, 9 Jun 2025 17:20:58 +0000
Message-ID: <CH0PR11MB54443C60168A3FF1A8E5627AE56BA@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20250609164548.2878908-1-suraj.kandpal@intel.com>
In-Reply-To: <20250609164548.2878908-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|DM4PR11MB7302:EE_
x-ms-office365-filtering-correlation-id: 626685d0-d8ec-4431-9591-08dda77a005e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?aOzyCyRyKJqWKoatmPhDx5tP4WM+Sz7FTlwdLsV2jPoZQoEIkTm56MXdoWGv?=
 =?us-ascii?Q?223F1KYmxFFGLtV6mPMJUudswrcImkK6dTr82UFxVHbE/ptmJpqxm/Oia2BK?=
 =?us-ascii?Q?orLJfe6xbqbAiE+4j7XGiFE5lqiK2V9j/+EtFmRbacxD2XNc7HC6wql1IMoM?=
 =?us-ascii?Q?RDaP3LPq7AYca36DH7v/AWXaSDlI1SyD9xKPSs1yEUB2ID+z2S7ZdxP0aINN?=
 =?us-ascii?Q?37Xz3ibIhjjuj8ta/3kexWJj7OERJ109G7NErliUETHxAmnNMIjrIjVqppxT?=
 =?us-ascii?Q?59muvX8/wNef8wUsNGziIIQO2bdEjpcjxvAi0T9Sy3gSrZHlZSxD6iUXsJBw?=
 =?us-ascii?Q?KK7hWSM2jVdMddA34XnSUhBOsdtlnU3Q0aMIqjLvvpaKKDCxr4geeO3g5Pbs?=
 =?us-ascii?Q?1JtoyNkqMxc3EUIic9p6jdrTHs3w2diEurfGAj9a6UqLYTYG76nK8pyhBX84?=
 =?us-ascii?Q?LefS10uGdcbjiKVb2TPH8Z0nk8UGZzvHMfMIIAlcUbRNWFaWKp1SfcL3QP5u?=
 =?us-ascii?Q?ZdkpdcKV+ni5D0IVsJD8R3SZsWxaMPRKdIKq1vx5F16nL+JlDR3iU9/SecMV?=
 =?us-ascii?Q?i0BtZ7RqYkYQVh7tQFazskBtVttfYavX57M7SRlx2OXrlibv2VeNkpdex6PP?=
 =?us-ascii?Q?v9+ZDTDDla2qOvEgf2sciEumg55qhOqauENl+UxUYK7BM3K0Oe8E0uknR+/i?=
 =?us-ascii?Q?RwsykkjkRhssgQBhljpD/fqiJJpd0ihbmZeuw0gxYpEZWLVSpqrxgVGziA1g?=
 =?us-ascii?Q?Bjf6Yn/nqHUm/2W9Dc1GzFtj91db0PfBBwCzGh00hjqcVbcYjD013jZo1W9A?=
 =?us-ascii?Q?8z1XWoZL1cWHAxJPDH4xuea1wOcw1BlQjhsZlkIdZmTFENpmZbkH34tSlQjh?=
 =?us-ascii?Q?TlYAtiXL68+gPxK4XC3mpsQH9+vyIj2O2YGscAVV/z3Wm+qdx/Y+m+MxqddN?=
 =?us-ascii?Q?HmySFDs2Do6r7K3ByF/NxiVZRH2AMEDOdMmAu/pQvxgIpXWtJo0Wvit+huPA?=
 =?us-ascii?Q?VYGSWA+8nK6h1Gz4mfPK6mKgEZl26ItGoKU4pBfvIkkmIHY7F0sjj9l3/pwM?=
 =?us-ascii?Q?RbhBMwhfO23jCfPKDBcVoA4+3rlKbBj0SIHKFZkVSrNGrm6SH73VSrRdjww2?=
 =?us-ascii?Q?fCx4h0R/ofqFCX/rvTldrv99QbxIFFXjPONp2DgEwfpofBxKwIcYDpMb2eex?=
 =?us-ascii?Q?UpMTUB8VErBvrngnYjpzIUVnDs93Oljtk2kd9r88SGHTAF6TCl7tRUrweQZx?=
 =?us-ascii?Q?eGb/5UIRVl0AN/6t2DbwaOXsDLE44UeCcFeCbIqgW7A59fZiL7Fa+eplQEeU?=
 =?us-ascii?Q?RlpKJ/3eQnh/g1NckICIMc1lcDajkk0axax2qPmqz3vp7QS1Zx9Zvop6A8Qd?=
 =?us-ascii?Q?HzS1XA8OWoz4Jlb2FN9gdwy1fIJNFOH7vDnGyk7F6CtUgn5pvUNQKhGab6oe?=
 =?us-ascii?Q?IyTUyjtPwrPmP2V2bALKrlWvVWn5C6z8+RxnbSQGR2ZftITcdjuwcA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?f4gNhBAf8qjoud2kUW9l3FZpW4Ou9PmKvKTYLwTFsodgd1dMxwSC3hly6BSm?=
 =?us-ascii?Q?hiwp6LcXK6juvh5hQT+ZNf6WIc1n8IEn+7DyIVQTRrOGooaAdO8dbzdm84ee?=
 =?us-ascii?Q?z6UFjMyw4dQ9Y/oKen03zFHTNnqNIt7FqAzq/QNg21+LOoNP9GQN0srpndZk?=
 =?us-ascii?Q?BecnDbYRI10IY6BU8DRFwlm0ylJF06bdRflb4O3H64vigrdO9Sz3t/tOCEmU?=
 =?us-ascii?Q?M5ilxGLNbNsb/pbb8jkGvh1W0MrbMNS7Irg4eEbpuA2OWBViX7bhOdGRsLRM?=
 =?us-ascii?Q?tLE/3XaQqMkrX96G1HjHbuyVgo/fK7QxKb9pspbUxd7/K3OeKYDkhwgQDq83?=
 =?us-ascii?Q?y4NZz2YnK5c+CHxKhOBXCpQ21TciPkCPYWiT76G72gz1lBm0tjcMOOVXEH0k?=
 =?us-ascii?Q?6Wpr7ROOJ06tHx29XgjwPwZh2XQ2pVLeAYLzRAY2z8hcWCBRhbDkpTh9CzRb?=
 =?us-ascii?Q?FWKIR5KhLZfyMzKXCJ1iG2RFSqf1qxKcTmJ7OSQWzxg/HBCalKsOcAUx6Bnq?=
 =?us-ascii?Q?nkOPawLhuMzcqJ1mSxPXjIO4MxCUzCoH9IwW0VSAi70jRFLxe7S9Vnf8Myt2?=
 =?us-ascii?Q?NxaXSWxoFD8bDlnVPAY0A6U3wcSz4Xy5av8fk53VBNfR8+2GDSE0mHNvRhFy?=
 =?us-ascii?Q?Qh5bpRjPIfYYGIuxxgWzG3syfbYXvxb2GCrNPYWIaflHCG/3b/EE+57l4Y7C?=
 =?us-ascii?Q?RQjkvKdWMf7lTK+gNr+H91N+sgrs48rHKtSNk5L6zeGVccVrkYkaA08CN/Fb?=
 =?us-ascii?Q?vhCFIKxZos6FizfNWqr8dkeLKEBkX20xNsHiOB/ggAn+vpLT7Z2eBQ1XAtrQ?=
 =?us-ascii?Q?D7c+6UYOV4eD9I3y3NXwfnpkSgzJIEkmtQZz5O3nKLp7K5ut6O7c0NP+mkls?=
 =?us-ascii?Q?XwYu3Svvy1BZgJlnhOHuFk0EO0e35k+oivirOpgqrZrnhXhv2pYLyFQsoasi?=
 =?us-ascii?Q?zzKFtkQxNYVCX1WYGMiwZKgBKylONLAyHll0KzFYCLRREJvxXO4U8bj/3xWW?=
 =?us-ascii?Q?Dyk/38lUGeao5aOOrdsHxnIHhAb4W8OtnzN659kyv3XEJfpX/qlAf3zcJAt5?=
 =?us-ascii?Q?9hnTGMjFzUPiBvNjKrk/4qKV08M/dIv4xzSpivoT/O6e92i5Q5TCnvfGpl4b?=
 =?us-ascii?Q?0OiMocUxA6j+7T/Mdgi137Y0ublvYtZgBa6WvqOzGhGRRmDRooLPWvG96myQ?=
 =?us-ascii?Q?RUucC3DpYjCZUcSrxp3tIY5JUDvLpz4apLUjJ8Y3dkmwVRr/k7OyhDm5Fve5?=
 =?us-ascii?Q?HMe9FBdkI7HpPpJy2yTFM2h+qGp7NhWNBlJKx/adNBNDGajRJvJOI14VTvil?=
 =?us-ascii?Q?wQVt52wyW3pmmhHtKJB6Dl1yddTALdiuijExsKT2ffAN7RhIzHbRZR0fu2U8?=
 =?us-ascii?Q?PYChr0XLgEYygawy6uftulgwByU/lkxpn+sez2hIwlP3k0u+hVaTQxyannjm?=
 =?us-ascii?Q?reRbMfpGOH3M05n2I68w6z9Zh4g4oQkQnwignhUISCzoE4h0aqugXGq2TjK7?=
 =?us-ascii?Q?14Tg6O9rjflDeNYZZj/xMIT115JjDV3ReEp4EixPJoJ5Xf1T4NFkKqdVit5a?=
 =?us-ascii?Q?2S+3Sz8+SoUXmgeQ6h0ZjFk/UGDyWCIDoNnbYFdR?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 626685d0-d8ec-4431-9591-08dda77a005e
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2025 17:20:59.0070 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /s+3xkZtsm+6gsPg0Bh8+rX+F51XnuTAbqBgSSFXisHNT1vUjr2n3s/v7q/iuoI0b7Ynl0ZZZ4HvlNh03fs+pHgQ5piUbbsupKueJNdCVSU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7302
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
From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Suraj =
Kandpal
Sent: Monday, June 9, 2025 9:46 AM
To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj <suraj.k=
andpal@intel.com>
Subject: [PATCH] drm/i915/xe3lpd: Prune modes for YUV420
>=20
> We only support resolution up to 4k for single pipe when using
> YUV420 format so we prune these modes and restrict the plane size
> at src. This is because pipe scaling will not support YUV420 scaling
> for hwidth > 4096.
>=20
> --v2
> -Use output format to check [Ville]
> -Add Bspec references
> -Modify commit messge to point to why this is needed
>=20
> Bspec: 49247, 50441
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index d04609460e8c..2691eeb50a26 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1419,6 +1419,7 @@ intel_dp_mode_valid(struct drm_connector *_connecto=
r,
>  	struct intel_display *display =3D to_intel_display(_connector->dev);
>  	struct intel_connector *connector =3D to_intel_connector(_connector);
>  	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> +	enum intel_output_format sink_format, output_format;
>  	const struct drm_display_mode *fixed_mode;
>  	int target_clock =3D mode->clock;
>  	int max_rate, mode_rate, max_lanes, max_link_clock;
> @@ -1452,6 +1453,14 @@ intel_dp_mode_valid(struct drm_connector *_connect=
or,
>  						     mode->hdisplay, target_clock);
>  	max_dotclk *=3D num_joined_pipes;
> =20
> +	sink_format =3D intel_dp_sink_format(connector, mode);
> +	output_format =3D intel_dp_output_format(connector, sink_format);
> +	if (num_joined_pipes =3D=3D 1) {
> +		if (output_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR420 &&
> +		    mode->hdisplay > 4096)
> +			return MODE_NO_420;
> +	}

These nested if statements can probably be combined:

"""
	if (num_joined_pipes =3D=3D 1 &&
	    output_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR420 &&
	    mode->hdisplay > 4096)
		return MODE_NO_420;
"""

However, I think this is a matter of style preference, so I won't block on =
it.
And if there's a practical reason the if statements are broken up like this=
, then
that's also good enough reason to leave it as is.

Otherwise:
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> +
>  	if (target_clock > max_dotclk)
>  		return MODE_CLOCK_HIGH;
> =20
> @@ -1467,11 +1476,8 @@ intel_dp_mode_valid(struct drm_connector *_connect=
or,
>  					   intel_dp_mode_min_output_bpp(connector, mode));
> =20
>  	if (intel_dp_has_dsc(connector)) {
> -		enum intel_output_format sink_format, output_format;
>  		int pipe_bpp;
> =20
> -		sink_format =3D intel_dp_sink_format(connector, mode);
> -		output_format =3D intel_dp_output_format(connector, sink_format);
>  		/*
>  		 * TBD pass the connector BPC,
>  		 * for now U8_MAX so that max BPC on that platform would be picked
> --=20
> 2.34.1
>=20
>=20
