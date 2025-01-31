Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2A9A23FD8
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 16:46:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FA3510E392;
	Fri, 31 Jan 2025 15:45:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jZxcX/nE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC37F10E392;
 Fri, 31 Jan 2025 15:45:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738338356; x=1769874356;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=w6saSSeH8BmLS6gGUPQwIA6cgOK7kXY+m2oA63sih8U=;
 b=jZxcX/nErBRCm40LHs3Wsb/JzeMU4Efl0tTVygehrrNOuEYKQrbG0JvG
 oFUR34kEdacaEKhhaCHkECvuJ3MXSD1SEA26N5l9KWm1AFEzWv3e1ru5n
 alHlzK1ZlZsk84oJ+Qg8ljuzpCXLYIwMSRDQ6afB77zvOI3K/Pm25aK+H
 jKtQEnoWB5dt2ZrYJu4hgsZVF5Kop8F2qEAs0t/mzslKJquRCo5TnSiQN
 bgTfcReBm28jry7e9sVDFpQZ5tF/TfR3v5/39lW1RzJeWW2YlILenEpgq
 safDQZZ84uOZaTpszQYIUnQRF/7FPZYIJj+e+HNIqaPQ4Qtca4j+qe2Iz g==;
X-CSE-ConnectionGUID: eXDUZFLBRMGpFIHUXTjvMQ==
X-CSE-MsgGUID: dmU3xnDDSFWwgxHro8A6Hw==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="39047095"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="39047095"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 07:45:55 -0800
X-CSE-ConnectionGUID: 7Gq87+NlRzS3477ZqBdAHQ==
X-CSE-MsgGUID: Hyg482+bQ/qq1qs689Je7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="109439434"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 07:45:54 -0800
Date: Fri, 31 Jan 2025 17:46:50 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 14/14] drm/i915/mst: Convert
 intel_dp_mtp_tu_compute_config() to .4 format
Message-ID: <Z5zwauaji-K48_uc@ideak-desk.fi.intel.com>
References: <cover.1738327620.git.jani.nikula@intel.com>
 <887306a47ce4550226f5d54178f667a52840a11c.1738327620.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <887306a47ce4550226f5d54178f667a52840a11c.1738327620.git.jani.nikula@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 31, 2025 at 02:50:07PM +0200, Jani Nikula wrote:
