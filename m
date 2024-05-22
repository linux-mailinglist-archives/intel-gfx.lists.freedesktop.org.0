Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF338CC640
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 20:23:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 955ED10E390;
	Wed, 22 May 2024 18:23:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ew7g/Tnu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0FDA10E390
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2024 18:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716402189; x=1747938189;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=o9blDFG6vt1+CoyfrplhFyNSeLvNFjC8j/fVB9mXddQ=;
 b=Ew7g/TnuJyZfObwp2/vzg3n5eIHlZlZMGcGHcwRIt6Py3ddoyZ4ktnh2
 L+LBL4yR4BRm04sTOfiQf4eVciu3XkGXTtjS895XXdRkfXu3jy9ehiCks
 g6vBZ9YenLfuoTAbcvzgdn17SLLYXAup0DQPmu+ukVvofOjCKbkqLY8gE
 Bh7sSR4pPiCBldv90LJpPK4haKTp6ozOI1Wf2XjSFSASJ7aVYaQJRCLF+
 Qodk3YWHj+eOUjaYtBCfJbnN4DPglLr5xz3p7YtWj5paODEeCeCeaxyuX
 b5DJa8LpmJVOCwwSv4jXRD4O099/DuWYPHAAceoNOMXDf1KYFVGQTyubf w==;
X-CSE-ConnectionGUID: vzr/MiavQ1qVmFXwxOhfuQ==
X-CSE-MsgGUID: 9X3LsrOtQICb/zFRGPfmGw==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="12514792"
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="12514792"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 11:23:09 -0700
X-CSE-ConnectionGUID: FdwrJ4G8Q4iErf8spMm7pg==
X-CSE-MsgGUID: 0LS0SJ8gTe2kT0Ecq5eOyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="33360887"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 22 May 2024 11:23:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 May 2024 21:23:06 +0300
Date: Wed, 22 May 2024 21:23:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 03/21] drm/i915/dp: Move link train fallback to
 intel_dp_link_training.c
Message-ID: <Zk44ChJS3IqC8pcj@intel.com>
References: <20240520185822.3725844-1-imre.deak@intel.com>
 <20240520185822.3725844-4-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240520185822.3725844-4-imre.deak@intel.com>
X-Patchwork-Hint: comment
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

