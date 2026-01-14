Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB35D1C96B
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 06:32:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B69110E49C;
	Wed, 14 Jan 2026 05:32:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z/sxkd8q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8315610E127;
 Wed, 14 Jan 2026 05:32:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768368755; x=1799904755;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sMsw7y4W4hPTKVtdsj11jYU/ywLzcOhrdCDTq+eacTY=;
 b=Z/sxkd8qtJ7rro79CotqYLebc04lu7PRB/y4cF0v8N4k+zEWl/px5Toi
 kGGQV9Rcq27RV3VZy9oCF61NDj4jycpgs8v/rnrLYFB0Du2C28T7Z3Srj
 sDgNKdsZKFQBXLfdEByO/qAs2hMSLpTn14FVxZXg+BtjpRa1Ky4TmL62f
 oSCnsrbvRLAfMBJm2Fg+U2LyXAdQe7XF3mCG2CXp7qpn//E8vrS8wph0G
 mFzfEtJpBS9/dtXcUwgM1joFxzyxSZK5n2IOoWpew8D4kwyKIF6IP451x
 6iM0CrZithz0wrRI6dB+RFlcCxXoriyasoXbB1NU1pO2pv+1gInAkXl4n w==;
X-CSE-ConnectionGUID: ud1egQEQRq6uxkkcSJC7EQ==
X-CSE-MsgGUID: IQv9NIolS3Ov92LerCByWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="81111841"
X-IronPort-AV: E=Sophos;i="6.21,224,1763452800"; d="scan'208";a="81111841"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 21:32:35 -0800
X-CSE-ConnectionGUID: eiIGcRlBQSOlVLBkOVACPA==
X-CSE-MsgGUID: kPri0mS9Sl6vgfQkq1DNIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,224,1763452800"; d="scan'208";a="209630051"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 21:32:35 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 13 Jan 2026 21:32:34 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 13 Jan 2026 21:32:34 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.25) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 13 Jan 2026 21:32:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a0LXZXTUnPUvM8KCV+kl/ie/b9wPqaTJaJZGV3mjs8xSx+ziK9R/F4K50CaPzuHDTjEiYhyyo0VrK9TxfrDFSPzZfvE7OJ5XoMHyE8MbeNpOH+QBdiU75XOCfMSFNcskG7k2UKQmSYESV9IK5hdFjbao50qDoxRvVp+AIKMFceXq8u2o9jwVylwEsD/eoI2DqtXr/xRhd+595SDUNH1/lfilp+vliXkNhm5iS5Gu7sPL+iljX2nz+nFnto+r5DdZwB1VXOPyAMANuvNFHJS0a378j1VoO37igD+IJyD53EHMq9GVWOleBJ+PObhCxzMxX3duy91uIf+3JaFapMlMUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n0hNBgxrwOWrLArY8zzzns07hNCCV5E9Vlk9KK1xYMY=;
 b=PnAri4qntOxH7BRqDv+ojZpy+Mysvf2BwZj1HSL/57Ba/nmEroIsON3OAJRgMqY8vps09GkVXC6yWV6ocgejfMLzTllJv6u8mKo+KEvdQ6IxyGgEAMueD2F9xIdJctzj526EMmadt11J+ncKlRntKkhYDNw11l0JGaMMcJnN45IAh5KLmVCacPXlUFY69tZnPcLvHbyPt9DHoxVKIcv7I2G2b1/OsGrY/cUaTy48jiODp9hrADggYJB3kTBTTYAOJcSdpEifCjq72jwKfW4KGxRMcHLOMd8tcs4GFq+vMan6g6Ki0/eiyKy7xvWW5XrjTBIXnrgx2cq8hg+kW0rP8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by BY1PR11MB8055.namprd11.prod.outlook.com
 (2603:10b6:a03:530::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.5; Wed, 14 Jan
 2026 05:32:31 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9499.003; Wed, 14 Jan 2026
 05:32:31 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 10/15] drm/i915/cx0: Add a fuzzy check for DP/HDMI
 clock rates during programming
Thread-Topic: [PATCH v2 10/15] drm/i915/cx0: Add a fuzzy check for DP/HDMI
 clock rates during programming
Thread-Index: AQHcb2nqNHPHyIg0QEKleMUiG5V5dLVRTfOg
Date: Wed, 14 Jan 2026 05:32:31 +0000
Message-ID: <DM3PPF208195D8D72DD42BB09235B52AB42E38FA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
 <20251217151955.1690202-11-mika.kahola@intel.com>
