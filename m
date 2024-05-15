Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C718C66D7
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 15:05:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0F2C10E16B;
	Wed, 15 May 2024 13:05:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aG+/nC5O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92DC410E16B
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 13:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715778337; x=1747314337;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=PjzA5seI8BsN0qP0piJy4aUouc0t487N/loqMSxETz0=;
 b=aG+/nC5OsriO2zKOw4yOsZHCqUFWtjFu3xEJdwE23AZ+yekG0OTfaJJm
 u2MIkKvOv7qyk9K6deYfj1q+yfzlDY+c+lvvRs1djuwX7jnMwyVQl3Lk0
 /F/iO4cbjf3ujeL0JTMqT2YtHHXAGbJPS89DeA6QWBqYYk/B91Qd5AaQv
 1RzPceIMaO7QMXEK1ZzWtylUwEBmjrQ41ch383r61+9ytEmt/0w733tqt
 LAyB1gulHVQ9tv32Q3VsjX0+ALJ2cL6RFBkW7jT8DSWSQ/O+TjWZYgZ2S
 WJX4uQYsRo3Y7hUk1KflVcTv3uO+MTTOvSUu07DwtKc4wh/HnofVEGLDv Q==;
X-CSE-ConnectionGUID: eeJzbTaUTauZII6vIFEAwA==
X-CSE-MsgGUID: OxbhGKieSlK3G4prDzc7iw==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="37204344"
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="37204344"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 06:05:36 -0700
X-CSE-ConnectionGUID: V3FVjRApSEyZCD3c9FBWQw==
X-CSE-MsgGUID: K+NXJX4VTESI5NcMYTDbpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="31145616"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.141])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 06:05:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 04/20] drm/i915/dp: Sanitize
 intel_dp_get_link_train_fallback_values()
In-Reply-To: <20240514191418.2863344-5-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240514191418.2863344-1-imre.deak@intel.com>
 <20240514191418.2863344-5-imre.deak@intel.com>
Date: Wed, 15 May 2024 16:05:32 +0300
Message-ID: <87eda3cjj7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 14 May 2024, Imre Deak <imre.deak@intel.com> wrote:
> Reduce the indentation in intel_dp_get_link_train_fallback_values() by
> adding separate helpers to reduce the link rate and lane count. Also
> simplify things by passing crtc_state to the function.
>
> This also prepares for later patches in the patchset adding a limitation
> on how the link params are reduced.

Currently we have these rigid reductions of rate, lane and bpp. I don't
think we want to lock in to this policy, but rather make it more
flexible. So I think this patch is counter productive.

My grand plan I never got around to was to create a list/array of
possible sets of link parameters that you could trivially sort, filter,
iterate, and remove parameters from. (And I don't mean a statically
written one, but a dynamically generated list.)

In that scheme, you'd get the fallback values by advancing one element
in the data structure. And you know when you've exhausted all fallbacks
when you're at the end. None of this complicated "if we've finished x,
then try y, then z".

And then you could sort the list based on bandwidth, and go from
uncompressed uhbr to compressed non-uhbr to whatever.


BR,
Jani.



>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../drm/i915/display/intel_dp_link_training.c | 82 ++++++++++++-------
>  1 file changed, 51 insertions(+), 31 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 1b4694b46cea7..1ea4aaf9592f1 100644
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
> +}
> +
> +static int reduce_lane_count(struct intel_dp *intel_dp, int current_lane_count)
> +{
> +	if (current_lane_count > 1)
> +		return current_lane_count >> 1;
> +
> +	return -1;
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
> -		intel_dp->link_train.max_rate = intel_dp_common_rate(intel_dp, index - 1);
> -		intel_dp->link_train.max_lane_count = lane_count;
> -	} else if (lane_count > 1) {
> -		if (intel_dp_is_edp(intel_dp) &&
> -		    !intel_dp_can_link_train_fallback_for_edp(intel_dp,
> -							      intel_dp_max_common_rate(intel_dp),
> -							      lane_count >> 1)) {
> -			drm_dbg_kms(&i915->drm,
> -				    "Retrying Link training for eDP with same parameters\n");
> -			return 0;
> -		}
> -		intel_dp->link_train.max_rate = intel_dp_max_common_rate(intel_dp);
> -		intel_dp->link_train.max_lane_count = lane_count >> 1;
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
> +		    crtc_state->port_clock, crtc_state->lane_count,
> +		    new_link_rate, new_lane_count);
> +
> +	intel_dp->link_train.max_rate = new_link_rate;
> +	intel_dp->link_train.max_lane_count = new_lane_count;
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

-- 
Jani Nikula, Intel
