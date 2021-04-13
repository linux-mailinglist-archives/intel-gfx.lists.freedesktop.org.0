Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5293135DB59
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 11:35:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A5656E2ED;
	Tue, 13 Apr 2021 09:35:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C85C06E29D
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 09:35:25 +0000 (UTC)
IronPort-SDR: jJA9ng0haME46Xf7kuMdSs6EDA7hIoi2n+hWjpQou8USs3QeLGoWhJS5arMKW2n3uaDvgCyAin
 TPnNP7FE591w==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="193938163"
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; d="scan'208";a="193938163"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 02:35:25 -0700
IronPort-SDR: eBkukK7pW4u7h6K5CDjrsdO3AKhHTddsv3dy7yiWyXrGFQFYKbfJGG+Qk/WcY9sw+Lw4KzPgda
 fe0hBjYiDHng==
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; d="scan'208";a="424178984"
Received: from alinapar-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.36.253])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 02:35:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210413051002.92589-4-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210413051002.92589-1-lucas.demarchi@intel.com>
 <20210413051002.92589-4-lucas.demarchi@intel.com>
Date: Tue, 13 Apr 2021 12:35:17 +0300
Message-ID: <87zgy2h6i2.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 03/12] drm/i915/display: rename display
 version macros
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 12 Apr 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> While converting the rest of the driver to use GRAPHICS_VER() and
> MEDIA_VER(), following what was done for display, some discussions went
> back on what we did for display:
>
> 	1) Why is the == comparison special that deserves a separate
> 	macro instead of just getting the version and comparing directly
> 	like is done for >, >=, <=?
>
> 	2) IS_DISPLAY_RANGE() is weird in that it omits the "_VER" for
> 	brevity. If we remove the current users of IS_DISPLAY_VER(), we
> 	could actually repurpose it for a range check
>
> With (1) there could be an advantage if we used gen_mask since multiple
> conditionals be combined by the compiler in a single and instruction and
> check the result. However a) INTEL_GEN() doesn't use the mask since it
> would make the code bigger everywhere else and b) in the cases it made
> sense, it also made sense to convert to the _RANGE() variant.
>
> So here we repurpose IS_DISPLAY_VER() to work with a [ from, to ] range
> like was the IS_DISPLAY_RANGE() and convert the current IS_DISPLAY_VER()
> users to use == and != operators. Aside from the definition changes,
> this was done by the following semantic patch:
>
> 	@@ expression dev_priv, E1; @@
> 	- !IS_DISPLAY_VER(dev_priv, E1)
> 	+ DISPLAY_VER(dev_priv) != E1
>
> 	@@ expression dev_priv, E1; @@
> 	- IS_DISPLAY_VER(dev_priv, E1)
> 	+ DISPLAY_VER(dev_priv) == E1
>
> 	@@ expression dev_priv, from, until; @@
> 	- IS_DISPLAY_RANGE(dev_priv, from, until)
> 	+ IS_DISPLAY_VER(dev_priv, from, until)
>

Thanks for summing up the discussion in a delightfully clear commit
message!

