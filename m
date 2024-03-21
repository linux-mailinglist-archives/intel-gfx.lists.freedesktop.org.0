Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F3388559A
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Mar 2024 09:22:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14DE710E244;
	Thu, 21 Mar 2024 08:22:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SqzLlYZa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE27010E19F;
 Thu, 21 Mar 2024 08:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711009359; x=1742545359;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+7H26uweMhKTk3Nv9+b+3ioPmAGZPPV8AgscZ3uKQL4=;
 b=SqzLlYZaanmT7dAMM5DVCKgrHia6WKWpBY6NMxJ2+Hal90mC9XjOj1Cq
 FifcrxLFiJqtQ5VTe6Y6NdodQ7LkTFWLT6BesYgUyHPkKmnvvOXbP68uO
 4OLsAVqU+SEe8a/NEX1EN906cosXIt3ZWD7chVRH8Qb3kfm/Y+PmBtcFM
 7Lw9fdfer3eqgThA2zNCNic4+i/mnPYv981T3QCQIYSDP0un0OLlcxHvG
 qNZaZOp51tY3FKV9h/pz0MGJimdBnefL2r2tl6umjQHBc0dSJC4zOQlyt
 4ClrFTWexEdQvmYTcXwCaS4ITbVoRSI5iPNlj34hcSuIshOar0T3B/kFY w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="23478668"
X-IronPort-AV: E=Sophos;i="6.07,142,1708416000"; d="scan'208";a="23478668"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2024 01:22:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,142,1708416000"; d="scan'208";a="45526378"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Mar 2024 01:22:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 21 Mar 2024 01:22:37 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 21 Mar 2024 01:22:37 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 21 Mar 2024 01:22:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bMhV3RkOc1h+ut7d/jOgxXcDIKJHx9VQIf64v1IZvZBh8wTZyr6MxkX3P0MWscDpM1/6h0j51FehnU3T85eKSp6nKW6+V7uupzQ5i4/AT9u0Jc++LaBbhlC/KgTR/mhSw2COwXIGKdz1hFmvg3Pxgl8lOSA7Zq2iPS2EyxVoV1S9R/xJUBRsXFDgEN3SUzfrPIahWmrNBAbPmT87kqllt3hSBKU/HOqj6PLpaGNwhKt+15OOR14wUayhiwwjHghEEd60SateRJ3G+cDKifmIjfld8jve3ZInOyVCXionvkccgrs2DGlFX3jHfgep1PYg3KuKOVVJy1t4OcxY75hpUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wnc/bMydqGk5ORLN/wOA9Pqsk1QLDVgjklLQPURt2kk=;
 b=MWZ32G6uRMUZlzyh7hxedlqS8JgI4DUbbdiUc/0u+IXrEIK6NXLjiGughCeB5nWBNzqSLn0Bc9uR/L2JnrVmFmfj6+HivTdXMk8gTPR82948L3rWW1u1ojSnQe1+onOZTyFPOIHz4EqFSiP+CliAecEwOYKQ2DBoLTcBuKPjHSIuITqW7xmK1W8XhJ9IhbFpBw8VBIoLFZnUUdF3TCEmJExPLk6gLE6urW7r+Ukv3/6sv3sbujy4iKK8FgVA7J19MviAWBmSFeimLVBfSp9GLsm2c8e3M+Bhj4p3XtSRedpJH8K2e90Zf8Of+Omsy5FP6twz7dMMpoHkORTiZEsA1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 BL3PR11MB6411.namprd11.prod.outlook.com (2603:10b6:208:3ba::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.11; Thu, 21 Mar 2024 08:22:35 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff%7]) with mapi id 15.20.7409.022; Thu, 21 Mar 2024
 08:22:34 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v3 4/4] drm/i915/display: tie DMC wakelock to DC5/6 state
 transitions
Thread-Topic: [PATCH v3 4/4] drm/i915/display: tie DMC wakelock to DC5/6 state
 transitions
Thread-Index: AQHaeTmUNKNAs4tRwUK5xgRhC16/nbFB3MRA
Date: Thu, 21 Mar 2024 08:22:34 +0000
Message-ID: <DM4PR11MB6360E99717265C75BB27BA20F4322@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240318133757.1479189-1-luciano.coelho@intel.com>
 <20240318133757.1479189-5-luciano.coelho@intel.com>
