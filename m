Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6E73396F0
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Mar 2021 19:52:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 535726E5BD;
	Fri, 12 Mar 2021 18:52:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D18E6E5BD
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Mar 2021 18:52:14 +0000 (UTC)
IronPort-SDR: iLQnYoo0km0Aa3KMFXW2mUWL25DvUWrLwnBXWzLVpwteX3G4oCGIG2chLha3lykilJSrqv9hKl
 2pTFPrgzfBnA==
X-IronPort-AV: E=McAfee;i="6000,8403,9921"; a="176002456"
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="176002456"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 10:52:13 -0800
IronPort-SDR: nPO1KPxhtKvFTM1Zdgl+ZHqRimR86OEG9AsvzA0CHLRV4QU8AQKHLvHYfSYM4t8PRJQWaDyEDd
 J2ZRkrr9eHAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="372754497"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 12 Mar 2021 10:52:11 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Mar 2021 20:52:10 +0200
Date: Fri, 12 Mar 2021 20:52:10 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <YEu4WoLdawjqt9lx@intel.com>
References: <20210311223632.3191939-1-matthew.d.roper@intel.com>
 <20210311223632.3191939-7-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210311223632.3191939-7-matthew.d.roper@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 06/56] drm/i915/display: Simplify GLK
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 11, 2021 at 02:35:42PM -0800, Matt Roper wrote:
> GLK has always been a bit of a special case since it reports INTEL_GEN()
> as 9, but has version 10 display IP.  Now we can properly represent the
> display version as 10 and simplify the display generation tests
> throughout the display code.

There are differences between GLK and CNL, and I suspect we just
check for gen=3D=3D10/gen>=3D10/etc. in some cases where GLK should be
excluded. So I think in order to not break GLK we need to first
convert all those to use IS_CNL.

> =

> Aside from manually adding the version to the glk_info structure, the
> rest of this patch is generated with a Coccinelle semantic patch:
> =

>         @@ expression dev_priv; @@
>         - DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv)
>         + DISPLAY_VER(dev_priv) >=3D 10
> =

>         @@ expression dev_priv, E; @@
>         - E || DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv)
>         + E || DISPLAY_VER(dev_priv) >=3D 10
> =

>         @@ expression dev_priv; @@
>         - IS_GEMINILAKE(dev_priv) || DISPLAY_VER(dev_priv) >=3D 10
>         + DISPLAY_VER(dev_priv) >=3D 10
> =

>         @@ expression dev_priv; @@
>         - IS_GEMINILAKE(dev_priv) || DISPLAY_VER(dev_priv) =3D=3D 10
>         + DISPLAY_VER(dev_priv) =3D=3D 10
> =

>         @@ expression dev_priv; @@
>         - DISPLAY_VER(dev_priv) > 9 || IS_GEMINILAKE(dev_priv)
>         + DISPLAY_VER(dev_priv) > 9
> =

>         @@ expression dev_priv; @@
>         - IS_GEMINILAKE(dev_priv) || IS_CANNONLAKE(dev_priv)
>         + DISPLAY_VER(dev_priv) =3D=3D 10
> =

>         @@ expression dev_priv; @@
>         - IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv)
>         + DISPLAY_VER(dev_priv) =3D=3D 10
> =

>         @@ expression dev_priv; @@
>         - DISPLAY_VER(dev_priv) < 10 && !IS_GEMINILAKE(dev_priv)
>         + DISPLAY_VER(dev_priv) < 10
> =

>         @@ expression dev_priv; @@
>         - (DISPLAY_VER(dev_priv) =3D=3D 9) && !IS_GEMINILAKE(dev_priv)
>         + DISPLAY_VER(dev_priv) =3D=3D 9
> =

> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic.c   |  7 ++---
>  drivers/gpu/drm/i915/display/intel_audio.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 10 +++----
>  drivers/gpu/drm/i915/display/intel_color.c    |  8 +++---
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  7 ++---
>  drivers/gpu/drm/i915/display/intel_dp.c       |  4 +--
>  drivers/gpu/drm/i915/display/intel_fbc.c      |  4 +--
>  drivers/gpu/drm/i915/display/intel_hdcp.c     |  1 -
>  drivers/gpu/drm/i915/display/intel_hdmi.c     | 13 ++++-----
>  drivers/gpu/drm/i915/display/intel_psr.c      |  7 ++---
>  .../drm/i915/display/skl_universal_plane.c    | 28 +++++++++----------
>  drivers/gpu/drm/i915/i915_pci.c               |  1 +
>  13 files changed, 45 insertions(+), 49 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/dr=
m/i915/display/intel_atomic.c
> index 8b1ecd86a688..d0b5414127df 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -332,8 +332,7 @@ static void intel_atomic_setup_scaler(struct intel_cr=
tc_scaler_state *scaler_sta
>  	    plane_state->hw.fb->format->is_yuv &&
>  	    plane_state->hw.fb->format->num_planes > 1) {
>  		struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> -		if (DISPLAY_VER(dev_priv) =3D=3D 9 &&
> -		    !IS_GEMINILAKE(dev_priv)) {
> +		if (DISPLAY_VER(dev_priv) =3D=3D 9) {
>  			mode =3D SKL_PS_SCALER_MODE_NV12;
>  		} else if (icl_is_hdr_plane(dev_priv, plane->id)) {
>  			/*
> @@ -351,7 +350,7 @@ static void intel_atomic_setup_scaler(struct intel_cr=
tc_scaler_state *scaler_sta
>  			if (linked)
>  				mode |=3D PS_PLANE_Y_SEL(linked->id);
>  		}
> -	} else if (DISPLAY_VER(dev_priv) > 9 || IS_GEMINILAKE(dev_priv)) {
> +	} else if (DISPLAY_VER(dev_priv) > 9) {
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
> index eefe211ed958..2d21a7796598 100644
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
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 640b6423f23b..1c7cdd17f89a 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
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
> @@ -1592,7 +1592,7 @@ static void bxt_set_cdclk(struct drm_i915_private *=
dev_priv,
>  		break;
>  	case 3:
>  		drm_WARN(&dev_priv->drm,
> -			 IS_GEMINILAKE(dev_priv) || DISPLAY_VER(dev_priv) >=3D 10,
> +			 DISPLAY_VER(dev_priv) >=3D 10,
>  			 "Unsupported divider\n");
>  		divider =3D BXT_CDCLK_CD2X_DIV_SEL_1_5;
>  		break;
> @@ -2000,7 +2000,7 @@ static int intel_pixel_rate_to_cdclk(const struct i=
ntel_crtc_state *crtc_state)
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
>  	int pixel_rate =3D crtc_state->pixel_rate;
>  =

> -	if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +	if (DISPLAY_VER(dev_priv) >=3D 10)
>  		return DIV_ROUND_UP(pixel_rate, 2);
>  	else if (DISPLAY_VER(dev_priv) =3D=3D 9 ||
>  		 IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
> @@ -2050,7 +2050,7 @@ int intel_crtc_compute_min_cdclk(const struct intel=
_crtc_state *crtc_state)
>  	    crtc_state->has_audio &&
>  	    crtc_state->port_clock >=3D 540000 &&
>  	    crtc_state->lane_count =3D=3D 4) {
> -		if (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv)) {
> +		if (DISPLAY_VER(dev_priv) =3D=3D 10) {
>  			/* Display WA #1145: glk,cnl */
>  			min_cdclk =3D max(316800, min_cdclk);
>  		} else if (DISPLAY_VER(dev_priv) =3D=3D 9 || IS_BROADWELL(dev_priv)) {
> @@ -2590,7 +2590,7 @@ static int intel_compute_max_dotclk(struct drm_i915=
_private *dev_priv)
>  {
>  	int max_cdclk_freq =3D dev_priv->max_cdclk_freq;
>  =

> -	if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +	if (DISPLAY_VER(dev_priv) >=3D 10)
>  		return 2 * max_cdclk_freq;
>  	else if (DISPLAY_VER(dev_priv) =3D=3D 9 ||
>  		 IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm=
/i915/display/intel_color.c
> index 558f21c6803b..c7cf7360309c 100644
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
> +		else if (DISPLAY_VER(dev_priv) =3D=3D 10)
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
> +		} else if (DISPLAY_VER(dev_priv) =3D=3D 10) {
>  			dev_priv->display.load_luts =3D glk_load_luts;
>  			dev_priv->display.read_luts =3D glk_read_luts;
>  		} else if (DISPLAY_VER(dev_priv) >=3D 8) {
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 3e641b36bbd3..9e677220f276 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -174,7 +174,7 @@ static void intel_wait_ddi_buf_active(struct drm_i915=
_private *dev_priv,
>  				      enum port port)
>  {
>  	/* Wait > 518 usecs for DDI_BUF_CTL to be non idle */
> -	if (DISPLAY_VER(dev_priv) < 10 && !IS_GEMINILAKE(dev_priv)) {
> +	if (DISPLAY_VER(dev_priv) < 10) {
>  		usleep_range(518, 1000);
>  		return;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 933b9d791691..10cedd4d6828 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3257,7 +3257,7 @@ static bool needs_nv12_wa(const struct intel_crtc_s=
tate *crtc_state)
>  		return false;
>  =

>  	/* WA Display #0827: Gen9:all */
> -	if (DISPLAY_VER(dev_priv) =3D=3D 9 && !IS_GEMINILAKE(dev_priv))
> +	if (DISPLAY_VER(dev_priv) =3D=3D 9)
>  		return true;
>  =

>  	return false;
> @@ -3987,7 +3987,7 @@ static void hsw_crtc_enable(struct intel_atomic_sta=
te *state,
>  	crtc->active =3D true;
>  =

>  	/* Display WA #1180: WaDisableScalarClockGating: glk, cnl */
> -	psl_clkgate_wa =3D (IS_GEMINILAKE(dev_priv) || IS_CANNONLAKE(dev_priv))=
 &&
> +	psl_clkgate_wa =3D (DISPLAY_VER(dev_priv) =3D=3D 10) &&
>  		new_crtc_state->pch_pfit.enabled;
>  	if (psl_clkgate_wa)
>  		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, true);
> @@ -13327,8 +13327,7 @@ static void intel_modeset_readout_hw_state(struct=
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
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 04bf536f6a12..95c1f25e1bf3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -823,7 +823,7 @@ intel_dp_mode_valid(struct drm_connector *connector,
>  	 * Output bpp is stored in 6.4 format so right shift by 4 to get the
>  	 * integer value since we support only integer values of bpp.
>  	 */
> -	if ((DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv)) &&
> +	if ((DISPLAY_VER(dev_priv) >=3D 10) &&
>  	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
>  		if (intel_dp_is_edp(intel_dp)) {
>  			dsc_max_output_bpp =3D
> @@ -3681,7 +3681,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
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
> index f888e1c6ff7a..2abb03cf0e71 100644
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
> +		    (DISPLAY_VER(dev_priv) >=3D 10))
>  			need_vblank_wait =3D true;
>  		fbc->activated =3D false;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/=
i915/display/intel_hdcp.c
> index d418fe796263..f13704562049 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -2177,7 +2177,6 @@ static bool is_hdcp2_supported(struct drm_i915_priv=
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
> index b122c46a5657..4f285c7d54c4 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -583,7 +583,7 @@ static u32 hsw_infoframes_enabled(struct intel_encode=
r *encoder,
>  		VIDEO_DIP_ENABLE_GCP_HSW | VIDEO_DIP_ENABLE_VS_HSW |
>  		VIDEO_DIP_ENABLE_GMP_HSW | VIDEO_DIP_ENABLE_SPD_HSW);
>  =

> -	if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +	if (DISPLAY_VER(dev_priv) >=3D 10)
>  		mask |=3D VIDEO_DIP_ENABLE_DRM_GLK;
>  =

>  	return val & mask;
> @@ -839,7 +839,7 @@ intel_hdmi_compute_drm_infoframe(struct intel_encoder=
 *encoder,
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	int ret;
>  =

> -	if (!(DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv)))
> +	if (!(DISPLAY_VER(dev_priv) >=3D 10))
>  		return true;
>  =

>  	if (!crtc_state->has_infoframe)
> @@ -2157,7 +2157,7 @@ static int intel_hdmi_source_max_tmds_clock(struct =
intel_encoder *encoder)
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	int max_tmds_clock, vbt_max_tmds_clock;
>  =

> -	if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +	if (DISPLAY_VER(dev_priv) >=3D 10)
>  		max_tmds_clock =3D 594000;
>  	else if (DISPLAY_VER(dev_priv) >=3D 8 || IS_HASWELL(dev_priv))
>  		max_tmds_clock =3D 300000;
> @@ -2546,8 +2546,7 @@ int intel_hdmi_compute_config(struct intel_encoder =
*encoder,
>  =

>  	pipe_config->lane_count =3D 4;
>  =

> -	if (scdc->scrambling.supported && (DISPLAY_VER(dev_priv) >=3D 10 ||
> -					   IS_GEMINILAKE(dev_priv))) {
> +	if (scdc->scrambling.supported && (DISPLAY_VER(dev_priv) >=3D 10)) {
>  		if (scdc->scrambling.low_rates)
>  			pipe_config->hdmi_scrambling =3D true;
>  =

> @@ -2965,7 +2964,7 @@ intel_hdmi_add_properties(struct intel_hdmi *intel_=
hdmi, struct drm_connector *c
>  	intel_attach_hdmi_colorspace_property(connector);
>  	drm_connector_attach_content_type_property(connector);
>  =

> -	if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +	if (DISPLAY_VER(dev_priv) >=3D 10)
>  		drm_object_attach_property(&connector->base,
>  			connector->dev->mode_config.hdr_output_metadata_property, 0);
>  =

> @@ -3320,7 +3319,7 @@ void intel_hdmi_init_connector(struct intel_digital=
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
> index f6d1bc3269b2..e71d2dd6a4a5 100644
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

> -	if (intel_dp->psr.psr2_enabled && (DISPLAY_VER(dev_priv) =3D=3D 9 &&
> -					   !IS_GEMINILAKE(dev_priv))) {
> +	if (intel_dp->psr.psr2_enabled && (DISPLAY_VER(dev_priv) =3D=3D 9)) {
>  		i915_reg_t reg =3D CHICKEN_TRANS(cpu_transcoder);
>  		u32 chicken =3D intel_de_read(dev_priv, reg);
>  =

> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index 91e5d8a5d4a9..f24aaadec70d 100644
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
> @@ -834,7 +834,7 @@ static u32 skl_plane_ctl(const struct intel_crtc_stat=
e *crtc_state,
>  =

>  	plane_ctl =3D PLANE_CTL_ENABLE;
>  =

> -	if (DISPLAY_VER(dev_priv) < 10 && !IS_GEMINILAKE(dev_priv)) {
> +	if (DISPLAY_VER(dev_priv) < 10) {
>  		plane_ctl |=3D skl_plane_ctl_alpha(plane_state);
>  		plane_ctl |=3D PLANE_CTL_PLANE_GAMMA_DISABLE;
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
> +	if ((DISPLAY_VER(dev_priv) =3D=3D 10) &&
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

> -	if (DISPLAY_VER(dev_priv) =3D=3D 9 && !IS_GEMINILAKE(dev_priv) && pipe =
=3D=3D PIPE_C)
> +	if (DISPLAY_VER(dev_priv) =3D=3D 9 && pipe =3D=3D PIPE_C)
>  		return false;
>  =

>  	if (plane_id !=3D PLANE_PRIMARY && plane_id !=3D PLANE_SPRITE0)
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
> @@ -2038,7 +2038,7 @@ skl_universal_plane_create(struct drm_i915_private =
*dev_priv,
>  	if (DISPLAY_VER(dev_priv) >=3D 11)
>  		formats =3D icl_get_plane_formats(dev_priv, pipe,
>  						plane_id, &num_formats);
> -	else if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> +	else if (DISPLAY_VER(dev_priv) >=3D 10)
>  		formats =3D glk_get_plane_formats(dev_priv, pipe,
>  						plane_id, &num_formats);
>  	else
> @@ -2084,7 +2084,7 @@ skl_universal_plane_create(struct drm_i915_private =
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
> @@ -2164,7 +2164,7 @@ skl_get_initial_plane_config(struct intel_crtc *crt=
c,
>  	else
>  		pixel_format =3D val & PLANE_CTL_FORMAT_MASK;
>  =

> -	if (DISPLAY_VER(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv)) {
> +	if (DISPLAY_VER(dev_priv) >=3D 10) {
>  		alpha =3D intel_de_read(dev_priv,
>  				      PLANE_COLOR_CTL(pipe, plane_id));
>  		alpha &=3D PLANE_COLOR_ALPHA_MASK;
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
> index 3543611cf0fc..5bfd94e2cc6f 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -723,6 +723,7 @@ static const struct intel_device_info bxt_info =3D {
>  static const struct intel_device_info glk_info =3D {
>  	GEN9_LP_FEATURES,
>  	PLATFORM(INTEL_GEMINILAKE),
> +	.display_ver =3D 10,
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
