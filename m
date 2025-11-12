Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 577BCC509D7
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 06:28:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A5B310E697;
	Wed, 12 Nov 2025 05:28:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GHhAUBjt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF3FB10E696;
 Wed, 12 Nov 2025 05:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762925279; x=1794461279;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=74zVslOYKcWoXcmZuplX/FWFnp8Ys+KsWapN3t9FaQ4=;
 b=GHhAUBjtOYSJ02ldU/cWOfCYbSs8g7ofnTbXe5hhKo/scE+yS5CMRYPh
 og4W2P/+gflLTWGLtrff+hVS/MTsrn2dyrxs7OfwX48sj/ZpyVZtpSscH
 qJCoReVR6M/JoTVXm5uMV6lbGpEZh9Ea1HB8ls+20GbqRImkVQincQntf
 Fmek/B1glk5Y9riZGIxQGYptYqas4aaADRK8vG2XZPm5vrR5AsSQTjljg
 cjP6y8KxzSXUsWKflKRDdivB8OLvOiZqBjosxp2o4eQpvTnfNvHsXVyOv
 IPagMmTm32JY9SwCF7auMvZMO9Y6b278Eww43Wv4OOIu+IfWqcw8Vo5Gt g==;
X-CSE-ConnectionGUID: 8qyrmS67TsibG9KQBF+GEA==
X-CSE-MsgGUID: XnnIUmIuTYWJx0br7yX08g==
X-IronPort-AV: E=McAfee;i="6800,10657,11610"; a="52540233"
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="52540233"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 21:27:59 -0800
X-CSE-ConnectionGUID: gr5ivfmgQe2QeOnyrff9pA==
X-CSE-MsgGUID: loZ4z4dxREuPFqa3PRD6DQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="212522368"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 21:27:59 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 21:27:58 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 11 Nov 2025 21:27:58 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.13) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 21:27:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E2iz70GvpGgQwDiv4moB/HIK2wyrJ0TkxE9LfgpjWYXEOSoKiLquy24AbXvvqrTuMPrqpz79SWdDho5jcRDySPqFTu9+kxAL00VJUTGaRZG+m8gvRoZQ/+hW01nRxofus+xh06Ypn3jeNjPgkrhQ2qcmo+cXdwZSY8TNdlZT/n7fsH0QtNTkjr2ZL84yt9eiGOhCEZ5Nbr/kN/KZQi4HJvH+S5RCIfh/VgmTfwSO0N9x3mzm1x38xGykGlPJwQ1hXUxCoRTj2QMn5z5G4BV9AxoLh9Uz2lK1y6L2/Wl1mjwqWbRKxu9pAm+mh5RpEecsI4NWUHwKv0Z1lEqOQTGy/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vO+Xw+3rRo9v4Jc2yDlMYIfNjdM5xTXeCD6Mp7hmAH4=;
 b=VpRCSoG/j0d356oGHr/TmKBiwoUenn53S6kNHk0gdSi5OBrlUWqC99dCy61n6c85jsHV+UmOLAWLahrgsBftMryNwH9/y15RrvKVKtp2WaQfygOtg9aP04BGdJI98NLXaQbvSzEiHFvP+fDI3z0M6/knbWMM8/YtsH85sVbry4MdYp8zUm7msLVSJXe5V6S3YmmDXCTdbp5uzOWy+Ijf5YbgpudKNxBOzmie2KedvzsGC1fK1h3JGdu9OjCkrCrZSM+vjhURgmZLXuP2GNX5tE7B/rPS9roeDiL2M2aN5/Nzdi/rt2rXv+8HLvGaXVD/xSL2Es3vugQ2zV5f+0Rgrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CYYPR11MB8406.namprd11.prod.outlook.com
 (2603:10b6:930:ba::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.15; Wed, 12 Nov
 2025 05:27:56 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%4]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 05:27:56 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [CI 28/32] drm/i915/display: PLL verify debug state print
