Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E9B3451A2
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 22:16:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BE9B6E5B2;
	Mon, 22 Mar 2021 21:16:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 106B66E5B2
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 21:16:33 +0000 (UTC)
IronPort-SDR: nbCvZ2sXoOn4xZDEIBn8ibPSqOEUn0JNG1eWCZf746UXGQ217ZPkxWFWYM9/caQyHksaZ/VPGj
 t+QtR4plia1Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9931"; a="254348230"
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="254348230"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 14:16:32 -0700
IronPort-SDR: Q9sdG9ZmHd3pr7fq7yDloxeNQ7K2Im4AKx7L7L3MlDduyAiaHf7jfCBzeyJxtIyKCT4Pbnzox0
 UTULaU/KfdnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="381114344"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 22 Mar 2021 14:16:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 22 Mar 2021 23:16:28 +0200
Date: Mon, 22 Mar 2021 23:16:28 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <YFkJLCzqK65y5Vfl@intel.com>
References: <20210322194810.3969336-1-matthew.d.roper@intel.com>
 <20210322195017.3969488-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210322195017.3969488-1-matthew.d.roper@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2.1 6/6] drm/i915/display: Simplify GLK
 display version tests
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
Cc: intel-gfx@lists.freedesktop.org,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 22, 2021 at 12:50:17PM -0700, Matt Roper wrote:
> GLK has always been a bit of a special case since it reports INTEL_GEN()
> as 9, but has version 10 display IP.  Now we can properly represent the
> display version as 10 and simplify the display generation tests
> throughout the display code.
> =

> Aside from manually adding the version to the glk_info structure, the
> rest of this patch is generated with a Coccinelle semantic patch.  Note
> that we also need to switch any code that matches gen10 today but *not*
> GLK to be CNL-specific:
> =

>         @@ expression dev_priv; @@
>         - DISPLAY_VER(dev_priv) > 9
>         + DISPLAY_VER(dev_priv) >=3D 10
> =

>         @@ expression dev_priv, E; @@
>         (
>         - DISPLAY_VER(dev_priv) >=3D 10 && E
>         + (DISPLAY_VER(dev_priv) >=3D 11 || IS_CANNONLAKE(dev_priv)) && E
>         |
>         - DISPLAY_VER(dev_priv) >=3D 10
>         + DISPLAY_VER(dev_priv) >=3D 11 || IS_CANNONLAKE(dev_priv)
>         |
>         - IS_DISPLAY_RANGE(dev_priv, 10, E)
>         + IS_DISPLAY_RANGE(dev_priv, 11, E) || IS_CANNONLAKE(dev_priv)
>         )
> =

>         @@ expression dev_priv, E, E2; @@
>         (
>         - (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv))
>         + IS_DISPLAY_VER(dev_priv, 10)
>         |
>         - E || IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv)
>         + E || IS_DISPLAY_VER(dev_priv, 10)
>         |
>         - (IS_GEMINILAKE(dev_priv) || IS_CANNONLAKE(dev_priv))
>         + IS_DISPLAY_VER(dev_priv, 10)
>         |
>         - IS_GEMINILAKE(dev_priv) || E || IS_CANNONLAKE(dev_priv)
>         + E || IS_DISPLAY_VER(dev_priv, 10)
>         |
>         - E || IS_GEMINILAKE(dev_priv) || E2 || IS_CANNONLAKE(dev_priv)
>         + E || E2 || IS_DISPLAY_VER(dev_priv, 10)

Sometimes I really wish cocci would have a way to say "these things can
go in any order" :/

Browsed through the resulting diff and it all looks correct to me now.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Now I just need to teach myself that glk =3D=3D display 10...

>         |
>         - (IS_DISPLAY_VER(dev_priv, 10) || IS_GEMINILAKE(dev_priv))
>         + IS_DISPLAY_VER(dev_priv, 10)
>         |
>         - (IS_GEMINILAKE(dev_priv) || IS_DISPLAY_VER(dev_priv, 10))
>         + IS_DISPLAY_VER(dev_priv, 10)
>         )
> =

>         @@ expression dev_priv; @@
>         - (IS_DISPLAY_VER(dev_priv, 9) && !IS_GEMINILAKE(dev_priv))
>         + IS_DISPLAY_VER(dev_priv, 9)
> =

>         @@ expression dev_priv; @@
>         (
>         - !(DISPLAY_VER(dev_priv) >=3D 11 || IS_DISPLAY_VER(dev_priv, 10))
>         + DISPLAY_VER(dev_priv) < 10
>         |
>         - (DISPLAY_VER(dev_priv) >=3D 11 || IS_DISPLAY_VER(dev_priv, 10))
>         + DISPLAY_VER(dev_priv) >=3D 10
>         )
> =

>         @@ expression dev_priv, E; @@
>         - E || DISPLAY_VER(dev_priv) >=3D 11 || IS_DISPLAY_VER(dev_priv, =
10)
>         + E || DISPLAY_VER(dev_priv) >=3D 10
> =

>         @@ expression dev_priv, E; @@
>         - (IS_DISPLAY_RANGE(dev_priv, 11, E) || IS_DISPLAY_VER(dev_priv, =
10))
>         + IS_DISPLAY_RANGE(dev_priv, 10, E)
> =

