Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C888A0CB8
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Apr 2024 11:46:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ADCA10F743;
	Thu, 11 Apr 2024 09:46:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZiV523Y1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D1A010F743;
 Thu, 11 Apr 2024 09:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712828780; x=1744364780;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LbUXRhfH0xZ1XguikIptSzswf/QIGDnDTvA8RhE9Vuo=;
 b=ZiV523Y1ZPt4HiOsWTP80Pm4lMW31tjj9wGpmqr10rezsKEt3g3HXS+L
 S+qFnKx9G81YDhUpE8ueUtwRI96ttHsIbpWzgiExCU/ubQ94sE+dTqlCC
 b3LAKqT2QGIgT3knNuAYPfCgmDtg0OlXcioilgGn3jGO8F++eWqG35fWt
 P40fiTgqKWznzNkjFsw96S6YcoJBI5Z3HqR2xIE28U4iR2wRSfvEEfCMY
 Kn1GFiA6TOfP2PYfsvA81k4b7jVNXKAtvFvnHTHoUr7+BlDk54Kml2loO
 s0zTLYV01P+BnJB7zkFHUv30/5ZT/sNWa83yLvls1/OAzfFNQYvXbvzKt g==;
X-CSE-ConnectionGUID: uYZtWMOBSf+xsOCtGN6AvQ==
X-CSE-MsgGUID: +ISKKX1+Swif5qpZ6/p99w==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="30711111"
X-IronPort-AV: E=Sophos;i="6.07,193,1708416000"; d="scan'208";a="30711111"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 02:46:20 -0700
X-CSE-ConnectionGUID: Za62YlXKTn+JDwaMf71hAQ==
X-CSE-MsgGUID: ZZaOWatASrSX8vtWlsCeWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,193,1708416000"; d="scan'208";a="20748737"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Apr 2024 02:46:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Apr 2024 02:46:19 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 11 Apr 2024 02:46:19 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 11 Apr 2024 02:46:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jrBL44G8y1BziD22Ikhcp06rjs7mrOtLZ+AK7YhzXHjz/nQFyqCxPt2um/82f3T7KA4NxtTL3DH0y3UEUkxE86g4KLJk9WKjH1pTa9euTtdw93C0wIQXAiqmDGp9Ux5/t12XpVhLr2PvtfXdCry86GK7EKPnFTiY9FozJ8fKjpxZhs8dOdGnSnqlt2c0dBkKa4zAQ7tCL+i4JBm60p2ba0mM1v/542YEyVPYecs2DUQMc98BnTAPxtYaLqmS3qGgYaBaY5rtVLo86348q/NsgJkCWobIs6ksdBuFWi7Z8v30Kxeqkwjh3up5hhZi5tXWksM8/343RqpmXa5dF+CVLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9CBQe7Y1mjQeL+ix5TJ0aI5kPH/0aF4/r8CrfZGLML8=;
 b=aMEQ5tEuGG8dDCjRjEM4/8Sktb2CjxBFxSy+aiqEGrtxDRr7ZvZ6r0/Rk/LsGsN+Zl771rnJkOzaP0Iyg+tAPCK0JVEPgU0AEB4i17SPK6S1wDgBVSRsRXDfAHewwmTH4BsWRGDiVw8Hok6ec47hrwCcJaYvj/Ojdlp645Yax7yQRolrEzB7pV7MtBP99L3b8gPUYTH4dkoitSfm14NwayW/WNET5rS0Tkk3GnfFWJFmml+I/hhRYihGy2rFZyyc8I1iaFEIOvdgXeEdOoFq8BZ3inxdsXHeuM3XPuRAfgn2Hmg/ZqQi6b3lRojBRbNY6Zqk4uhCx0kBinskJl3PEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 BL1PR11MB5223.namprd11.prod.outlook.com (2603:10b6:208:31a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Thu, 11 Apr
 2024 09:46:17 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff%7]) with mapi id 15.20.7452.019; Thu, 11 Apr 2024
 09:46:17 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v4 4/4] drm/i915/display: tie DMC wakelock to DC5/6 state
 transitions