In-Reply-To: <20240318133757.1479189-5-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|BL3PR11MB6411:EE_
x-ms-office365-filtering-correlation-id: 9a7c75e3-e7e8-491c-e0e8-08dc49800f86
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yq67eatqRxoKO2cx556oSBgU7RomaSYkDCITo5nR55JUf8CXGw/cjCZVBhVJzMqfFGGj2UoQ5CClA95nCJFY1CM7Qhq9eV6JRqVUpcVM6DWwTR9vXaJURR8yTO5oLS/n2QayjWcqXmTBno0YXI3lvJzqtt4mH0/4ZTs3FV/9EWdx/59LK5uNrZScsz7Kubjz4qTP5dYIwKTyZ3kLCMWxOey3FCyoIehp36WHaDezBCrh5bujKZY0RzL6SRAlf1QxuiWHJPvlUOFNohwCJk+b2u3+wiZ934JdaG4PdE8/sOCztmQrEpGty9KFCWLr+RyYX1soTF97zyzc1WpLgut1vTXdktAoKx1KtrF43S1AIVrb/YvoaXfsjMVhgSjCGWA2JTSWpsTxXqvlfyY5NOfniMvuPRJZRWH7BhMNh2U2cAVOJRJeBwPHD6SuiJkoZ6rKvxaJk8xpQmsWK2elYduGlGxPn78GC3A3JsJPqZgmTcdBzvDU+qt78XldsLFlLgYx4Zzb9TQanyrQ6dJNq/ZmiEthyTJduWygRpgzgq1lSembZfrY5/pfSL1fK4mFoTiRYDcoBI5xvcZOZf3Y/lhyxcFrVNEXnNE2EA9HifAByGdEr0wXlXbht5uyXV9D0gSRhQD6oVyA+KttysmSsbld89QZwj9b4pps03WD5XbRD818hvlutiIXe7id9CisljKkmOFMwHp//WC/E6kSaTE9uBaOCLjirifvtLv3PVXdbLk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zrMRNlhuaiw1AHS8zCJr4x47uBdc52q/2enJ8EL4TE80YJOdXFZk4Bp0tmAg?=
 =?us-ascii?Q?sZkDcLzWUPkVdRtp8NxmuUSosSG6dQkOkGV/aE9Rw2gqSmwlmcB56K4S+8NO?=
 =?us-ascii?Q?BNYSJ35bYAmIz0t/5AHHp+b6Lg628ibuUO8xI3Otvy8sszojaTTM3IPjS6Ov?=
 =?us-ascii?Q?PWSUX4iVd9/9B6p8MTdJlhCXA2wD0SEBH8erwjdAeYXEC06bPPUFbC9O0bS5?=
 =?us-ascii?Q?VgI96j7m4BceCmhhqDdAFhmWP2WjNXQRfwt+d+qiwQpX/ANBx1/31kcaOfod?=
 =?us-ascii?Q?u2jc5Gudh+36QWkMXz7vs3tWquhn1XNJ0fEngr5XZ99NT7z2ZmzvXx1YykLv?=
 =?us-ascii?Q?GUD9vyZ0yu03IkCjTylV3EyfWCL4JMhQnUBlrTRrhJkpaSpLUsVOsull98Jo?=
 =?us-ascii?Q?iy+Wc/evcdfUAS2loZ2q4bLSPiO28GY87+DXlrRJxdytxxRcv2AL4Qtxo5Zj?=
 =?us-ascii?Q?Psc/Nr+PXW+gwb1hMp0+AuPdXldc4rTq61w0wi72mxCHSEADdBfa1OhWFSLN?=
 =?us-ascii?Q?RwJjpb2ehQQgIAXiL7jn9bKdOTsZUs6ThtOc/vTKaUI9ZvZO287frh56ezsl?=
 =?us-ascii?Q?Z4nJ92m/IL584Y/mT2fYJhqMWertDqW+ILBfR7WC+UxiMMwoTmyf0yPCkUoi?=
 =?us-ascii?Q?u4j0QgKgubNbX6vlS6cn9YnjjGQjBl/ZRDZZtaXRf0Gjjd8nOC6oiVSqgh1K?=
 =?us-ascii?Q?q+rENdoY3uCY0hOEjXFNHSfK9Cp6K0aytMsRwVwGSe4bypVwwwLXTxWj7zOM?=
 =?us-ascii?Q?sbUCQXsWM9lfa8p6fpCzdpxYLKQMecjwQaCILixur3HbaPAJ/+4OhGCxRtMm?=
 =?us-ascii?Q?UgpUBSw3tqbCJHRt5GmfomCjroD+b0lA/e/ktPx3nyzJQ1ioxmV+0nSERZKV?=
 =?us-ascii?Q?GAtF1o8pe09TuOJBxQQOrJOsyt/fAuBfbi9j3KsZprJQyhaGxkGYarQcik4j?=
 =?us-ascii?Q?5rdYaEmFq+bLzqREuFEcD9msxP4wj901UQSk62qUs+qaQtYi4Rt6/gdLv0ci?=
 =?us-ascii?Q?9rWpVuIssti0sg3J05JUeJbFm4y0HyF7920sPn4QI5hn8oMmvz5S1eWcvGAA?=
 =?us-ascii?Q?r5OfSxSuHGRuq643sRhJ396FqSa4Db0RVppNF9zTVuI0JYdYzvCsAOyHe67N?=
 =?us-ascii?Q?9PGbVEpkfazaeXC0kPKIwNrJpfK8UO9+G6FIb8GdpajFVDJeuexOv5IHs5aX?=
 =?us-ascii?Q?rcoYiZHmpv5Uon0RUMtiDjiDQ+BlPbRplWgJCxGH+WcMa9Px4jtIFvuoUxlC?=
 =?us-ascii?Q?47SxDsUSZryNdXaErgPH+4fYUsJnHv+6JnuBaDdLB9ndRgNe32Obj8MDyh4D?=
 =?us-ascii?Q?n6LQBQq2dEb/uMZknUd4SnjTQKpEeLymPHfysx/Zspb4N2U92Uw+57n9exQs?=
 =?us-ascii?Q?PPt/vdSNStyoAJIbjaLssog8fDb7vXhFlbnVtMaxA8Q8DkgDBJWganTNb0ke?=
 =?us-ascii?Q?hXFbeBIbROd9Am16RrsVuxggq+VE2F/tuBfuaT5KEgEB/eMbbwy1pL2lixAB?=
 =?us-ascii?Q?h3Xwku5OHv9avtVkgALHZ02ZNg2oKot5EKt6IcBuBpitNhY7hnn6prC3/836?=
 =?us-ascii?Q?qEc1c2owXnE/p0CPXSH0OwjuUK17iz6SnExuYux8?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a7c75e3-e7e8-491c-e0e8-08dc49800f86
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Mar 2024 08:22:34.4520 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xPXxFWHbs6skOUIIDwQn6A6/sT3L9JzCDS26xiN26q/Vd6itpTee51wKDewWMUW4eyaTB49qiSkEHqFlEOp9Sg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6411
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