>         @@ expression dev_priv; @@
>         (
>         - DISPLAY_VER(dev_priv) >=3D 11 || IS_CANNONLAKE(dev_priv) || IS_=
GEN9_LP(dev_priv)
>         + DISPLAY_VER(dev_priv) >=3D 10 || IS_GEN9_LP(dev_priv)
>         |
>         - IS_GEN9_LP(dev_priv) || DISPLAY_VER(dev_priv) >=3D 11 || IS_CAN=
NONLAKE(dev_priv)
>         + IS_GEN9_LP(dev_priv) || DISPLAY_VER(dev_priv) >=3D 10
>         )
> =

>         @@ expression dev_priv, E; @@
>         - !(DISPLAY_VER(dev_priv) >=3D E)
>         + DISPLAY_VER(dev_priv) < E
> =

> v2:
>  - Convert gen10 conditions that don't include GLK into CNL conditions.
>    (Ville)
> =

> v3:
>  - Rework coccinelle rules so that "ver>=3D10" turns into "ver>=3D11||is_=
cnl." (Ville)
> =

> v3.1:
>  - Manually re-add the ".display.version =3D 10" to glk_info after
>    regenerating patch via Coccinelle.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic.c   |  7 ++--
>  drivers/gpu/drm/i915/display/intel_audio.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_bios.c     |  3 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 26 +++++++------
>  drivers/gpu/drm/i915/display/intel_color.c    |  8 ++--
>  drivers/gpu/drm/i915/display/intel_crtc.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  9 ++---
>  .../drm/i915/display/intel_display_debugfs.c  |  5 +--
>  .../drm/i915/display/intel_display_power.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |  6 +--
>  drivers/gpu/drm/i915/display/intel_fbc.c      |  4 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     |  1 -
>  drivers/gpu/drm/i915/display/intel_hdmi.c     | 13 +++----
>  drivers/gpu/drm/i915/display/intel_psr.c      |  7 ++--
>  drivers/gpu/drm/i915/display/intel_vdsc.c     |  6 +--
>  .../drm/i915/display/skl_universal_plane.c    | 37 +++++++++----------
>  drivers/gpu/drm/i915/i915_pci.c               |  1 +
>  17 files changed, 64 insertions(+), 75 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/dr=
m/i915/display/intel_atomic.c
> index 2b928795755e..4fa389fce8cb 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -332,8 +332,7 @@ static void intel_atomic_setup_scaler(struct intel_cr=
tc_scaler_state *scaler_sta
>  	    plane_state->hw.fb->format->is_yuv &&
>  	    plane_state->hw.fb->format->num_planes > 1) {
>  		struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> -		if (IS_DISPLAY_VER(dev_priv, 9) &&
> -		    !IS_GEMINILAKE(dev_priv)) {
> +		if (IS_DISPLAY_VER(dev_priv, 9)) {
>  			mode =3D SKL_PS_SCALER_MODE_NV12;
>  		} else if (icl_is_hdr_plane(dev_priv, plane->id)) {
>  			/*
> @@ -351,7 +350,7 @@ static void intel_atomic_setup_scaler(struct intel_cr=
tc_scaler_state *scaler_sta
>  			if (linked)
>  				mode |=3D PS_PLANE_Y_SEL(linked->id);
>  		}
> -	} else if (DISPLAY_VER(dev_priv) > 9 || IS_GEMINILAKE(dev_priv)) {
> +	} else if (DISPLAY_VER(dev_priv) >=3D 10) {
>  		mode =3D PS_SCALER_MODE_NORMAL;
>  	} else if (num_scalers_need =3D=3D 1 && intel_crtc->num_scalers > 1) {
>  		/*
> @@ -460,7 +459,7 @@ int intel_atomic_setup_scalers(struct drm_i915_privat=
e *dev_priv,
>  				 * isn't necessary to change between HQ and dyn mode
>  				 * on those platforms.
>  				 */
> -				if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +				if (DISPLAY_VER(dev_priv) >=3D 10)
>  					continue;
>  =

>  				plane =3D drm_plane_from_index(&dev_priv->drm, i);
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index 7ab9d1669f09..3ea20c857440 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -1022,7 +1022,7 @@ static unsigned long i915_audio_component_get_power=
(struct device *kdev)
>  		if (IS_GEMINILAKE(dev_priv))
>  			glk_force_audio_cdclk(dev_priv, true);
>  =

> -		if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +		if (DISPLAY_VER(dev_priv) >=3D 10)
>  			intel_de_write(dev_priv, AUD_PIN_BUF_CTL,
>  				       (intel_de_read(dev_priv, AUD_PIN_BUF_CTL) | AUD_PIN_BUF_ENABL=
E));
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 182db9de03c3..3d0c035b5e38 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -917,8 +917,7 @@ parse_psr(struct drm_i915_private *i915, const struct=
 bdb_header *bdb)
>  	 * Old decimal value is wake up time in multiples of 100 us.
>  	 */
>  	if (bdb->version >=3D 205 &&
> -	    (IS_GEN9_BC(i915) || IS_GEMINILAKE(i915) ||
> -	     DISPLAY_VER(i915) >=3D 10)) {
> +	    (IS_GEN9_BC(i915) || DISPLAY_VER(i915) >=3D 10)) {
>  		switch (psr_table->tp1_wakeup_time) {
>  		case 0:
>  			i915->vbt.psr.tp1_wakeup_time_us =3D 500;
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 4be848d0d156..3f43ad4d7362 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1397,7 +1397,7 @@ static void bxt_de_pll_readout(struct drm_i915_priv=
ate *dev_priv,
>  	 * CNL+ have the ratio directly in the PLL enable register, gen9lp had
>  	 * it in a separate PLL control register.
>  	 */
> -	if (DISPLAY_VER(dev_priv) >=3D 10)
> +	if (DISPLAY_VER(dev_priv) >=3D 11 || IS_CANNONLAKE(dev_priv))
>  		ratio =3D val & CNL_CDCLK_PLL_RATIO_MASK;
>  	else
>  		ratio =3D intel_de_read(dev_priv, BXT_DE_PLL_CTL) & BXT_DE_PLL_RATIO_M=
ASK;
> @@ -1433,7 +1433,7 @@ static void bxt_get_cdclk(struct drm_i915_private *=
dev_priv,
>  		break;
>  	case BXT_CDCLK_CD2X_DIV_SEL_1_5:
>  		drm_WARN(&dev_priv->drm,
> -			 IS_GEMINILAKE(dev_priv) || DISPLAY_VER(dev_priv) >=3D 10,
> +			 DISPLAY_VER(dev_priv) >=3D 10,
>  			 "Unsupported divider\n");
>  		div =3D 3;
>  		break;
> @@ -1441,7 +1441,8 @@ static void bxt_get_cdclk(struct drm_i915_private *=
dev_priv,
>  		div =3D 4;
>  		break;
>  	case BXT_CDCLK_CD2X_DIV_SEL_4:
> -		drm_WARN(&dev_priv->drm, DISPLAY_VER(dev_priv) >=3D 10,
> +		drm_WARN(&dev_priv->drm,
> +			 DISPLAY_VER(dev_priv) >=3D 11 || IS_CANNONLAKE(dev_priv),
>  			 "Unsupported divider\n");
>  		div =3D 8;
>  		break;
> @@ -1558,7 +1559,7 @@ static void bxt_set_cdclk(struct drm_i915_private *=
dev_priv,
>  	int ret;
>  =

>  	/* Inform power controller of upcoming frequency change. */
> -	if (DISPLAY_VER(dev_priv) >=3D 10)
> +	if (DISPLAY_VER(dev_priv) >=3D 11 || IS_CANNONLAKE(dev_priv))
>  		ret =3D skl_pcode_request(dev_priv, SKL_PCODE_CDCLK_CONTROL,
>  					SKL_CDCLK_PREPARE_FOR_CHANGE,
>  					SKL_CDCLK_READY_FOR_CHANGE,
> @@ -1591,7 +1592,7 @@ static void bxt_set_cdclk(struct drm_i915_private *=
dev_priv,
>  		break;
>  	case 3:
>  		drm_WARN(&dev_priv->drm,
> -			 IS_GEMINILAKE(dev_priv) || DISPLAY_VER(dev_priv) >=3D 10,
> +			 DISPLAY_VER(dev_priv) >=3D 10,
>  			 "Unsupported divider\n");
>  		divider =3D BXT_CDCLK_CD2X_DIV_SEL_1_5;
>  		break;
> @@ -1599,13 +1600,14 @@ static void bxt_set_cdclk(struct drm_i915_private=
 *dev_priv,
>  		divider =3D BXT_CDCLK_CD2X_DIV_SEL_2;
>  		break;
>  	case 8:
> -		drm_WARN(&dev_priv->drm, DISPLAY_VER(dev_priv) >=3D 10,
> +		drm_WARN(&dev_priv->drm,
> +			 DISPLAY_VER(dev_priv) >=3D 11 || IS_CANNONLAKE(dev_priv),
>  			 "Unsupported divider\n");
>  		divider =3D BXT_CDCLK_CD2X_DIV_SEL_4;
>  		break;
>  	}
>  =

> -	if (DISPLAY_VER(dev_priv) >=3D 10) {
> +	if (DISPLAY_VER(dev_priv) >=3D 11 || IS_CANNONLAKE(dev_priv)) {
>  		if (dev_priv->cdclk.hw.vco !=3D 0 &&
>  		    dev_priv->cdclk.hw.vco !=3D vco)
>  			cnl_cdclk_pll_disable(dev_priv);
> @@ -1636,7 +1638,7 @@ static void bxt_set_cdclk(struct drm_i915_private *=
dev_priv,
>  	if (pipe !=3D INVALID_PIPE)
>  		intel_wait_for_vblank(dev_priv, pipe);
>  =

> -	if (DISPLAY_VER(dev_priv) >=3D 10) {
> +	if (DISPLAY_VER(dev_priv) >=3D 11 || IS_CANNONLAKE(dev_priv)) {
>  		ret =3D sandybridge_pcode_write(dev_priv, SKL_PCODE_CDCLK_CONTROL,
>  					      cdclk_config->voltage_level);
>  	} else {
> @@ -1661,7 +1663,7 @@ static void bxt_set_cdclk(struct drm_i915_private *=
dev_priv,
>  =

>  	intel_update_cdclk(dev_priv);
>  =

> -	if (DISPLAY_VER(dev_priv) >=3D 10)
> +	if (DISPLAY_VER(dev_priv) >=3D 11 || IS_CANNONLAKE(dev_priv))
>  		/*
>  		 * Can't read out the voltage level :(
>  		 * Let's just assume everything is as expected.
> @@ -1998,7 +2000,7 @@ static int intel_pixel_rate_to_cdclk(const struct i=
ntel_crtc_state *crtc_state)
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
>  	int pixel_rate =3D crtc_state->pixel_rate;
>  =

> -	if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +	if (DISPLAY_VER(dev_priv) >=3D 10)
>  		return DIV_ROUND_UP(pixel_rate, 2);
>  	else if (IS_DISPLAY_VER(dev_priv, 9) ||
>  		 IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
> @@ -2048,7 +2050,7 @@ int intel_crtc_compute_min_cdclk(const struct intel=
_crtc_state *crtc_state)
>  	    crtc_state->has_audio &&
>  	    crtc_state->port_clock >=3D 540000 &&
>  	    crtc_state->lane_count =3D=3D 4) {
> -		if (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv)) {
> +		if (IS_DISPLAY_VER(dev_priv, 10)) {
>  			/* Display WA #1145: glk,cnl */
>  			min_cdclk =3D max(316800, min_cdclk);
>  		} else if (IS_DISPLAY_VER(dev_priv, 9) || IS_BROADWELL(dev_priv)) {
> @@ -2588,7 +2590,7 @@ static int intel_compute_max_dotclk(struct drm_i915=
_private *dev_priv)
>  {
>  	int max_cdclk_freq =3D dev_priv->max_cdclk_freq;
>  =

> -	if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +	if (DISPLAY_VER(dev_priv) >=3D 10)
>  		return 2 * max_cdclk_freq;
>  	else if (IS_DISPLAY_VER(dev_priv, 9) ||
>  		 IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm=
/i915/display/intel_color.c
> index 37e275509a36..c75d7124d57a 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -737,7 +737,7 @@ static void ivb_load_lut_ext_max(const struct intel_c=
rtc_state *crtc_state)
>  	 * ToDo: Extend the ABI to be able to program values
>  	 * from 3.0 to 7.0
>  	 */
> -	if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv)) {
> +	if (DISPLAY_VER(dev_priv) >=3D 10) {
>  		intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 0),
>  				    1 << 16);
>  		intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 1),
> @@ -1711,7 +1711,7 @@ int intel_color_get_gamma_bit_precision(const struc=
t intel_crtc_state *crtc_stat
>  	} else {
>  		if (DISPLAY_VER(dev_priv) >=3D 11)
>  			return icl_gamma_precision(crtc_state);
> -		else if (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv))
> +		else if (IS_DISPLAY_VER(dev_priv, 10))
>  			return glk_gamma_precision(crtc_state);
>  		else if (IS_IRONLAKE(dev_priv))
>  			return ilk_gamma_precision(crtc_state);
> @@ -2119,7 +2119,7 @@ void intel_color_init(struct intel_crtc *crtc)
>  	} else {
>  		if (DISPLAY_VER(dev_priv) >=3D 11)
>  			dev_priv->display.color_check =3D icl_color_check;
> -		else if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +		else if (DISPLAY_VER(dev_priv) >=3D 10)
>  			dev_priv->display.color_check =3D glk_color_check;
>  		else if (DISPLAY_VER(dev_priv) >=3D 7)
>  			dev_priv->display.color_check =3D ivb_color_check;
> @@ -2136,7 +2136,7 @@ void intel_color_init(struct intel_crtc *crtc)
>  		if (DISPLAY_VER(dev_priv) >=3D 11) {
>  			dev_priv->display.load_luts =3D icl_load_luts;
>  			dev_priv->display.read_luts =3D icl_read_luts;
> -		} else if (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv)) {
> +		} else if (IS_DISPLAY_VER(dev_priv, 10)) {
>  			dev_priv->display.load_luts =3D glk_load_luts;
>  			dev_priv->display.read_luts =3D glk_read_luts;
>  		} else if (DISPLAY_VER(dev_priv) >=3D 8) {
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/=
i915/display/intel_crtc.c
> index 004ace523970..39358076c05b 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -335,7 +335,7 @@ int intel_crtc_init(struct drm_i915_private *dev_priv=
, enum pipe pipe)
>  		dev_priv->plane_to_crtc_mapping[i9xx_plane] =3D crtc;
>  	}
>  =

> -	if (DISPLAY_VER(dev_priv) >=3D 10)
> +	if (DISPLAY_VER(dev_priv) >=3D 11 || IS_CANNONLAKE(dev_priv))
>  		drm_crtc_create_scaling_filter_property(&crtc->base,
>  						BIT(DRM_SCALING_FILTER_DEFAULT) |
>  						BIT(DRM_SCALING_FILTER_NEAREST_NEIGHBOR));
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 8a5014f4b3f4..a1fb5a101942 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3259,7 +3259,7 @@ static bool needs_nv12_wa(const struct intel_crtc_s=
tate *crtc_state)
>  		return false;
>  =

>  	/* WA Display #0827: Gen9:all */
> -	if (IS_DISPLAY_VER(dev_priv, 9) && !IS_GEMINILAKE(dev_priv))
> +	if (IS_DISPLAY_VER(dev_priv, 9))
>  		return true;
>  =

>  	return false;
> @@ -3989,7 +3989,7 @@ static void hsw_crtc_enable(struct intel_atomic_sta=
te *state,
>  	crtc->active =3D true;
>  =

>  	/* Display WA #1180: WaDisableScalarClockGating: glk, cnl */
> -	psl_clkgate_wa =3D (IS_GEMINILAKE(dev_priv) || IS_CANNONLAKE(dev_priv))=
 &&
> +	psl_clkgate_wa =3D IS_DISPLAY_VER(dev_priv, 10) &&
>  		new_crtc_state->pch_pfit.enabled;
>  	if (psl_clkgate_wa)
>  		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, true);
> @@ -13329,8 +13329,7 @@ static void intel_modeset_readout_hw_state(struct=
 drm_device *dev)
>  			 * use plane->min_cdclk() :(
>  			 */
>  			if (plane_state->uapi.visible && plane->min_cdclk) {
> -				if (crtc_state->double_wide ||
> -				    DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +				if (crtc_state->double_wide || DISPLAY_VER(dev_priv) >=3D 10)
>  					crtc_state->min_cdclk[plane->id] =3D
>  						DIV_ROUND_UP(crtc_state->pixel_rate, 2);
>  				else
> @@ -13421,7 +13420,7 @@ static void intel_early_display_was(struct drm_i9=
15_private *dev_priv)
>  	 * Display WA #1185 WaDisableDARBFClkGating:cnl,glk,icl,ehl,tgl
>  	 * Also known as Wa_14010480278.
>  	 */
> -	if (IS_DISPLAY_RANGE(dev_priv, 10, 12) || IS_GEMINILAKE(dev_priv))
> +	if (IS_DISPLAY_RANGE(dev_priv, 10, 12))
>  		intel_de_write(dev_priv, GEN9_CLKGATE_DIS_0,
>  			       intel_de_read(dev_priv, GEN9_CLKGATE_DIS_0) | DARBF_GATING_DIS=
);
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index 1666aa23092b..564509a4e666 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -2416,10 +2416,7 @@ int intel_connector_debugfs_add(struct drm_connect=
or *connector)
>  				    connector, &i915_hdcp_sink_capability_fops);
>  	}
>  =

> -	if (DISPLAY_VER(dev_priv) >=3D 10 &&
> -	    ((connector->connector_type =3D=3D DRM_MODE_CONNECTOR_DisplayPort &&
> -	      !to_intel_connector(connector)->mst_port) ||
> -	     connector->connector_type =3D=3D DRM_MODE_CONNECTOR_eDP))
> +	if ((DISPLAY_VER(dev_priv) >=3D 11 || IS_CANNONLAKE(dev_priv)) && ((con=
nector->connector_type =3D=3D DRM_MODE_CONNECTOR_DisplayPort && !to_intel_c=
onnector(connector)->mst_port) || connector->connector_type =3D=3D DRM_MODE=
_CONNECTOR_eDP))
>  		debugfs_create_file("i915_dsc_fec_support", S_IRUGO, root,
>  				    connector, &i915_dsc_fec_support_fops);
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 1eb16bad677a..cef177208e68 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -4537,7 +4537,7 @@ static u32 get_allowed_dc_mask(const struct drm_i91=
5_private *dev_priv,
>  		max_dc =3D 3;
>  	else if (DISPLAY_VER(dev_priv) >=3D 12)
>  		max_dc =3D 4;
> -	else if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEN9_BC(dev_priv))
> +	else if (DISPLAY_VER(dev_priv) >=3D 11 || IS_CANNONLAKE(dev_priv) || IS=
_GEN9_BC(dev_priv))
>  		max_dc =3D 2;
>  	else if (IS_GEN9_LP(dev_priv))
>  		max_dc =3D 1;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 4ba5e37f17d2..d81b8d238163 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -292,7 +292,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>  	drm_WARN_ON(&dev_priv->drm,
>  		    intel_dp->source_rates || intel_dp->num_source_rates);
>  =

> -	if (DISPLAY_VER(dev_priv) >=3D 10) {
> +	if (DISPLAY_VER(dev_priv) >=3D 11 || IS_CANNONLAKE(dev_priv)) {
>  		source_rates =3D cnl_rates;
>  		size =3D ARRAY_SIZE(cnl_rates);
>  		if (IS_DISPLAY_VER(dev_priv, 10))
> @@ -776,7 +776,7 @@ intel_dp_mode_valid(struct drm_connector *connector,
>  	 * Output bpp is stored in 6.4 format so right shift by 4 to get the
>  	 * integer value since we support only integer values of bpp.
>  	 */
> -	if ((DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv)) &&
> +	if (DISPLAY_VER(dev_priv) >=3D 10 &&
>  	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
>  		if (intel_dp_is_edp(intel_dp)) {
>  			dsc_max_output_bpp =3D
> @@ -2523,7 +2523,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
>  	intel_dp_set_common_rates(intel_dp);
>  =

>  	/* Read the eDP DSC DPCD registers */
> -	if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +	if (DISPLAY_VER(dev_priv) >=3D 10)
>  		intel_dp_get_dsc_sink_cap(intel_dp);
>  =

>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index 58f603066700..88e02ee3a631 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -653,7 +653,7 @@ static bool intel_fbc_hw_tracking_covers_screen(struc=
t intel_crtc *crtc)
>  	struct intel_fbc *fbc =3D &dev_priv->fbc;
>  	unsigned int effective_w, effective_h, max_w, max_h;
>  =

> -	if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv)) {
> +	if (DISPLAY_VER(dev_priv) >=3D 10) {
>  		max_w =3D 5120;
>  		max_h =3D 4096;
>  	} else if (DISPLAY_VER(dev_priv) >=3D 8 || IS_HASWELL(dev_priv)) {
> @@ -1036,7 +1036,7 @@ bool intel_fbc_pre_update(struct intel_atomic_state=
 *state,
>  		 * if at least one frame has already passed.
>  		 */
>  		if (fbc->activated &&
> -		    (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv)))
> +		    DISPLAY_VER(dev_priv) >=3D 10)
>  			need_vblank_wait =3D true;
>  		fbc->activated =3D false;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/=
i915/display/intel_hdcp.c
> index fe0bfabdbb5d..d8570e14fe60 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -2206,7 +2206,6 @@ static bool is_hdcp2_supported(struct drm_i915_priv=
ate *dev_priv)
>  		return false;
>  =

>  	return (DISPLAY_VER(dev_priv) >=3D 10 ||
> -		IS_GEMINILAKE(dev_priv) ||
>  		IS_KABYLAKE(dev_priv) ||
>  		IS_COFFEELAKE(dev_priv) ||
>  		IS_COMETLAKE(dev_priv));
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index ef766a7b6c71..d69f0a6dc26d 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -564,7 +564,7 @@ static u32 hsw_infoframes_enabled(struct intel_encode=
r *encoder,
>  		VIDEO_DIP_ENABLE_GCP_HSW | VIDEO_DIP_ENABLE_VS_HSW |
>  		VIDEO_DIP_ENABLE_GMP_HSW | VIDEO_DIP_ENABLE_SPD_HSW);
>  =

> -	if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +	if (DISPLAY_VER(dev_priv) >=3D 10)
>  		mask |=3D VIDEO_DIP_ENABLE_DRM_GLK;
>  =

>  	return val & mask;
> @@ -820,7 +820,7 @@ intel_hdmi_compute_drm_infoframe(struct intel_encoder=
 *encoder,
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	int ret;
>  =

> -	if (!(DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv)))
> +	if (DISPLAY_VER(dev_priv) < 10)
>  		return true;
>  =

>  	if (!crtc_state->has_infoframe)
> @@ -1775,7 +1775,7 @@ static int intel_hdmi_source_max_tmds_clock(struct =
intel_encoder *encoder)
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	int max_tmds_clock, vbt_max_tmds_clock;
>  =

> -	if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +	if (DISPLAY_VER(dev_priv) >=3D 10)
>  		max_tmds_clock =3D 594000;
>  	else if (DISPLAY_VER(dev_priv) >=3D 8 || IS_HASWELL(dev_priv))
>  		max_tmds_clock =3D 300000;
> @@ -2164,8 +2164,7 @@ int intel_hdmi_compute_config(struct intel_encoder =
*encoder,
>  =

>  	pipe_config->lane_count =3D 4;
>  =

> -	if (scdc->scrambling.supported && (DISPLAY_VER(dev_priv) >=3D 10 ||
> -					   IS_GEMINILAKE(dev_priv))) {
> +	if (scdc->scrambling.supported && DISPLAY_VER(dev_priv) >=3D 10) {
>  		if (scdc->scrambling.low_rates)
>  			pipe_config->hdmi_scrambling =3D true;
>  =

> @@ -2460,7 +2459,7 @@ intel_hdmi_add_properties(struct intel_hdmi *intel_=
hdmi, struct drm_connector *c
>  	intel_attach_hdmi_colorspace_property(connector);
>  	drm_connector_attach_content_type_property(connector);
>  =

> -	if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +	if (DISPLAY_VER(dev_priv) >=3D 10)
>  		drm_object_attach_property(&connector->base,
>  			connector->dev->mode_config.hdr_output_metadata_property, 0);
>  =

> @@ -2815,7 +2814,7 @@ void intel_hdmi_init_connector(struct intel_digital=
_port *dig_port,
>  	connector->doublescan_allowed =3D 0;
>  	connector->stereo_allowed =3D 1;
>  =

> -	if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +	if (DISPLAY_VER(dev_priv) >=3D 10)
>  		connector->ycbcr_420_allowed =3D true;
>  =

>  	intel_connector->polled =3D DRM_CONNECTOR_POLL_HPD;
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 4ab568f82ddf..d05f9aaa8c06 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -524,7 +524,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_=
dp)
>  	val =3D psr_compute_idle_frames(intel_dp) << EDP_PSR2_IDLE_FRAME_SHIFT;
>  =

>  	val |=3D EDP_PSR2_ENABLE | EDP_SU_TRACK_ENABLE;
> -	if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +	if (DISPLAY_VER(dev_priv) >=3D 10)
>  		val |=3D EDP_Y_COORDINATE_ENABLE;
>  =

>  	val |=3D EDP_PSR2_FRAME_BEFORE_SU(intel_dp->psr.sink_sync_latency + 1);
> @@ -765,7 +765,7 @@ static bool intel_psr2_config_valid(struct intel_dp *=
intel_dp,
>  		psr_max_h =3D 5120;
>  		psr_max_v =3D 3200;
>  		max_bpp =3D 30;
> -	} else if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv)) {
> +	} else if (DISPLAY_VER(dev_priv) >=3D 10) {
>  		psr_max_h =3D 4096;
>  		psr_max_v =3D 2304;
>  		max_bpp =3D 24;
> @@ -909,8 +909,7 @@ static void intel_psr_enable_source(struct intel_dp *=
intel_dp,
>  	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
>  		hsw_psr_setup_aux(intel_dp);
>  =

> -	if (intel_dp->psr.psr2_enabled && (IS_DISPLAY_VER(dev_priv, 9) &&
> -					   !IS_GEMINILAKE(dev_priv))) {
> +	if (intel_dp->psr.psr2_enabled && IS_DISPLAY_VER(dev_priv, 9)) {
>  		i915_reg_t reg =3D CHICKEN_TRANS(cpu_transcoder);
>  		u32 chicken =3D intel_de_read(dev_priv, reg);
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/=
i915/display/intel_vdsc.c
> index 1ccef159a9a0..5272bc80ce04 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -346,11 +346,7 @@ bool intel_dsc_source_support(const struct intel_crt=
c_state *crtc_state)
>  	if (DISPLAY_VER(i915) >=3D 12)
>  		return true;
>  =

> -	if (DISPLAY_VER(i915) >=3D 10 &&
> -	    (pipe !=3D PIPE_A ||
> -	     (cpu_transcoder =3D=3D TRANSCODER_EDP ||
> -	      cpu_transcoder =3D=3D TRANSCODER_DSI_0 ||
> -	      cpu_transcoder =3D=3D TRANSCODER_DSI_1)))
> +	if ((DISPLAY_VER(i915) >=3D 11 || IS_CANNONLAKE(i915)) && (pipe !=3D PI=
PE_A || (cpu_transcoder =3D=3D TRANSCODER_EDP || cpu_transcoder =3D=3D TRAN=
SCODER_DSI_0 || cpu_transcoder =3D=3D TRANSCODER_DSI_1)))
>  		return true;
>  =

>  	return false;
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index 89b2475a3d60..c6d7b6c054b5 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -294,7 +294,7 @@ skl_plane_ratio(const struct intel_crtc_state *crtc_s=
tate,
>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
>  =

>  	if (fb->format->cpp[0] =3D=3D 8) {
> -		if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv)) {
> +		if (DISPLAY_VER(dev_priv) >=3D 10) {
>  			*num =3D 10;
>  			*den =3D 8;
>  		} else {
> @@ -317,7 +317,7 @@ static int skl_plane_min_cdclk(const struct intel_crt=
c_state *crtc_state,
>  	skl_plane_ratio(crtc_state, plane_state, &num, &den);
>  =

>  	/* two pixels per clock on glk+ */
> -	if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +	if (DISPLAY_VER(dev_priv) >=3D 10)
>  		den *=3D 2;
>  =

>  	return DIV_ROUND_UP(pixel_rate * num, den);
> @@ -810,7 +810,7 @@ static u32 skl_plane_ctl_crtc(const struct intel_crtc=
_state *crtc_state)
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
>  	u32 plane_ctl =3D 0;
>  =

> -	if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +	if (DISPLAY_VER(dev_priv) >=3D 10)
>  		return plane_ctl;
>  =

>  	if (crtc_state->gamma_enable)
> @@ -849,7 +849,7 @@ static u32 skl_plane_ctl(const struct intel_crtc_stat=
e *crtc_state,
>  	plane_ctl |=3D skl_plane_ctl_tiling(fb->modifier);
>  	plane_ctl |=3D skl_plane_ctl_rotate(rotation & DRM_MODE_ROTATE_MASK);
>  =

> -	if (DISPLAY_VER(dev_priv) >=3D 10)
> +	if (DISPLAY_VER(dev_priv) >=3D 11 || IS_CANNONLAKE(dev_priv))
>  		plane_ctl |=3D cnl_plane_ctl_flip(rotation &
>  						DRM_MODE_REFLECT_MASK);
>  =

> @@ -976,7 +976,7 @@ skl_program_plane(struct intel_plane *plane,
>  =

>  	plane_ctl |=3D skl_plane_ctl_crtc(crtc_state);
>  =

> -	if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +	if (DISPLAY_VER(dev_priv) >=3D 10)
>  		plane_color_ctl =3D plane_state->color_ctl |
>  			glk_plane_color_ctl_crtc(crtc_state);
>  =

> @@ -1017,7 +1017,7 @@ skl_program_plane(struct intel_plane *plane,
>  		intel_de_write_fw(dev_priv, PLANE_CUS_CTL(pipe, plane_id),
>  				  plane_state->cus_ctl);
>  =

> -	if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +	if (DISPLAY_VER(dev_priv) >=3D 10)
>  		intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id),
>  				  plane_color_ctl);
>  =

> @@ -1222,7 +1222,7 @@ static int skl_plane_check_dst_coordinates(const st=
ruct intel_crtc_state *crtc_s
>  	 * than the cursor ending less than 4 pixels from the left edge of the
>  	 * screen may cause FIFO underflow and display corruption.
>  	 */
> -	if ((IS_GEMINILAKE(dev_priv) || IS_CANNONLAKE(dev_priv)) &&
> +	if (IS_DISPLAY_VER(dev_priv, 10) &&
>  	    (crtc_x + crtc_w < 4 || crtc_x > pipe_src_w - 4)) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "requested plane X %s position %d invalid (valid range %d-%d)\n",
> @@ -1262,7 +1262,7 @@ static int skl_plane_max_scale(struct drm_i915_priv=
ate *dev_priv,
>  	 * the best case.
>  	 * FIXME need to properly check this later.
>  	 */
> -	if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv) ||
> +	if (DISPLAY_VER(dev_priv) >=3D 10 ||
>  	    !intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
>  		return 0x30000 - 1;
>  	else
> @@ -1687,7 +1687,7 @@ static int skl_plane_check(struct intel_crtc_state =
*crtc_state,
>  =

>  	plane_state->ctl =3D skl_plane_ctl(crtc_state, plane_state);
>  =

> -	if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +	if (DISPLAY_VER(dev_priv) >=3D 10)
>  		plane_state->color_ctl =3D glk_plane_color_ctl(crtc_state,
>  							     plane_state);
>  =

> @@ -1719,7 +1719,7 @@ static bool skl_plane_has_planar(struct drm_i915_pr=
ivate *dev_priv,
>  	if (IS_SKYLAKE(dev_priv) || IS_BROXTON(dev_priv))
>  		return false;
>  =

> -	if (IS_DISPLAY_VER(dev_priv, 9) && !IS_GEMINILAKE(dev_priv) && pipe =3D=
=3D PIPE_C)
> +	if (IS_DISPLAY_VER(dev_priv, 9) && pipe =3D=3D PIPE_C)
>  		return false;
>  =

>  	if (plane_id !=3D PLANE_PRIMARY && plane_id !=3D PLANE_SPRITE0)
> @@ -1776,7 +1776,7 @@ static bool skl_plane_has_ccs(struct drm_i915_priva=
te *dev_priv,
>  	if (plane_id =3D=3D PLANE_CURSOR)
>  		return false;
>  =

> -	if (DISPLAY_VER(dev_priv) >=3D 10)
> +	if (DISPLAY_VER(dev_priv) >=3D 11 || IS_CANNONLAKE(dev_priv))
>  		return true;
>  =

>  	if (IS_GEMINILAKE(dev_priv))
> @@ -2013,7 +2013,7 @@ skl_universal_plane_create(struct drm_i915_private =
*dev_priv,
>  		plane->min_width =3D icl_plane_min_width;
>  		plane->max_width =3D icl_plane_max_width;
>  		plane->max_height =3D icl_plane_max_height;
> -	} else if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv)) {
> +	} else if (DISPLAY_VER(dev_priv) >=3D 10) {
>  		plane->max_width =3D glk_plane_max_width;
>  		plane->max_height =3D skl_plane_max_height;
>  	} else {
> @@ -2039,7 +2039,7 @@ skl_universal_plane_create(struct drm_i915_private =
*dev_priv,
>  	if (DISPLAY_VER(dev_priv) >=3D 11)
>  		formats =3D icl_get_plane_formats(dev_priv, pipe,
>  						plane_id, &num_formats);
> -	else if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +	else if (DISPLAY_VER(dev_priv) >=3D 10)
>  		formats =3D glk_get_plane_formats(dev_priv, pipe,
>  						plane_id, &num_formats);
>  	else
> @@ -2076,7 +2076,7 @@ skl_universal_plane_create(struct drm_i915_private =
*dev_priv,
>  		DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_90 |
>  		DRM_MODE_ROTATE_180 | DRM_MODE_ROTATE_270;
>  =

> -	if (DISPLAY_VER(dev_priv) >=3D 10)
> +	if (DISPLAY_VER(dev_priv) >=3D 11 || IS_CANNONLAKE(dev_priv))
>  		supported_rotations |=3D DRM_MODE_REFLECT_X;
>  =

>  	drm_plane_create_rotation_property(&plane->base,
> @@ -2085,7 +2085,7 @@ skl_universal_plane_create(struct drm_i915_private =
*dev_priv,
>  =

>  	supported_csc =3D BIT(DRM_COLOR_YCBCR_BT601) | BIT(DRM_COLOR_YCBCR_BT70=
9);
>  =

> -	if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +	if (DISPLAY_VER(dev_priv) >=3D 10)
>  		supported_csc |=3D BIT(DRM_COLOR_YCBCR_BT2020);
>  =

>  	drm_plane_create_color_properties(&plane->base,
> @@ -2106,7 +2106,7 @@ skl_universal_plane_create(struct drm_i915_private =
*dev_priv,
>  	if (DISPLAY_VER(dev_priv) >=3D 12)
>  		drm_plane_enable_fb_damage_clips(&plane->base);
>  =

> -	if (DISPLAY_VER(dev_priv) >=3D 10)
> +	if (DISPLAY_VER(dev_priv) >=3D 11 || IS_CANNONLAKE(dev_priv))
>  		drm_plane_create_scaling_filter_property(&plane->base,
>  						BIT(DRM_SCALING_FILTER_DEFAULT) |
>  						BIT(DRM_SCALING_FILTER_NEAREST_NEIGHBOR));
> @@ -2165,7 +2165,7 @@ skl_get_initial_plane_config(struct intel_crtc *crt=
c,
>  	else
>  		pixel_format =3D val & PLANE_CTL_FORMAT_MASK;
>  =

> -	if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv)) {
> +	if (DISPLAY_VER(dev_priv) >=3D 10) {
>  		alpha =3D intel_de_read(dev_priv,
>  				      PLANE_COLOR_CTL(pipe, plane_id));
>  		alpha &=3D PLANE_COLOR_ALPHA_MASK;
> @@ -2227,8 +2227,7 @@ skl_get_initial_plane_config(struct intel_crtc *crt=
c,
>  		break;
>  	}
>  =

> -	if (DISPLAY_VER(dev_priv) >=3D 10 &&
> -	    val & PLANE_CTL_FLIP_HORIZONTAL)
> +	if ((DISPLAY_VER(dev_priv) >=3D 11 || IS_CANNONLAKE(dev_priv)) && val &=
 PLANE_CTL_FLIP_HORIZONTAL)
>  		plane_config->rotation |=3D DRM_MODE_REFLECT_X;
>  =

>  	/* 90/270 degree rotation would require extra work */
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
> index d327882d6d4b..480553746794 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -723,6 +723,7 @@ static const struct intel_device_info bxt_info =3D {
>  static const struct intel_device_info glk_info =3D {
>  	GEN9_LP_FEATURES,
>  	PLATFORM(INTEL_GEMINILAKE),
> +	.display.version =3D 10,
>  	.ddb_size =3D 1024,
>  	GLK_COLORS,
>  };
> -- =

> 2.25.4
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