Thread-Topic: [PATCH v4 4/4] drm/i915/display: tie DMC wakelock to DC5/6 state
 transitions
Thread-Index: AQHahoUlZsHXLzEUHkiT/M6I2kanz7Fi3QJA
Date: Thu, 11 Apr 2024 09:46:17 +0000
Message-ID: <DM4PR11MB636040FCD651B3CEB2A7A1D0F4052@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240404114147.236316-1-luciano.coelho@intel.com>
 <20240404114147.236316-5-luciano.coelho@intel.com>
In-Reply-To: <20240404114147.236316-5-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|BL1PR11MB5223:EE_
x-ms-office365-filtering-correlation-id: c75882c5-785a-49ce-abe1-08dc5a0c3c36
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: t1z09RcUVZcp/iQ7OUwhlinLwWzQbLUveHHnSLDXzjUaS9Gc9oyFHaXqK74EF0wwssJp1wwnAnsX6O2DfvKr9CYg/tlixp2K4YB3chM+fiasGWYUjtSRwPw5TbgRvitsu9QuOHBR/iiBzHFgGJ1H+hsyk1hZKwDzO46eY5reV/seKtXS7gafdJJsxtXLQ+3wkAQbJ6QO53yUpT095YdndBG+ItVhkBVId0uKtFewvB6mJGQRVcVBitCZrl/RGHDr6CwLvZpQoMyImB8Ibiqkz3Yy3PkXCHhY5I+Y0juq2THQE2EeKsGdlw7TF2lNOzqcUHzEzfjEcdxlCd5cWOKaSJiE6ljrWujhvzuZlGA1ABJznyVz1yDCi3tQJWHDxCV3IcihKyS2kg7B/0jCr8owVTJ6gyo+tFBRBR12CHIdZMHPFJL2zoAHOfqwGvU2jRZeUiB0cIqM2Urb8e9cxkvWgYCX7ygD5DrHMqGwgYpomuuYbE3KrVnGhRlXBSyStgdqSAPnLG+YvgP/8j3h3/vXI+H11f8K4JbviYD6IJZ6VbJB6Ltm1YZRfYTCBI/IUyFkcfTn4/oedtmThnDBOSvr8myk6eBLQkLXlNTn6JqPNsWQ/Mozf0qgxEVExgWwdWF6sV+uy0aQ+8s4eX9ClSXxkalDbxXw7j1vW/SclYtB6adUUoOpdJjkt5fOYCh5VSOGHFMNiP6lvDxgbCa4neEoYIYNvZ/POfhfiafJpKojrWg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JkQ9ezUz/4pt9L+oanGU8B6Ct4U2OEH9yTWsCQvMmzcctwfBbXwQ7PnVFQKh?=
 =?us-ascii?Q?iSuajkPpM3tnN2zWreL8M4fdoaXJxynXb5UqsiJWMod7tR5rU8vcXHDuGdwO?=
 =?us-ascii?Q?plemYyMoKdsb5u6ELeqNATl1vEX5PFeFu/Cd9ajVSc2Cq1ZK8WWxbbHFS1DI?=
 =?us-ascii?Q?XTj6EKybuhi3wXkED5851yo6ayM8lhG8bOrySxL4GEga6NMcOAG59Ls7Q54V?=
 =?us-ascii?Q?QbddCdE+3smL5hUWelqO8IPxsUCUWG3Bx33H7/OvOtN0shMedKI28300AjDo?=
 =?us-ascii?Q?80MVrqoCy4pQaCiEfNECT/kiHr83zYbTLogSDWq/oTpxHTLfYDejz67kQJvx?=
 =?us-ascii?Q?RqI7NWviOBH8nZExV6/OfFwxKm4ZXS8pDcvIL0jBvvq6TtDnxZS/1HJL2iqK?=
 =?us-ascii?Q?RStZ2EDzPDsBX6FVlgrA2CeF57Df1ETE+ofGCvAAluxnTJ2DVpuG1PWPcOwz?=
 =?us-ascii?Q?sz/4QJ67/sqC39jTIuB6I62DUHmJ5hfMx7F/qWieBiPPz2VQu2pxNB2CaTUF?=
 =?us-ascii?Q?JttEErS0Y1zU4MwGYO1Oa27AzaO1LGeFH0zlvnyrWrle77rNDeBElMGg+MCD?=
 =?us-ascii?Q?V8Sma7cKKqFVonYz9DhxhFHcPRE5HxICNjypsBltxmfd9IftDyMsP9fzEgJa?=
 =?us-ascii?Q?er5gkG+xCvHr75QGDITPNfvl2KITcbubu04PF4oVl82Hk08dmoQ/ef32yePO?=
 =?us-ascii?Q?dZsgg6kT66H53J+7UgNwwqCQIgHNrLn5iIqV+thT4+oc8La4oc5Cf0Pc8+ru?=
 =?us-ascii?Q?JO3IQtpiq7S8uUX1NpqAUfOqEpeza0Zyz+s8iebSDegqvFQP0ILdmhZdA7Bv?=
 =?us-ascii?Q?J6lvq9WALp9hqFRqQ1xZuOh+jeWlRnMPs3E5XFqaDUhjmZrNHBOah77/hOV2?=
 =?us-ascii?Q?FZWO+wMTs01DbAvQzsWZWpa3k8khNQSdEMGiaKyPKIMdoNR9nvsBLcgf+BR2?=
 =?us-ascii?Q?lEDkFdePsYoF8fk3bVYs6MeWBnd3VU6/HgTVRAHv8UO9Q+nNrTa5Zr3CEnKC?=
 =?us-ascii?Q?rPyR48tgJEDbKNKRhKukGs68hQTEK/rweUT0CYwk4XKwevRGW6Piqpn69gzp?=
 =?us-ascii?Q?Eyn3nZY9c+Ody/8vXoK6t2z7YmpIFprUl5ahYhRpwou/akUzfIfcWBlKkL4s?=
 =?us-ascii?Q?x2LbHwFyHbjw45h/5CdfDg+bYrVB6QhH9TyyGEYxF7xxEcgJQdW7y9aD8Lgq?=
 =?us-ascii?Q?cwhbZq0KMVb+1oEC0Eorx5pDzRQRG3eAaMog7U5Gkedf1lz+oH/E7C/Sq4XU?=
 =?us-ascii?Q?3STBZtlI6AWwZGHTppHa3EuqeD3Q/K//WfljLQB9r20q+yCmZLdRdjTKXkBv?=
 =?us-ascii?Q?NEigzi/mIlgYYv8O6Kr2vyXL+FeHko705tgexhhJy6x3Cx1B2mS0/Mtk5rH7?=
 =?us-ascii?Q?cJi6LfGtjHgqyTvDaxqsgQn8f0JoL2GmMsD8wGKz/cciIArFoK1sWPFOuriS?=
 =?us-ascii?Q?J6RiC9zF0GvjSEmyOHTzuDWfqfvoG08zByfBSK6ClsuVner2ZfEfkY1GIUEk?=
 =?us-ascii?Q?97ArDQuPJTEtHA2tViRrqRpZAsMRSbPe/AdKomFUFjmR+5+55ZNfUQimOfvJ?=
 =?us-ascii?Q?EzNH0S2Mrt3nYNPYsQeNgPmthmDLPJHiU2GThLQJ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c75882c5-785a-49ce-abe1-08dc5a0c3c36
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2024 09:46:17.5531 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zL4EAw384JG4/evRWWk9n5X6SMCDDrYWTJpD0Dk1vn5e62IKO9heAzIiFmr3zCK7gf95PxhpzHBHS9R8UNLLxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5223
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
> Sent: Thursday, April 4, 2024 5:12 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>;
> ville.syrjala@linux.intel.com; Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH v4 4/4] drm/i915/display: tie DMC wakelock to DC5/6 state
> transitions
>=20
> We only need DMC wakelocks when we allow DC5 and DC6 states.  Add the cal=
ls
> to enable and disable DMC wakelock accordingly.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 7 +++++++
>  drivers/gpu/drm/i915/display/intel_dmc.c                | 4 ++++
>  2 files changed, 11 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index e4de40228997..7f4b7602cf02 100644
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
> +
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