I like the change.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/i9xx_plane.c     |  2 +-
>  drivers/gpu/drm/i915/display/icl_dsi.c        |  4 +-
>  drivers/gpu/drm/i915/display/intel_atomic.c   |  2 +-
>  drivers/gpu/drm/i915/display/intel_audio.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_bios.c     |  4 +-
>  drivers/gpu/drm/i915/display/intel_bw.c       |  8 +--
>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 18 +++---
>  drivers/gpu/drm/i915/display/intel_color.c    |  6 +-
>  drivers/gpu/drm/i915/display/intel_crt.c      |  6 +-
>  drivers/gpu/drm/i915/display/intel_crtc.c     |  4 +-
>  drivers/gpu/drm/i915/display/intel_csr.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 26 ++++-----
>  .../drm/i915/display/intel_ddi_buf_trans.c    |  8 +--
>  drivers/gpu/drm/i915/display/intel_display.c  | 56 +++++++++----------
>  .../drm/i915/display/intel_display_power.c    | 26 ++++-----
>  drivers/gpu/drm/i915/display/intel_dp.c       |  8 +--
>  drivers/gpu/drm/i915/display/intel_dpll.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_fb.c       |  2 +-
>  drivers/gpu/drm/i915/display/intel_fbc.c      | 20 +++----
>  .../drm/i915/display/intel_fifo_underrun.c    |  4 +-
>  drivers/gpu/drm/i915/display/intel_gmbus.c    |  4 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |  4 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_overlay.c  | 10 ++--
>  drivers/gpu/drm/i915/display/intel_panel.c    |  8 +--
>  drivers/gpu/drm/i915/display/intel_pipe_crc.c |  4 +-
>  drivers/gpu/drm/i915/display/intel_psr.c      |  4 +-
>  drivers/gpu/drm/i915/display/intel_tc.c       |  6 +-
>  drivers/gpu/drm/i915/display/intel_tv.c       |  6 +-
>  .../drm/i915/display/skl_universal_plane.c    |  8 +--
>  drivers/gpu/drm/i915/i915_drv.h               |  3 +-
>  drivers/gpu/drm/i915/i915_irq.c               | 10 ++--
>  drivers/gpu/drm/i915/intel_pm.c               | 48 ++++++++--------
>  35 files changed, 165 insertions(+), 166 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
> index 456374ddf37a..80da0e3571a4 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> @@ -144,7 +144,7 @@ static bool i9xx_plane_has_windowing(struct intel_plane *plane)
>  		return i9xx_plane == PLANE_B;
>  	else if (DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv))
>  		return false;
> -	else if (IS_DISPLAY_VER(dev_priv, 4))
> +	else if (DISPLAY_VER(dev_priv) == 4)
>  		return i9xx_plane == PLANE_C;
>  	else
>  		return i9xx_plane == PLANE_B ||
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 9282978060b0..37e2d93d064c 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -592,7 +592,7 @@ gen11_dsi_setup_dphy_timings(struct intel_encoder *encoder,
>  	 * a value '0' inside TA_PARAM_REGISTERS otherwise
>  	 * leave all fields at HW default values.
>  	 */
> -	if (IS_DISPLAY_VER(dev_priv, 11)) {
> +	if (DISPLAY_VER(dev_priv) == 11) {
>  		if (afe_clk(encoder, crtc_state) <= 800000) {
>  			for_each_dsi_port(port, intel_dsi->ports) {
>  				tmp = intel_de_read(dev_priv,
> @@ -1158,7 +1158,7 @@ gen11_dsi_enable_port_and_phy(struct intel_encoder *encoder,
>  	gen11_dsi_configure_transcoder(encoder, crtc_state);
>  
>  	/* Step 4l: Gate DDI clocks */
> -	if (IS_DISPLAY_VER(dev_priv, 11))
> +	if (DISPLAY_VER(dev_priv) == 11)
>  		gen11_dsi_gate_clocks(encoder);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
> index 4fa389fce8cb..45feaaddab26 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -332,7 +332,7 @@ static void intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_sta
>  	    plane_state->hw.fb->format->is_yuv &&
>  	    plane_state->hw.fb->format->num_planes > 1) {
>  		struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
> -		if (IS_DISPLAY_VER(dev_priv, 9)) {
> +		if (DISPLAY_VER(dev_priv) == 9) {
>  			mode = SKL_PS_SCALER_MODE_NV12;
>  		} else if (icl_is_hdr_plane(dev_priv, plane->id)) {
>  			/*
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 9fe3a25710b8..b40e929a167e 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -591,7 +591,7 @@ static void enable_audio_dsc_wa(struct intel_encoder *encoder,
>  
>  	val = intel_de_read(i915, AUD_CONFIG_BE);
>  
> -	if (IS_DISPLAY_VER(i915, 11))
> +	if (DISPLAY_VER(i915) == 11)
>  		val |= HBLANK_EARLY_ENABLE_ICL(pipe);
>  	else if (DISPLAY_VER(i915) >= 12)
>  		val |= HBLANK_EARLY_ENABLE_TGL(pipe);
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index ea4837d485a1..befab891a6b9 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -610,7 +610,7 @@ parse_sdvo_device_mapping(struct drm_i915_private *i915)
>  	 * Only parse SDVO mappings on gens that could have SDVO. This isn't
>  	 * accurate and doesn't have to be, as long as it's not too strict.
>  	 */
> -	if (!IS_DISPLAY_RANGE(i915, 3, 7)) {
> +	if (!IS_DISPLAY_VER(i915, 3, 7)) {
>  		drm_dbg_kms(&i915->drm, "Skipping SDVO device mapping\n");
>  		return;
>  	}
> @@ -1659,7 +1659,7 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
>  	} else if (IS_ROCKETLAKE(i915) && INTEL_PCH_TYPE(i915) == PCH_TGP) {
>  		ddc_pin_map = rkl_pch_tgp_ddc_pin_map;
>  		n_entries = ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);
> -	} else if (HAS_PCH_TGP(i915) && IS_DISPLAY_VER(i915, 9)) {
> +	} else if (HAS_PCH_TGP(i915) && DISPLAY_VER(i915) == 9) {
>  		ddc_pin_map = gen9bc_tgp_ddc_pin_map;
>  		n_entries = ARRAY_SIZE(gen9bc_tgp_ddc_pin_map);
>  	} else if (INTEL_PCH_TYPE(i915) >= PCH_ICP) {
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 584ab5ce4106..20dbc3759d27 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -77,7 +77,7 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
>  
>  	qi->num_points = dram_info->num_qgv_points;
>  
> -	if (IS_DISPLAY_VER(dev_priv, 12))
> +	if (DISPLAY_VER(dev_priv) == 12)
>  		switch (dram_info->type) {
>  		case INTEL_DRAM_DDR4:
>  			qi->t_bl = 4;
> @@ -89,7 +89,7 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
>  			qi->t_bl = 16;
>  			break;
>  		}
> -	else if (IS_DISPLAY_VER(dev_priv, 11))
> +	else if (DISPLAY_VER(dev_priv) == 11)
>  		qi->t_bl = dev_priv->dram_info.type == INTEL_DRAM_DDR4 ? 4 : 8;
>  
>  	if (drm_WARN_ON(&dev_priv->drm,
> @@ -271,9 +271,9 @@ void intel_bw_init_hw(struct drm_i915_private *dev_priv)
>  		icl_get_bw_info(dev_priv, &adls_sa_info);
>  	else if (IS_ROCKETLAKE(dev_priv))
>  		icl_get_bw_info(dev_priv, &rkl_sa_info);
> -	else if (IS_DISPLAY_VER(dev_priv, 12))
> +	else if (DISPLAY_VER(dev_priv) == 12)
>  		icl_get_bw_info(dev_priv, &tgl_sa_info);
> -	else if (IS_DISPLAY_VER(dev_priv, 11))
> +	else if (DISPLAY_VER(dev_priv) == 11)
>  		icl_get_bw_info(dev_priv, &icl_sa_info);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 489acf6b5cf1..1f0bd23bb883 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1801,7 +1801,7 @@ void intel_cdclk_init_hw(struct drm_i915_private *i915)
>  {
>  	if (DISPLAY_VER(i915) >= 10 || IS_BROXTON(i915))
>  		bxt_cdclk_init_hw(i915);
> -	else if (IS_DISPLAY_VER(i915, 9))
> +	else if (DISPLAY_VER(i915) == 9)
>  		skl_cdclk_init_hw(i915);
>  }
>  
> @@ -1816,7 +1816,7 @@ void intel_cdclk_uninit_hw(struct drm_i915_private *i915)
>  {
>  	if (DISPLAY_VER(i915) >= 10 || IS_BROXTON(i915))
>  		bxt_cdclk_uninit_hw(i915);
> -	else if (IS_DISPLAY_VER(i915, 9))
> +	else if (DISPLAY_VER(i915) == 9)
>  		skl_cdclk_uninit_hw(i915);
>  }
>  
> @@ -2004,7 +2004,7 @@ static int intel_pixel_rate_to_cdclk(const struct intel_crtc_state *crtc_state)
>  
>  	if (DISPLAY_VER(dev_priv) >= 10)
>  		return DIV_ROUND_UP(pixel_rate, 2);
> -	else if (IS_DISPLAY_VER(dev_priv, 9) ||
> +	else if (DISPLAY_VER(dev_priv) == 9 ||
>  		 IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
>  		return pixel_rate;
>  	else if (IS_CHERRYVIEW(dev_priv))
> @@ -2052,10 +2052,10 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
>  	    crtc_state->has_audio &&
>  	    crtc_state->port_clock >= 540000 &&
>  	    crtc_state->lane_count == 4) {
> -		if (IS_DISPLAY_VER(dev_priv, 10)) {
> +		if (DISPLAY_VER(dev_priv) == 10) {
>  			/* Display WA #1145: glk,cnl */
>  			min_cdclk = max(316800, min_cdclk);
> -		} else if (IS_DISPLAY_VER(dev_priv, 9) || IS_BROADWELL(dev_priv)) {
> +		} else if (DISPLAY_VER(dev_priv) == 9 || IS_BROADWELL(dev_priv)) {
>  			/* Display WA #1144: skl,bxt */
>  			min_cdclk = max(432000, min_cdclk);
>  		}
> @@ -2594,7 +2594,7 @@ static int intel_compute_max_dotclk(struct drm_i915_private *dev_priv)
>  
>  	if (DISPLAY_VER(dev_priv) >= 10)
>  		return 2 * max_cdclk_freq;
> -	else if (IS_DISPLAY_VER(dev_priv, 9) ||
> +	else if (DISPLAY_VER(dev_priv) == 9 ||
>  		 IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
>  		return max_cdclk_freq;
>  	else if (IS_CHERRYVIEW(dev_priv))
> @@ -2631,7 +2631,7 @@ void intel_update_max_cdclk(struct drm_i915_private *dev_priv)
>  		dev_priv->max_cdclk_freq = 316800;
>  	} else if (IS_BROXTON(dev_priv)) {
>  		dev_priv->max_cdclk_freq = 624000;
> -	} else if (IS_DISPLAY_VER(dev_priv, 9)) {
> +	} else if (DISPLAY_VER(dev_priv) == 9) {
>  		u32 limit = intel_de_read(dev_priv, SKL_DFSM) & SKL_DFSM_CDCLK_LIMIT_MASK;
>  		int max_cdclk, vco;
>  
> @@ -2889,7 +2889,7 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
>  			dev_priv->cdclk.table = glk_cdclk_table;
>  		else
>  			dev_priv->cdclk.table = bxt_cdclk_table;
> -	} else if (IS_DISPLAY_VER(dev_priv, 9)) {
> +	} else if (DISPLAY_VER(dev_priv) == 9) {
>  		dev_priv->display.bw_calc_min_cdclk = skl_bw_calc_min_cdclk;
>  		dev_priv->display.set_cdclk = skl_set_cdclk;
>  		dev_priv->display.modeset_calc_cdclk = skl_modeset_calc_cdclk;
> @@ -2912,7 +2912,7 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
>  
>  	if (DISPLAY_VER(dev_priv) >= 10 || IS_BROXTON(dev_priv))
>  		dev_priv->display.get_cdclk = bxt_get_cdclk;
> -	else if (IS_DISPLAY_VER(dev_priv, 9))
> +	else if (DISPLAY_VER(dev_priv) == 9)
>  		dev_priv->display.get_cdclk = skl_get_cdclk;
>  	else if (IS_BROADWELL(dev_priv))
>  		dev_priv->display.get_cdclk = bdw_get_cdclk;
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index c75d7124d57a..5fae69879adf 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -225,7 +225,7 @@ static bool ilk_csc_limited_range(const struct intel_crtc_state *crtc_state)
>  	 */
>  	return crtc_state->limited_color_range &&
>  		(IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv) ||
> -		 IS_DISPLAY_RANGE(dev_priv, 9, 10));
> +		 IS_DISPLAY_VER(dev_priv, 9, 10));
>  }
>  
>  static void ilk_csc_convert_ctm(const struct intel_crtc_state *crtc_state,
> @@ -1711,7 +1711,7 @@ int intel_color_get_gamma_bit_precision(const struct intel_crtc_state *crtc_stat
>  	} else {
>  		if (DISPLAY_VER(dev_priv) >= 11)
>  			return icl_gamma_precision(crtc_state);
> -		else if (IS_DISPLAY_VER(dev_priv, 10))
> +		else if (DISPLAY_VER(dev_priv) == 10)
>  			return glk_gamma_precision(crtc_state);
>  		else if (IS_IRONLAKE(dev_priv))
>  			return ilk_gamma_precision(crtc_state);
> @@ -2136,7 +2136,7 @@ void intel_color_init(struct intel_crtc *crtc)
>  		if (DISPLAY_VER(dev_priv) >= 11) {
>  			dev_priv->display.load_luts = icl_load_luts;
>  			dev_priv->display.read_luts = icl_read_luts;
> -		} else if (IS_DISPLAY_VER(dev_priv, 10)) {
> +		} else if (DISPLAY_VER(dev_priv) == 10) {
>  			dev_priv->display.load_luts = glk_load_luts;
>  			dev_priv->display.read_luts = glk_read_luts;
>  		} else if (DISPLAY_VER(dev_priv) >= 8) {
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> index 580d652c3276..c85092eaa5c2 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -356,7 +356,7 @@ intel_crt_mode_valid(struct drm_connector *connector,
>  		 * DAC limit supposedly 355 MHz.
>  		 */
>  		max_clock = 270000;
> -	else if (IS_DISPLAY_RANGE(dev_priv, 3, 4))
> +	else if (IS_DISPLAY_VER(dev_priv, 3, 4))
>  		max_clock = 400000;
>  	else
>  		max_clock = 350000;
> @@ -711,7 +711,7 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
>  	/* Set the border color to purple. */
>  	intel_uncore_write(uncore, bclrpat_reg, 0x500050);
>  
> -	if (!IS_DISPLAY_VER(dev_priv, 2)) {
> +	if (DISPLAY_VER(dev_priv) != 2) {
>  		u32 pipeconf = intel_uncore_read(uncore, pipeconf_reg);
>  		intel_uncore_write(uncore,
>  				   pipeconf_reg,
> @@ -1047,7 +1047,7 @@ void intel_crt_init(struct drm_i915_private *dev_priv)
>  	else
>  		crt->base.pipe_mask = ~0;
>  
> -	if (IS_DISPLAY_VER(dev_priv, 2))
> +	if (DISPLAY_VER(dev_priv) == 2)
>  		connector->interlace_allowed = 0;
>  	else
>  		connector->interlace_allowed = 1;
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index 39358076c05b..95ff1707b4bd 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -302,11 +302,11 @@ int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe)
>  		if (IS_CHERRYVIEW(dev_priv) ||
>  		    IS_VALLEYVIEW(dev_priv) || IS_G4X(dev_priv))
>  			funcs = &g4x_crtc_funcs;
> -		else if (IS_DISPLAY_VER(dev_priv, 4))
> +		else if (DISPLAY_VER(dev_priv) == 4)
>  			funcs = &i965_crtc_funcs;
>  		else if (IS_I945GM(dev_priv) || IS_I915GM(dev_priv))
>  			funcs = &i915gm_crtc_funcs;
> -		else if (IS_DISPLAY_VER(dev_priv, 3))
> +		else if (DISPLAY_VER(dev_priv) == 3)
>  			funcs = &i915_crtc_funcs;
>  		else
>  			funcs = &i8xx_crtc_funcs;
> diff --git a/drivers/gpu/drm/i915/display/intel_csr.c b/drivers/gpu/drm/i915/display/intel_csr.c
> index e54521d7b931..26a3c6787e9e 100644
> --- a/drivers/gpu/drm/i915/display/intel_csr.c
> +++ b/drivers/gpu/drm/i915/display/intel_csr.c
> @@ -709,7 +709,7 @@ void intel_csr_ucode_init(struct drm_i915_private *dev_priv)
>  		csr->fw_path = TGL_CSR_PATH;
>  		csr->required_version = TGL_CSR_VERSION_REQUIRED;
>  		csr->max_fw_size = GEN12_CSR_MAX_FW_SIZE;
> -	} else if (IS_DISPLAY_VER(dev_priv, 11)) {
> +	} else if (DISPLAY_VER(dev_priv) == 11) {
>  		csr->fw_path = ICL_CSR_PATH;
>  		csr->required_version = ICL_CSR_VERSION_REQUIRED;
>  		csr->max_fw_size = ICL_CSR_MAX_FW_SIZE;
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index deef24da00b5..6bb2d2bb7239 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -113,7 +113,7 @@ void intel_prepare_dp_ddi_buffers(struct intel_encoder *encoder,
>  							      &n_entries);
>  
>  	/* If we're boosting the current, set bit 31 of trans1 */
> -	if (IS_DISPLAY_VER(dev_priv, 9) && !IS_BROXTON(dev_priv) &&
> +	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv) &&
>  	    intel_bios_encoder_dp_boost_level(encoder->devdata))
>  		iboost_bit = DDI_BUF_BALANCE_LEG_ENABLE;
>  
> @@ -147,7 +147,7 @@ static void intel_prepare_hdmi_ddi_buffers(struct intel_encoder *encoder,
>  		level = n_entries - 1;
>  
>  	/* If we're boosting the current, set bit 31 of trans1 */
> -	if (IS_DISPLAY_VER(dev_priv, 9) && !IS_BROXTON(dev_priv) &&
> +	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv) &&
>  	    intel_bios_encoder_hdmi_boost_level(encoder->devdata))
>  		iboost_bit = DDI_BUF_BALANCE_LEG_ENABLE;
>  
> @@ -473,7 +473,7 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
>  		temp |= DDI_PORT_WIDTH(crtc_state->lane_count);
>  	}
>  
> -	if (IS_DISPLAY_RANGE(dev_priv, 8, 10) &&
> +	if (IS_DISPLAY_VER(dev_priv, 8, 10) &&
>  	    crtc_state->master_transcoder != INVALID_TRANSCODER) {
>  		u8 master_select =
>  			bdw_trans_port_sync_master_select(crtc_state->master_transcoder);
> @@ -548,7 +548,7 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
>  
>  	ctl &= ~TRANS_DDI_FUNC_ENABLE;
>  
> -	if (IS_DISPLAY_RANGE(dev_priv, 8, 10))
> +	if (IS_DISPLAY_VER(dev_priv, 8, 10))
>  		ctl &= ~(TRANS_DDI_PORT_SYNC_ENABLE |
>  			 TRANS_DDI_PORT_SYNC_MASTER_SELECT_MASK);
>  
> @@ -978,7 +978,7 @@ static u8 intel_ddi_dp_voltage_max(struct intel_dp *intel_dp,
>  			tgl_get_combo_buf_trans(encoder, crtc_state, &n_entries);
>  		else
>  			tgl_get_dkl_buf_trans(encoder, crtc_state, &n_entries);
> -	} else if (IS_DISPLAY_VER(dev_priv, 11)) {
> +	} else if (DISPLAY_VER(dev_priv) == 11) {
>  		if (IS_PLATFORM(dev_priv, INTEL_JASPERLAKE))
>  			jsl_get_combo_buf_trans(encoder, crtc_state, &n_entries);
>  		else if (IS_PLATFORM(dev_priv, INTEL_ELKHARTLAKE))
> @@ -1557,7 +1557,7 @@ hsw_set_signal_levels(struct intel_dp *intel_dp,
>  	intel_dp->DP &= ~DDI_BUF_EMP_MASK;
>  	intel_dp->DP |= signal_levels;
>  
> -	if (IS_DISPLAY_VER(dev_priv, 9) && !IS_BROXTON(dev_priv))
> +	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv))
>  		skl_ddi_set_iboost(encoder, crtc_state, level);
>  
>  	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
> @@ -3094,7 +3094,7 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
>  
>  	if (DISPLAY_VER(dev_priv) >= 12)
>  		tgl_ddi_vswing_sequence(encoder, crtc_state, level);
> -	else if (IS_DISPLAY_VER(dev_priv, 11))
> +	else if (DISPLAY_VER(dev_priv) == 11)
>  		icl_ddi_vswing_sequence(encoder, crtc_state, level);
>  	else if (IS_CANNONLAKE(dev_priv))
>  		cnl_ddi_vswing_sequence(encoder, crtc_state, level);
> @@ -3103,11 +3103,11 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
>  	else
>  		intel_prepare_hdmi_ddi_buffers(encoder, level);
>  
> -	if (IS_DISPLAY_VER(dev_priv, 9) && !IS_BROXTON(dev_priv))
> +	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv))
>  		skl_ddi_set_iboost(encoder, crtc_state, level);
>  
>  	/* Display WA #1143: skl,kbl,cfl */
> -	if (IS_DISPLAY_VER(dev_priv, 9) && !IS_BROXTON(dev_priv)) {
> +	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv)) {
>  		/*
>  		 * For some reason these chicken bits have been
>  		 * stuffed into a transcoder register, event though
> @@ -4590,7 +4590,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
>  	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
>  		/* BXT/GLK have fixed PLL->port mapping */
>  		encoder->get_config = bxt_ddi_get_config;
> -	} else if (IS_DISPLAY_VER(dev_priv, 9)) {
> +	} else if (DISPLAY_VER(dev_priv) == 9) {
>  		encoder->enable_clock = skl_ddi_enable_clock;
>  		encoder->disable_clock = skl_ddi_disable_clock;
>  		encoder->is_clock_enabled = skl_ddi_is_clock_enabled;
> @@ -4610,11 +4610,11 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
>  		encoder->hpd_pin = tgl_hpd_pin(dev_priv, port);
>  	else if (IS_JSL_EHL(dev_priv))
>  		encoder->hpd_pin = ehl_hpd_pin(dev_priv, port);
> -	else if (IS_DISPLAY_VER(dev_priv, 11))
> +	else if (DISPLAY_VER(dev_priv) == 11)
>  		encoder->hpd_pin = icl_hpd_pin(dev_priv, port);
> -	else if (IS_DISPLAY_VER(dev_priv, 10))
> +	else if (DISPLAY_VER(dev_priv) == 10)
>  		encoder->hpd_pin = cnl_hpd_pin(dev_priv, port);
> -	else if (IS_DISPLAY_VER(dev_priv, 9))
> +	else if (DISPLAY_VER(dev_priv) == 9)
>  		encoder->hpd_pin = skl_hpd_pin(dev_priv, port);
>  	else
>  		encoder->hpd_pin = intel_hpd_pin_default(dev_priv, port);
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index fdd25861edd5..58d6417b8f3e 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -881,7 +881,7 @@ intel_ddi_get_buf_trans_edp(struct intel_encoder *encoder, int *n_entries)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  
> -	if (IS_DISPLAY_VER(dev_priv, 9) && !IS_BROXTON(dev_priv)) {
> +	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv)) {
>  		const struct ddi_buf_trans *ddi_translations =
>  			skl_get_buf_trans_edp(encoder, n_entries);
>  		*n_entries = skl_buf_trans_num_entries(encoder->port, *n_entries);
> @@ -919,7 +919,7 @@ intel_ddi_get_buf_trans_hdmi(struct intel_encoder *encoder,
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  
> -	if (IS_DISPLAY_VER(dev_priv, 9) && !IS_BROXTON(dev_priv)) {
> +	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv)) {
>  		return skl_get_buf_trans_hdmi(dev_priv, n_entries);
>  	} else if (IS_BROADWELL(dev_priv)) {
>  		*n_entries = ARRAY_SIZE(bdw_ddi_translations_hdmi);
> @@ -1361,7 +1361,7 @@ int intel_ddi_hdmi_num_entries(struct intel_encoder *encoder,
>  		else
>  			tgl_get_dkl_buf_trans_hdmi(encoder, crtc_state, &n_entries);
>  		*default_entry = n_entries - 1;
> -	} else if (IS_DISPLAY_VER(dev_priv, 11)) {
> +	} else if (DISPLAY_VER(dev_priv) == 11) {
>  		if (intel_phy_is_combo(dev_priv, phy))
>  			icl_get_combo_buf_trans_hdmi(encoder, crtc_state, &n_entries);
>  		else
> @@ -1373,7 +1373,7 @@ int intel_ddi_hdmi_num_entries(struct intel_encoder *encoder,
>  	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
>  		bxt_get_buf_trans_hdmi(encoder, &n_entries);
>  		*default_entry = n_entries - 1;
> -	} else if (IS_DISPLAY_VER(dev_priv, 9)) {
> +	} else if (DISPLAY_VER(dev_priv) == 9) {
>  		intel_ddi_get_buf_trans_hdmi(encoder, &n_entries);
>  		*default_entry = 8;
>  	} else if (IS_BROADWELL(dev_priv)) {
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 411b46c012f8..fababa82b4af 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -230,7 +230,7 @@ static bool pipe_scanline_is_moving(struct drm_i915_private *dev_priv,
>  	u32 line1, line2;
>  	u32 line_mask;
>  
> -	if (IS_DISPLAY_VER(dev_priv, 2))
> +	if (DISPLAY_VER(dev_priv) == 2)
>  		line_mask = DSL_LINEMASK_GEN2;
>  	else
>  		line_mask = DSL_LINEMASK_GEN3;
> @@ -874,7 +874,7 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
>  	case DRM_FORMAT_MOD_LINEAR:
>  		return intel_tile_size(dev_priv);
>  	case I915_FORMAT_MOD_X_TILED:
> -		if (IS_DISPLAY_VER(dev_priv, 2))
> +		if (DISPLAY_VER(dev_priv) == 2)
>  			return 128;
>  		else
>  			return 512;
> @@ -889,7 +889,7 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
>  			return 64;
>  		fallthrough;
>  	case I915_FORMAT_MOD_Y_TILED:
> -		if (IS_DISPLAY_VER(dev_priv, 2) || HAS_128_BYTE_Y_TILING(dev_priv))
> +		if (DISPLAY_VER(dev_priv) == 2 || HAS_128_BYTE_Y_TILING(dev_priv))
>  			return 128;
>  		else
>  			return 512;
> @@ -1406,7 +1406,7 @@ intel_fb_stride_alignment(const struct drm_framebuffer *fb, int color_plane)
>  		 * require the entire fb to accommodate that to avoid
>  		 * potential runtime errors at plane configuration time.
>  		 */
> -		if (IS_DISPLAY_VER(dev_priv, 9) && color_plane == 0 && fb->width > 3840)
> +		if (DISPLAY_VER(dev_priv) == 9 && color_plane == 0 && fb->width > 3840)
>  			tile_width *= 4;
>  		/*
>  		 * The main surface pitch must be padded to a multiple of four
> @@ -1608,7 +1608,7 @@ static void intel_plane_disable_noatomic(struct intel_crtc *crtc,
>  	 * Gen2 reports pipe underruns whenever all planes are disabled.
>  	 * So disable underrun reporting before all the planes get disabled.
>  	 */
> -	if (IS_DISPLAY_VER(dev_priv, 2) && !crtc_state->active_planes)
> +	if (DISPLAY_VER(dev_priv) == 2 && !crtc_state->active_planes)
>  		intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, false);
>  
>  	intel_disable_plane(plane, crtc_state);
> @@ -2471,7 +2471,7 @@ static bool needs_nv12_wa(const struct intel_crtc_state *crtc_state)
>  		return false;
>  
>  	/* WA Display #0827: Gen9:all */
> -	if (IS_DISPLAY_VER(dev_priv, 9))
> +	if (DISPLAY_VER(dev_priv) == 9)
>  		return true;
>  
>  	return false;
> @@ -2482,7 +2482,7 @@ static bool needs_scalerclk_wa(const struct intel_crtc_state *crtc_state)
>  	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
>  
>  	/* Wa_2006604312:icl,ehl */
> -	if (crtc_state->scaler_state.scaler_users > 0 && IS_DISPLAY_VER(dev_priv, 11))
> +	if (crtc_state->scaler_state.scaler_users > 0 && DISPLAY_VER(dev_priv) == 11)
>  		return true;
>  
>  	return false;
> @@ -2682,7 +2682,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
>  	 * chance of catching underruns with the intermediate watermarks
>  	 * vs. the old plane configuration.
>  	 */
> -	if (IS_DISPLAY_VER(dev_priv, 2) && planes_disabling(old_crtc_state, new_crtc_state))
> +	if (DISPLAY_VER(dev_priv) == 2 && planes_disabling(old_crtc_state, new_crtc_state))
>  		intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
>  
>  	/*
> @@ -3201,7 +3201,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  	crtc->active = true;
>  
>  	/* Display WA #1180: WaDisableScalarClockGating: glk, cnl */
> -	psl_clkgate_wa = IS_DISPLAY_VER(dev_priv, 10) &&
> +	psl_clkgate_wa = DISPLAY_VER(dev_priv) == 10 &&
>  		new_crtc_state->pch_pfit.enabled;
>  	if (psl_clkgate_wa)
>  		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, true);
> @@ -3655,7 +3655,7 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
>  
>  	crtc->active = true;
>  
> -	if (!IS_DISPLAY_VER(dev_priv, 2))
> +	if (DISPLAY_VER(dev_priv) != 2)
>  		intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, true);
>  
>  	intel_encoders_pre_enable(state, crtc);
> @@ -3680,7 +3680,7 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
>  	intel_encoders_enable(state, crtc);
>  
>  	/* prevents spurious underruns */
> -	if (IS_DISPLAY_VER(dev_priv, 2))
> +	if (DISPLAY_VER(dev_priv) == 2)
>  		intel_wait_for_vblank(dev_priv, pipe);
>  }
>  
> @@ -3711,7 +3711,7 @@ static void i9xx_crtc_disable(struct intel_atomic_state *state,
>  	 * On gen2 planes are double buffered but the pipe isn't, so we must
>  	 * wait for planes to fully turn off before disabling the pipe.
>  	 */
> -	if (IS_DISPLAY_VER(dev_priv, 2))
> +	if (DISPLAY_VER(dev_priv) == 2)
>  		intel_wait_for_vblank(dev_priv, pipe);
>  
>  	intel_encoders_disable(state, crtc);
> @@ -3735,7 +3735,7 @@ static void i9xx_crtc_disable(struct intel_atomic_state *state,
>  
>  	intel_encoders_post_pll_disable(state, crtc);
>  
> -	if (!IS_DISPLAY_VER(dev_priv, 2))
> +	if (DISPLAY_VER(dev_priv) != 2)
>  		intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
>  
>  	if (!dev_priv->display.initial_watermarks)
> @@ -4302,7 +4302,7 @@ static bool transcoder_has_m2_n2(struct drm_i915_private *dev_priv,
>  	 * Strictly speaking some registers are available before
>  	 * gen7, but we only support DRRS on gen7+
>  	 */
> -	return IS_DISPLAY_VER(dev_priv, 7) || IS_CHERRYVIEW(dev_priv);
> +	return DISPLAY_VER(dev_priv) == 7 || IS_CHERRYVIEW(dev_priv);
>  }
>  
>  static void intel_cpu_transcoder_set_m_n(const struct intel_crtc_state *crtc_state,
> @@ -4449,7 +4449,7 @@ static bool intel_pipe_is_interlaced(const struct intel_crtc_state *crtc_state)
>  	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  
> -	if (IS_DISPLAY_VER(dev_priv, 2))
> +	if (DISPLAY_VER(dev_priv) == 2)
>  		return false;
>  
>  	if (DISPLAY_VER(dev_priv) >= 9 ||
> @@ -5644,7 +5644,7 @@ static void ilk_get_pfit_config(struct intel_crtc_state *crtc_state)
>  	 * ivb/hsw (since we don't use the higher upscaling modes which
>  	 * differentiates them) so just WARN about this case for now.
>  	 */
> -	drm_WARN_ON(&dev_priv->drm, IS_DISPLAY_VER(dev_priv, 7) &&
> +	drm_WARN_ON(&dev_priv->drm, DISPLAY_VER(dev_priv) == 7 &&
>  		    (ctl & PF_PIPE_SEL_MASK_IVB) != PF_PIPE_SEL_IVB(crtc->pipe));
>  }
>  
> @@ -6327,7 +6327,7 @@ static int i9xx_pll_refclk(struct drm_device *dev,
>  		return dev_priv->vbt.lvds_ssc_freq;
>  	else if (HAS_PCH_SPLIT(dev_priv))
>  		return 120000;
> -	else if (!IS_DISPLAY_VER(dev_priv, 2))
> +	else if (DISPLAY_VER(dev_priv) != 2)
>  		return 96000;
>  	else
>  		return 48000;
> @@ -6360,7 +6360,7 @@ static void i9xx_crtc_clock_get(struct intel_crtc *crtc,
>  		clock.m2 = (fp & FP_M2_DIV_MASK) >> FP_M2_DIV_SHIFT;
>  	}
>  
> -	if (!IS_DISPLAY_VER(dev_priv, 2)) {
> +	if (DISPLAY_VER(dev_priv) != 2) {
>  		if (IS_PINEVIEW(dev_priv))
>  			clock.p1 = ffs((dpll & DPLL_FPA01_P1_POST_DIV_MASK_PINEVIEW) >>
>  				DPLL_FPA01_P1_POST_DIV_SHIFT_PINEVIEW);
> @@ -8788,7 +8788,7 @@ intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state)
>  	 * However if queried just before the start of vblank we'll get an
>  	 * answer that's slightly in the future.
>  	 */
> -	if (IS_DISPLAY_VER(dev_priv, 2)) {
> +	if (DISPLAY_VER(dev_priv) == 2) {
>  		int vtotal;
>  
>  		vtotal = adjusted_mode.crtc_vtotal;
> @@ -9665,7 +9665,7 @@ void intel_crtc_arm_fifo_underrun(struct intel_crtc *crtc,
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  
> -	if (!IS_DISPLAY_VER(dev_priv, 2) || crtc_state->active_planes)
> +	if (DISPLAY_VER(dev_priv) != 2 || crtc_state->active_planes)
>  		intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, true);
>  
>  	if (crtc_state->has_pch_encoder) {
> @@ -10283,7 +10283,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  		 * chance of catching underruns with the intermediate watermarks
>  		 * vs. the new plane configuration.
>  		 */
> -		if (IS_DISPLAY_VER(dev_priv, 2) && planes_enabling(old_crtc_state, new_crtc_state))
> +		if (DISPLAY_VER(dev_priv) == 2 && planes_enabling(old_crtc_state, new_crtc_state))
>  			intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, true);
>  
>  		if (dev_priv->display.optimize_watermarks)
> @@ -10862,7 +10862,7 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>  		intel_ddi_init(dev_priv, PORT_C);
>  		intel_ddi_init(dev_priv, PORT_D);
>  		icl_dsi_init(dev_priv);
> -	} else if (IS_DISPLAY_VER(dev_priv, 11)) {
> +	} else if (DISPLAY_VER(dev_priv) == 11) {
>  		intel_ddi_init(dev_priv, PORT_A);
>  		intel_ddi_init(dev_priv, PORT_B);
>  		intel_ddi_init(dev_priv, PORT_C);
> @@ -10903,7 +10903,7 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>  		 */
>  		found = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_INIT_DISPLAY_DETECTED;
>  		/* WaIgnoreDDIAStrap: skl */
> -		if (found || IS_DISPLAY_VER(dev_priv, 9))
> +		if (found || DISPLAY_VER(dev_priv) == 9)
>  			intel_ddi_init(dev_priv, PORT_A);
>  
>  		/* DDI B, C, D, and F detection is indicated by the SFUSE_STRAP
> @@ -10928,7 +10928,7 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>  		/*
>  		 * On SKL we don't have a way to detect DDI-E so we rely on VBT.
>  		 */
> -		if (IS_DISPLAY_VER(dev_priv, 9) &&
> +		if (DISPLAY_VER(dev_priv) == 9 &&
>  		    intel_bios_is_port_present(dev_priv, PORT_E))
>  			intel_ddi_init(dev_priv, PORT_E);
>  
> @@ -11019,7 +11019,7 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>  	} else if (IS_PINEVIEW(dev_priv)) {
>  		intel_lvds_init(dev_priv);
>  		intel_crt_init(dev_priv);
> -	} else if (IS_DISPLAY_RANGE(dev_priv, 3, 4)) {
> +	} else if (IS_DISPLAY_VER(dev_priv, 3, 4)) {
>  		bool found = false;
>  
>  		if (IS_MOBILE(dev_priv))
> @@ -11063,7 +11063,7 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>  
>  		if (SUPPORTS_TV(dev_priv))
>  			intel_tv_init(dev_priv);
> -	} else if (IS_DISPLAY_VER(dev_priv, 2)) {
> +	} else if (DISPLAY_VER(dev_priv) == 2) {
>  		if (IS_I85X(dev_priv))
>  			intel_lvds_init(dev_priv);
>  
> @@ -11734,7 +11734,7 @@ static void intel_mode_config_init(struct drm_i915_private *i915)
>  	} else if (DISPLAY_VER(i915) >= 4) {
>  		mode_config->max_width = 8192;
>  		mode_config->max_height = 8192;
> -	} else if (IS_DISPLAY_VER(i915, 3)) {
> +	} else if (DISPLAY_VER(i915) == 3) {
>  		mode_config->max_width = 4096;
>  		mode_config->max_height = 4096;
>  	} else {
> @@ -12627,7 +12627,7 @@ static void intel_early_display_was(struct drm_i915_private *dev_priv)
>  	 * Display WA #1185 WaDisableDARBFClkGating:cnl,glk,icl,ehl,tgl
>  	 * Also known as Wa_14010480278.
>  	 */
> -	if (IS_DISPLAY_RANGE(dev_priv, 10, 12))
> +	if (IS_DISPLAY_VER(dev_priv, 10, 12))
>  		intel_de_write(dev_priv, GEN9_CLKGATE_DIS_0,
>  			       intel_de_read(dev_priv, GEN9_CLKGATE_DIS_0) | DARBF_GATING_DIS);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index ad30947c58a3..0af1dee1ac95 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -550,7 +550,7 @@ static void icl_tc_port_assert_ref_held(struct drm_i915_private *dev_priv,
>  	if (drm_WARN_ON(&dev_priv->drm, !dig_port))
>  		return;
>  
> -	if (IS_DISPLAY_VER(dev_priv, 11) && dig_port->tc_legacy_port)
> +	if (DISPLAY_VER(dev_priv) == 11 && dig_port->tc_legacy_port)
>  		return;
>  
>  	drm_WARN_ON(&dev_priv->drm, !intel_tc_port_ref_held(dig_port));
> @@ -619,7 +619,7 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
>  	 * exit sequence.
>  	 */
>  	timeout_expected = is_tbt;
> -	if (IS_DISPLAY_VER(dev_priv, 11) && dig_port->tc_legacy_port) {
> +	if (DISPLAY_VER(dev_priv) == 11 && dig_port->tc_legacy_port) {
>  		icl_tc_cold_exit(dev_priv);
>  		timeout_expected = true;
>  	}
> @@ -709,7 +709,7 @@ static bool hsw_power_well_enabled(struct drm_i915_private *dev_priv,
>  	 * BIOS's own request bits, which are forced-on for these power wells
>  	 * when exiting DC5/6.
>  	 */
> -	if (IS_DISPLAY_VER(dev_priv, 9) && !IS_BROXTON(dev_priv) &&
> +	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv) &&
>  	    (id == SKL_DISP_PW_1 || id == SKL_DISP_PW_MISC_IO))
>  		val |= intel_de_read(dev_priv, regs->bios);
>  
> @@ -807,7 +807,7 @@ static u32 gen9_dc_mask(struct drm_i915_private *dev_priv)
>  	if (DISPLAY_VER(dev_priv) >= 12)
>  		mask |= DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC6
>  					  | DC_STATE_EN_DC9;
> -	else if (IS_DISPLAY_VER(dev_priv, 11))
> +	else if (DISPLAY_VER(dev_priv) == 11)
>  		mask |= DC_STATE_EN_UPTO_DC6 | DC_STATE_EN_DC9;
>  	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
>  		mask |= DC_STATE_EN_DC9;
> @@ -1066,7 +1066,7 @@ static void gen9_enable_dc5(struct drm_i915_private *dev_priv)
>  	drm_dbg_kms(&dev_priv->drm, "Enabling DC5\n");
>  
>  	/* Wa Display #1183: skl,kbl,cfl */
> -	if (IS_DISPLAY_VER(dev_priv, 9) && !IS_BROXTON(dev_priv))
> +	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv))
>  		intel_de_write(dev_priv, GEN8_CHICKEN_DCPR_1,
>  			       intel_de_read(dev_priv, GEN8_CHICKEN_DCPR_1) | SKL_SELECT_ALTERNATE_DC_EXIT);
>  
> @@ -1093,7 +1093,7 @@ static void skl_enable_dc6(struct drm_i915_private *dev_priv)
>  	drm_dbg_kms(&dev_priv->drm, "Enabling DC6\n");
>  
>  	/* Wa Display #1183: skl,kbl,cfl */
> -	if (IS_DISPLAY_VER(dev_priv, 9) && !IS_BROXTON(dev_priv))
> +	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv))
>  		intel_de_write(dev_priv, GEN8_CHICKEN_DCPR_1,
>  			       intel_de_read(dev_priv, GEN8_CHICKEN_DCPR_1) | SKL_SELECT_ALTERNATE_DC_EXIT);
>  
> @@ -4694,9 +4694,9 @@ int intel_power_domains_init(struct drm_i915_private *dev_priv)
>  					   BIT_ULL(TGL_DISP_PW_TC_COLD_OFF));
>  	} else if (IS_ROCKETLAKE(dev_priv)) {
>  		err = set_power_wells(power_domains, rkl_power_wells);
> -	} else if (IS_DISPLAY_VER(dev_priv, 12)) {
> +	} else if (DISPLAY_VER(dev_priv) == 12) {
>  		err = set_power_wells(power_domains, tgl_power_wells);
> -	} else if (IS_DISPLAY_VER(dev_priv, 11)) {
> +	} else if (DISPLAY_VER(dev_priv) == 11) {
>  		err = set_power_wells(power_domains, icl_power_wells);
>  	} else if (IS_CNL_WITH_PORT_F(dev_priv)) {
>  		err = set_power_wells(power_domains, cnl_power_wells);
> @@ -4708,7 +4708,7 @@ int intel_power_domains_init(struct drm_i915_private *dev_priv)
>  		err = set_power_wells(power_domains, glk_power_wells);
>  	} else if (IS_BROXTON(dev_priv)) {
>  		err = set_power_wells(power_domains, bxt_power_wells);
> -	} else if (IS_DISPLAY_VER(dev_priv, 9)) {
> +	} else if (DISPLAY_VER(dev_priv) == 9) {
>  		err = set_power_wells(power_domains, skl_power_wells);
>  	} else if (IS_CHERRYVIEW(dev_priv)) {
>  		err = set_power_wells(power_domains, chv_power_wells);
> @@ -4853,7 +4853,7 @@ static void icl_mbus_init(struct drm_i915_private *dev_priv)
>  	 * expect us to program the abox_ctl0 register as well, even though
>  	 * we don't have to program other instance-0 registers like BW_BUDDY.
>  	 */
> -	if (IS_DISPLAY_VER(dev_priv, 12))
> +	if (DISPLAY_VER(dev_priv) == 12)
>  		abox_regs |= BIT(0);
>  
>  	for_each_set_bit(i, &abox_regs, sizeof(abox_regs))
> @@ -5450,7 +5450,7 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
>  		intel_csr_load_program(dev_priv);
>  
>  	/* Wa_14011508470 */
> -	if (IS_DISPLAY_VER(dev_priv, 12)) {
> +	if (DISPLAY_VER(dev_priv) == 12) {
>  		val = DCPR_CLEAR_MEMSTAT_DIS | DCPR_SEND_RESP_IMM |
>  		      DCPR_MASK_LPMODE | DCPR_MASK_MAXLATENCY_MEMUP_CLR;
>  		intel_uncore_rmw(&dev_priv->uncore, GEN11_CHICKEN_DCPR_2, 0, val);
> @@ -5665,7 +5665,7 @@ void intel_power_domains_init_hw(struct drm_i915_private *i915, bool resume)
>  		cnl_display_core_init(i915, resume);
>  	} else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
>  		bxt_display_core_init(i915, resume);
> -	} else if (IS_DISPLAY_VER(i915, 9)) {
> +	} else if (DISPLAY_VER(i915) == 9) {
>  		skl_display_core_init(i915, resume);
>  	} else if (IS_CHERRYVIEW(i915)) {
>  		mutex_lock(&power_domains->lock);
> @@ -5826,7 +5826,7 @@ void intel_power_domains_suspend(struct drm_i915_private *i915,
>  		cnl_display_core_uninit(i915);
>  	else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
>  		bxt_display_core_uninit(i915);
> -	else if (IS_DISPLAY_VER(i915, 9))
> +	else if (DISPLAY_VER(i915) == 9)
>  		skl_display_core_uninit(i915);
>  
>  	power_domains->display_core_suspended = true;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 6750949aa261..5ee953aaa00c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -215,7 +215,7 @@ bool intel_dp_can_bigjoiner(struct intel_dp *intel_dp)
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  
>  	return DISPLAY_VER(dev_priv) >= 12 ||
> -		(IS_DISPLAY_VER(dev_priv, 11) &&
> +		(DISPLAY_VER(dev_priv) == 11 &&
>  		 encoder->port != PORT_A);
>  }
>  
> @@ -295,7 +295,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>  	if (DISPLAY_VER(dev_priv) >= 11 || IS_CANNONLAKE(dev_priv)) {
>  		source_rates = cnl_rates;
>  		size = ARRAY_SIZE(cnl_rates);
> -		if (IS_DISPLAY_VER(dev_priv, 10))
> +		if (DISPLAY_VER(dev_priv) == 10)
>  			max_rate = cnl_max_source_rate(intel_dp);
>  		else if (IS_JSL_EHL(dev_priv))
>  			max_rate = ehl_max_source_rate(intel_dp);
> @@ -304,7 +304,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>  	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
>  		source_rates = bxt_rates;
>  		size = ARRAY_SIZE(bxt_rates);
> -	} else if (IS_DISPLAY_VER(dev_priv, 9)) {
> +	} else if (DISPLAY_VER(dev_priv) == 9) {
>  		source_rates = skl_rates;
>  		size = ARRAY_SIZE(skl_rates);
>  	} else if ((IS_HASWELL(dev_priv) && !IS_HSW_ULX(dev_priv)) ||
> @@ -916,7 +916,7 @@ static bool intel_dp_source_supports_fec(struct intel_dp *intel_dp,
>  	if (DISPLAY_VER(dev_priv) >= 12)
>  		return true;
>  
> -	if (IS_DISPLAY_VER(dev_priv, 11) && pipe_config->cpu_transcoder != TRANSCODER_A)
> +	if (DISPLAY_VER(dev_priv) == 11 && pipe_config->cpu_transcoder != TRANSCODER_A)
>  		return true;
>  
>  	return false;
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
> index 158f271299a4..9114953f57f1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1356,7 +1356,7 @@ intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv)
>  		dev_priv->display.crtc_compute_clock = g4x_crtc_compute_clock;
>  	else if (IS_PINEVIEW(dev_priv))
>  		dev_priv->display.crtc_compute_clock = pnv_crtc_compute_clock;
> -	else if (!IS_DISPLAY_VER(dev_priv, 2))
> +	else if (DISPLAY_VER(dev_priv) != 2)
>  		dev_priv->display.crtc_compute_clock = i9xx_crtc_compute_clock;
>  	else
>  		dev_priv->display.crtc_compute_clock = i8xx_crtc_compute_clock;
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index e32de7c848e9..e1c916640768 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4443,7 +4443,7 @@ void intel_shared_dpll_init(struct drm_device *dev)
>  		dpll_mgr = &cnl_pll_mgr;
>  	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
>  		dpll_mgr = &bxt_pll_mgr;
> -	else if (IS_DISPLAY_VER(dev_priv, 9))
> +	else if (DISPLAY_VER(dev_priv) == 9)
>  		dpll_mgr = &skl_pll_mgr;
>  	else if (HAS_DDI(dev_priv))
>  		dpll_mgr = &hsw_pll_mgr;
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index fca41ac5b8e1..0ec9ad7220a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -84,7 +84,7 @@ int skl_main_to_aux_plane(const struct drm_framebuffer *fb, int main_plane)
>  
>  unsigned int intel_tile_size(const struct drm_i915_private *i915)
>  {
> -	return IS_DISPLAY_VER(i915, 2) ? 2048 : 4096;
> +	return DISPLAY_VER(i915) == 2 ? 2048 : 4096;
>  }
>  
>  unsigned int intel_tile_height(const struct drm_framebuffer *fb, int color_plane)
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 04d9c7d22b04..a6bf18835d36 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -67,7 +67,7 @@ static int intel_fbc_calculate_cfb_size(struct drm_i915_private *dev_priv,
>  	int lines;
>  
>  	intel_fbc_get_plane_source_size(cache, NULL, &lines);
> -	if (IS_DISPLAY_VER(dev_priv, 7))
> +	if (DISPLAY_VER(dev_priv) == 7)
>  		lines = min(lines, 2048);
>  	else if (DISPLAY_VER(dev_priv) >= 8)
>  		lines = min(lines, 2560);
> @@ -109,7 +109,7 @@ static void i8xx_fbc_activate(struct drm_i915_private *dev_priv)
>  		cfb_pitch = params->fb.stride;
>  
>  	/* FBC_CTL wants 32B or 64B units */
> -	if (IS_DISPLAY_VER(dev_priv, 2))
> +	if (DISPLAY_VER(dev_priv) == 2)
>  		cfb_pitch = (cfb_pitch / 32) - 1;
>  	else
>  		cfb_pitch = (cfb_pitch / 64) - 1;
> @@ -118,7 +118,7 @@ static void i8xx_fbc_activate(struct drm_i915_private *dev_priv)
>  	for (i = 0; i < (FBC_LL_SIZE / 32) + 1; i++)
>  		intel_de_write(dev_priv, FBC_TAG(i), 0);
>  
> -	if (IS_DISPLAY_VER(dev_priv, 4)) {
> +	if (DISPLAY_VER(dev_priv) == 4) {
>  		u32 fbc_ctl2;
>  
>  		/* Set it up... */
> @@ -302,7 +302,7 @@ static void gen7_fbc_activate(struct drm_i915_private *dev_priv)
>  	int threshold = dev_priv->fbc.threshold;
>  
>  	/* Display WA #0529: skl, kbl, bxt. */
> -	if (IS_DISPLAY_VER(dev_priv, 9)) {
> +	if (DISPLAY_VER(dev_priv) == 9) {
>  		u32 val = intel_de_read(dev_priv, CHICKEN_MISC_4);
>  
>  		val &= ~(FBC_STRIDE_OVERRIDE | FBC_STRIDE_MASK);
> @@ -445,7 +445,7 @@ static int find_compression_threshold(struct drm_i915_private *dev_priv,
>  	 * reserved range size, so it always assumes the maximum (8mb) is used.
>  	 * If we enable FBC using a CFB on that memory range we'll get FIFO
>  	 * underruns, even if that range is not reserved by the BIOS. */
> -	if (IS_BROADWELL(dev_priv) || (IS_DISPLAY_VER(dev_priv, 9) &&
> +	if (IS_BROADWELL(dev_priv) || (DISPLAY_VER(dev_priv) == 9 &&
>  				       !IS_BROXTON(dev_priv)))
>  		end = resource_size(&dev_priv->dsm) - 8 * 1024 * 1024;
>  	else
> @@ -591,14 +591,14 @@ static bool stride_is_valid(struct drm_i915_private *dev_priv,
>  	if (stride < 512)
>  		return false;
>  
> -	if (IS_DISPLAY_VER(dev_priv, 2) || IS_DISPLAY_VER(dev_priv, 3))
> +	if (DISPLAY_VER(dev_priv) == 2 || DISPLAY_VER(dev_priv) == 3)
>  		return stride == 4096 || stride == 8192;
>  
> -	if (IS_DISPLAY_VER(dev_priv, 4) && !IS_G4X(dev_priv) && stride < 2048)
> +	if (DISPLAY_VER(dev_priv) == 4 && !IS_G4X(dev_priv) && stride < 2048)
>  		return false;
>  
>  	/* Display WA #1105: skl,bxt,kbl,cfl,glk */
> -	if (IS_DISPLAY_VER(dev_priv, 9) &&
> +	if (DISPLAY_VER(dev_priv) == 9 &&
>  	    modifier == DRM_FORMAT_MOD_LINEAR && stride & 511)
>  		return false;
>  
> @@ -618,7 +618,7 @@ static bool pixel_format_is_valid(struct drm_i915_private *dev_priv,
>  	case DRM_FORMAT_XRGB1555:
>  	case DRM_FORMAT_RGB565:
>  		/* 16bpp not supported on gen2 */
> -		if (IS_DISPLAY_VER(dev_priv, 2))
> +		if (DISPLAY_VER(dev_priv) == 2)
>  			return false;
>  		/* WaFbcOnly1to1Ratio:ctg */
>  		if (IS_G4X(dev_priv))
> @@ -760,7 +760,7 @@ static u16 intel_fbc_gen9_wa_cfb_stride(struct drm_i915_private *dev_priv)
>  	struct intel_fbc *fbc = &dev_priv->fbc;
>  	struct intel_fbc_state_cache *cache = &fbc->state_cache;
>  
> -	if ((IS_DISPLAY_VER(dev_priv, 9)) &&
> +	if ((DISPLAY_VER(dev_priv) == 9) &&
>  	    cache->fb.modifier != I915_FORMAT_MOD_X_TILED)
>  		return DIV_ROUND_UP(cache->plane.src_w, 32 * fbc->threshold) * 8;
>  	else
> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> index 9605a1064366..0fce9fd6e0a9 100644
> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> @@ -271,7 +271,7 @@ static bool __intel_set_cpu_fifo_underrun_reporting(struct drm_device *dev,
>  		i9xx_set_fifo_underrun_reporting(dev, pipe, enable, old);
>  	else if (IS_IRONLAKE(dev_priv) || IS_SANDYBRIDGE(dev_priv))
>  		ilk_set_fifo_underrun_reporting(dev, pipe, enable);
> -	else if (IS_DISPLAY_VER(dev_priv, 7))
> +	else if (DISPLAY_VER(dev_priv) == 7)
>  		ivb_set_fifo_underrun_reporting(dev, pipe, enable, old);
>  	else if (DISPLAY_VER(dev_priv) >= 8)
>  		bdw_set_fifo_underrun_reporting(dev, pipe, enable);
> @@ -432,7 +432,7 @@ void intel_check_cpu_fifo_underruns(struct drm_i915_private *dev_priv)
>  
>  		if (HAS_GMCH(dev_priv))
>  			i9xx_check_fifo_underruns(crtc);
> -		else if (IS_DISPLAY_VER(dev_priv, 7))
> +		else if (DISPLAY_VER(dev_priv) == 7)
>  			ivb_check_fifo_underruns(crtc);
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
> index 2ea6adc3bd3e..17ab3cb81e02 100644
> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> @@ -109,7 +109,7 @@ static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *dev_priv,
>  		return &gmbus_pins_cnp[pin];
>  	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
>  		return &gmbus_pins_bxt[pin];
> -	else if (IS_DISPLAY_VER(dev_priv, 9))
> +	else if (DISPLAY_VER(dev_priv) == 9)
>  		return &gmbus_pins_skl[pin];
>  	else if (IS_BROADWELL(dev_priv))
>  		return &gmbus_pins_bdw[pin];
> @@ -130,7 +130,7 @@ bool intel_gmbus_is_valid_pin(struct drm_i915_private *dev_priv,
>  		size = ARRAY_SIZE(gmbus_pins_cnp);
>  	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
>  		size = ARRAY_SIZE(gmbus_pins_bxt);
> -	else if (IS_DISPLAY_VER(dev_priv, 9))
> +	else if (DISPLAY_VER(dev_priv) == 9)
>  		size = ARRAY_SIZE(gmbus_pins_skl);
>  	else if (IS_BROADWELL(dev_priv))
>  		size = ARRAY_SIZE(gmbus_pins_bdw);
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 75050a040577..d254fe67ab7f 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -291,7 +291,7 @@ static int intel_hdcp_load_keys(struct drm_i915_private *dev_priv)
>  	 * process from other platforms. These platforms use the GT Driver
>  	 * Mailbox interface.
>  	 */
> -	if (IS_DISPLAY_VER(dev_priv, 9) && !IS_BROXTON(dev_priv)) {
> +	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv)) {
>  		ret = sandybridge_pcode_write(dev_priv,
>  					      SKL_PCODE_LOAD_HDCP_KEYS, 1);
>  		if (ret) {
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index f2d1fef8bd9d..47a8f0a1c5e2 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1978,7 +1978,7 @@ static bool hdmi_deep_color_possible(const struct intel_crtc_state *crtc_state,
>  
>  	/* Display Wa_1405510057:icl,ehl */
>  	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 &&
> -	    bpc == 10 && IS_DISPLAY_VER(dev_priv, 11) &&
> +	    bpc == 10 && DISPLAY_VER(dev_priv) == 11 &&
>  	    (adjusted_mode->crtc_hblank_end -
>  	     adjusted_mode->crtc_hblank_start) % 8 == 2)
>  		return false;
> @@ -2715,7 +2715,7 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
>  		ddc_pin = dg1_port_to_ddc_pin(dev_priv, port);
>  	else if (IS_ROCKETLAKE(dev_priv))
>  		ddc_pin = rkl_port_to_ddc_pin(dev_priv, port);
> -	else if (IS_DISPLAY_VER(dev_priv, 9) && HAS_PCH_TGP(dev_priv))
> +	else if (DISPLAY_VER(dev_priv) == 9 && HAS_PCH_TGP(dev_priv))
>  		ddc_pin = gen9bc_tgp_port_to_ddc_pin(dev_priv, port);
>  	else if (HAS_PCH_MCC(dev_priv))
>  		ddc_pin = mcc_port_to_ddc_pin(dev_priv, port);
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
> index f31a368f34c5..dd12d15f47c7 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -280,7 +280,7 @@ static void intel_pre_enable_lvds(struct intel_atomic_state *state,
>  	 * special lvds dither control bit on pch-split platforms, dithering is
>  	 * only controlled through the PIPECONF reg.
>  	 */
> -	if (IS_DISPLAY_VER(dev_priv, 4)) {
> +	if (DISPLAY_VER(dev_priv) == 4) {
>  		/*
>  		 * Bspec wording suggests that LVDS port dithering only exists
>  		 * for 18bpp panels.
> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
> index e477b6114a60..d1255911a327 100644
> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> @@ -550,7 +550,7 @@ static u32 calc_swidthsw(struct drm_i915_private *dev_priv, u32 offset, u32 widt
>  {
>  	u32 sw;
>  
> -	if (IS_DISPLAY_VER(dev_priv, 2))
> +	if (DISPLAY_VER(dev_priv) == 2)
>  		sw = ALIGN((offset & 31) + width, 32);
>  	else
>  		sw = ALIGN((offset & 63) + width, 64);
> @@ -818,7 +818,7 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
>  			oconfig |= OCONF_CC_OUT_8BIT;
>  		if (crtc_state->gamma_enable)
>  			oconfig |= OCONF_GAMMA2_ENABLE;
> -		if (IS_DISPLAY_VER(dev_priv, 4))
> +		if (DISPLAY_VER(dev_priv) == 4)
>  			oconfig |= OCONF_CSC_MODE_BT709;
>  		oconfig |= pipe == 0 ?
>  			OCONF_PIPE_A : OCONF_PIPE_B;
> @@ -1052,7 +1052,7 @@ static int check_overlay_src(struct drm_i915_private *dev_priv,
>  
>  	if (rec->stride_Y & stride_mask || rec->stride_UV & stride_mask)
>  		return -EINVAL;
> -	if (IS_DISPLAY_VER(dev_priv, 4) && rec->stride_Y < 512)
> +	if (DISPLAY_VER(dev_priv) == 4 && rec->stride_Y < 512)
>  		return -EINVAL;
>  
>  	tmp = (rec->flags & I915_OVERLAY_TYPE_MASK) == I915_OVERLAY_YUV_PLANAR ?
> @@ -1279,7 +1279,7 @@ int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
>  		attrs->contrast   = overlay->contrast;
>  		attrs->saturation = overlay->saturation;
>  
> -		if (!IS_DISPLAY_VER(dev_priv, 2)) {
> +		if (DISPLAY_VER(dev_priv) != 2) {
>  			attrs->gamma0 = intel_de_read(dev_priv, OGAMC0);
>  			attrs->gamma1 = intel_de_read(dev_priv, OGAMC1);
>  			attrs->gamma2 = intel_de_read(dev_priv, OGAMC2);
> @@ -1303,7 +1303,7 @@ int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
>  		update_reg_attrs(overlay, overlay->regs);
>  
>  		if (attrs->flags & I915_OVERLAY_UPDATE_GAMMA) {
> -			if (IS_DISPLAY_VER(dev_priv, 2))
> +			if (DISPLAY_VER(dev_priv) == 2)
>  				goto out_unlock;
>  
>  			if (overlay->active) {
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
> index 2fcbb2ba2d78..551fcaa77c2c 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -667,7 +667,7 @@ static void i9xx_set_backlight(const struct drm_connector_state *conn_state, u32
>  		pci_write_config_byte(to_pci_dev(dev_priv->drm.dev), LBPC, lbpc);
>  	}
>  
> -	if (IS_DISPLAY_VER(dev_priv, 4)) {
> +	if (DISPLAY_VER(dev_priv) == 4) {
>  		mask = BACKLIGHT_DUTY_CYCLE_MASK;
>  	} else {
>  		level <<= 1;
> @@ -1040,7 +1040,7 @@ static void i9xx_enable_backlight(const struct intel_crtc_state *crtc_state,
>  	 * 855gm only, but checking for gen2 is safe, as 855gm is the only gen2
>  	 * that has backlight.
>  	 */
> -	if (IS_DISPLAY_VER(dev_priv, 2))
> +	if (DISPLAY_VER(dev_priv) == 2)
>  		intel_de_write(dev_priv, BLC_HIST_CTL, BLM_HISTOGRAM_ENABLE);
>  }
>  
> @@ -1728,7 +1728,7 @@ static int i9xx_setup_backlight(struct intel_connector *connector, enum pipe unu
>  
>  	ctl = intel_de_read(dev_priv, BLC_PWM_CTL);
>  
> -	if (IS_DISPLAY_VER(dev_priv, 2) || IS_I915GM(dev_priv) || IS_I945GM(dev_priv))
> +	if (DISPLAY_VER(dev_priv) == 2 || IS_I915GM(dev_priv) || IS_I945GM(dev_priv))
>  		panel->backlight.combination_mode = ctl & BLM_LEGACY_MODE;
>  
>  	if (IS_PINEVIEW(dev_priv))
> @@ -2178,7 +2178,7 @@ intel_panel_init_backlight_funcs(struct intel_panel *panel)
>  		} else {
>  			panel->backlight.pwm_funcs = &vlv_pwm_funcs;
>  		}
> -	} else if (IS_DISPLAY_VER(dev_priv, 4)) {
> +	} else if (DISPLAY_VER(dev_priv) == 4) {
>  		panel->backlight.pwm_funcs = &i965_pwm_funcs;
>  	} else {
>  		panel->backlight.pwm_funcs = &i9xx_pwm_funcs;
> diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc.c b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
> index 7c8e0d76207f..0f6de96e6d43 100644
> --- a/drivers/gpu/drm/i915/display/intel_pipe_crc.c
> +++ b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
> @@ -409,7 +409,7 @@ static int get_new_crc_ctl_reg(struct drm_i915_private *dev_priv,
>  			       enum pipe pipe,
>  			       enum intel_pipe_crc_source *source, u32 *val)
>  {
> -	if (IS_DISPLAY_VER(dev_priv, 2))
> +	if (DISPLAY_VER(dev_priv) == 2)
>  		return i8xx_pipe_crc_ctl_reg(source, val);
>  	else if (DISPLAY_VER(dev_priv) < 5)
>  		return i9xx_pipe_crc_ctl_reg(dev_priv, pipe, source, val);
> @@ -539,7 +539,7 @@ static int
>  intel_is_valid_crc_source(struct drm_i915_private *dev_priv,
>  			  const enum intel_pipe_crc_source source)
>  {
> -	if (IS_DISPLAY_VER(dev_priv, 2))
> +	if (DISPLAY_VER(dev_priv) == 2)
>  		return i8xx_crc_source_valid(dev_priv, source);
>  	else if (DISPLAY_VER(dev_priv) < 5)
>  		return i9xx_crc_source_valid(dev_priv, source);
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index bf8e4ede2a6c..85301e894378 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -782,7 +782,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
>  		psr_max_h = 4096;
>  		psr_max_v = 2304;
>  		max_bpp = 24;
> -	} else if (IS_DISPLAY_VER(dev_priv, 9)) {
> +	} else if (DISPLAY_VER(dev_priv) == 9) {
>  		psr_max_h = 3640;
>  		psr_max_v = 2304;
>  		max_bpp = 24;
> @@ -922,7 +922,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>  	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
>  		hsw_psr_setup_aux(intel_dp);
>  
> -	if (intel_dp->psr.psr2_enabled && IS_DISPLAY_VER(dev_priv, 9)) {
> +	if (intel_dp->psr.psr2_enabled && DISPLAY_VER(dev_priv) == 9) {
>  		i915_reg_t reg = CHICKEN_TRANS(cpu_transcoder);
>  		u32 chicken = intel_de_read(dev_priv, reg);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index 71b8edafb1c3..88085486ee59 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -28,7 +28,7 @@ tc_cold_get_power_domain(struct intel_digital_port *dig_port)
>  {
>  	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>  
> -	if (IS_DISPLAY_VER(i915, 11))
> +	if (DISPLAY_VER(i915) == 11)
>  		return intel_legacy_aux_to_power_domain(dig_port->aux_ch);
>  	else
>  		return POWER_DOMAIN_TC_COLD_OFF;
> @@ -40,7 +40,7 @@ tc_cold_block(struct intel_digital_port *dig_port)
>  	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>  	enum intel_display_power_domain domain;
>  
> -	if (IS_DISPLAY_VER(i915, 11) && !dig_port->tc_legacy_port)
> +	if (DISPLAY_VER(i915) == 11 && !dig_port->tc_legacy_port)
>  		return 0;
>  
>  	domain = tc_cold_get_power_domain(dig_port);
> @@ -71,7 +71,7 @@ assert_tc_cold_blocked(struct intel_digital_port *dig_port)
>  	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>  	bool enabled;
>  
> -	if (IS_DISPLAY_VER(i915, 11) && !dig_port->tc_legacy_port)
> +	if (DISPLAY_VER(i915) == 11 && !dig_port->tc_legacy_port)
>  		return;
>  
>  	enabled = intel_display_power_is_enabled(i915,
> diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
> index e558f121ec4e..2c5c77693474 100644
> --- a/drivers/gpu/drm/i915/display/intel_tv.c
> +++ b/drivers/gpu/drm/i915/display/intel_tv.c
> @@ -1165,7 +1165,7 @@ intel_tv_get_config(struct intel_encoder *encoder,
>  static bool intel_tv_source_too_wide(struct drm_i915_private *dev_priv,
>  				     int hdisplay)
>  {
> -	return IS_DISPLAY_VER(dev_priv, 3) && hdisplay > 1024;
> +	return DISPLAY_VER(dev_priv) == 3 && hdisplay > 1024;
>  }
>  
>  static bool intel_tv_vert_scaling(const struct drm_display_mode *tv_mode,
> @@ -1789,7 +1789,7 @@ intel_tv_get_modes(struct drm_connector *connector)
>  			continue;
>  
>  		/* no vertical scaling with wide sources on gen3 */
> -		if (IS_DISPLAY_VER(dev_priv, 3) && input->w > 1024 &&
> +		if (DISPLAY_VER(dev_priv) == 3 && input->w > 1024 &&
>  		    input->h > intel_tv_mode_vdisplay(tv_mode))
>  			continue;
>  
> @@ -1978,7 +1978,7 @@ intel_tv_init(struct drm_i915_private *dev_priv)
>  	/* Create TV properties then attach current values */
>  	for (i = 0; i < ARRAY_SIZE(tv_modes); i++) {
>  		/* 1080p50/1080p60 not supported on gen3 */
> -		if (IS_DISPLAY_VER(dev_priv, 3) &&
> +		if (DISPLAY_VER(dev_priv) == 3 &&
>  		    tv_modes[i].oversample == 1)
>  			break;
>  
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 098636c811a8..8a8e3b5e6ef0 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1208,7 +1208,7 @@ static int skl_plane_check_dst_coordinates(const struct intel_crtc_state *crtc_s
>  	 * than the cursor ending less than 4 pixels from the left edge of the
>  	 * screen may cause FIFO underflow and display corruption.
>  	 */
> -	if (IS_DISPLAY_VER(dev_priv, 10) &&
> +	if (DISPLAY_VER(dev_priv) == 10 &&
>  	    (crtc_x + crtc_w < 4 || crtc_x > pipe_src_w - 4)) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "requested plane X %s position %d invalid (valid range %d-%d)\n",
> @@ -1695,7 +1695,7 @@ static bool skl_plane_has_planar(struct drm_i915_private *dev_priv,
>  	if (IS_SKYLAKE(dev_priv) || IS_BROXTON(dev_priv))
>  		return false;
>  
> -	if (IS_DISPLAY_VER(dev_priv, 9) && pipe == PIPE_C)
> +	if (DISPLAY_VER(dev_priv) == 9 && pipe == PIPE_C)
>  		return false;
>  
>  	if (plane_id != PLANE_PRIMARY && plane_id != PLANE_SPRITE0)
> @@ -2007,8 +2007,8 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
>  	plane->check_plane = skl_plane_check;
>  
>  	if (plane_id == PLANE_PRIMARY) {
> -		plane->need_async_flip_disable_wa = IS_DISPLAY_RANGE(dev_priv,
> -								     9, 10);
> +		plane->need_async_flip_disable_wa = IS_DISPLAY_VER(dev_priv,
> +								   9, 10);
>  		plane->async_flip = skl_plane_async_flip;
>  		plane->enable_flip_done = skl_plane_enable_flip_done;
>  		plane->disable_flip_done = skl_plane_disable_flip_done;
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 8c62bb2abd31..907c66efb469 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1238,9 +1238,8 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
>  #define INTEL_DEVID(dev_priv)	(RUNTIME_INFO(dev_priv)->device_id)
>  
>  #define DISPLAY_VER(i915)	(INTEL_INFO(i915)->display.ver)
> -#define IS_DISPLAY_RANGE(i915, from, until) \
> +#define IS_DISPLAY_VER(i915, from, until) \
>  	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))
> -#define IS_DISPLAY_VER(i915, v) (DISPLAY_VER(i915) == (v))
>  
>  #define REVID_FOREVER		0xff
>  #define INTEL_REVID(dev_priv)	(to_pci_dev((dev_priv)->drm.dev)->revision)
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 920327bdcb10..798ecc718e3f 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -806,7 +806,7 @@ static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
>  	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
>  		vtotal /= 2;
>  
> -	if (IS_DISPLAY_VER(dev_priv, 2))
> +	if (DISPLAY_VER(dev_priv) == 2)
>  		position = intel_de_read_fw(dev_priv, PIPEDSL(pipe)) & DSL_LINEMASK_GEN2;
>  	else
>  		position = intel_de_read_fw(dev_priv, PIPEDSL(pipe)) & DSL_LINEMASK_GEN3;
> @@ -857,7 +857,7 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
>  	int vbl_start, vbl_end, hsync_start, htotal, vtotal;
>  	unsigned long irqflags;
>  	bool use_scanline_counter = DISPLAY_VER(dev_priv) >= 5 ||
> -		IS_G4X(dev_priv) || IS_DISPLAY_VER(dev_priv, 2) ||
> +		IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) == 2 ||
>  		crtc->mode_flags & I915_MODE_FLAG_USE_SCANLINE_COUNTER;
>  
>  	if (drm_WARN_ON(&dev_priv->drm, !mode->crtc_clock)) {
> @@ -2077,7 +2077,7 @@ static void ilk_display_irq_handler(struct drm_i915_private *dev_priv,
>  		intel_uncore_write(&dev_priv->uncore, SDEIIR, pch_iir);
>  	}
>  
> -	if (IS_DISPLAY_VER(dev_priv, 5) && de_iir & DE_PCU_EVENT)
> +	if (DISPLAY_VER(dev_priv) == 5 && de_iir & DE_PCU_EVENT)
>  		gen5_rps_irq_handler(&dev_priv->gt.rps);
>  }
>  
> @@ -2287,10 +2287,10 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
>  			GEN9_AUX_CHANNEL_C |
>  			GEN9_AUX_CHANNEL_D;
>  
> -	if (IS_CNL_WITH_PORT_F(dev_priv) || IS_DISPLAY_VER(dev_priv, 11))
> +	if (IS_CNL_WITH_PORT_F(dev_priv) || DISPLAY_VER(dev_priv) == 11)
>  		mask |= CNL_AUX_CHANNEL_F;
>  
> -	if (IS_DISPLAY_VER(dev_priv, 11))
> +	if (DISPLAY_VER(dev_priv) == 11)
>  		mask |= ICL_AUX_CHANNEL_E;
>  
>  	return mask;
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 3f6d8b502a61..eaf4c072ade0 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -2339,7 +2339,7 @@ static void i9xx_update_wm(struct intel_crtc *unused_crtc)
>  
>  	if (IS_I945GM(dev_priv))
>  		wm_info = &i945_wm_info;
> -	else if (!IS_DISPLAY_VER(dev_priv, 2))
> +	else if (DISPLAY_VER(dev_priv) != 2)
>  		wm_info = &i915_wm_info;
>  	else
>  		wm_info = &i830_a_wm_info;
> @@ -2353,7 +2353,7 @@ static void i9xx_update_wm(struct intel_crtc *unused_crtc)
>  			crtc->base.primary->state->fb;
>  		int cpp;
>  
> -		if (IS_DISPLAY_VER(dev_priv, 2))
> +		if (DISPLAY_VER(dev_priv) == 2)
>  			cpp = 4;
>  		else
>  			cpp = fb->format->cpp[0];
> @@ -2368,7 +2368,7 @@ static void i9xx_update_wm(struct intel_crtc *unused_crtc)
>  			planea_wm = wm_info->max_wm;
>  	}
>  
> -	if (IS_DISPLAY_VER(dev_priv, 2))
> +	if (DISPLAY_VER(dev_priv) == 2)
>  		wm_info = &i830_bc_wm_info;
>  
>  	fifo_size = dev_priv->display.get_fifo_size(dev_priv, PLANE_B);
> @@ -2380,7 +2380,7 @@ static void i9xx_update_wm(struct intel_crtc *unused_crtc)
>  			crtc->base.primary->state->fb;
>  		int cpp;
>  
> -		if (IS_DISPLAY_VER(dev_priv, 2))
> +		if (DISPLAY_VER(dev_priv) == 2)
>  			cpp = 4;
>  		else
>  			cpp = fb->format->cpp[0];
> @@ -2967,7 +2967,7 @@ static void intel_fixup_spr_wm_latency(struct drm_i915_private *dev_priv,
>  				       u16 wm[5])
>  {
>  	/* ILK sprite LP0 latency is 1300 ns */
> -	if (IS_DISPLAY_VER(dev_priv, 5))
> +	if (DISPLAY_VER(dev_priv) == 5)
>  		wm[0] = 13;
>  }
>  
> @@ -2975,7 +2975,7 @@ static void intel_fixup_cur_wm_latency(struct drm_i915_private *dev_priv,
>  				       u16 wm[5])
>  {
>  	/* ILK cursor LP0 latency is 1300 ns */
> -	if (IS_DISPLAY_VER(dev_priv, 5))
> +	if (DISPLAY_VER(dev_priv) == 5)
>  		wm[0] = 13;
>  }
>  
> @@ -3105,7 +3105,7 @@ static void ilk_setup_wm_latency(struct drm_i915_private *dev_priv)
>  	intel_print_wm_latency(dev_priv, "Sprite", dev_priv->wm.spr_latency);
>  	intel_print_wm_latency(dev_priv, "Cursor", dev_priv->wm.cur_latency);
>  
> -	if (IS_DISPLAY_VER(dev_priv, 6)) {
> +	if (DISPLAY_VER(dev_priv) == 6) {
>  		snb_wm_latency_quirk(dev_priv);
>  		snb_wm_lp3_irq_quirk(dev_priv);
>  	}
> @@ -3354,7 +3354,7 @@ static void ilk_wm_merge(struct drm_i915_private *dev_priv,
>  	 * What we should check here is whether FBC can be
>  	 * enabled sometime later.
>  	 */
> -	if (IS_DISPLAY_VER(dev_priv, 5) && !merged->fbc_wm_enabled &&
> +	if (DISPLAY_VER(dev_priv) == 5 && !merged->fbc_wm_enabled &&
>  	    intel_fbc_is_active(dev_priv)) {
>  		for (level = 2; level <= max_level; level++) {
>  			struct intel_wm_level *wm = &merged->wm[level];
> @@ -3654,7 +3654,7 @@ u8 intel_enabled_dbuf_slices_mask(struct drm_i915_private *dev_priv)
>   */
>  static bool skl_needs_memory_bw_wa(struct drm_i915_private *dev_priv)
>  {
> -	return IS_DISPLAY_VER(dev_priv, 9);
> +	return DISPLAY_VER(dev_priv) == 9;
>  }
>  
>  static bool
> @@ -3680,13 +3680,13 @@ skl_setup_sagv_block_time(struct drm_i915_private *dev_priv)
>  		}
>  
>  		drm_dbg(&dev_priv->drm, "Couldn't read SAGV block time!\n");
> -	} else if (IS_DISPLAY_VER(dev_priv, 11)) {
> +	} else if (DISPLAY_VER(dev_priv) == 11) {
>  		dev_priv->sagv_block_time_us = 10;
>  		return;
> -	} else if (IS_DISPLAY_VER(dev_priv, 10)) {
> +	} else if (DISPLAY_VER(dev_priv) == 10) {
>  		dev_priv->sagv_block_time_us = 20;
>  		return;
> -	} else if (IS_DISPLAY_VER(dev_priv, 9)) {
> +	} else if (DISPLAY_VER(dev_priv) == 9) {
>  		dev_priv->sagv_block_time_us = 30;
>  		return;
>  	} else {
> @@ -4613,9 +4613,9 @@ static u8 skl_compute_dbuf_slices(struct intel_crtc *crtc, u8 active_pipes)
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	enum pipe pipe = crtc->pipe;
>  
> -	if (IS_DISPLAY_VER(dev_priv, 12))
> +	if (DISPLAY_VER(dev_priv) == 12)
>  		return tgl_compute_dbuf_slices(pipe, active_pipes);
> -	else if (IS_DISPLAY_VER(dev_priv, 11))
> +	else if (DISPLAY_VER(dev_priv) == 11)
>  		return icl_compute_dbuf_slices(pipe, active_pipes);
>  	/*
>  	 * For anything else just return one slice yet.
> @@ -4986,7 +4986,7 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
>  			 * Wa_1408961008:icl, ehl
>  			 * Underruns with WM1+ disabled
>  			 */
> -			if (IS_DISPLAY_VER(dev_priv, 11) &&
> +			if (DISPLAY_VER(dev_priv) == 11 &&
>  			    level == 1 && wm->wm[0].enable) {
>  				wm->wm[level].blocks = wm->wm[0].blocks;
>  				wm->wm[level].lines = wm->wm[0].lines;
> @@ -5245,7 +5245,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
>  		     (wp->plane_bytes_per_line / wp->dbuf_block_size < 1)) {
>  			selected_result = method2;
>  		} else if (latency >= wp->linetime_us) {
> -			if (IS_DISPLAY_VER(dev_priv, 9))
> +			if (DISPLAY_VER(dev_priv) == 9)
>  				selected_result = min_fixed16(method1, method2);
>  			else
>  				selected_result = method2;
> @@ -5258,7 +5258,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
>  	lines = div_round_up_fixed16(selected_result,
>  				     wp->plane_blocks_per_line);
>  
> -	if (IS_DISPLAY_VER(dev_priv, 9)) {
> +	if (DISPLAY_VER(dev_priv) == 9) {
>  		/* Display WA #1125: skl,bxt,kbl */
>  		if (level == 0 && wp->rc_surface)
>  			blocks += fixed16_to_u32_round_up(wp->y_tile_minimum);
> @@ -5375,7 +5375,7 @@ static void skl_compute_transition_wm(struct drm_i915_private *dev_priv,
>  	 * WaDisableTWM:skl,kbl,cfl,bxt
>  	 * Transition WM are not recommended by HW team for GEN9
>  	 */
> -	if (IS_DISPLAY_VER(dev_priv, 9))
> +	if (DISPLAY_VER(dev_priv) == 9)
>  		return;
>  
>  	if (DISPLAY_VER(dev_priv) >= 11)
> @@ -5384,7 +5384,7 @@ static void skl_compute_transition_wm(struct drm_i915_private *dev_priv,
>  		trans_min = 14;
>  
>  	/* Display WA #1140: glk,cnl */
> -	if (IS_DISPLAY_VER(dev_priv, 10))
> +	if (DISPLAY_VER(dev_priv) == 10)
>  		trans_amount = 0;
>  	else
>  		trans_amount = 10; /* This is configurable amount */
> @@ -7694,9 +7694,9 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
>  	} else if (HAS_PCH_SPLIT(dev_priv)) {
>  		ilk_setup_wm_latency(dev_priv);
>  
> -		if ((IS_DISPLAY_VER(dev_priv, 5) && dev_priv->wm.pri_latency[1] &&
> +		if ((DISPLAY_VER(dev_priv) == 5 && dev_priv->wm.pri_latency[1] &&
>  		     dev_priv->wm.spr_latency[1] && dev_priv->wm.cur_latency[1]) ||
> -		    (!IS_DISPLAY_VER(dev_priv, 5) && dev_priv->wm.pri_latency[0] &&
> +		    (DISPLAY_VER(dev_priv) != 5 && dev_priv->wm.pri_latency[0] &&
>  		     dev_priv->wm.spr_latency[0] && dev_priv->wm.cur_latency[0])) {
>  			dev_priv->display.compute_pipe_wm = ilk_compute_pipe_wm;
>  			dev_priv->display.compute_intermediate_wm =
> @@ -7739,12 +7739,12 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
>  			dev_priv->display.update_wm = NULL;
>  		} else
>  			dev_priv->display.update_wm = pnv_update_wm;
> -	} else if (IS_DISPLAY_VER(dev_priv, 4)) {
> +	} else if (DISPLAY_VER(dev_priv) == 4) {
>  		dev_priv->display.update_wm = i965_update_wm;
> -	} else if (IS_DISPLAY_VER(dev_priv, 3)) {
> +	} else if (DISPLAY_VER(dev_priv) == 3) {
>  		dev_priv->display.update_wm = i9xx_update_wm;
>  		dev_priv->display.get_fifo_size = i9xx_get_fifo_size;
> -	} else if (IS_DISPLAY_VER(dev_priv, 2)) {
> +	} else if (DISPLAY_VER(dev_priv) == 2) {
>  		if (INTEL_NUM_PIPES(dev_priv) == 1) {
>  			dev_priv->display.update_wm = i845_update_wm;
>  			dev_priv->display.get_fifo_size = i845_get_fifo_size;

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