> Move towards always using the fxp q4 or .4 fixed point format for
> compressed bpp. We'll need to pass the more accurate bpp to this
> function later on.
> 
> Always use _x16 naming for variables that are in .4 fixed point for
> clarity.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     |  4 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 52 ++++++++++++---------
>  drivers/gpu/drm/i915/display/intel_dp_mst.h |  2 +-
>  3 files changed, 33 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 25160a5d12eb..80f550a59bcb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2616,8 +2616,8 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  			ret = intel_dp_mtp_tu_compute_config(intel_dp,
>  							     pipe_config,
>  							     conn_state,
> -							     pipe_config->pipe_bpp,
> -							     pipe_config->pipe_bpp,
> +							     fxp_q4_from_int(pipe_config->pipe_bpp),
> +							     fxp_q4_from_int(pipe_config->pipe_bpp),
>  							     0, false);
>  		if (ret)
>  			dsc_needed = true;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 868d0948ca27..b729e27cdde2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -212,7 +212,7 @@ static int intel_dp_mst_dsc_get_slice_count(const struct intel_connector *connec
>  int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>  				   struct intel_crtc_state *crtc_state,
>  				   struct drm_connector_state *conn_state,
> -				   int min_bpp, int max_bpp, int step, bool dsc)
> +				   int min_bpp_x16, int max_bpp_x16, int bpp_step_x16, bool dsc)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	struct drm_atomic_state *state = crtc_state->uapi.state;
> @@ -222,9 +222,14 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>  	const struct drm_display_mode *adjusted_mode =
>  		&crtc_state->hw.adjusted_mode;
>  	bool is_mst = intel_dp->is_mst;
> -	int bpp, slots = -EINVAL;
> +	int bpp_x16, slots = -EINVAL;
>  	int dsc_slice_count = 0;
> -	int max_dpt_bpp;
> +	int max_dpt_bpp_x16;
> +
> +	/* shouldn't happen, sanity check */
> +	drm_WARN_ON(display->drm, !dsc && (fxp_q4_to_frac(min_bpp_x16) ||
> +					   fxp_q4_to_frac(max_bpp_x16) ||
> +					   fxp_q4_to_frac(bpp_step_x16)));
>  
>  	if (is_mst) {
>  		mst_state = drm_atomic_get_mst_topology_state(state, &intel_dp->mst_mgr);
> @@ -242,15 +247,15 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>  		crtc_state->fec_enable = !intel_dp_is_uhbr(crtc_state);
>  	}
>  
> -	max_dpt_bpp = intel_dp_mst_max_dpt_bpp(crtc_state, dsc);
> -	if (max_bpp > max_dpt_bpp) {
> -		drm_dbg_kms(display->drm, "Limiting bpp to max DPT bpp (%d -> %d)\n",
> -			    max_bpp, max_dpt_bpp);
> -		max_bpp = max_dpt_bpp;
> +	max_dpt_bpp_x16 = fxp_q4_from_int(intel_dp_mst_max_dpt_bpp(crtc_state, dsc));
> +	if (max_bpp_x16 > max_dpt_bpp_x16) {
> +		drm_dbg_kms(display->drm, "Limiting bpp to max DPT bpp (" FXP_Q4_FMT " -> " FXP_Q4_FMT ")\n",
> +			    FXP_Q4_ARGS(max_bpp_x16), FXP_Q4_ARGS(max_dpt_bpp_x16));
> +		max_bpp_x16 = max_dpt_bpp_x16;
>  	}
>  
> -	drm_dbg_kms(display->drm, "Looking for slots in range min bpp %d max bpp %d\n",
> -		    min_bpp, max_bpp);
> +	drm_dbg_kms(display->drm, "Looking for slots in range min bpp " FXP_Q4_FMT " max bpp " FXP_Q4_FMT "\n",
> +		    FXP_Q4_ARGS(min_bpp_x16), FXP_Q4_ARGS(max_bpp_x16));
>  
>  	if (dsc) {
>  		dsc_slice_count = intel_dp_mst_dsc_get_slice_count(connector, crtc_state);
> @@ -261,14 +266,15 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>  		}
>  	}
>  
> -	for (bpp = max_bpp; bpp >= min_bpp; bpp -= step) {
> +	for (bpp_x16 = max_bpp_x16; bpp_x16 >= min_bpp_x16; bpp_x16 -= bpp_step_x16) {
>  		int local_bw_overhead;
>  		int link_bpp_x16;
>  
> -		drm_dbg_kms(display->drm, "Trying bpp %d\n", bpp);
> +		drm_dbg_kms(display->drm, "Trying bpp " FXP_Q4_FMT "\n", FXP_Q4_ARGS(bpp_x16));
>  
> -		link_bpp_x16 = fxp_q4_from_int(dsc ? bpp :
> -					       intel_dp_output_bpp(crtc_state->output_format, bpp));
> +		link_bpp_x16 = dsc ? bpp_x16 :
> +			fxp_q4_from_int(intel_dp_output_bpp(crtc_state->output_format,
> +							    fxp_q4_to_int(bpp_x16)));
>  
>  		local_bw_overhead = intel_dp_mst_bw_overhead(crtc_state,
>  							     false, dsc_slice_count, link_bpp_x16);
> @@ -356,12 +362,12 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>  	}
>  
>  	if (!dsc)
> -		crtc_state->pipe_bpp = bpp;
> +		crtc_state->pipe_bpp = fxp_q4_to_int(bpp_x16);
>  	else
> -		crtc_state->dsc.compressed_bpp_x16 = fxp_q4_from_int(bpp);
> +		crtc_state->dsc.compressed_bpp_x16 = bpp_x16;
>  
> -	drm_dbg_kms(display->drm, "Got %d slots for pipe bpp %d dsc %d\n",
> -		    slots, bpp, dsc);
> +	drm_dbg_kms(display->drm, "Got %d slots for pipe bpp " FXP_Q4_FMT " dsc %d\n",
> +		    slots, FXP_Q4_ARGS(bpp_x16), dsc);
>  
>  	return 0;
>  }
> @@ -379,9 +385,9 @@ static int mst_stream_compute_link_config(struct intel_dp *intel_dp,
>  	 * YUV420 is only half of the pipe bpp value.
>  	 */
>  	return intel_dp_mtp_tu_compute_config(intel_dp, crtc_state, conn_state,
> -					      fxp_q4_to_int(limits->link.min_bpp_x16),
> -					      fxp_q4_to_int(limits->link.max_bpp_x16),
> -					      2 * 3, false);
> +					      limits->link.min_bpp_x16,
> +					      limits->link.max_bpp_x16,
> +					      fxp_q4_from_int(2 * 3), false);
>  }
>  
>  static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
> @@ -435,7 +441,9 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
>  	crtc_state->port_clock = limits->max_rate;
>  
>  	return intel_dp_mtp_tu_compute_config(intel_dp, crtc_state, conn_state,
> -					      min_compressed_bpp, max_compressed_bpp, 1, true);
> +					      fxp_q4_from_int(min_compressed_bpp),
> +					      fxp_q4_from_int(max_compressed_bpp),
> +					      fxp_q4_from_int(1), true);
>  }
>  
>  static int mst_stream_update_slots(struct intel_dp *intel_dp,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.h b/drivers/gpu/drm/i915/display/intel_dp_mst.h
> index a713a1c10154..c1bbfeb02ca9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.h
> @@ -34,6 +34,6 @@ bool intel_dp_mst_verify_dpcd_state(struct intel_dp *intel_dp);
>  int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>  				   struct intel_crtc_state *crtc_state,
>  				   struct drm_connector_state *conn_state,
> -				   int min_bpp, int max_bpp, int step, bool dsc);
> +				   int min_bpp_x16, int max_bpp_x16, int bpp_step_x16, bool dsc);
>  
>  #endif /* __INTEL_DP_MST_H__ */
> -- 
> 2.39.5
> 
