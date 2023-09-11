Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC6579A7A5
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 13:37:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC13B10E2C9;
	Mon, 11 Sep 2023 11:37:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB90310E2C9
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 11:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694432219; x=1725968219;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=u3UFz8Cqw+EQUrRj/zuVKNUrtfV/3ETd1dgql/HRcac=;
 b=Jr1d5USF7GMGWi9Xx8lTsPzXJ1C+7U9YS/cp/1F19cUquWiTHMySzplN
 ZSJK5+Q1uRBhvRODPlnOlS85W/lyaAGjDfwR1dAc2HLUwITfIBNg52Q3S
 7YBsFWF8seB3bvCL8Q0x4b47/6ZDwZgsKnAZP2yt/IXkh84IM6rPf9sOP
 JGLeOFMMg9jSz1Ka97mvSknp0/hjcrmN8/kpwu85K8HeIFXq67Vt0T74j
 sPB7te0e914MrRNZoapxwgTVBlJi5F2ORNw2qX/iRBJUAK1ojiX6CUMuv
 kP8SgDYZX1qyGFQBdCMf7A3HJerxDpZM7cZz2FL3EeslTnqsVCivuQuHF A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="444473098"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="444473098"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 04:36:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="813335007"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="813335007"
Received: from kschuele-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.119])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 04:36:48 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230911050549.763538-3-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230911050549.763538-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230911050549.763538-3-mitulkumar.ajitkumar.golani@intel.com>
Date: Mon, 11 Sep 2023 14:36:46 +0300
Message-ID: <877coxeyb5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/8] drm/i915/display: Store compressed bpp
 in U6.4 format
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

