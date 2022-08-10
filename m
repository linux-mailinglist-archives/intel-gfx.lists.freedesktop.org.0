Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE7158E5C6
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 05:50:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFA74AE8B2;
	Wed, 10 Aug 2022 03:49:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A67069754F
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Aug 2022 03:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660103310; x=1691639310;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=i1ANokBS9HwxRjhw9CweVcQnyBYVRpeDSVduQjEV3rE=;
 b=U8QlA20w7z5KjcsisScZ+O1DFwbubN1F3Kz2xAnrWd71d2nFj4CFH4jK
 ra7Hi8srMIv4sH5rDvtV8RkPoyYyKbXcCGBqzaUbFxzD0sqJqEOwolcMD
 Sa9OdPYy692P1j0SZ2y15fz/J0uYzV0HdDXK7BjPjBByJJw0NwCrWRAgD
 WpSQM77opdSZl45PUTdeLpTikz9UqK1uum6Mi4B9p43EZK7QWRLMIyGoX
 JYIOL6iJTXpJSQpJVB9yFrEfFFdbnfT/HOKdOBSKW6JbgwSn44SSlhdzn
 s7YCRE+dJ4TPNAiC8ScSU2rrdd7ndWszVEaJ/e/FGfH5e2L85+pypBgE2 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10434"; a="354989409"
X-IronPort-AV: E=Sophos;i="5.93,226,1654585200"; d="scan'208";a="354989409"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2022 20:48:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,226,1654585200"; d="scan'208";a="581066967"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 09 Aug 2022 20:48:27 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 9 Aug 2022 20:48:27 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 9 Aug 2022 20:48:26 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 9 Aug 2022 20:48:26 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 9 Aug 2022 20:48:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UOf20MXpxDCpCto4M/gijjduD7zZlj1pGlYQiHNF7qY0l+pw3+ZoVOUAE5a95wv5rV4JI9CwqxDOy6WzUamMK565K61bT6fUXDPa/jLY5aIrFpi8h0lbccbFgRrcReCp5XUVcyI1MrvC9gfGJkt/8XWhqrAiaTZ7PP5nZXgwqhLoLi5axSBQra2unLh6HFwrZ8TiYt9928HJagoqAx0OV+vgXVDKfG1SJUUk0nSMFk1GVAlxgJGlpwgvgcnLdEdsoRv7d1gBCV196S/FmI7eUTGvGuBZy/01sm9APp3O9dJTrSUqM8Vwx/nJlS2Mk22juFJShmKZYjnzueky94SKMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=osYjM345vxXmYda0aDG57rh7jcL0rTFwwCSMR8BBQzs=;
 b=M5e2KmL3KZ4tZzSMFFboKkg5XubLlbJaP/K1tM8UUH/eyJwKhCqbLo351tIkhMYfX5fxU2rGLHanUFFLnsPaGiVp9pAaeoMXHI7BJ0Na8FSN0FSGn5C296SgQOPgaeLClcbz22O80N3UPYLmmFl0P29ccRLeCsgeA83foY2rZUXMLyPOph+eYdYJ48J6Oz3CovgUiTgikQy32KzHX2ljlNvObCz/1i+VwFBCNr8SdsxIGWcLLqc8D9L+Nqxj36T4vwwG8zcTBg7ExMyLBZAZv0/AoGkwdaPXfdanpsRNrPXQ4i0M66IfqQkr4SUAJ2oAOT5KshUdyWPVAZItPUSp4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 DM6PR11MB4595.namprd11.prod.outlook.com (2603:10b6:5:2ac::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5525.10; Wed, 10 Aug 2022 03:48:24 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5%7]) with mapi id 15.20.5525.011; Wed, 10 Aug 2022
 03:48:24 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/d13: Fix unclaimed accesses while
 loading PIPEDMC-C/D
