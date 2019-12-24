Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB5E129C0A
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2019 01:23:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B41326E54C;
	Tue, 24 Dec 2019 00:23:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3E6F6E54C
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Dec 2019 00:23:22 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 16:23:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,349,1571727600"; d="scan'208";a="223111980"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga001.fm.intel.com with ESMTP; 23 Dec 2019 16:23:20 -0800
Date: Mon, 23 Dec 2019 16:23:20 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191224002320.GY2877816@mdroper-desk1.amr.corp.intel.com>
References: <20191224000528.10630-1-lucas.demarchi@intel.com>
 <20191224000528.10630-3-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191224000528.10630-3-lucas.demarchi@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v4 02/10] drm/i915: prefer 3-letter acronym
 for pineview
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 23, 2019 at 04:05:20PM -0800, Lucas De Marchi wrote:
> We are currently using a mix of platform name and acronym to name the
> functions. Let's prefer the acronym as it should be clear what platform
> it's about and it's shorter, so it doesn't go over 80 columns in a few
> cases. This converts pineview to pnv where appropriate.
> =

> v2: Add missing conversions in intel_pm.c (Matt Roper). While at it, fix
> missing blank lines between structs that would otherwise trigger
> checkpatch errors (Lucas)
> =

> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Acked-by: Jani Nikula <jani.nikula@linux.intel.com>
> Acked-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  8 ++--
>  drivers/gpu/drm/i915/intel_pm.c              | 41 ++++++++++++--------
>  2 files changed, 29 insertions(+), 20 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 652b8800d585..930362124808 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -370,7 +370,7 @@ static const struct intel_limit intel_limits_g4x_dual=
_channel_lvds =3D {
>  	},
>  };
>  =

