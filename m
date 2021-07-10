Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C273C32E4
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Jul 2021 06:55:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95D556EAD1;
	Sat, 10 Jul 2021 04:55:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 187D16EAD1
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Jul 2021 04:55:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10040"; a="209775822"
X-IronPort-AV: E=Sophos;i="5.84,228,1620716400"; d="scan'208";a="209775822"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 21:55:20 -0700
X-IronPort-AV: E=Sophos;i="5.84,228,1620716400"; d="scan'208";a="488640790"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 21:55:18 -0700
Date: Fri, 9 Jul 2021 21:55:17 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20210710045517.GO951094@mdroper-desk1.amr.corp.intel.com>
References: <20210708211827.288601-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210708211827.288601-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915: Settle on "adl-x" in WA
 comments
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 08, 2021 at 02:18:21PM -0700, Jos=E9 Roberto de Souza wrote:
> From: Lucas De Marchi <lucas.demarchi@intel.com>
> =

> Most of the places are using this format so lets consolidate it.
> =

> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c         |  2 +-
>  drivers/gpu/drm/i915/display/intel_cursor.c        |  2 +-
>  drivers/gpu/drm/i915/display/intel_display.c       |  2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c           | 10 +++++-----
>  drivers/gpu/drm/i915/display/skl_universal_plane.c |  2 +-
>  drivers/gpu/drm/i915/gt/intel_workarounds.c        |  2 +-
>  drivers/gpu/drm/i915/intel_pm.c                    |  4 ++--
>  7 files changed, 12 insertions(+), 12 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index df2d8ce4a12f6..71067a62264de 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2878,7 +2878,7 @@ void intel_init_cdclk_hooks(struct drm_i915_private=
 *dev_priv)
>  		dev_priv->display.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
>  		dev_priv->display.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
>  		dev_priv->display.calc_voltage_level =3D tgl_calc_voltage_level;
> -		/* Wa_22011320316:adlp[a0] */
> +		/* Wa_22011320316:adl-p[a0] */
>  		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0))
>  			dev_priv->cdclk.table =3D adlp_a_step_cdclk_table;
>  		else
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/dr=
m/i915/display/intel_cursor.c
> index bb61e736de911..f61a25fb87e90 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -383,7 +383,7 @@ static u32 i9xx_cursor_ctl(const struct intel_crtc_st=
ate *crtc_state,
>  	if (plane_state->hw.rotation & DRM_MODE_ROTATE_180)
>  		cntl |=3D MCURSOR_ROTATE_180;
>  =

> -	/* Wa_22012358565:adlp */
> +	/* Wa_22012358565:adl-p */
>  	if (DISPLAY_VER(dev_priv) =3D=3D 13)
>  		cntl |=3D MCURSOR_ARB_SLOTS(1);
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 026c28c612f07..65ddb6ca16e67 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -975,7 +975,7 @@ void intel_enable_pipe(const struct intel_crtc_state =
*new_crtc_state)
>  		/* FIXME: assert CPU port conditions for SNB+ */
>  	}
>  =

> -	/* Wa_22012358565:adlp */
> +	/* Wa_22012358565:adl-p */
>  	if (DISPLAY_VER(dev_priv) =3D=3D 13)
>  		intel_de_rmw(dev_priv, PIPE_ARB_CTL(pipe),
>  			     0, PIPE_ARB_USE_PROG_SLOTS);
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 9643624fe160d..4dfe1dceb8635 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -545,7 +545,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_=
dp)
>  	val |=3D EDP_PSR2_FRAME_BEFORE_SU(intel_dp->psr.sink_sync_latency + 1);
>  	val |=3D intel_psr2_get_tp_time(intel_dp);
>  =

> -	/* Wa_22012278275:adlp */
> +	/* Wa_22012278275:adl-p */
>  	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_D1)) {
>  		static const u8 map[] =3D {
>  			2, /* 5 lines */
> @@ -733,7 +733,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *in=
tel_dp,
>  	if (!dc3co_is_pipe_port_compatible(intel_dp, crtc_state))
>  		return;
>  =

> -	/* Wa_16011303918:adlp */
> +	/* Wa_16011303918:adl-p */
>  	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0))
>  		return;
>  =