Thread-Topic: [CI 28/32] drm/i915/display: PLL verify debug state print
Thread-Index: AQHcSllYqyVy1lyd5UKxg1nHK9mqprTulGXA
Date: Wed, 12 Nov 2025 05:27:55 +0000
Message-ID: <DM3PPF208195D8DB84B39227F96E328773BE3CCA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-29-mika.kahola@intel.com>
In-Reply-To: <20251031103549.173208-29-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CYYPR11MB8406:EE_
x-ms-office365-filtering-correlation-id: 185f4dbf-6dad-44ff-19ec-08de21ac3c23
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?+9zBgfhlNsmHawJPWc4iMwmH+nVwBm1IlhBDG/u13mhWNhNDwVEjpvc5Xu7O?=
 =?us-ascii?Q?o2+VWFkdbdqkByHpBOiWY6Xdkkr0mvexVGpyJBX6mA1GjOq2XvQB7bxJbr1h?=
 =?us-ascii?Q?H787DRf+QFuhB4bxI7ivB82cT5zMLqY8M8OWEHYim331W7S+v6sJicgfyUSg?=
 =?us-ascii?Q?NMvKR3Jec/jeR7oqA02n09NE+QBFGE6B4k9HJ7531GvkV6EBo/Ip+fsGfQAt?=
 =?us-ascii?Q?71qZ3leHWj/2oqab/I0vM4Uyda2QinH7BHiZkzTtf0lrkc5xFkdbGD5f5+e9?=
 =?us-ascii?Q?7rucKYRbDuRE3rdxXDNLJKePNepdvw+0UnUu+VKRq3Ex/P1DEIllmbO+hzS6?=
 =?us-ascii?Q?fMn57iI20i9FpFVbZPX4VatzOQscwB6gHLEJXB3uA8bikcnwg1edFwCsoSFr?=
 =?us-ascii?Q?YOFd7QcigYu6nHPcN8MS3tlg2Be3w4jxkQeVlXtBfLtO4IUMEvbgnyNBGkPA?=
 =?us-ascii?Q?USbXBju50hEhFDLM+OynVuNjQhyJIEbDFMaDtOSPNhpdrwNel8mqJkn+sXVh?=
 =?us-ascii?Q?i9qOyDx8XBVQ7PeNx5bdSkNU2tBscFTFqYR715p/z5z6tqdYPVfJyCptNpvv?=
 =?us-ascii?Q?TyUy46AhF8OtvYNUhkIiNPtCZNn+ZxkfeJRe0YWzrqe87mpMe4EVry0Ws2vy?=
 =?us-ascii?Q?futuYVyleIysxnyFVl++tfazJ+tCxQXapz0F/2CFqBvHJ9rcdn3GOGG81/Hl?=
 =?us-ascii?Q?AT1XqDYVRNYiG4e6wzta9TP7k4IcK2+tppCSDhVpyKI/BvnsCTjAQlPBg0lG?=
 =?us-ascii?Q?AjUne2oGppS34UkQse/1yeBdoSnaWdgwNT/PZYElsUNtaH273rEFxD0iaxbP?=
 =?us-ascii?Q?IVKgIUnBo1r8qd6rsCp+odq4pAegTYBWUhv0o2lzZiKSzd+BW8223fYxHLa5?=
 =?us-ascii?Q?5+o1Ct9+4sQ0Dv3S+bUzD5XHhBCwh/GdYW+sDta509sTjam3HaQspFqcadI0?=
 =?us-ascii?Q?LqVJ/ovrz6dLc/3UTzOlvxNyiSyH1mxiRZYnJjiUaqDJWpDIGLMuepWXCrMi?=
 =?us-ascii?Q?II63bagOGcrBj3eeynq8ORP1gKVi67qU9UBHQEcVkDFO6VDGeNJ6LZfeieMp?=
 =?us-ascii?Q?PlyJApwNO/4mDzW+21ZbgdchOm6Nh+l9gxOYuDLc3Zhr7Ea9WHCELDol/1Z4?=
 =?us-ascii?Q?u+dIIGRVEg+PHx6jLIbNMaxpaLnWdMACJUfRnjhkDNbQbyA1tdpH7PgFSJKG?=
 =?us-ascii?Q?AKm7TGBC9cg6qRWC5xDx7bJweVsGUx3nLkY8imCw21lXRjmQuHe66DIeIXbV?=
 =?us-ascii?Q?GrHyeiW0A3qER3YtNSUuit/qP2SANExlbz9s17V/mWUBJSMiIRsous+GEC2e?=
 =?us-ascii?Q?YkvyXfoSUpxj/McaPf3lI9K3r2OYaoLgRRfvj33E4d6yM/flVGstImBNhrt8?=
 =?us-ascii?Q?fsSe55qCWGZJmniweEJVR49VrzYYy1p28i0cGtt4EWMZ4dw6heczozyKIsep?=
 =?us-ascii?Q?v0/wVZmYsofXjGVw1DcEJBbHo7QkiSek75FX4ydDVKO4hDkG7GrtlJqdR5w/?=
 =?us-ascii?Q?FLp/w4TRRX68Mw150QdAAXvOjNWSTm6jPAZ3?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CdEYuco0A+QdC+5H7s29+YEYZ6cRwyhLL1KkzP8asvAhSRedromc86ocfwlG?=
 =?us-ascii?Q?tFEuXTaZ5niQloA7uC6UVo+eOpWStP9hGtUtJ6XRMqMGil6C0HV4oB3c2tCN?=
 =?us-ascii?Q?SpifazJCJuiwb3AxpzSsqh8rl5xq0HAYrxaicDbxiSHhtffCicFPBhNnDwiP?=
 =?us-ascii?Q?ucuz5RbLcA5/PKDYcdCqKy7Pa4HTXX3MWz7zUMBWYVK5PI0m/5rdZDAHgr6U?=
 =?us-ascii?Q?0gcPnURy6sn99/PIMedBhDGA93TObxnEPIDBdUzWal9AgjilMKP0pvXfje6G?=
 =?us-ascii?Q?0WBDQ2YUQ7y3Az90pRt71vMtxCJ0ROUnEFTyY1QYbbQiOX6/2kOaHdvO6h8F?=
 =?us-ascii?Q?KE+NhskkcTj2mu8Hd4yQW9nttar2HmFvVzknytPz1SF7uyEk1UVaH4kVyMG7?=
 =?us-ascii?Q?yMPCXDKBp1uHMW61Aij65lzEgoAyGl3EnKI8YQAZdWuaXsYzHgCor2+fw8TK?=
 =?us-ascii?Q?m21T2cAVX8L1QohaSoiyzfvjrGLQAWb+9+W4kkmKoawHzIuHB5m6BylvYqF2?=
 =?us-ascii?Q?YF/zQ+RDQrNlLuzwT+DHFnu6qn3O0O8JEFPg7ywVNwzKTUBsugRbFXE/DrXk?=
 =?us-ascii?Q?CQokjZz/9SbN7GQ6DA+A7Ms8erolOSs5FLNoBM2pzcEjr6m0AAJHuLB2QldR?=
 =?us-ascii?Q?6BI28X6wIy/RwWJId7GjoqXJorLJL8W5RUELLfPc9sb8WIteXsJx9xbmArRS?=
 =?us-ascii?Q?FRQSlZIYRZCQnGmWvjlrcSmnwwZaaeAksickE30usVI8+HMKQ+LP6IjlKgpi?=
 =?us-ascii?Q?Aey2JhRuceKadSA0gPhgBYKNUJWLa+YQok9+X+B4exi1/J/ypgZF8Xw98wOX?=
 =?us-ascii?Q?uXBW7oYxA7ptt+Jqx1om6YMQC4RSkzNdUdU2bDKDfgYQ2Dz9CrEUi8dKutDF?=
 =?us-ascii?Q?0/Ap8YIC3On9QRsMWodR9es/y+gDlRzd7D3ntwnN4rCnTnP0QmT43I1TEiGb?=
 =?us-ascii?Q?19wJ7N5kyzmo4UF8HEDpIMu+ywdiX9TIF6Ap2paxtb0vdIzBx+wfFDqFIZQs?=
 =?us-ascii?Q?1m+q2lFTAGnJECybRnbAC1AvticbDwKft9bA3GTmppIKnmlTsgEUqomTIDLy?=
 =?us-ascii?Q?401oAVge/5kLQaexK2nfgYu90uP1Hvpc5dATDhyNxBObmiJiSZ4VYu8cViSJ?=
 =?us-ascii?Q?w/RIIdLYYBrV17TyiP0Pk9sUnWXZOx0oz0KrQyjn1Ac4fFDYpWGhhZECFAia?=
 =?us-ascii?Q?aJWoFSJlYXMJloP4LOYOQKJ62GyGC+z/g8Us/mNnDMOeqTImTJtBKJbRs6EP?=
 =?us-ascii?Q?u8cjUdps0t7h/hU/0N0u6p8kzvMcY/nGWAZQtmsbgIFM6XcnOgOmp0rcpxip?=
 =?us-ascii?Q?kqyWX7HCT1gg0trqo6rfcwTadLu82pOt+gqtvbV+tLnWUF56oDSkTBHbNPtF?=
 =?us-ascii?Q?72wQQxa7c1c41xh1JFrzlSiiTw5KmOr6s7AtAoqSwXmsCGeFOhLKgnusm4n5?=
 =?us-ascii?Q?eovTcpT6Pc/amZRohcmMv4qhr5vgjrtVB2AJ4kl/2WEMnBpDEze3qeH/D8Bw?=
 =?us-ascii?Q?gEFX4ypwaCB4gsYSWFuhylAqksKnU3wE+ekSnOxo+gSr5P0H+XAgTk4+bLRj?=
 =?us-ascii?Q?CkWLUq64TLEPIRPh88TslkTSZDAYY/Kf2d9mBpfw?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 185f4dbf-6dad-44ff-19ec-08de21ac3c23
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2025 05:27:56.0165 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mgX2dDFyXL2tA+zaoPzsYSpmhaS/1EsZTNVigklrc33LCdQtswjUIDJyuHV0j3W8hQfkmk1dGpv3+gJZtBhfug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8406
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