In-Reply-To: <20251217151955.1690202-11-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|BY1PR11MB8055:EE_
x-ms-office365-filtering-correlation-id: 9286bcae-fdad-4846-2d20-08de532e5084
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?PKlcD2jwCllALrsCkDBiValrCGAlwwD3llrB7PZ1jh/vToezUoakjscPQ/Bg?=
 =?us-ascii?Q?n2raOpq+sDcwz3kn2J/skTZEr8gUeQtfKO3SA54M+FJfJWybI5fLlvVTNwM/?=
 =?us-ascii?Q?pbLrMRAN/NIuhHmcWIf+JP3xwwY3GCR5pZLNRGOkWKdNy8Jl3L81JIsvX3bO?=
 =?us-ascii?Q?lAMvWnvx9od4Sprfw6YopNkXqsTnpTQsMSJoO5A4WNimVfsh1oZAfAr405KH?=
 =?us-ascii?Q?8SWLc6mg/IuifEiHjzH+OFV2BtpeKDRHnMkJ6j7eOcj1YDqM1RyqZMWsFuNj?=
 =?us-ascii?Q?/3VgAu4NCeJJCmRGQ15QUwCm9nR9G+UOqZi/aXUPYveAOuA2YRg/LrqZxeCK?=
 =?us-ascii?Q?cd7Xh4pk6SGx1dmDh7ld3BGAlDPpejhSb2cTkcl/ehbDjCH5+djB9YkVxgcu?=
 =?us-ascii?Q?wcicROmA8/O2XLCAtvZh32BeOqK49JOxLbF2pbdyeTDGlP+NOdpviARLiLH7?=
 =?us-ascii?Q?pz6zcBL3eLk4zv0QkTgAL0ofT29UIdr+DZXELIi+pepVzP4zup0YQQDWBNCV?=
 =?us-ascii?Q?A2QxRJNkdSzq/2hXu9ySsqdqlkArXvP08RpDxbLedaQKf7k2qFtCFPrmSYUw?=
 =?us-ascii?Q?cagyuRd9U/7aVyVHwprgKaVKUGmXrdwtZp8qnM3mVB6ZxtRwsXesf88XOYWb?=
 =?us-ascii?Q?nlxxNhp6amLaBZXdv6DNueuaGqEEijoUrrdw6m1HxSmbw7t8bWa2lMMhzV4c?=
 =?us-ascii?Q?M5gdZ8sd/NvE298W0ueEGk+Vz7OPeDpTdcocZLUvZlVzJiR2AlmapO7HAmzP?=
 =?us-ascii?Q?oBGU+lWYloac+Zmu2R0H89Q2GK4v7PdrhvzF2dDF93nPfF/xFFegBlYITIvv?=
 =?us-ascii?Q?gpsQ7/W9KG2OUD8OFqLaY0e3yqtzokmaWyAeQHcDxtMlrWEFmgYICHjYhg6i?=
 =?us-ascii?Q?niUZnOSVoNos/3QbcpzWxKNMQC43HjIqAmpg13NqTxuR/hfgnGMOTdGOCtmm?=
 =?us-ascii?Q?eLC5e7dFeUQfsI58E2KRGOlGV2G0v3ZPCcodJzLF4ShoDhAWz4JpkmPpz8hz?=
 =?us-ascii?Q?hKH3Gm31mTaRHNa558Vi9hC1l823no9HouSZ3F8kcrK3vdy+egtab+fAnGHO?=
 =?us-ascii?Q?IVH1bIBspRdVZH17ecGWSQ4VEhD+FQqaBIjvWNrq2uRwyCfmz1RpmFOAI8w4?=
 =?us-ascii?Q?G35A7xTP+a/8QUvJp/bwKx4cFNy+Fg/b1uOxahK1iAkwV+QyT6EZ2TOq4wzS?=
 =?us-ascii?Q?SJlcOR89fVX+Va27qEUXrU0whtMSQi+hX3DtNUzohDqujZ/dpWHDf7OcRR/e?=
 =?us-ascii?Q?d2PlCw0GTUA38yeqFr7ZRPb4ljGgNHCcdosaWhH1fXVaUwzecufmVJhUODdv?=
 =?us-ascii?Q?bu4UZnb1FDDQrt+KJVAUygzbkyVS2Wp1WPt7aFErN+leo41v5wc0dg/oaGwf?=
 =?us-ascii?Q?nCtxVb96SREqG9j/Nrc2Jr/YioXISCTe0LsSgQZiHOAi4TxZcZhy/klx+4Fg?=
 =?us-ascii?Q?rtpUGnOXMGBzYMFOVZJxUsDfQdxoWpUUBVjmSH+Zb6QTKqRMvQlILSy4bwW+?=
 =?us-ascii?Q?4TEN4WiSSOeHh0WjUrmAQPabVpTYQdbLWXij?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UzWj41VE26PvXlDD3Av/zm3GuMdZt6DzX5hecKUTeKwWmGJwGYbOcdSCc0ap?=
 =?us-ascii?Q?J0d8y6XyLhBlGWpHPSE4bWXZ9XPJc3rh3Pht+6mJhHdL1KCnaM17rWpvAltZ?=
 =?us-ascii?Q?ayQt5PJvC6ZWK1dcrvrEtyZv1lX9jxzDkqHiw+qrTkxLpFyi+2LqHk0bPR5D?=
 =?us-ascii?Q?+UKE2bEU1DIBi2EklD16160trJWh15XN4pbgdvd/JVOWwTEhqAx1jZFI+OXp?=
 =?us-ascii?Q?IpmLuTUlLlzLYK23+fdyZj3iyOXhPUt3EhknKRdojzC6/5tgnre/oNXWcR4P?=
 =?us-ascii?Q?4NsP19uVBfedZvA+j2LwOSWquS+oxmNdbZUQfX+EtbJhNZasURsJ39fix7FB?=
 =?us-ascii?Q?ggHwG0QwD9NxnUkvgp13u6QJXaeMXpx4pepUIvq94EHhyHz90JnPqN+kvXi2?=
 =?us-ascii?Q?iFvxeSCWBX3mEc53A/G1L0d1WnxULfn65zNNh6gPQa1QY6yrxYfl7uANt95I?=
 =?us-ascii?Q?aGK21N7r8HRS63rqjmbemgJle81lWThApO4IrPb923X6zeQOe+1SANN7Hp9/?=
 =?us-ascii?Q?UsvNDH9Au9ZQa97dIxPhF1gg0IX/xnouzJlxoKJ+zMwcQ41X0EkSwdPs+4RT?=
 =?us-ascii?Q?kxVYRHRikD/CQ7hzQQw8KmkA7nfG5HDcytq+Ix1q5PyxyGstRUzDlg2i8yyp?=
 =?us-ascii?Q?brkbYJ1+msIFoMd1HqvxS/te1NhpHILaWBZQVUAMI6YmTsFszqjz3u3eFctG?=
 =?us-ascii?Q?dctt7wDCtFBWrxI/N1A5LTU87/lYu/f6PCX9ew23IyppKdgJShWsEaOr432C?=
 =?us-ascii?Q?/XAthaOlOZebM3Kjli22Zf3i5vLHbKb8moMfsk5VGONcM2R2LmEBCZ760P+D?=
 =?us-ascii?Q?S9vpY6v0xf/zuB+ne0+UEcAyICKkz7Y8ajddiNqXnuXGeJa7dXUULyBQYuZv?=
 =?us-ascii?Q?YGo5htwFIugKHg9HPDytfV/89xbXFJ920diQnPnagLHC+TGXmIES4xprUQKt?=
 =?us-ascii?Q?krvX2C0SFD/Pck9Os6scJKOV7OSwVj+j7V6Q4Ge94z7nt0WXKyNJrItctRAm?=
 =?us-ascii?Q?wxgvFKWFvkzXni5XowXuylo2ale5q41ul8UsdOhgqL7PdHbiADHCiVmQO22v?=
 =?us-ascii?Q?4ubjbivHNiIHBYIFCM/WFx6pb0iRh0DvNJC0hJhjINU9Ij+Q+jh0575HLQIV?=
 =?us-ascii?Q?wIf1nVxVAO8eIKUMh6xskEZvGUmKggIHIPQ62dceVaplJbHcYCNlBW9wgIWV?=
 =?us-ascii?Q?gKK40v4NuR8qjKe8YoTKy3ayA9rz2imQ0FWJEC12JR/3rgv04QGkXyMfmWFP?=
 =?us-ascii?Q?jl/eu45exxYM/Z8sXO0gspwF37YK8a2sqR0UJd8LXmZBfcDQ/2W6Ar8XPWnV?=
 =?us-ascii?Q?G4fE1Pw0RPPYHuHFXDqGcNvEDThFo3I43yFIL0V9xYVSMGAET2MzVke93B6R?=
 =?us-ascii?Q?PE294uaG787uQ6EScH9GopG1XhVjhzdfhAyTOccFOb0tiPcD5tOTmSQPZM41?=
 =?us-ascii?Q?ISE+5zsN+jCJ+2jp7GcjY0nViG7onDUT4vB/nSgD2QqikykOFoDwfA35713A?=
 =?us-ascii?Q?IbO9diVeHyFC7eGH0ek03JorCejAI64eaTZylD6kioYwBKB7kYLemKguyTsv?=
 =?us-ascii?Q?ykGe3UXc5TpGO2kp8l5bwpyFeewZt0TQmlJVV3rNI1F9UKeYG9hK8mBaBDs6?=
 =?us-ascii?Q?KwQ4g+Xp1KBgoZ2OS+wUDm2pFT5hWQ7wDGbFwN1yUHkmno2V2oBOiSR9boAI?=
 =?us-ascii?Q?ssSyri7i4OBzEWR/w0WuIhIdMU4mfpmW/X8kCPFWK7d9l9MGNldz0hJVlKmg?=
 =?us-ascii?Q?q2+SHId3vw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9286bcae-fdad-4846-2d20-08de532e5084
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2026 05:32:31.7543 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 96er2bY44d4wPRViLWFDcuJl8FkRPo93HsL5O76vrYXFL8wrT/gsjCfSaDgE1/mKQQgOrjuy3iFEo9xV3CKApg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8055
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