On Mon, May 20, 2024 at 09:58:01PM +0300, Imre Deak wrote:
> Move the functions used to reduce the link parameters during link
> training to intel_dp_link_training.c .
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c       | 76 +------------------
>  drivers/gpu/drm/i915/display/intel_dp.h       |  4 +-
>  .../drm/i915/display/intel_dp_link_training.c | 73 ++++++++++++++++++
>  3 files changed, 77 insertions(+), 76 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index ceedd3ef41946..81e620dd33bb7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -329,7 +329,7 @@ static int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
>  				       intel_dp->num_common_rates, max_rate);
>  }
>  
> -static int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
> +int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
>  {
>  	if (drm_WARN_ON(&dp_to_i915(intel_dp)->drm,
>  			index < 0 || index >= intel_dp->num_common_rates))
> @@ -604,7 +604,7 @@ static int intersect_rates(const int *source_rates, int source_len,
>  }
>  
>  /* return index of rate in rates array, or -1 if not found */
> -static int intel_dp_rate_index(const int *rates, int len, int rate)
> +int intel_dp_rate_index(const int *rates, int len, int rate)
>  {
>  	int i;
>  
> @@ -654,78 +654,6 @@ static bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
>  	return true;
>  }
>  
> -static bool intel_dp_can_link_train_fallback_for_edp(struct intel_dp *intel_dp,
> -						     int link_rate,
> -						     u8 lane_count)
> -{
> -	/* FIXME figure out what we actually want here */
> -	const struct drm_display_mode *fixed_mode =
> -		intel_panel_preferred_fixed_mode(intel_dp->attached_connector);
> -	int mode_rate, max_rate;
> -
> -	mode_rate = intel_dp_link_required(fixed_mode->clock, 18);
> -	max_rate = intel_dp_max_link_data_rate(intel_dp, link_rate, lane_count);
> -	if (mode_rate > max_rate)
> -		return false;
> -
> -	return true;
> -}
> -
> -int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
> -					    int link_rate, u8 lane_count)
> -{
> -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> -	int index;
> -
> -	/*
> -	 * TODO: Enable fallback on MST links once MST link compute can handle
> -	 * the fallback params.
> -	 */
> -	if (intel_dp->is_mst) {
> -		drm_err(&i915->drm, "Link Training Unsuccessful\n");
> -		return -1;
> -	}
> -
> -	if (intel_dp_is_edp(intel_dp) && !intel_dp->use_max_params) {
> -		drm_dbg_kms(&i915->drm,
> -			    "Retrying Link training for eDP with max parameters\n");
> -		intel_dp->use_max_params = true;
> -		return 0;
> -	}
> -
> -	index = intel_dp_rate_index(intel_dp->common_rates,
> -				    intel_dp->num_common_rates,
> -				    link_rate);
> -	if (index > 0) {
> -		if (intel_dp_is_edp(intel_dp) &&
> -		    !intel_dp_can_link_train_fallback_for_edp(intel_dp,
> -							      intel_dp_common_rate(intel_dp, index - 1),
> -							      lane_count)) {
> -			drm_dbg_kms(&i915->drm,
> -				    "Retrying Link training for eDP with same parameters\n");
> -			return 0;
> -		}
> -		intel_dp->link.max_rate = intel_dp_common_rate(intel_dp, index - 1);
> -		intel_dp->link.max_lane_count = lane_count;
> -	} else if (lane_count > 1) {
> -		if (intel_dp_is_edp(intel_dp) &&
> -		    !intel_dp_can_link_train_fallback_for_edp(intel_dp,
> -							      intel_dp_max_common_rate(intel_dp),
> -							      lane_count >> 1)) {
> -			drm_dbg_kms(&i915->drm,
> -				    "Retrying Link training for eDP with same parameters\n");
> -			return 0;
> -		}
> -		intel_dp->link.max_rate = intel_dp_max_common_rate(intel_dp);
> -		intel_dp->link.max_lane_count = lane_count >> 1;
> -	} else {
> -		drm_err(&i915->drm, "Link Training Unsuccessful\n");
> -		return -1;
> -	}
> -
> -	return 0;
> -}
> -
>  u32 intel_dp_mode_to_fec_clock(u32 mode_clock)
>  {
>  	return div_u64(mul_u32_u32(mode_clock, DP_DSC_FEC_OVERHEAD_FACTOR),
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index aad2223df2a35..e7b47e7bcd98b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -55,8 +55,6 @@ void intel_dp_connector_sync_state(struct intel_connector *connector,
>  				   const struct intel_crtc_state *crtc_state);
>  void intel_dp_set_link_params(struct intel_dp *intel_dp,
>  			      int link_rate, int lane_count);
> -int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
> -					    int link_rate, u8 lane_count);
>  int intel_dp_get_active_pipes(struct intel_dp *intel_dp,
>  			      struct drm_modeset_acquire_ctx *ctx,
>  			      u8 *pipe_mask);
> @@ -107,6 +105,8 @@ int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_state);
>  int intel_dp_rate_select(struct intel_dp *intel_dp, int rate);
>  int intel_dp_max_common_rate(struct intel_dp *intel_dp);
>  int intel_dp_max_common_lane_count(struct intel_dp *intel_dp);
> +int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
> +int intel_dp_rate_index(const int *rates, int len, int rate);
>  void intel_dp_update_sink_caps(struct intel_dp *intel_dp);
>  
>  void intel_dp_compute_rate(struct intel_dp *intel_dp, int port_clock,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 947575140059d..4db293f256896 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -25,6 +25,7 @@
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
>  #include "intel_dp_link_training.h"
> +#include "intel_panel.h"
>  
>  #define LT_MSG_PREFIX			"[CONNECTOR:%d:%s][ENCODER:%d:%s][%s] "
>  #define LT_MSG_ARGS(_intel_dp, _dp_phy)	(_intel_dp)->attached_connector->base.base.id, \
> @@ -1091,6 +1092,78 @@ intel_dp_link_train_phy(struct intel_dp *intel_dp,
>  	return ret;
>  }
>  
> +static bool intel_dp_can_link_train_fallback_for_edp(struct intel_dp *intel_dp,
> +						     int link_rate,
> +						     u8 lane_count)
> +{
> +	/* FIXME figure out what we actually want here */
> +	const struct drm_display_mode *fixed_mode =
> +		intel_panel_preferred_fixed_mode(intel_dp->attached_connector);
> +	int mode_rate, max_rate;
> +
> +	mode_rate = intel_dp_link_required(fixed_mode->clock, 18);
> +	max_rate = intel_dp_max_link_data_rate(intel_dp, link_rate, lane_count);
> +	if (mode_rate > max_rate)
> +		return false;
> +
> +	return true;
> +}
> +
> +static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
> +						   int link_rate, u8 lane_count)
> +{
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	int index;
> +
> +	/*
> +	 * TODO: Enable fallback on MST links once MST link compute can handle
> +	 * the fallback params.
> +	 */
> +	if (intel_dp->is_mst) {
> +		drm_err(&i915->drm, "Link Training Unsuccessful\n");
> +		return -1;
> +	}
> +
> +	if (intel_dp_is_edp(intel_dp) && !intel_dp->use_max_params) {
> +		drm_dbg_kms(&i915->drm,
> +			    "Retrying Link training for eDP with max parameters\n");
> +		intel_dp->use_max_params = true;
> +		return 0;
> +	}
> +
> +	index = intel_dp_rate_index(intel_dp->common_rates,
> +				    intel_dp->num_common_rates,
> +				    link_rate);
> +	if (index > 0) {
> +		if (intel_dp_is_edp(intel_dp) &&
> +		    !intel_dp_can_link_train_fallback_for_edp(intel_dp,
> +							      intel_dp_common_rate(intel_dp, index - 1),
> +							      lane_count)) {
> +			drm_dbg_kms(&i915->drm,
> +				    "Retrying Link training for eDP with same parameters\n");
> +			return 0;
> +		}
> +		intel_dp->link.max_rate = intel_dp_common_rate(intel_dp, index - 1);
> +		intel_dp->link.max_lane_count = lane_count;
> +	} else if (lane_count > 1) {
> +		if (intel_dp_is_edp(intel_dp) &&
> +		    !intel_dp_can_link_train_fallback_for_edp(intel_dp,
> +							      intel_dp_max_common_rate(intel_dp),
> +							      lane_count >> 1)) {
> +			drm_dbg_kms(&i915->drm,
> +				    "Retrying Link training for eDP with same parameters\n");
> +			return 0;
> +		}
> +		intel_dp->link.max_rate = intel_dp_max_common_rate(intel_dp);
> +		intel_dp->link.max_lane_count = lane_count >> 1;
> +	} else {
> +		drm_err(&i915->drm, "Link Training Unsuccessful\n");
> +		return -1;
> +	}
> +
> +	return 0;
> +}
> +
>  static void intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp,
>  						     const struct intel_crtc_state *crtc_state)
>  {
> -- 
> 2.43.3

-- 
Ville Syrjälä
Intel
