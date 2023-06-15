Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E26E273206E
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 21:39:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D178D10E532;
	Thu, 15 Jun 2023 19:39:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8823810E532
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jun 2023 19:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686857995; x=1718393995;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9o6RvaXbcHJXesv+RyIeUNuAVunmDZjmr7mBNalxtbQ=;
 b=So3qTEk6DxS22obhyB1TEs9IHQqJvbWqDaX5Adz5fRdyeC/RNpCxl5Kr
 t5/DdfWCnXoAQOtOoh6nee8n6ZYiV6Z64rMMFAtNq2jl2ntJbYgUeO5ev
 cdg3ybABGrj+b0f38xL/vKZIsiR5akRxpXAOI6myIyjKJOr1Rv69Oi/8u
 g3APfz0HlPuGfn6Axi+tXjLn9sHO5+IKJ2yxPa82miEMLKyOlrXuhJNxo
 Ue/5Jiu9HJO7nP9zyIbfqwHiG6aA3wzjS++ChlEBbL7TgoYA/kbNZXuB5
 0+HJIHPFuWW731RimuPkTJvPqfX8lHeMgsYWwPcvwSXyEsK6pEPC0tC46 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="356511827"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="356511827"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 12:39:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="706804546"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="706804546"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 15 Jun 2023 12:39:53 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 12:39:53 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 12:39:53 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 15 Jun 2023 12:39:53 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 15 Jun 2023 12:39:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R3XgoZGxb2HGZu4QCIjt9/UU8wDeHsY+mANpuO1jTXuZ2khedjZnDqWPOjOF2jZKCO/Mnrz/eL3GCKqwsnVy48Cbxq350Cuc3KuwSPSdSKoc0a2HkFEjvdpNpi9RCtzrjOxspKnZ9rEZOn+5eoyOS41nilmDSCLnfGXq/ZZ1LwuNpW6BdfLKX77MYXvat8hdOWE/ZKnqtjIayI3PqRFO5R/Krx6jIHT6hBJmBcGtiKoBw/feeAQZD9YjV+2CPUP7ZWNV7+DS7MrD11VMAFW53u6J5YFlHDg6jv1dPfSCUBqm2MB1GiccbQ8zm2+shlIwu8LanxgzfvZDyrXfOoqX1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7JmRqrGxrvK0wbAuwX78P9K8Z5LL2m1fY66GPMrgky0=;
 b=B6f4vnYTElQkCsXmNlrCfj/rRDotnfkBAhLtzqA/d6GCRz+BCs4Q/Gwj+IqvAw5Z/8HDUYo77aqfty/l8Lj2T1uHhl9BpDc8pAjHkTCsxR6LlmYtY6Pxb2WpygPqn2WkBmcAewsv8n4HBsHj3FjrV0g88SpePXED1Oupcqxv01PabT8VfAYqm4HCS4E+9Okn89JJ1cATXmg49yFdJq0IWrdGz5jnLOzVwuVORK9GFEdQsbPuWBzcXjXLQNM3ytz9pxoGiDETmpup/9ICLSFU/cl0ZxVcB4UDB0+7UMjoAHSHQLsnJzQgBB34bV/Id+KzFytFyCmayT6I7RtKDPrR/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by PH0PR11MB5675.namprd11.prod.outlook.com (2603:10b6:510:d4::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.37; Thu, 15 Jun
 2023 19:39:50 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::dc02:fa20:2d25:dc]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::dc02:fa20:2d25:dc%5]) with mapi id 15.20.6455.039; Thu, 15 Jun 2023
 19:39:50 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 02/11] drm/i915/MTL: s/MTL/METEORLAKE for
 platform/subplatform defines
Thread-Index: AQHZn0ZpZA77TGKP/k+6GMclJWdia6+MQ6lg
Date: Thu, 15 Jun 2023 19:39:49 +0000
Message-ID: <SJ2PR11MB7715D2AB9938186553D61BA9F85BA@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230615050015.3105902-1-dnyaneshwar.bhadane@intel.com>
 <20230615050015.3105902-3-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20230615050015.3105902-3-dnyaneshwar.bhadane@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|PH0PR11MB5675:EE_