On Mon, 11 Sep 2023, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> wrote:
> From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>
> DSC parameter bits_per_pixel is stored in U6.4 format.
> The 4 bits represent the fractional part of the bpp.
> Currently we use compressed_bpp member of dsc structure to store
> only the integral part of the bits_per_pixel.
> To store the full bits_per_pixel along with the fractional part,
> compressed_bpp is changed to store bpp in U6.4 formats. Intergral
> part is retrieved by simply right shifting the member compressed_bpp by 4.
>
> v2:
> -Use to_bpp_int, to_bpp_frac_dec, to_bpp_x16 helpers while dealing
>  with compressed bpp. (Suraj)
> -Fix comment styling. (Suraj)
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c        | 10 ++++----
>  drivers/gpu/drm/i915/display/intel_audio.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_bios.c     |  4 +--
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
>  .../drm/i915/display/intel_display_types.h    | 18 ++++++++++++-
>  drivers/gpu/drm/i915/display/intel_dp.c       | 25 +++++++++++--------
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 18 ++++++-------
>  drivers/gpu/drm/i915/display/intel_vdsc.c     |  4 +--
>  9 files changed, 52 insertions(+), 33 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index ad6488e9c2b2..df98f35bbcda 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -330,7 +330,7 @@ static int afe_clk(struct intel_encoder *encoder,
>  	int bpp;
>  
>  	if (crtc_state->dsc.compression_enable)
> -		bpp = crtc_state->dsc.compressed_bpp;
> +		bpp = to_bpp_int(crtc_state->dsc.compressed_bpp_x16);
>  	else
>  		bpp = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
>  
> @@ -860,7 +860,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
>  	 * compressed and non-compressed bpp.
>  	 */
>  	if (crtc_state->dsc.compression_enable) {
> -		mul = crtc_state->dsc.compressed_bpp;
> +		mul = to_bpp_int(crtc_state->dsc.compressed_bpp_x16);
>  		div = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
>  	}
>  
> @@ -884,7 +884,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
>  		int bpp, line_time_us, byte_clk_period_ns;
>  
>  		if (crtc_state->dsc.compression_enable)
> -			bpp = crtc_state->dsc.compressed_bpp;
> +			bpp = to_bpp_int(crtc_state->dsc.compressed_bpp_x16);
>  		else
>  			bpp = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
>  
> @@ -1451,8 +1451,8 @@ static void gen11_dsi_get_timings(struct intel_encoder *encoder,
>  	struct drm_display_mode *adjusted_mode =
>  					&pipe_config->hw.adjusted_mode;
>  
> -	if (pipe_config->dsc.compressed_bpp) {
> -		int div = pipe_config->dsc.compressed_bpp;
> +	if (pipe_config->dsc.compressed_bpp_x16) {
> +		int div = to_bpp_int(pipe_config->dsc.compressed_bpp_x16);
>  		int mul = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
>  
>  		adjusted_mode->crtc_htotal =
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 19605264a35c..aa93ccd6c2aa 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -528,7 +528,7 @@ static unsigned int calc_hblank_early_prog(struct intel_encoder *encoder,
>  	h_active = crtc_state->hw.adjusted_mode.crtc_hdisplay;
>  	h_total = crtc_state->hw.adjusted_mode.crtc_htotal;
>  	pixel_clk = crtc_state->hw.adjusted_mode.crtc_clock;
> -	vdsc_bpp = crtc_state->dsc.compressed_bpp;
> +	vdsc_bpp = to_bpp_int(crtc_state->dsc.compressed_bpp_x16);
>  	cdclk = i915->display.cdclk.hw.cdclk;
>  	/* fec= 0.972261, using rounding multiplier of 1000000 */
>  	fec_coeff = 972261;
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 858c959f7bab..7b6d299fbcf2 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -3384,8 +3384,8 @@ static void fill_dsc(struct intel_crtc_state *crtc_state,
>  
>  	crtc_state->pipe_bpp = bpc * 3;
>  
> -	crtc_state->dsc.compressed_bpp = min(crtc_state->pipe_bpp,
> -					     VBT_DSC_MAX_BPP(dsc->max_bpp));
> +	crtc_state->dsc.compressed_bpp_x16 = to_bpp_x16(min(crtc_state->pipe_bpp,
> +							    VBT_DSC_MAX_BPP(dsc->max_bpp)));
>  
>  	/*
>  	 * FIXME: This is ugly, and slice count should take DSC engine
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index ad5251ba6fe1..06a1e99a2762 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2567,7 +2567,7 @@ static int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
>  		 * => CDCLK >= compressed_bpp * Pixel clock  / 2 * Bigjoiner Interface bits
>  		 */
>  		int bigjoiner_interface_bits = DISPLAY_VER(i915) > 13 ? 36 : 24;
> -		int min_cdclk_bj = (crtc_state->dsc.compressed_bpp * pixel_clock) /
> +		int min_cdclk_bj = (to_bpp_int(crtc_state->dsc.compressed_bpp_x16) * pixel_clock) /
>  				   (2 * bigjoiner_interface_bits);
>  
>  		min_cdclk = max(min_cdclk, min_cdclk_bj);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 83e1bc858b9f..afcbdd4f105a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5365,7 +5365,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  
>  	PIPE_CONF_CHECK_I(dsc.compression_enable);
>  	PIPE_CONF_CHECK_I(dsc.dsc_split);
> -	PIPE_CONF_CHECK_I(dsc.compressed_bpp);
> +	PIPE_CONF_CHECK_I(dsc.compressed_bpp_x16);
>  
>  	PIPE_CONF_CHECK_BOOL(splitter.enable);
>  	PIPE_CONF_CHECK_I(splitter.link_count);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index c21064794f32..9eb7b8912076 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1353,7 +1353,8 @@ struct intel_crtc_state {
>  	struct {
>  		bool compression_enable;
>  		bool dsc_split;
> -		u16 compressed_bpp;
> +		/* Compressed Bpp in U6.4 format (first 4 bits for fractional part) */
> +		u16 compressed_bpp_x16;
>  		u8 slice_count;
>  		struct drm_dsc_config config;
>  	} dsc;
> @@ -2108,4 +2109,19 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
>  	return fb ? to_intel_framebuffer(fb)->frontbuffer : NULL;
>  }
>  
> +static inline int to_bpp_int(int bpp_x16)
> +{
> +	return bpp_x16 >> 4;
> +}
> +
> +static inline int to_bpp_frac_dec(int bpp_x16)
> +{
> +	return (bpp_x16 & 0xf) * 625;
> +}
> +
> +static inline int to_bpp_x16(int bpp)
> +{
> +	return bpp << 4;
> +}
> +

This file is not the place for random helpers.

It could even be a separate file for 6.4 fixed point.

At some point we might want to move this to drm core even, and perhaps
it could even be a struct so there are no misuses, but gotta start
somewhere.

(There's an include/drm/drm_fixed.h for 20.12, for instance.)


BR,
Jani.



>  #endif /*  __INTEL_DISPLAY_TYPES_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 2206b45bc78c..9b88ac3a73c7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1863,7 +1863,7 @@ icl_dsc_compute_link_config(struct intel_dp *intel_dp,
>  					      valid_dsc_bpp[i],
>  					      timeslots);
>  		if (ret == 0) {
> -			pipe_config->dsc.compressed_bpp = valid_dsc_bpp[i];
> +			pipe_config->dsc.compressed_bpp_x16 = to_bpp_x16(valid_dsc_bpp[i]);
>  			return 0;
>  		}
>  	}
> @@ -1901,7 +1901,7 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
>  					      compressed_bpp,
>  					      timeslots);
>  		if (ret == 0) {
> -			pipe_config->dsc.compressed_bpp = compressed_bpp;
> +			pipe_config->dsc.compressed_bpp_x16 = to_bpp_x16(compressed_bpp);
>  			return 0;
>  		}
>  	}
> @@ -2085,7 +2085,7 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>  	/* Compressed BPP should be less than the Input DSC bpp */
>  	dsc_max_bpp = min(dsc_max_bpp, pipe_bpp - 1);
>  
> -	pipe_config->dsc.compressed_bpp = max(dsc_min_bpp, dsc_max_bpp);
> +	pipe_config->dsc.compressed_bpp_x16 = to_bpp_x16(max(dsc_min_bpp, dsc_max_bpp));
>  
>  	pipe_config->pipe_bpp = pipe_bpp;
>  
> @@ -2172,17 +2172,19 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  	if (ret < 0) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Cannot compute valid DSC parameters for Input Bpp = %d "
> -			    "Compressed BPP = %d\n",
> +			    "Compressed BPP = %d.%d\n",
>  			    pipe_config->pipe_bpp,
> -			    pipe_config->dsc.compressed_bpp);
> +			    to_bpp_int(pipe_config->dsc.compressed_bpp_x16),
> +			    to_bpp_frac_dec(pipe_config->dsc.compressed_bpp_x16));
>  		return ret;
>  	}
>  
>  	pipe_config->dsc.compression_enable = true;
>  	drm_dbg_kms(&dev_priv->drm, "DP DSC computed with Input Bpp = %d "
> -		    "Compressed Bpp = %d Slice Count = %d\n",
> +		    "Compressed Bpp = %d.%d Slice Count = %d\n",
>  		    pipe_config->pipe_bpp,
> -		    pipe_config->dsc.compressed_bpp,
> +		    to_bpp_int(pipe_config->dsc.compressed_bpp_x16),
> +		    to_bpp_frac_dec(pipe_config->dsc.compressed_bpp_x16),
>  		    pipe_config->dsc.slice_count);
>  
>  	return 0;
> @@ -2261,15 +2263,16 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  
>  	if (pipe_config->dsc.compression_enable) {
>  		drm_dbg_kms(&i915->drm,
> -			    "DP lane count %d clock %d Input bpp %d Compressed bpp %d\n",
> +			    "DP lane count %d clock %d Input bpp %d Compressed bpp %d.%d\n",
>  			    pipe_config->lane_count, pipe_config->port_clock,
>  			    pipe_config->pipe_bpp,
> -			    pipe_config->dsc.compressed_bpp);
> +			    to_bpp_int(pipe_config->dsc.compressed_bpp_x16),
> +			    to_bpp_frac_dec(pipe_config->dsc.compressed_bpp_x16));
>  
>  		drm_dbg_kms(&i915->drm,
>  			    "DP link rate required %i available %i\n",
>  			    intel_dp_link_required(adjusted_mode->crtc_clock,
> -						   pipe_config->dsc.compressed_bpp),
> +						   to_bpp_int(pipe_config->dsc.compressed_bpp_x16)),
>  			    intel_dp_max_data_rate(pipe_config->port_clock,
>  						   pipe_config->lane_count));
>  	} else {
> @@ -2702,7 +2705,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  		intel_dp_limited_color_range(pipe_config, conn_state);
>  
>  	if (pipe_config->dsc.compression_enable)
> -		link_bpp = pipe_config->dsc.compressed_bpp;
> +		link_bpp = pipe_config->dsc.compressed_bpp_x16;
>  	else
>  		link_bpp = intel_dp_output_bpp(pipe_config->output_format,
>  					       pipe_config->pipe_bpp);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 2d1c42a5e684..68a81f10e772 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -140,7 +140,7 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  		if (!dsc)
>  			crtc_state->pipe_bpp = bpp;
>  		else
> -			crtc_state->dsc.compressed_bpp = bpp;
> +			crtc_state->dsc.compressed_bpp_x16 = to_bpp_x16(bpp);
>  		drm_dbg_kms(&i915->drm, "Got %d slots for pipe bpp %d dsc %d\n", slots, bpp, dsc);
>  	}
>  
> @@ -238,13 +238,13 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
>  	if (slots < 0)
>  		return slots;
>  
> -	last_compressed_bpp = crtc_state->dsc.compressed_bpp;
> +	last_compressed_bpp = to_bpp_int(crtc_state->dsc.compressed_bpp_x16);
>  
> -	crtc_state->dsc.compressed_bpp = intel_dp_dsc_nearest_valid_bpp(i915,
> -									last_compressed_bpp,
> -									crtc_state->pipe_bpp);
> +	crtc_state->dsc.compressed_bpp_x16 =
> +				to_bpp_x16(intel_dp_dsc_nearest_valid_bpp(i915, last_compressed_bpp,
> +									  crtc_state->pipe_bpp));
>  
> -	if (crtc_state->dsc.compressed_bpp != last_compressed_bpp)
> +	if (crtc_state->dsc.compressed_bpp_x16 != to_bpp_x16(last_compressed_bpp))
>  		need_timeslot_recalc = true;
>  
>  	/*
> @@ -253,14 +253,14 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
>  	 */
>  	if (need_timeslot_recalc) {
>  		slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state,
> -							     crtc_state->dsc.compressed_bpp,
> -							     crtc_state->dsc.compressed_bpp,
> +							     to_bpp_int(crtc_state->dsc.compressed_bpp_x16),
> +							     to_bpp_int(crtc_state->dsc.compressed_bpp_x16),
>  							     limits, conn_state, 2 * 3, true);
>  		if (slots < 0)
>  			return slots;
>  	}
>  
> -	intel_link_compute_m_n(crtc_state->dsc.compressed_bpp,
> +	intel_link_compute_m_n(to_bpp_int(crtc_state->dsc.compressed_bpp_x16),
>  			       crtc_state->lane_count,
>  			       adjusted_mode->crtc_clock,
>  			       crtc_state->port_clock,
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index b24601d0b2c5..bfc41972a0bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -248,7 +248,7 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
>  	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	struct drm_dsc_config *vdsc_cfg = &pipe_config->dsc.config;
> -	u16 compressed_bpp = pipe_config->dsc.compressed_bpp;
> +	u16 compressed_bpp = to_bpp_int(pipe_config->dsc.compressed_bpp_x16);
>  	int err;
>  	int ret;
>  
> @@ -878,7 +878,7 @@ static void intel_dsc_get_pps_config(struct intel_crtc_state *crtc_state)
>  	if (vdsc_cfg->native_420)
>  		vdsc_cfg->bits_per_pixel >>= 1;
>  
> -	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4;
> +	crtc_state->dsc.compressed_bpp_x16 = vdsc_cfg->bits_per_pixel;
>  
>  	/* PPS_2 */
>  	intel_dsc_read_and_verify_pps_reg(crtc_state, 2, &pps_temp);

-- 
Jani Nikula, Intel Open Source Graphics Center