> -static const struct intel_limit intel_limits_pineview_sdvo =3D {
> +static const struct intel_limit pnv_limits_sdvo =3D {
>  	.dot =3D { .min =3D 20000, .max =3D 400000},
>  	.vco =3D { .min =3D 1700000, .max =3D 3500000 },
>  	/* Pineview's Ncounter is a ring counter */
> @@ -385,7 +385,7 @@ static const struct intel_limit intel_limits_pineview=
_sdvo =3D {
>  		.p2_slow =3D 10, .p2_fast =3D 5 },
>  };
>  =

> -static const struct intel_limit intel_limits_pineview_lvds =3D {
> +static const struct intel_limit pnv_limits_lvds =3D {
>  	.dot =3D { .min =3D 20000, .max =3D 400000 },
>  	.vco =3D { .min =3D 1700000, .max =3D 3500000 },
>  	.n =3D { .min =3D 3, .max =3D 6 },
> @@ -8779,9 +8779,9 @@ static int pnv_crtc_compute_clock(struct intel_crtc=
 *crtc,
>  			DRM_DEBUG_KMS("using SSC reference clock of %d kHz\n", refclk);
>  		}
>  =

> -		limit =3D &intel_limits_pineview_lvds;
> +		limit =3D &pnv_limits_lvds;
>  	} else {
> -		limit =3D &intel_limits_pineview_sdvo;
> +		limit =3D &pnv_limits_sdvo;
>  	}
>  =

>  	if (!crtc_state->clock_set &&
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 31ec82337e4f..b55e9d2d2a83 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -140,7 +140,7 @@ static void glk_init_clock_gating(struct drm_i915_pri=
vate *dev_priv)
>  =

>  }
>  =

> -static void i915_pineview_get_mem_freq(struct drm_i915_private *dev_priv)
> +static void pnv_get_mem_freq(struct drm_i915_private *dev_priv)
>  {
>  	u32 tmp;
>  =

> @@ -549,34 +549,38 @@ static int i845_get_fifo_size(struct drm_i915_priva=
te *dev_priv,
>  }
>  =

>  /* Pineview has different values for various configs */
> -static const struct intel_watermark_params pineview_display_wm =3D {
> +static const struct intel_watermark_params pnv_display_wm =3D {
>  	.fifo_size =3D PINEVIEW_DISPLAY_FIFO,
>  	.max_wm =3D PINEVIEW_MAX_WM,
>  	.default_wm =3D PINEVIEW_DFT_WM,
>  	.guard_size =3D PINEVIEW_GUARD_WM,
>  	.cacheline_size =3D PINEVIEW_FIFO_LINE_SIZE,
>  };
> -static const struct intel_watermark_params pineview_display_hplloff_wm =
=3D {
> +
> +static const struct intel_watermark_params pnv_display_hplloff_wm =3D {
>  	.fifo_size =3D PINEVIEW_DISPLAY_FIFO,
>  	.max_wm =3D PINEVIEW_MAX_WM,
>  	.default_wm =3D PINEVIEW_DFT_HPLLOFF_WM,
>  	.guard_size =3D PINEVIEW_GUARD_WM,
>  	.cacheline_size =3D PINEVIEW_FIFO_LINE_SIZE,
>  };
> -static const struct intel_watermark_params pineview_cursor_wm =3D {
> +
> +static const struct intel_watermark_params pnv_cursor_wm =3D {
>  	.fifo_size =3D PINEVIEW_CURSOR_FIFO,
>  	.max_wm =3D PINEVIEW_CURSOR_MAX_WM,
>  	.default_wm =3D PINEVIEW_CURSOR_DFT_WM,
>  	.guard_size =3D PINEVIEW_CURSOR_GUARD_WM,
>  	.cacheline_size =3D PINEVIEW_FIFO_LINE_SIZE,
>  };
> -static const struct intel_watermark_params pineview_cursor_hplloff_wm =
=3D {
> +
> +static const struct intel_watermark_params pnv_cursor_hplloff_wm =3D {
>  	.fifo_size =3D PINEVIEW_CURSOR_FIFO,
>  	.max_wm =3D PINEVIEW_CURSOR_MAX_WM,
>  	.default_wm =3D PINEVIEW_CURSOR_DFT_WM,
>  	.guard_size =3D PINEVIEW_CURSOR_GUARD_WM,
>  	.cacheline_size =3D PINEVIEW_FIFO_LINE_SIZE,
>  };
> +
>  static const struct intel_watermark_params i965_cursor_wm_info =3D {
>  	.fifo_size =3D I965_CURSOR_FIFO,
>  	.max_wm =3D I965_CURSOR_MAX_WM,
> @@ -584,6 +588,7 @@ static const struct intel_watermark_params i965_curso=
r_wm_info =3D {
>  	.guard_size =3D 2,
>  	.cacheline_size =3D I915_FIFO_LINE_SIZE,
>  };
> +
>  static const struct intel_watermark_params i945_wm_info =3D {
>  	.fifo_size =3D I945_FIFO_SIZE,
>  	.max_wm =3D I915_MAX_WM,
> @@ -591,6 +596,7 @@ static const struct intel_watermark_params i945_wm_in=
fo =3D {
>  	.guard_size =3D 2,
>  	.cacheline_size =3D I915_FIFO_LINE_SIZE,
>  };
> +
>  static const struct intel_watermark_params i915_wm_info =3D {
>  	.fifo_size =3D I915_FIFO_SIZE,
>  	.max_wm =3D I915_MAX_WM,
> @@ -598,6 +604,7 @@ static const struct intel_watermark_params i915_wm_in=
fo =3D {
>  	.guard_size =3D 2,
>  	.cacheline_size =3D I915_FIFO_LINE_SIZE,
>  };
> +
>  static const struct intel_watermark_params i830_a_wm_info =3D {
>  	.fifo_size =3D I855GM_FIFO_SIZE,
>  	.max_wm =3D I915_MAX_WM,
> @@ -605,6 +612,7 @@ static const struct intel_watermark_params i830_a_wm_=
info =3D {
>  	.guard_size =3D 2,
>  	.cacheline_size =3D I830_FIFO_LINE_SIZE,
>  };
> +
>  static const struct intel_watermark_params i830_bc_wm_info =3D {
>  	.fifo_size =3D I855GM_FIFO_SIZE,
>  	.max_wm =3D I915_MAX_WM/2,
> @@ -612,6 +620,7 @@ static const struct intel_watermark_params i830_bc_wm=
_info =3D {
>  	.guard_size =3D 2,
>  	.cacheline_size =3D I830_FIFO_LINE_SIZE,
>  };
> +
>  static const struct intel_watermark_params i845_wm_info =3D {
>  	.fifo_size =3D I830_FIFO_SIZE,
>  	.max_wm =3D I915_MAX_WM,
> @@ -848,7 +857,7 @@ static struct intel_crtc *single_enabled_crtc(struct =
drm_i915_private *dev_priv)
>  	return enabled;
>  }
>  =

> -static void pineview_update_wm(struct intel_crtc *unused_crtc)
> +static void pnv_update_wm(struct intel_crtc *unused_crtc)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(unused_crtc->base.dev);
>  	struct intel_crtc *crtc;
> @@ -876,8 +885,8 @@ static void pineview_update_wm(struct intel_crtc *unu=
sed_crtc)
>  		int clock =3D adjusted_mode->crtc_clock;
>  =

>  		/* Display SR */
> -		wm =3D intel_calculate_wm(clock, &pineview_display_wm,
> -					pineview_display_wm.fifo_size,
> +		wm =3D intel_calculate_wm(clock, &pnv_display_wm,
> +					pnv_display_wm.fifo_size,
>  					cpp, latency->display_sr);
>  		reg =3D I915_READ(DSPFW1);
>  		reg &=3D ~DSPFW_SR_MASK;
> @@ -886,8 +895,8 @@ static void pineview_update_wm(struct intel_crtc *unu=
sed_crtc)
>  		DRM_DEBUG_KMS("DSPFW1 register is %x\n", reg);
>  =

>  		/* cursor SR */
> -		wm =3D intel_calculate_wm(clock, &pineview_cursor_wm,
> -					pineview_display_wm.fifo_size,
> +		wm =3D intel_calculate_wm(clock, &pnv_cursor_wm,
> +					pnv_display_wm.fifo_size,
>  					4, latency->cursor_sr);
>  		reg =3D I915_READ(DSPFW3);
>  		reg &=3D ~DSPFW_CURSOR_SR_MASK;
> @@ -895,8 +904,8 @@ static void pineview_update_wm(struct intel_crtc *unu=
sed_crtc)
>  		I915_WRITE(DSPFW3, reg);
>  =

>  		/* Display HPLL off SR */
> -		wm =3D intel_calculate_wm(clock, &pineview_display_hplloff_wm,
> -					pineview_display_hplloff_wm.fifo_size,
> +		wm =3D intel_calculate_wm(clock, &pnv_display_hplloff_wm,
> +					pnv_display_hplloff_wm.fifo_size,
>  					cpp, latency->display_hpll_disable);
>  		reg =3D I915_READ(DSPFW3);
>  		reg &=3D ~DSPFW_HPLL_SR_MASK;
> @@ -904,8 +913,8 @@ static void pineview_update_wm(struct intel_crtc *unu=
sed_crtc)
>  		I915_WRITE(DSPFW3, reg);
>  =

>  		/* cursor HPLL off SR */
> -		wm =3D intel_calculate_wm(clock, &pineview_cursor_hplloff_wm,
> -					pineview_display_hplloff_wm.fifo_size,
> +		wm =3D intel_calculate_wm(clock, &pnv_cursor_hplloff_wm,
> +					pnv_display_hplloff_wm.fifo_size,
>  					4, latency->cursor_hpll_disable);
>  		reg =3D I915_READ(DSPFW3);
>  		reg &=3D ~DSPFW_HPLL_CURSOR_MASK;
> @@ -7180,7 +7189,7 @@ void intel_init_pm(struct drm_i915_private *dev_pri=
v)
>  {
>  	/* For cxsr */
>  	if (IS_PINEVIEW(dev_priv))
> -		i915_pineview_get_mem_freq(dev_priv);
> +		pnv_get_mem_freq(dev_priv);
>  	else if (IS_GEN(dev_priv, 5))
>  		i915_ironlake_get_mem_freq(dev_priv);
>  =

> @@ -7238,7 +7247,7 @@ void intel_init_pm(struct drm_i915_private *dev_pri=
v)
>  			intel_set_memory_cxsr(dev_priv, false);
>  			dev_priv->display.update_wm =3D NULL;
>  		} else
> -			dev_priv->display.update_wm =3D pineview_update_wm;
> +			dev_priv->display.update_wm =3D pnv_update_wm;
>  	} else if (IS_GEN(dev_priv, 4)) {
>  		dev_priv->display.update_wm =3D i965_update_wm;
>  	} else if (IS_GEN(dev_priv, 3)) {
> -- =

> 2.24.0
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