Thread-Index: AQHYqxIX7bZCMh0zVk+gk0c1yyfUIq2ngHLA
Date: Wed, 10 Aug 2022 03:48:24 +0000
Message-ID: <DM6PR11MB3177D66964271F836828FC47BA659@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220808103054.3586074-1-imre.deak@intel.com>
In-Reply-To: <20220808103054.3586074-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 45f63e54-2862-45b7-ab11-08da7a832d55
x-ms-traffictypediagnostic: DM6PR11MB4595:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /jyfnwJ2oPspYqakHzSpM2QGtGhBc+o3RhMVWQ87P20+N8AjLbuflVSsb/9ltihH9NZkjF2Yofg78ZK04sty2Lk+4Lzdmiv25A+R+s1oy0gW+LKUVzRlaUGHYKM6+w53tdzZilHZIuZNK5Oo6pkGCNCBxvqvSQa1KYThxhsJImMSK22HkLoA65Tu7Np7C7tP/wy9J+IrdGUTnFV+APGwUfV22mhboe0VH9Zws/n+kaCxzJuvw7+2S8YGn4054ICG3uQc/agF3XSfmZSIw9PxzmMPyeackk0Q1bwGqdcUk5sTTFQ1r5RBltvs4i0pBsgwWb9iFdxbNvJT2U6WPYBk/iw/+j+W1o3Fc5/Yqn1iEmnB7LQ2bydQRWERClPR7kxNX/VX6WaB9gDPUUQSqg6hwPPrh83/BOzqZ4gslldGofiPxVO8A5gfuXIok9pxCj2VCApe846bGux80ptPam0Kze2Lye3FuFeuQ+4jInUlp63scuXSrhvhMKxIZ0JTTvz6kYlH5n6iCRtmXcLGFjIsFtG1vGOT7pUANui8RzHqbguVgmq/bjbjQLkmSVTvXw9TJ/UtOtKHSC1KByPu8w/Pn4BKsQSDh1JVVnu8dm5dN1cKLyw5go/og32fOklDnBFUJxhZ1Fqma/A3AHNUFX4OGw0Ci7YsNhjmug5f6z5e/UxZ7/BDsO7jX7+EIUr0AN3yky9wrrkF6bbpZJEUYuUjVwzsRvBwsaidsPWI4atSfR3GGWnekCpI4mPDpDch2cbA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(136003)(376002)(39860400002)(396003)(366004)(122000001)(38100700002)(26005)(66946007)(82960400001)(8676002)(76116006)(110136005)(64756008)(71200400001)(66446008)(66476007)(38070700005)(66556008)(316002)(55016003)(478600001)(86362001)(5660300002)(52536014)(2906002)(8936002)(186003)(9686003)(33656002)(41300700001)(7696005)(53546011)(6506007)(83380400001)(966005)(55236004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0qV0nOgIz/RshTz3kaTVLVCjHLUGD0p9XWSpTW1P3ghKAhAGUN+qaRdIfELJ?=
 =?us-ascii?Q?aTaFFgNewEO1v7dlhelYMrRK+c2BPlSUoW+osfQxOcqmc3uLSpNSfTFdjwcp?=
 =?us-ascii?Q?jUGV47ZDaXojyE/6OvsdVzGXhqZyrmA14duzAPZ8Wgln2zg0a6wft91/lyxV?=
 =?us-ascii?Q?Od6ykLNDjlHJev2mFi84dQurDWJ7k7wYqXoFoKtJYOABvTjZkCiXllSqy8Jc?=
 =?us-ascii?Q?EDcHbWKsyxWuTK9ClJhlV6yv2JD6KxWt5hmDMB6wWr/13MEEGPAuKsrRmgBB?=
 =?us-ascii?Q?yl0EJOaDKP2RkOxZx8WQ/LXZ2cdxtSe1rYbbG8uIb8gW/ku9C5qk3ou2VgFD?=
 =?us-ascii?Q?0kfS21ppYvwa9R9Xr/w3Cwo8fPP8Jwkj8kCe48W9tf9SbogRaTm3RuMLvllP?=
 =?us-ascii?Q?NkO73tAwMG4GUz8B5pdngfKFgqkc2LADmJU+v6YgHJ7+Y7zsibZ/FZoIY+td?=
 =?us-ascii?Q?ydAXcR8Y1yXZwcHex9wfQfkGcSFtEOHvEhe6yWmuHoFsQBI32r3Dv249DOZu?=
 =?us-ascii?Q?B4WKPXZyIG7lt/fr9HDXd87IOtabHyYqMFcpuaHu4uaNEzYcphuLxYcchdpR?=
 =?us-ascii?Q?4BtUZ/CM/+5OdKKSygEAfGMUwLWRw4RFkCGeya9mjuPXh2w3sLaBOht1FJUo?=
 =?us-ascii?Q?3KDbdX4y84wPzxxqvsA1cvozwkmuKOOPYkR1X2TK3RSHOqSRpaaSCqTp3L1e?=
 =?us-ascii?Q?h51gl5ZSDyNvXSXtAlrewUC8df6SwxeRpneBYhayphI74sdpraESv2ERTFu3?=
 =?us-ascii?Q?ZecCMuWjlfEYYd6bbHTXDjy+9upFYQf/kHpL+4IgPTCAgi2pBGcO7J4GFEkf?=
 =?us-ascii?Q?fxkb/PCI+5dS+Vu0s/wW6d4DWZt6qUPP5YpUZ4WCj9nPoGaGbHqyubrYTJTB?=
 =?us-ascii?Q?GKEwEh42fFltdLhgI61XX+ayDbi1h4BGLuYCyauoMcVBdIXbnuU3sO+U8foH?=
 =?us-ascii?Q?jib7tSNpqNQrn0EzhBGnBSZ9Xu57SrJ7T8z/rNJn9+j+cP5wH+wYKPl536BN?=
 =?us-ascii?Q?kVRoqFYOS0pOgkQ/yfJmOmBFbjCA43m0PembZvkuHI6P6l3rsP8B2g2bXA2f?=
 =?us-ascii?Q?grJjq8aPpQcczaL55st0RLDOyHFlMXOWNJn4y7X4CjysG1rYDmz7UW6tPw0e?=
 =?us-ascii?Q?TiKJtJtKaqWZabTolNkLMyXWEU9GoJ39VIV44BBAC9qq83wQOaGOLrMwpHcu?=
 =?us-ascii?Q?nDYqtkJOHf6GzIKrD7lxE9ApkM6/DnRAN/SON2M+TvYMJl9tdJmHZFZr75kZ?=
 =?us-ascii?Q?z9A9P9c2TabR8g1Zhmx+UE33ZA38kTfrJqqm2dw8f23KvLaIhTUtwCiiUAGI?=
 =?us-ascii?Q?L45pEPpl2kbUMEnmdPlBSYMQA5yAroHsfVYrMW2A+uT7oRFCPmH6yjl9jLrY?=
 =?us-ascii?Q?RsVmODEf89PDWEloJTIaIq3iQ+dkvB2RIT9yKx9LMq6Ym7zKP0raWsEd9aVT?=
 =?us-ascii?Q?570OWaFUxCC9wW03NA+ORbm7UinDNsBfETcRGQ4iGW+F368V3r11upltu2Ww?=
 =?us-ascii?Q?RReK+OOKpewWJJjiiqBTRo5ILzuqyzi7NpSJkZ95SXF+2rV53dPrHANd2gk9?=
 =?us-ascii?Q?6jqk+svbX7J3w/hzzFr7qIJ0HJxdjvCLp4hKJx7K?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45f63e54-2862-45b7-ab11-08da7a832d55
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2022 03:48:24.6083 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KlZL/THJ/OiSTwubjWKIKBWBK04kr3dfLgcEa8lr20CQuFMmLNjOcJAil/KsPxxSt4P0vBNZB81ev7Ejjj3SMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4595
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/d13: Fix unclaimed accesses while
 loading PIPEDMC-C/D
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

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re
> Deak
> Sent: Monday, August 8, 2022 4:01 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH] drm/i915/d13: Fix unclaimed accesses while
> loading PIPEDMC-C/D
>=20
> At the moment on DG2 at least loading the DMC firmware's PIPEDMC C and
> D programs leads to sporadic unclaimed register accesses while
> programming the initial state as described by the firmware's "MMIO init"
> table. This will also lead to later unclaimed accesses for unrelated
> transcoder/pipe registers backed by the pipe C and D display power wells.
>=20
> Disabling the PIPEDMC clock gating during initialization - similarly to
> Wa_16015201720 fixed this problem in my tests. While pipe A an B requires
> the clock gating to be disabled all the time pipe C and D requires this o=
nly
> while accessing the PIPEDMC registers.
>=20
> Bspec: 49193
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/6526
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/6308
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../drm/i915/display/intel_display_power.c    |  8 -----
>  drivers/gpu/drm/i915/display/intel_dmc.c      | 30 +++++++++++++++++++
>  2 files changed, 30 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 3f84af6beff31..e42797e1655da 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1615,14 +1615,6 @@ static void icl_display_core_init(struct
> drm_i915_private *dev_priv,
>  		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D, 0,
>  			     PCH_DPMGUNIT_CLOCK_GATE_DISABLE);
>=20
> -	/* Wa_16015201720:adl-p,dg2 */
> -	if (DISPLAY_VER(dev_priv) =3D=3D 13) {
> -		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL_EXT(PIPE_A),
> -			     0, PIPEDMC_GATING_DIS);
> -		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL_EXT(PIPE_B),
> -			     0, PIPEDMC_GATING_DIS);
> -	}
> -
>  	/* 1. Enable PCH reset handshake. */
>  	intel_pch_reset_handshake(dev_priv, !HAS_PCH_NOP(dev_priv));
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 00e18a4a5a5a4..6c35212c36256 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -383,6 +383,30 @@ static void disable_all_event_handlers(struct
> drm_i915_private *i915)
>  	}
>  }
>=20
> +static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool
> +enable) {
> +	enum pipe pipe;
> +
> +	if (DISPLAY_VER(i915) !=3D 13)
> +		return;
> +
This function will be called from bxt_display_core_init() as well. Do we ne=
ed this WA for bxt as well?

Thank and Regards,
Arun R Murthy
--------------------

> +	/*
> +	 * Wa_16015201720:adl-p,dg2
> +	 * The WA requires clock gating to be disabled all the time
> +	 * for pipe A and B.
> +	 * For pipe C and D clock gating needs to be disabled only
> +	 * during initializing the firmware.
> +	 */
> +	if (enable)
> +		for (pipe =3D PIPE_A; pipe <=3D PIPE_D; pipe++)
> +			intel_de_rmw(i915, CLKGATE_DIS_PSL_EXT(pipe),
> +				     0, PIPEDMC_GATING_DIS);
> +	else
> +		for (pipe =3D PIPE_C; pipe <=3D PIPE_D; pipe++)
> +			intel_de_rmw(i915, CLKGATE_DIS_PSL_EXT(pipe),
> +				     PIPEDMC_GATING_DIS, 0);
> +}
> +
>  /**
>   * intel_dmc_load_program() - write the firmware from memory to register=
.
>   * @dev_priv: i915 drm device.
> @@ -399,6 +423,8 @@ void intel_dmc_load_program(struct
> drm_i915_private *dev_priv)
>  	if (!intel_dmc_has_payload(dev_priv))
>  		return;
>=20
> +	pipedmc_clock_gating_wa(dev_priv, true);
> +
>  	disable_all_event_handlers(dev_priv);
>=20
>  	assert_rpm_wakelock_held(&dev_priv->runtime_pm);
> @@ -432,6 +458,8 @@ void intel_dmc_load_program(struct
> drm_i915_private *dev_priv)
>  	 * here.
>  	 */
>  	disable_all_flip_queue_events(dev_priv);
> +
> +	pipedmc_clock_gating_wa(dev_priv, false);
>  }
>=20
>  /**
> @@ -446,7 +474,9 @@ void intel_dmc_disable_program(struct
> drm_i915_private *i915)
>  	if (!intel_dmc_has_payload(i915))
>  		return;
>=20
> +	pipedmc_clock_gating_wa(i915, true);
>  	disable_all_event_handlers(i915);
> +	pipedmc_clock_gating_wa(i915, false);
>  }
>=20
>  void assert_dmc_loaded(struct drm_i915_private *i915)
> --
> 2.37.1