> Subject: [CI 28/32] drm/i915/display: PLL verify debug state print
>=20
> From: Imre Deak <imre.deak@intel.com>
>=20
> Print out hw and sw pll states for better debugging support.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 17 ++++++++++++-----
>  1 file changed, 12 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 07bc99ae689c..6cc85a9a781f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4882,11 +4882,18 @@ verify_single_dpll_state(struct intel_display
> *display,
>  				 "%s: pll enabled crtcs mismatch (expected
> 0x%x in 0x%x)\n",
>  				 pll->info->name, pipe_mask, pll-
> >state.pipe_mask);
>=20
> -	INTEL_DISPLAY_STATE_WARN(display,
> -				 pll->on && memcmp(&pll->state.hw_state,
> &dpll_hw_state,
> -						   sizeof(dpll_hw_state)),
> -				 "%s: pll hw state mismatch\n",
> -				 pll->info->name);
> +	if (INTEL_DISPLAY_STATE_WARN(display,
> +				     pll->on && memcmp(&pll-
> >state.hw_state, &dpll_hw_state,
> +						       sizeof(dpll_hw_state)),
> +				     "%s: pll hw state mismatch\n",
> +				     pll->info->name)) {
> +		struct drm_printer p =3D drm_dbg_printer(display->drm,
> DRM_UT_KMS, NULL);
> +
> +		drm_printf(&p, "PLL %s HW state:\n", pll->info->name);
> +		intel_dpll_dump_hw_state(display, &p, &dpll_hw_state);
> +		drm_printf(&p, "PLL %s SW state:\n", pll->info->name);
> +		intel_dpll_dump_hw_state(display, &p, &pll->state.hw_state);
> +	}
>  }
>=20
>  static bool has_alt_port_dpll(const struct intel_dpll *old_pll,
> --
> 2.34.1

