Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4198739ED17
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 05:30:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2D496EA8E;
	Tue,  8 Jun 2021 03:30:40 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30EA66EA8E
 for <Intel-gfx@lists.freedesktop.org>; Tue,  8 Jun 2021 03:30:39 +0000 (UTC)
IronPort-SDR: m55r0Nvmjufa9OkNMRri+ArBysy4S/NtkFyMW6QMdT/jMWOuCF8P4gyYBjrNFvowirsA1k2/Vi
 zOZ8Ux2uPCCg==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="192090220"
X-IronPort-AV: E=Sophos;i="5.83,256,1616482800"; d="scan'208";a="192090220"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 20:30:38 -0700
IronPort-SDR: pVDjRzkml0FqRNXfT7iRVvcNXeEuQRnOAEREEEgh4wUZqmX6c/MBfIzGK6KFCPf1n41Ssy8Ayb
 VycKcDeQ0KCQ==
X-IronPort-AV: E=Sophos;i="5.83,256,1616482800"; d="scan'208";a="401841018"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 20:30:38 -0700
Date: Mon, 7 Jun 2021 20:30:36 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: clinton.a.taylor@intel.com
Message-ID: <20210608033036.GE6936@mdroper-desk1.amr.corp.intel.com>
References: <20210608002056.23723-1-clinton.a.taylor@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210608002056.23723-1-clinton.a.taylor@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adl_p: Add initial ADL_P
 Workarounds
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jun 07, 2021 at 05:20:56PM -0700, clinton.a.taylor@intel.com wrote:
> From: Clint Taylor <clinton.a.taylor@intel.com>
> =

> Most of the context WA are already implemented.
> Adding adl_p platform tag to reflect so.
> =

> BSpec: 54369
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Aditya Swarup <aditya.swarup@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli=
.pradeep@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  2 +-
>  drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |  2 +-
>  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 39 ++++++++++---------
>  drivers/gpu/drm/i915/intel_pm.c               |  8 ++--
>  4 files changed, 28 insertions(+), 23 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index 71ac57670043..79746d5c1378 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -2675,7 +2675,7 @@ ehl_combo_pll_div_frac_wa_needed(struct drm_i915_pr=
ivate *i915)
>  {
>  	return ((IS_PLATFORM(i915, INTEL_ELKHARTLAKE) &&
>  		 IS_JSL_EHL_REVID(i915, EHL_REVID_B0, REVID_FOREVER)) ||
> -		 IS_TIGERLAKE(i915)) &&
> +		 IS_TIGERLAKE(i915) || IS_ALDERLAKE_P(i915)) &&

There's a comment above this function that lists the platforms; we
should add adl-p to that list so it doesn't become stale.

I notice that we're also missing this workaround on ADL-S; we should
probably follow up with a separate patch to add that too.

>  		 i915->dpll.ref_clks.nssc =3D=3D 38400;
>  }
>  =

> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i=
915/gt/gen8_engine_cs.c
> index 94e0a5669f90..87b06572fd2e 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> @@ -208,7 +208,7 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32=
 mode)
>  		flags |=3D PIPE_CONTROL_FLUSH_L3;
>  		flags |=3D PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
>  		flags |=3D PIPE_CONTROL_DEPTH_CACHE_FLUSH;
> -		/* Wa_1409600907:tgl */
> +		/* Wa_1409600907:tgl,adl-p */
>  		flags |=3D PIPE_CONTROL_DEPTH_STALL;
>  		flags |=3D PIPE_CONTROL_DC_FLUSH_ENABLE;
>  		flags |=3D PIPE_CONTROL_FLUSH_ENABLE;
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/dr=
m/i915/gt/intel_workarounds.c
> index b62d1e31a645..e62cadb3fcd8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -640,15 +640,16 @@ static void gen12_ctx_workarounds_init(struct intel=
_engine_cs *engine,
>  	gen12_ctx_gt_tuning_init(engine, wal);
>  =

>  	/*
> -	 * Wa_1409142259:tgl
> -	 * Wa_1409347922:tgl
> -	 * Wa_1409252684:tgl
> -	 * Wa_1409217633:tgl
> -	 * Wa_1409207793:tgl
> -	 * Wa_1409178076:tgl
> -	 * Wa_1408979724:tgl
> -	 * Wa_14010443199:rkl
> -	 * Wa_14010698770:rkl
> +	 * Wa_1409142259:tgl,adl-p
> +	 * Wa_1409347922:tgl,adl-p
> +	 * Wa_1409252684:tgl,adl-p
> +	 * Wa_1409217633:tgl,adl-p
> +	 * Wa_1409207793:tgl,adl-p
> +	 * Wa_1409178076:tgl,adl-p
> +	 * Wa_1408979724:tgl,adl-p

Since we're updating the comments anyway, it looks like all of the ones
listed above should actually be "tgl,dg1,adl-p" for completeness and
grep-ability.

> +	 * Wa_14010443199:rkl,adl-p

This one is tgl,rkl,dg1,adl-p

> +	 * Wa_14010698770:rkl,adl-p
> +	 * Wa_1409342910:adl-p

These two are tgl,rkl,dg1,adl-s,adl-p


Aside from the comment tweaks, all of the workarounds look correct to
me.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


>  	 */
>  	wa_masked_en(wal, GEN11_COMMON_SLICE_CHICKEN3,
>  		     GEN12_DISABLE_CPS_AWARE_COLOR_PIPE);
> @@ -1113,7 +1114,7 @@ gen12_gt_workarounds_init(struct drm_i915_private *=
i915,
>  {
>  	wa_init_mcr(i915, wal);
>  =

> -	/* Wa_14011060649:tgl,rkl,dg1,adls */
> +	/* Wa_14011060649:tgl,rkl,dg1,adls,adl-p */
>  	wa_14011060649(i915, wal);
>  }
>  =

> @@ -1633,38 +1634,40 @@ rcs_engine_wa_init(struct intel_engine_cs *engine=
, struct i915_wa_list *wal)
>  			    GEN7_DISABLE_SAMPLER_PREFETCH);
>  	}
>  =