x-ms-office365-filtering-correlation-id: fea484e1-94e4-484f-e825-08db6dd8488d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oGjas1DzKSjBpDe5KVfWh0uVlTB1mUm/2wWyornQynaqpCGcboqjzDFUsbXy5+hIzqk+zLwDoFyUNd1oSnWpq/T3q31kXLFjjtQ5ehjqez3bUbG79+9d7nhUWotEaKbo6II5TkVTWt5BntM/vGkKGFXYXwDMFFQAHRAtwTG979CxlfFCwRYK01kCiheOtejNe4H/Hk27hlniHJTI2XbrvplJrwtCnLEoYNEtZUTVITg4Y1ULbSf2p4YLflEJe1jZ6b8J37t2AYhDNdhX6Zp9tF+RDJ4HWeLa0qzJTgDRMgeK1dOY6rdUHAM8f89LSw24Igw8+fAA7UyS0eIJXMUU4eCIU72V6D0nDiBNV9Ow5OMJW8JZK+j01JohoYf3JYG/ZsbzAijKYhuwesqiEZVUy5ZH5YHWnnx8UVVxplxHIOVbwbf4+MzLbXkwRAkYkKebmQ12oFHequIujq2tsgPYy0lzTyj5vu9s9D6HUd8mh8NYeADH3TmYF+u7CA7XryJPARSYTIPz2qgjCuqTI/8rNoQNNHaPLreQcQef/fMrPBsdoL6iLJ18IMGicLj/bjSxEXw5hlkkj2hkOWdZwAkD+r+NfGbG0gIJmy4qpmCPq6EhNExOS1/LF1zFcLrUDZkn
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(39860400002)(136003)(376002)(396003)(451199021)(83380400001)(7696005)(53546011)(478600001)(6506007)(86362001)(9686003)(26005)(186003)(82960400001)(4326008)(66446008)(316002)(66556008)(64756008)(76116006)(66946007)(66476007)(110136005)(122000001)(107886003)(71200400001)(38100700002)(8676002)(8936002)(5660300002)(52536014)(2906002)(30864003)(41300700001)(55016003)(38070700005)(33656002)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ejNLkvTN7Inbe8D4iOtDhdK2l4mhCvFjxwpHktJhckDcySeiFnX8NEI8YXRo?=
 =?us-ascii?Q?aBPiwhpk8GYosmuPaz8rK2WqgxCWuy+JqRUe3xyNfIq2/g89SxqjQqRSZgL/?=
 =?us-ascii?Q?EqN/rQz55SKLQsFhyHLonpwTr5qARGP/s56Tm8PJJuFR+2a/KRlZ1QCKzRL8?=
 =?us-ascii?Q?EMaUt6Xl5g7qAm4p4oYibY722vB1HW2+8bCxN3TIaqWpUyo3sSSehdx4qWO1?=
 =?us-ascii?Q?/0cDNvFto8QniHsWT3Bd9Ex2ppWVRaIwmkaLzgqEikvrk7m96XSjCkNHJYiy?=
 =?us-ascii?Q?LK81QciP6vxC22REckxObOlhfLxAr9fh8629Qu7UNIIR1MTKlHaOlaalGHgt?=
 =?us-ascii?Q?hQIbSk+c1QrXyrY6GU0Aqwpf5tTlkTXEQOUi1ZUlltGBf49pcFGm2SffEKFf?=
 =?us-ascii?Q?WZSxNNg51XbaCibrDU6YlCRZkGHLuqn4vuQXFrd6Cju4WI2ghOTti527SN6c?=
 =?us-ascii?Q?Z41uyco9H+R/XU+X34YY0tjoCieio+AHjBvDmqmvjta38XWht8qyMUMp2qQI?=
 =?us-ascii?Q?TUDwb7ZapSli0ISDwH1TP5HERNPOiFkazDecPRgFO8zjJ5YRVjRLhw2o39fQ?=
 =?us-ascii?Q?AnhpF9nQGyqYqEEpLrNAKRS/ZvgTN+AD+uZ91TbLC8A6ZtVdAR4XKCY7o24y?=
 =?us-ascii?Q?6jg/XGxernnT+HCb9NlbYbGP3hkCD9cDyeomlAK3BJirz1bpV//xELfD1mWh?=
 =?us-ascii?Q?MdJFs9ABC0O5R7m9kLUZldBaK778yNFtzAmgoX3h7F336JDpNVOj4yWQJpsl?=
 =?us-ascii?Q?BF/ICFa0zBX5/6qZXM2Q7zp9TbR9Hsj4WErrRxbYhqshFzDfmrNqEE9qzG/4?=
 =?us-ascii?Q?4Lrpy7r1JqfdYQF5VQBsCNgxuV4lh/bcgZ5+nomQmdM4TVDTZplFJEzFrN9L?=
 =?us-ascii?Q?pP2aUzm8Foyoj92Vs5P2nX9jPaevKVeSdDT6YyF/i7iZ61y4Dp5aASSWbgrF?=
 =?us-ascii?Q?ReB28O8jYT8sN3ai/pE1Ydgj0+eOgc2SlhJnrtSAkiwK+bVgzLgYQ2Rv6+tx?=
 =?us-ascii?Q?kcjVky7dZEsvUpnb7rSPrPnMPBy3nE1kS/3d5oUSJYnHSKhVNo92P0a/M4bL?=
 =?us-ascii?Q?aN4VXVcVbPqVCG79AU6VFwZKbA4MsQwiLYDblXtnuba+5cmLUg/3HzeuwQfa?=
 =?us-ascii?Q?e5Yt7QIEKIi1thj5JSkmoIZkZMMJYgROLju8+CGsL5eh0s6LFJGSeWnB9BoX?=
 =?us-ascii?Q?AyVFH6i9aBKsAIhoX42QR4jd0Xgla8nRCjBX7H3bb+zOtdgAcUaAwqZ+EjPG?=
 =?us-ascii?Q?SfuuewOKEPVfPt+6Zjj7F9hxoVj35UbTk8lS9D5wWMPx0ieNx3zxAoYRKJG+?=
 =?us-ascii?Q?Iec7l2gw4uXlCHLS1uw51bYbl3cXookyXmeX0E+MtTiYRf2KSy6NlcXKuPGA?=
 =?us-ascii?Q?4LHbTd6QEf1b/xqkTVT4L7J/3As0AXAptlO2WIyGZ4roaAl7pOA8XqQtNWHf?=
 =?us-ascii?Q?gdsIzV5+zOZM1HHhI0wrg5krNPpUfrjTArYsTWAGCeSUXlRU+N+jYXIQ7qfs?=
 =?us-ascii?Q?EFxKJp0L6FEexcK7y70Dl1pMSA626yVteZ4R/jR7WUVDWtdXtcpH9sLStN2K?=
 =?us-ascii?Q?oM5RV5OXGWOZaPAMEt4LpX9y9ymRro8dGPvOJkiq?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fea484e1-94e4-484f-e825-08db6dd8488d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2023 19:39:50.0172 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vh7iCDz7dK7z+4G9Q90kIERfmK3gTGJlbeEaETJK5EltWFxDJezKwZhEMFKUp7ryUaXvVr8NyKbPL7UScmiId5XjiDyz8CTy8ZEXUrSO2K0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5675
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 02/11] drm/i915/MTL: s/MTL/METEORLAKE for
 platform/subplatform defines
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

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>