> Subject: [PATCH v2 10/15] drm/i915/cx0: Add a fuzzy check for DP/HDMI clo=
ck
> rates during programming
>=20
> Since the clock rate is derived from the PLL divider values it can have a=
 +-1kHz
> difference wrt. the reference rates in the comparison

This LGTM but patch 8 needs to go through changes that will reflect here wi=
ll hold on to RB till then

Regards,
Suraj Kandpal

>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c |  8 +++++++-
>  drivers/gpu/drm/i915/display/intel_hdmi.c    | 18 ++++++++----------
>  2 files changed, 15 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 0f28d02b7a69..ea807191cb4f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -3013,6 +3013,12 @@ static void intel_c20_pll_program(struct
> intel_display *display,
>  		      MB_WRITE_COMMITTED);
>  }
>=20
> +static bool is_mplla_clock_rate(int clock) {
> +	return intel_cx0pll_clock_matches(clock, 1000000) ||
> +	       intel_cx0pll_clock_matches(clock, 2000000); }
> +
>  static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
>  					 const struct intel_cx0pll_state
> *pll_state,
>  					 int port_clock,
> @@ -3038,7 +3044,7 @@ static void intel_program_port_clock_ctl(struct
> intel_encoder *encoder,
>=20
>  	/* TODO: HDMI FRL */
>  	/* DP2.0 10G and 20G rates enable MPLLA*/
> -	if (port_clock =3D=3D 1000000 || port_clock =3D=3D 2000000)
> +	if (is_mplla_clock_rate(port_clock))
>  		val |=3D pll_state->ssc_enabled ? XELPDP_SSC_ENABLE_PLLA : 0;
>  	else
>  		val |=3D pll_state->ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 055e68810d0d..63a88006e336 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -70,16 +70,14 @@
>=20
>  bool intel_hdmi_is_frl(u32 clock)
>  {
> -	switch (clock) {
> -	case 300000: /* 3 Gbps */
> -	case 600000: /* 6 Gbps */
> -	case 800000: /* 8 Gbps */
> -	case 1000000: /* 10 Gbps */
> -	case 1200000: /* 12 Gbps */
> -		return true;
> -	default:
> -		return false;
> -	}
> +	u32 rates[] =3D { 300000, 600000, 800000, 1000000, 1200000 };
> +	int i;
> +
> +	for (i =3D 0; i < ARRAY_SIZE(rates); i++)
> +		if (intel_cx0pll_clock_matches(clock, rates[i]))
> +			return true;
> +
> +	return false;
>  }
>=20
>  static void
> --
> 2.34.1

