Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90AB78CC641
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 20:23:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA70810E435;
	Wed, 22 May 2024 18:23:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="epDhKH7u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68B8D10E454
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2024 18:23:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716402203; x=1747938203;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Nq+ttBmBqeklcOaPAErph5Jqk08dtUJdvEIgmJ2RLKE=;
 b=epDhKH7u3OetVF5IZwshmPebIGGKjNyhme1IrFnBSOSZLamMJfBnFVVL
 ecpwu37DUtXxqcqKGzYv5ebj8Dt+cJCQliy/Ftl2PRCIxscnkiywqylwi
 wa9yv2OUxg7UQMw3B7RROqlPAIMgNz3ngpZpFIQtQOqn3fdvNrzpdjqOe
 pWgdnzTuq6Sn1tEWP8soXkhK0Ednd+VBLcqbhsZYM3xoqbmSeN6RIjfg3
 RyWDu/gRLHk9AP6UjwW1kbo+s0PgqYRkvabtfZCrw7C907DFuO4BcdT5D
 P9as5bwBUA+u8iJ7dQF7qpSn9oNVI5LavG5v24ompzqXs3wgO5VzbGTTr w==;
X-CSE-ConnectionGUID: DZq+1VTcSqWcdh4gewX6hw==
X-CSE-MsgGUID: K2mq0vbgQ6eS+i92gvN8qA==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="12514808"
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="12514808"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 11:23:23 -0700
X-CSE-ConnectionGUID: ExgKxYT6TYmJi+rkif9+MA==
X-CSE-MsgGUID: tZMy5DBtTmmg15dU4B4xCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="33360932"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 22 May 2024 11:23:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 May 2024 21:23:20 +0300
Date: Wed, 22 May 2024 21:23:20 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 04/21] drm/i915/dp: Sanitize
 intel_dp_get_link_train_fallback_values()
Message-ID: <Zk44GKykmIQ_fpWi@intel.com>
References: <20240520185822.3725844-1-imre.deak@intel.com>
 <20240520185822.3725844-5-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240520185822.3725844-5-imre.deak@intel.com>
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

On Mon, May 20, 2024 at 09:58:02PM +0300, Imre Deak wrote:
> Reduce the indentation in intel_dp_get_link_train_fallback_values() by
> adding separate helpers to reduce the link rate and lane count. Also
> simplify things by passing crtc_state to the function.
> 
> This also prepares for later patches in the patchset adding a limitation
> on how the link params are reduced.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../drm/i915/display/intel_dp_link_training.c | 82 ++++++++++++-------
>  1 file changed, 51 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 4db293f256896..edc970036866a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1109,11 +1109,37 @@ static bool intel_dp_can_link_train_fallback_for_edp(struct intel_dp *intel_dp,
>  	return true;
>  }
>  
> +static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
> +{
> +	int rate_index;
> +	int new_rate;
> +
> +	rate_index = intel_dp_rate_index(intel_dp->common_rates,
> +					 intel_dp->num_common_rates,
> +					 current_rate);
> +
> +	if (rate_index <= 0)
> +		return -1;
> +
> +	new_rate = intel_dp_common_rate(intel_dp, rate_index - 1);
> +
> +	return new_rate;

This is structured as

if (bad)
	fail;
success;

> +}
> +
> +static int reduce_lane_count(struct intel_dp *intel_dp, int current_lane_count)
> +{
> +	if (current_lane_count > 1)
> +		return current_lane_count >> 1;
> +
> +	return -1;

whereas this is

if (ok)
	success;
fail;

I'd rearrange one of them so the logic is the same way around in both.

Otherwise lgtm
Reviewed-by: Ville Syrj�l� <ville.syrjala@linux.intel.com>

> +}
> +
>  static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
> -						   int link_rate, u8 lane_count)
> +						   const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> -	int index;
> +	int new_link_rate;
> +	int new_lane_count;
>  
>  	/*
>  	 * TODO: Enable fallback on MST links once MST link compute can handle
> @@ -1131,36 +1157,32 @@ static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
>  		return 0;
>  	}
>  
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
> +	new_lane_count = crtc_state->lane_count;
> +	new_link_rate = reduce_link_rate(intel_dp, crtc_state->port_clock);
> +	if (new_link_rate < 0) {
> +		new_lane_count = reduce_lane_count(intel_dp, crtc_state->lane_count);
> +		new_link_rate = intel_dp_max_common_rate(intel_dp);
> +	}
> +
> +	if (new_lane_count < 0) {
>  		drm_err(&i915->drm, "Link Training Unsuccessful\n");
>  		return -1;
>  	}
>  
> +	if (intel_dp_is_edp(intel_dp) &&
> +	    !intel_dp_can_link_train_fallback_for_edp(intel_dp, new_link_rate, new_lane_count)) {
> +		drm_dbg_kms(&i915->drm,
> +			    "Retrying Link training for eDP with same parameters\n");
> +		return 0;
> +	}
> +
> +	drm_dbg_kms(&i915->drm, "Reducing link parameters from %dx%d to %dx%d\n",
> +		    crtc_state->lane_count, crtc_state->port_clock,
> +		    new_lane_count, new_link_rate);
> +
> +	intel_dp->link.max_rate = new_link_rate;
> +	intel_dp->link.max_lane_count = new_lane_count;
> +
>  	return 0;
>  }
>  
> @@ -1178,9 +1200,7 @@ static void intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp,
>  		lt_dbg(intel_dp, DP_PHY_DPRX,
>  		       "Link Training failed with HOBL active, not enabling it from now on\n");
>  		intel_dp->hobl_failed = true;
> -	} else if (intel_dp_get_link_train_fallback_values(intel_dp,
> -							   crtc_state->port_clock,
> -							   crtc_state->lane_count)) {
> +	} else if (intel_dp_get_link_train_fallback_values(intel_dp, crtc_state)) {
>  		return;
>  	}
>  
> -- 
> 2.43.3

-- 
Ville Syrj�l�
Intel