> -----Original Message-----
> From: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Sent: Wednesday, June 14, 2023 10:00 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Atwood, Matthew S <matthew.s.atwood@intel.com>; Srivatsa, Anusha
> <anusha.srivatsa@intel.com>; Bhadane, Dnyaneshwar
> <dnyaneshwar.bhadane@intel.com>
> Subject: [PATCH 02/11] drm/i915/MTL: s/MTL/METEORLAKE for
> platform/subplatform defines
>=20
> Follow consistent naming convention. Replace MTL with METEORLAKE
>=20
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_pmdemand.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c      | 10 ++---
>  .../drm/i915/display/skl_universal_plane.c    |  4 +-
>  drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |  8 ++--
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
>  .../drm/i915/gt/intel_execlists_submission.c  |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  4 +-
>  drivers/gpu/drm/i915/gt/intel_lrc.c           |  4 +-
>  drivers/gpu/drm/i915/gt/intel_rc6.c           |  2 +-
>  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 44 +++++++++----------
>  drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  4 +-
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  4 +-
>  drivers/gpu/drm/i915/i915_drv.h               |  6 +--
>  drivers/gpu/drm/i915/i915_perf.c              |  4 +-
>  15 files changed, 51 insertions(+), 51 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 7f8b2d7713c7..6358a8b26172 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1093,7 +1093,7 @@ static int intel_fbc_check_plane(struct
> intel_atomic_state *state,
>=20
>  	/* Wa_14016291713 */
>  	if ((IS_DISPLAY_VER(i915, 12, 13) ||
> -	     IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0)) &&
> +	     IS_METEORLAKE_DISPLAY_STEP(i915, STEP_A0, STEP_C0)) &&
>  	    crtc_state->has_psr) {
>  		plane_state->no_fbc_reason =3D "PSR1 enabled
> (Wa_14016291713)";
>  		return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c
> b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> index f7608d363634..8c3158b188ef 100644
> --- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> @@ -92,7 +92,7 @@ int intel_pmdemand_init(struct drm_i915_private *i915)
>  				     &pmdemand_state->base,
>  				     &intel_pmdemand_funcs);
>=20
> -	if (IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0))
> +	if (IS_METEORLAKE_DISPLAY_STEP(i915, STEP_A0, STEP_C0))
>  		/* Wa_14016740474 */
>  		intel_de_rmw(i915, XELPD_CHICKEN_DCPR_3, 0,
> DMD_RSP_TIMEOUT_DISABLE);
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index d58ed9b62e67..06b464229efe 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1247,7 +1247,7 @@ static void wm_optimization_wa(struct intel_dp
> *intel_dp,
>  	bool set_wa_bit =3D false;
>=20
>  	/* Wa_14015648006 */
> -	if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> +	if (IS_METEORLAKE_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
>  	    IS_DISPLAY_VER(dev_priv, 11, 13))
>  		set_wa_bit |=3D crtc_state->wm_level_disabled;
>=20
> @@ -1320,7 +1320,7 @@ static void intel_psr_enable_source(struct intel_dp
> *intel_dp,
>  		 * All supported adlp panels have 1-based X granularity, this may
>  		 * cause issues if non-supported panels are used.
>  		 */
> -		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> +		if (IS_METEORLAKE_DISPLAY_STEP(dev_priv, STEP_A0,
> STEP_B0))
>  			intel_de_rmw(dev_priv,
> MTL_CHICKEN_TRANS(cpu_transcoder), 0,
>  				     ADLP_1_BASED_X_GRANULARITY);
>  		else if (IS_ALDERLAKE_P(dev_priv))
> @@ -1328,7 +1328,7 @@ static void intel_psr_enable_source(struct intel_dp
> *intel_dp,
>  				     ADLP_1_BASED_X_GRANULARITY);
>=20
>  		/* Wa_16012604467:adlp,mtl[a0,b0] */
> -		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> +		if (IS_METEORLAKE_DISPLAY_STEP(dev_priv, STEP_A0,
> STEP_B0))
>  			intel_de_rmw(dev_priv,
>  				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder),
> 0,
>=20
> MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS);
> @@ -1489,7 +1489,7 @@ static void intel_psr_disable_locked(struct intel_d=
p
> *intel_dp)
>=20
>  	if (intel_dp->psr.psr2_enabled) {
>  		/* Wa_16012604467:adlp,mtl[a0,b0] */
> -		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> +		if (IS_METEORLAKE_DISPLAY_STEP(dev_priv, STEP_A0,
> STEP_B0))
>  			intel_de_rmw(dev_priv,
>  				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder),
>=20
> MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0); @@ -1963,7 +1963,7 @@
> int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>  		goto skip_sel_fetch_set_loop;
>=20
>  	/* Wa_14014971492 */
> -	if ((IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> +	if ((IS_METEORLAKE_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
>  	     IS_ALDERLAKE_P(dev_priv) || IS_TIGERLAKE(dev_priv)) &&
>  	    crtc_state->splitter.enable)
>  		pipe_clip.y1 =3D 0;
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 26def9cb86e4..25b06ced9ce7 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2169,8 +2169,8 @@ static bool skl_plane_has_rc_ccs(struct
> drm_i915_private *i915,
>  				 enum pipe pipe, enum plane_id plane_id)  {
>  	/* Wa_14017240301 */
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> +	if (IS_METEORLAKE_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> +	    IS_METEORLAKE_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
>  		return false;
>=20
>  	/* Wa_22011186057 */
> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> index 23857cc08eca..eb72610a8588 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> @@ -180,8 +180,8 @@ u32 *gen12_emit_aux_table_inv(struct intel_gt *gt, u3=
2
> *cs, const i915_reg_t inv  static int mtl_dummy_pipe_control(struct
> i915_request *rq)  {
>  	/* Wa_14016712196 */
> -	if (IS_MTL_GRAPHICS_STEP(rq->engine->i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(rq->engine->i915, P, STEP_A0, STEP_B0)) {
> +	if (IS_METEORLAKE_GRAPHICS_STEP(rq->engine->i915, M, STEP_A0,
> STEP_B0) ||
> +	    IS_METEORLAKE_GRAPHICS_STEP(rq->engine->i915, P, STEP_A0,
> +STEP_B0)) {
>  		u32 *cs;
>=20
>  		/* dummy PIPE_CONTROL + depth flush */ @@ -765,8 +765,8
> @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
>  		     PIPE_CONTROL_FLUSH_ENABLE);
>=20
>  	/* Wa_14016712196 */
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> +	if (IS_METEORLAKE_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> +	    IS_METEORLAKE_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
>  		/* dummy PIPE_CONTROL + depth flush */
>  		cs =3D gen12_emit_pipe_control(cs, 0,
>=20
> PIPE_CONTROL_DEPTH_CACHE_FLUSH, 0); diff --git
> a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 0aff5bb13c53..f9af6b1a7c01 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1616,7 +1616,7 @@ static int __intel_engine_stop_cs(struct
> intel_engine_cs *engine,
>  	 * Wa_22011802037: Prior to doing a reset, ensure CS is
>  	 * stopped, set ring stop bit and prefetch disable bit to halt CS
>  	 */
> -	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> +	if (IS_METEORLAKE_GRAPHICS_STEP(engine->i915, M, STEP_A0,
> STEP_B0) ||
>  	    (GRAPHICS_VER(engine->i915) >=3D 11 &&
>  	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
>  		intel_uncore_write_fw(uncore, RING_MODE_GEN7(engine-
> >mmio_base),
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 2ebd937f3b4c..901ecd59afbc 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -3001,7 +3001,7 @@ static void execlists_reset_prepare(struct
> intel_engine_cs *engine)
>  	 * Wa_22011802037: In addition to stopping the cs, we need
>  	 * to wait for any pending mi force wakeups
>  	 */
> -	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> +	if (IS_METEORLAKE_GRAPHICS_STEP(engine->i915, M, STEP_A0,
> STEP_B0) ||
>  	    (GRAPHICS_VER(engine->i915) >=3D 11 &&
>  	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
>  		intel_engine_wait_for_pending_mi_fw(engine);
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> index 0b414eae1683..1dc7180eeb27 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> @@ -166,8 +166,8 @@ void intel_gt_mcr_init(struct intel_gt *gt)
>  		gt->steering_table[OADDRM] =3D
> xelpmp_oaddrm_steering_table;
>  	} else if (GRAPHICS_VER_FULL(i915) >=3D IP_VER(12, 70)) {
>  		/* Wa_14016747170 */
> -		if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -		    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> +		if (IS_METEORLAKE_GRAPHICS_STEP(i915, M, STEP_A0,
> STEP_B0) ||
> +		    IS_METEORLAKE_GRAPHICS_STEP(i915, P, STEP_A0,
> STEP_B0))
>  			fuse =3D REG_FIELD_GET(MTL_GT_L3_EXC_MASK,
>  					     intel_uncore_read(gt->uncore,
>=20
> MTL_GT_ACTIVITY_FACTOR)); diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.=
c
> b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index a4ec20aaafe2..cd9a76f048f3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1370,8 +1370,8 @@ gen12_emit_indirect_ctx_rcs(const struct
> intel_context *ce, u32 *cs)
>  					      cs, GEN12_GFX_CCS_AUX_NV);
>=20
>  	/* Wa_16014892111 */
> -	if (IS_MTL_GRAPHICS_STEP(ce->engine->i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(ce->engine->i915, P, STEP_A0, STEP_B0) ||
> +	if (IS_METEORLAKE_GRAPHICS_STEP(ce->engine->i915, M, STEP_A0,
> STEP_B0) ||
> +	    IS_METEORLAKE_GRAPHICS_STEP(ce->engine->i915, P, STEP_A0,
> STEP_B0)
> +||
>  	    IS_DG2(ce->engine->i915))
>  		cs =3D dg2_emit_draw_watermark_setting(cs);
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c
> b/drivers/gpu/drm/i915/gt/intel_rc6.c
> index 58bb1c55294c..cc8b09b8a7fa 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> @@ -526,7 +526,7 @@ static bool rc6_supported(struct intel_rc6 *rc6)
>  		return false;
>  	}
>=20
> -	if (IS_MTL_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0) &&
> +	if (IS_METEORLAKE_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0) &&
>  	    gt->type =3D=3D GT_MEDIA) {
>  		drm_notice(&i915->drm,
>  			   "Media RC6 disabled on A step\n"); diff --git
> a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 4d2dece96011..a109ecd54944 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -819,8 +819,8 @@ static void mtl_ctx_gt_tuning_init(struct intel_engin=
e_cs
> *engine,
>=20
>  	dg2_ctx_gt_tuning_init(engine, wal);
>=20
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
> +	if (IS_METEORLAKE_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER)
> ||
> +	    IS_METEORLAKE_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
>  		wa_add(wal, DRAW_WATERMARK, VERT_WM_VAL, 0x3FF, 0,
> false);  }
>=20
> @@ -831,8 +831,8 @@ static void mtl_ctx_workarounds_init(struct
> intel_engine_cs *engine,
>=20
>  	mtl_ctx_gt_tuning_init(engine, wal);
>=20
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> +	if (IS_METEORLAKE_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> +	    IS_METEORLAKE_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
>  		/* Wa_14014947963 */
>  		wa_masked_field_set(wal, VF_PREEMPTION,
>  				    PREEMPTION_VERTEX_COUNT, 0x4000);
> @@ -1716,8 +1716,8 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, stru=
ct
> i915_wa_list *wal)
>  	/* Wa_22016670082 */
>  	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
>=20
> -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
> +	if (IS_METEORLAKE_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> +	    IS_METEORLAKE_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
>  		/* Wa_14014830051 */
>  		wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
>=20
> @@ -2413,15 +2413,15 @@ rcs_engine_wa_init(struct intel_engine_cs *engine=
,
> struct i915_wa_list *wal)  {
>  	struct drm_i915_private *i915 =3D engine->i915;
>=20
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> +	if (IS_METEORLAKE_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> +	    IS_METEORLAKE_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
>  		/* Wa_22014600077 */
>  		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
>  				 ENABLE_EU_COUNT_FOR_TDL_FLUSH);
>  	}
>=20
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> +	if (IS_METEORLAKE_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> +	    IS_METEORLAKE_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
>  	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
>  	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
>  		/* Wa_1509727124 */
> @@ -2431,7 +2431,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine,
> struct i915_wa_list *wal)
>=20
>  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
>  	    IS_DG2_G11(i915) || IS_DG2_G12(i915) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0)) {
> +	    IS_METEORLAKE_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0)) {
>  		/* Wa_22012856258 */
>  		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
>  				 GEN12_DISABLE_READ_SUPPRESSION);
> @@ -3016,13 +3016,13 @@ general_render_compute_wa_init(struct
> intel_engine_cs *engine, struct i915_wa_li
>=20
> GEN11_INDIRECT_STATE_BASE_ADDR_OVERRIDE);
>  	}
>=20
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
> +	if (IS_METEORLAKE_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER)
> ||
> +	    IS_METEORLAKE_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
>  		/* Wa_14017856879 */
>  		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN3,
> MTL_DISABLE_FIX_FOR_EOT_FLUSH);
>=20
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> +	if (IS_METEORLAKE_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> +	    IS_METEORLAKE_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
>  		/*
>  		 * Wa_14017066071
>  		 * Wa_14017654203
> @@ -3030,13 +3030,13 @@ general_render_compute_wa_init(struct
> intel_engine_cs *engine, struct i915_wa_li
>  		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
>  				 MTL_DISABLE_SAMPLER_SC_OOO);
>=20
> -	if (IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> +	if (IS_METEORLAKE_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
>  		/* Wa_22015279794 */
>  		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
>  				 DISABLE_PREFETCH_INTO_IC);
>=20
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> +	if (IS_METEORLAKE_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> +	    IS_METEORLAKE_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
>  	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
>  	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
>  		/* Wa_22013037850 */
> @@ -3044,16 +3044,16 @@ general_render_compute_wa_init(struct
> intel_engine_cs *engine, struct i915_wa_li
>  				DISABLE_128B_EVICTION_COMMAND_UDW);
>  	}
>=20
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> +	if (IS_METEORLAKE_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> +	    IS_METEORLAKE_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
>  	    IS_PONTEVECCHIO(i915) ||
>  	    IS_DG2(i915)) {
>  		/* Wa_22014226127 */
>  		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0,
> DISABLE_D8_D16_COASLESCE);
>  	}
>=20
> -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> +	if (IS_METEORLAKE_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> +	    IS_METEORLAKE_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
>  	    IS_DG2(i915)) {
>  		/* Wa_18017747507 */
>  		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN,
> POLYGON_TRIFAN_LINELOOP_DISABLE); diff --git
> a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index 2eb891b270ae..3af0fcd7dd57 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -277,7 +277,7 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>  		flags |=3D GUC_WA_GAM_CREDITS;
>=20
>  	/* Wa_14014475959 */
> -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> +	if (IS_METEORLAKE_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
>  	    IS_DG2(gt->i915))
>  		flags |=3D GUC_WA_HOLD_CCS_SWITCHOUT;
>=20
> @@ -292,7 +292,7 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>  		flags |=3D GUC_WA_DUAL_QUEUE;
>=20
>  	/* Wa_22011802037: graphics version 11/12 */
> -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> +	if (IS_METEORLAKE_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
>  	    (GRAPHICS_VER(gt->i915) >=3D 11 &&
>  	    GRAPHICS_VER_FULL(gt->i915) < IP_VER(12, 70)))
>  		flags |=3D GUC_WA_PRE_PARSER;
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index a0e3ef1c65d2..5914c7348aba 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1658,7 +1658,7 @@ static void guc_engine_reset_prepare(struct
> intel_engine_cs *engine)
>  	 * Wa_22011802037: In addition to stopping the cs, we need
>  	 * to wait for any pending mi force wakeups
>  	 */
> -	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> +	if (IS_METEORLAKE_GRAPHICS_STEP(engine->i915, M, STEP_A0,
> STEP_B0) ||
>  	    (GRAPHICS_VER(engine->i915) >=3D 11 &&
>  	     GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70))) {
>  		intel_engine_stop_cs(engine);
> @@ -4267,7 +4267,7 @@ static void guc_default_vfuncs(struct intel_engine_=
cs
> *engine)
>=20
>  	/* Wa_14014475959:dg2 */
>  	if (engine->class =3D=3D COMPUTE_CLASS)
> -		if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0,
> STEP_B0) ||
> +		if (IS_METEORLAKE_GRAPHICS_STEP(engine->i915, M,
> STEP_A0, STEP_B0) ||
>  		    IS_DG2(engine->i915))
>  			engine->flags |=3D
> I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
>=20
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 0f30dc890209..472a36cf1a72 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -688,15 +688,15 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,  #define IS_XEHPSDV_GRAPHICS_STEP(__i915, since, until) \
>  	(IS_XEHPSDV(__i915) && IS_GRAPHICS_STEP(__i915, since, until))
>=20
> -#define IS_MTL_GRAPHICS_STEP(__i915, variant, since, until) \
> +#define IS_METEORLAKE_GRAPHICS_STEP(__i915, variant, since, until) \
>  	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE,
> INTEL_SUBPLATFORM_##variant) && \
>  	 IS_GRAPHICS_STEP(__i915, since, until))
>=20
> -#define IS_MTL_DISPLAY_STEP(__i915, since, until) \
> +#define IS_METEORLAKE_DISPLAY_STEP(__i915, since, until) \
>  	(IS_METEORLAKE(__i915) && \
>  	 IS_DISPLAY_STEP(__i915, since, until))
>=20
> -#define IS_MTL_MEDIA_STEP(__i915, since, until) \
> +#define IS_METEORLAKE_MEDIA_STEP(__i915, since, until) \
>  	(IS_METEORLAKE(__i915) && \
>  	 IS_MEDIA_STEP(__i915, since, until))
>=20
> diff --git a/drivers/gpu/drm/i915/i915_perf.c
> b/drivers/gpu/drm/i915/i915_perf.c
> index 0a111b281578..e943ffbaecbc 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -4214,7 +4214,7 @@ static int read_properties_unlocked(struct i915_per=
f
> *perf,
>  	 * C6 disable in BIOS. Fail if Media C6 is enabled on steppings where
> OAM
>  	 * does not work as expected.
>  	 */
> -	if (IS_MTL_MEDIA_STEP(props->engine->i915, STEP_A0, STEP_C0) &&
> +	if (IS_METEORLAKE_MEDIA_STEP(props->engine->i915, STEP_A0,
> STEP_C0) &&
>  	    props->engine->oa_group->type =3D=3D TYPE_OAM &&
>  	    intel_check_bios_c6_setup(&props->engine->gt->rc6)) {
>  		drm_dbg(&perf->i915->drm,
> @@ -5322,7 +5322,7 @@ int i915_perf_ioctl_version(struct drm_i915_private
> *i915)
>  	 * C6 disable in BIOS. If Media C6 is enabled in BIOS, return version 6
>  	 * to indicate that OA media is not supported.
>  	 */
> -	if (IS_MTL_MEDIA_STEP(i915, STEP_A0, STEP_C0)) {
> +	if (IS_METEORLAKE_MEDIA_STEP(i915, STEP_A0, STEP_C0)) {
>  		struct intel_gt *gt;
>  		int i;
>=20
> --
> 2.34.1