> @@ -965,7 +965,7 @@ static bool intel_psr2_config_valid(struct intel_dp *=
intel_dp,
>  		return false;
>  	}
>  =

> -	/* Wa_16011303918:adlp */
> +	/* Wa_16011303918:adl-p */
>  	if (crtc_state->vrr.enable &&
>  	    IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0)) {
>  		drm_dbg_kms(&dev_priv->drm,
> @@ -1160,7 +1160,7 @@ static void intel_psr_enable_source(struct intel_dp=
 *intel_dp)
>  			     intel_dp->psr.psr2_sel_fetch_enabled ?
>  			     IGNORE_PSR2_HW_TRACKING : 0);
>  =

> -	/* Wa_16011168373:adlp */
> +	/* Wa_16011168373:adl-p */
>  	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0) &&
>  	    intel_dp->psr.psr2_enabled)
>  		intel_de_rmw(dev_priv,
> @@ -1346,7 +1346,7 @@ static void intel_psr_disable_locked(struct intel_d=
p *intel_dp)
>  		intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
>  			     DIS_RAM_BYPASS_PSR2_MAN_TRACK, 0);
>  =

> -	/* Wa_16011168373:adlp */
> +	/* Wa_16011168373:adl-p */
>  	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0) &&
>  	    intel_dp->psr.psr2_enabled)
>  		intel_de_rmw(dev_priv,
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index c7263f4ff11d7..628b678d9a71c 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -926,7 +926,7 @@ static u32 skl_plane_ctl(const struct intel_crtc_stat=
e *crtc_state,
>  	else if (key->flags & I915_SET_COLORKEY_SOURCE)
>  		plane_ctl |=3D PLANE_CTL_KEY_ENABLE_SOURCE;
>  =

> -	/* Wa_22012358565:adlp */
> +	/* Wa_22012358565:adl-p */
>  	if (DISPLAY_VER(dev_priv) =3D=3D 13)
>  		plane_ctl |=3D adlp_plane_ctl_arb_slots(plane_state);
>  =

> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/dr=
m/i915/gt/intel_workarounds.c
> index d9a5a445ceecd..e5e3f820074a9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1078,7 +1078,7 @@ gen12_gt_workarounds_init(struct drm_i915_private *=
i915,
>  {
>  	icl_wa_init_mcr(i915, wal);
>  =

> -	/* Wa_14011060649:tgl,rkl,dg1,adls,adl-p */
> +	/* Wa_14011060649:tgl,rkl,dg1,adl-s,adl-p */
>  	wa_14011060649(i915, wal);
>  }
>  =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 5fdb96e7d2668..0cbb79452fcf9 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -7356,7 +7356,7 @@ static void icl_init_clock_gating(struct drm_i915_p=
rivate *dev_priv)
>  =

>  static void gen12lp_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
> -	/* Wa_1409120013:tgl,rkl,adl_s,dg1 */
> +	/* Wa_1409120013:tgl,rkl,adl-s,dg1 */
>  	if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv) ||
>  	    IS_ALDERLAKE_S(dev_priv) || IS_DG1(dev_priv))
>  		intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN,
> @@ -7367,7 +7367,7 @@ static void gen12lp_init_clock_gating(struct drm_i9=
15_private *dev_priv)
>  		intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, intel_uncore=
_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_3) |
>  			   TGL_VRH_GATING_DIS);
>  =

> -	/* Wa_14011059788:tgl,rkl,adl_s,dg1,adl-p */
> +	/* Wa_14011059788:tgl,rkl,adl-s,dg1,adl-p */
>  	intel_uncore_rmw(&dev_priv->uncore, GEN10_DFR_RATIO_EN_AND_CHICKEN,
>  			 0, DFR_DISABLE);
>  =

> -- =

> 2.32.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

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