> -	if (IS_ALDERLAKE_S(i915) || IS_DG1(i915) ||
> +	if (IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) || IS_DG1(i915) ||
>  	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
> -		/* Wa_1606931601:tgl,rkl,dg1,adl-s */
> +		/* Wa_1606931601:tgl,rkl,dg1,adl-s,adl-p */
>  		wa_masked_en(wal, GEN7_ROW_CHICKEN2, GEN12_DISABLE_EARLY_READ);
>  =

>  		/*
>  		 * Wa_1407928979:tgl A*
>  		 * Wa_18011464164:tgl[B0+],dg1[B0+]
>  		 * Wa_22010931296:tgl[B0+],dg1[B0+]
> -		 * Wa_14010919138:rkl,dg1,adl-s
> +		 * Wa_14010919138:rkl,dg1,adl-s,adl-p
>  		 */
>  		wa_write_or(wal, GEN7_FF_THREAD_MODE,
>  			    GEN12_FF_TESSELATION_DOP_GATE_DISABLE);
>  =

>  		/*
> -		 * Wa_1606700617:tgl,dg1
> -		 * Wa_22010271021:tgl,rkl,dg1, adl-s
> +		 * Wa_1606700617:tgl,dg1,adl-p
> +		 * Wa_22010271021:tgl,rkl,dg1,adl-s,adl-p
> +		 * Wa_14010826681:tgl,dg1,rkl,adl-p
>  		 */
>  		wa_masked_en(wal,
>  			     GEN9_CS_DEBUG_MODE1,
>  			     FF_DOP_CLOCK_GATE_DISABLE);
>  	}
>  =

> -	if (IS_ALDERLAKE_S(i915) || IS_DG1_REVID(i915, DG1_REVID_A0, DG1_REVID_=
A0) ||
> +	if (IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) ||
> +	    IS_DG1_REVID(i915, DG1_REVID_A0, DG1_REVID_A0) ||
>  	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
> -		/* Wa_1409804808:tgl,rkl,dg1[a0],adl-s */
> +		/* Wa_1409804808:tgl,rkl,dg1[a0],adl-s,adl-p */
>  		wa_masked_en(wal, GEN7_ROW_CHICKEN2,
>  			     GEN12_PUSH_CONST_DEREF_HOLD_DIS);
>  =

>  		/*
>  		 * Wa_1409085225:tgl
> -		 * Wa_14010229206:tgl,rkl,dg1[a0],adl-s
> +		 * Wa_14010229206:tgl,rkl,dg1[a0],adl-s,adl-p
>  		 */
>  		wa_masked_en(wal, GEN9_ROW_CHICKEN4, GEN12_DISABLE_TDL_PUSH);
>  	}
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 7ce9537fa2c7..7b3893808723 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -7352,15 +7352,17 @@ static void icl_init_clock_gating(struct drm_i915=
_private *dev_priv)
>  static void gen12lp_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
>  	/* Wa_1409120013:tgl,rkl,adl_s,dg1 */
> -	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN,
> -			   ILK_DPFC_CHICKEN_COMP_DUMMY_PIXEL);
> +	if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv) ||
> +	    IS_ALDERLAKE_S(dev_priv) || IS_DG1(dev_priv))
> +		intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN,
> +				   ILK_DPFC_CHICKEN_COMP_DUMMY_PIXEL);
>  =

>  	/* Wa_1409825376:tgl (pre-prod)*/
>  	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B1))
>  		intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, intel_uncore=
_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_3) |
>  			   TGL_VRH_GATING_DIS);
>  =

> -	/* Wa_14011059788:tgl,rkl,adl_s,dg1 */
> +	/* Wa_14011059788:tgl,rkl,adl_s,dg1,adl-p */
>  	intel_uncore_rmw(&dev_priv->uncore, GEN10_DFR_RATIO_EN_AND_CHICKEN,
>  			 0, DFR_DISABLE);
>  =

> -- =

> 2.31.1
> =


-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