> -----Original Message-----
> From: Coelho, Luciano <luciano.coelho@intel.com>
> Sent: Monday, March 18, 2024 7:08 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>;
> ville.syrjala@linux.intel.com; Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH v3 4/4] drm/i915/display: tie DMC wakelock to DC5/6 state
> transitions
>=20
> We only need DMC wakelocks when we allow DC5 and DC6 states.  Add the cal=
ls
> to enable and disable DMC wakelock accordingly.

> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 7 +++++++
>  drivers/gpu/drm/i915/display/intel_dmc.c                | 4 ++++
>  2 files changed, 11 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 217f82f1da84..367464f5c5cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -17,6 +17,7 @@
>  #include "intel_dkl_phy.h"
>  #include "intel_dkl_phy_regs.h"
>  #include "intel_dmc.h"
> +#include "intel_dmc_wl.h"
>  #include "intel_dp_aux_regs.h"
>  #include "intel_dpio_phy.h"
>  #include "intel_dpll.h"
> @@ -821,6 +822,8 @@ void gen9_enable_dc5(struct drm_i915_private
> *dev_priv)
>  		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
>  			     0, SKL_SELECT_ALTERNATE_DC_EXIT);
>=20
> +	intel_dmc_wl_enable(dev_priv);

We can have platform checks here and call only when its supported.
No strong objection but doing it here seems better than calling for all
and then checking for platform inside.

>  	gen9_set_dc_state(dev_priv, DC_STATE_EN_UPTO_DC5);  }
>=20
> @@ -850,6 +853,8 @@ void skl_enable_dc6(struct drm_i915_private *dev_priv=
)
>  		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
>  			     0, SKL_SELECT_ALTERNATE_DC_EXIT);
>=20
> +	intel_dmc_wl_enable(dev_priv);
> +
>  	gen9_set_dc_state(dev_priv, DC_STATE_EN_UPTO_DC6);  }
>=20
> @@ -970,6 +975,8 @@ void gen9_disable_dc_states(struct drm_i915_private
> *dev_priv)
>  	if (!HAS_DISPLAY(dev_priv))
>  		return;
>=20
> +	intel_dmc_wl_disable(dev_priv);
> +
>  	intel_cdclk_get_cdclk(dev_priv, &cdclk_config);
>  	/* Can't read out voltage_level so can't use intel_cdclk_changed() */
>  	drm_WARN_ON(&dev_priv->drm,
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 3fa851b5c7a6..b20cc018b9a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -550,6 +550,8 @@ void intel_dmc_disable_program(struct
> drm_i915_private *i915)
>  	pipedmc_clock_gating_wa(i915, true);
>  	disable_all_event_handlers(i915);
>  	pipedmc_clock_gating_wa(i915, false);
> +
> +	intel_dmc_wl_disable(i915);
>  }
>=20
>  void assert_dmc_loaded(struct drm_i915_private *i915) @@ -1079,6 +1081,8
> @@ void intel_dmc_suspend(struct drm_i915_private *i915)
>  	if (dmc)
>  		flush_work(&dmc->work);
>=20
> +	intel_dmc_wl_disable(i915);
> +
>  	/* Drop the reference held in case DMC isn't loaded. */
>  	if (!intel_dmc_has_payload(i915))
>  		intel_dmc_runtime_pm_put(i915);
> --
> 2.39.2

