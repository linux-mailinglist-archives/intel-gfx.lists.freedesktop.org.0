Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1D437FDEA
	for <lists+intel-gfx@lfdr.de>; Thu, 13 May 2021 21:11:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A9F26EDA0;
	Thu, 13 May 2021 19:11:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B5CA6EDA0
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 May 2021 19:11:15 +0000 (UTC)
IronPort-SDR: Gcu0pleb1QL8YEqDrNw8cotdi/3wizcUaaknlIJjGCyeRULETti/QtFRfH4k4dk7wvKLw9BP2r
 UfFJzmLWpXew==
X-IronPort-AV: E=McAfee;i="6200,9189,9983"; a="180296173"
X-IronPort-AV: E=Sophos;i="5.82,296,1613462400"; d="scan'208";a="180296173"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2021 12:11:03 -0700
IronPort-SDR: l6N+18xv4YEA4msZwuNUKfHvcukt+/yXqn3PvUh+W2XhUJvpyowDyzGuKLLO4OOidozhNhQaqZ
 bGYjGCpITXUw==
X-IronPort-AV: E=Sophos;i="5.82,296,1613462400"; d="scan'208";a="431398172"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2021 12:11:03 -0700
Date: Thu, 13 May 2021 12:18:52 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210513191852.GE23292@labuser-Z97X-UD5H>
References: <20210508022820.780227-1-matthew.d.roper@intel.com>
 <20210508022820.780227-11-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210508022820.780227-11-matthew.d.roper@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v3 10/48] drm/i915/xelpd: Support DP1.4
 compression BPPs
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 07, 2021 at 07:27:42PM -0700, Matt Roper wrote:
> From: Vandita Kulkarni <vandita.kulkarni@intel.com>
> 
> Support compression BPPs from bpc to uncompressed BPP -1.
> So far we have 8,10,12 as valid compressed BPPS now the
> support is extended.
> 
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 32 ++++++++++++++++++-------
>  1 file changed, 24 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index f163a669f40f..8ccb3c3888f7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -109,6 +109,7 @@ bool intel_dp_is_edp(struct intel_dp *intel_dp)
>  }
>  
>  static void intel_dp_unset_edid(struct intel_dp *intel_dp);
> +static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
>  
>  /* update sink rates from dpcd */
>  static void intel_dp_set_sink_rates(struct intel_dp *intel_dp)
> @@ -494,7 +495,8 @@ small_joiner_ram_size_bits(struct drm_i915_private *i915)
>  static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>  				       u32 link_clock, u32 lane_count,
>  				       u32 mode_clock, u32 mode_hdisplay,
> -				       bool bigjoiner)
> +				       bool bigjoiner,
> +				       u32 pipe_bpp)
>  {
>  	u32 bits_per_pixel, max_bpp_small_joiner_ram;
>  	int i;
> @@ -519,6 +521,7 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>  	drm_dbg_kms(&i915->drm, "Max small joiner bpp: %u\n",
>  		    max_bpp_small_joiner_ram);
>  
> +
>  	/*
>  	 * Greatest allowed DSC BPP = MIN (output BPP from available Link BW
>  	 * check, output bpp from small joiner RAM check)
> @@ -541,12 +544,17 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>  		return 0;
>  	}
>  
> -	/* Find the nearest match in the array of known BPPs from VESA */
> -	for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp) - 1; i++) {
> -		if (bits_per_pixel < valid_dsc_bpp[i + 1])
> -			break;
> +	/* From XE_LPD onwards we support from bpc upto uncompressed bpp-1 BPPs */
> +	if (DISPLAY_VER(i915) >= 13) {
> +		bits_per_pixel = min(bits_per_pixel, pipe_bpp - 1);
> +	} else {
> +		/* Find the nearest match in the array of known BPPs from VESA */
> +		for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp) - 1; i++) {
> +			if (bits_per_pixel < valid_dsc_bpp[i + 1])
> +				break;
> +		}
> +		bits_per_pixel = valid_dsc_bpp[i];
>  	}
> -	bits_per_pixel = valid_dsc_bpp[i];
>  
>  	/*
>  	 * Compressed BPP in U6.4 format so multiply by 16, for Gen 11,
> @@ -780,6 +788,12 @@ intel_dp_mode_valid(struct drm_connector *connector,
>  	 */
>  	if (DISPLAY_VER(dev_priv) >= 10 &&
>  	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
> +		/*
> +		 * TBD pass the connector BPC,
> +		 * for now U8_MAX so that max BPC on that platform would be picked
> +		 */
> +		int pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, U8_MAX);
> +
>  		if (intel_dp_is_edp(intel_dp)) {
>  			dsc_max_output_bpp =
>  				drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd) >> 4;
> @@ -793,7 +807,8 @@ intel_dp_mode_valid(struct drm_connector *connector,
>  							    max_lanes,
>  							    target_clock,
>  							    mode->hdisplay,
> -							    bigjoiner) >> 4;
> +							    bigjoiner,
> +							    pipe_bpp) >> 4;
>  			dsc_slice_count =
>  				intel_dp_dsc_get_slice_count(intel_dp,
>  							     target_clock,
> @@ -1240,7 +1255,8 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  						    pipe_config->lane_count,
>  						    adjusted_mode->crtc_clock,
>  						    adjusted_mode->crtc_hdisplay,
> -						    pipe_config->bigjoiner);
> +						    pipe_config->bigjoiner,
> +						    pipe_bpp);
>  		dsc_dp_slice_count =
>  			intel_dp_dsc_get_slice_count(intel_dp,
>  						     adjusted_mode->crtc_clock,
> -- 
> 2.25.4
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
