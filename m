Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5AD8C6683
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 14:52:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DDDB10E39B;
	Wed, 15 May 2024 12:52:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z1AAKNuc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B32C10E39B
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 12:52:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715777561; x=1747313561;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=5sBhIBr45QqJ11yBsoemCn3s7fYtv4fam0aovJ/2qUc=;
 b=Z1AAKNuccKsIcGwBp+7ZS9axITkhcvK2oPJXHnnlRK5ky+qwSlmQjg6A
 fh1b08K/mBL/cgTo1/JltfcijoFvBOxHauE9xFrB/K1ir9U5WJzCYbmGN
 QoIyYzZDOhyrnDyMs8rsXhrSObRJCuf4VedwtPDS/qv1FlEbCDYJW+UyW
 ux4CtSBMHD7tA4LOQi6jGSqeiZeKoavgbUI6OsjgeNps8HpBRcMEcojWZ
 NKkeXaq7/y9eAfywz0EtbqKBxGiEiJaryUpDRbFMYApKuq5AY+auNEKJV
 7oHyk//lCuilXxP/fe58sANfEO1yh6EEefcBzDoJRxPoRYH18dp/sAWFE w==;
X-CSE-ConnectionGUID: hjVG5whjQOyJctAispaPfw==
X-CSE-MsgGUID: dHy1oJFUQq2QAr6T1q7g5g==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="14770749"
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="14770749"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 05:52:40 -0700
X-CSE-ConnectionGUID: hZV0IZG3R3S/7EEoGKmqrw==
X-CSE-MsgGUID: 0uyjYTawS+iyhMYkR+Xgsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="61878933"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.141])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 05:52:37 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 02/20] drm/i915/dp: Move link train params to a
 substruct in intel_dp
In-Reply-To: <20240514191418.2863344-3-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240514191418.2863344-1-imre.deak@intel.com>
 <20240514191418.2863344-3-imre.deak@intel.com>
Date: Wed, 15 May 2024 15:52:33 +0300
Message-ID: <87h6ezck4u.fsf@intel.com>
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
> For clarity move the link training parameters updated during link
> training based on the pass/fail LT result under a substruct in intel_dp.
> This prepares for later patches in this patchset adding similar params
> here. Rename intel_dp_reset_max_link_params() to
> intel_dp_reset_link_train_params() to better reflect what state gets
> reset.

High level bikeshedding, why "link_train" instead of just "link"?

You could have three groups: source, sink and link.

BR,
Jani.


>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    | 12 ++++----
>  drivers/gpu/drm/i915/display/intel_dp.c       | 30 +++++++++----------
>  2 files changed, 22 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index fec3de25ea54e..7edb533758416 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1738,7 +1738,6 @@ struct intel_dp {
>  	u8 lane_count;
>  	u8 sink_count;
>  	bool link_trained;
> -	bool reset_link_params;
>  	bool use_max_params;
>  	u8 dpcd[DP_RECEIVER_CAP_SIZE];
>  	u8 psr_dpcd[EDP_PSR_RECEIVER_CAP_SIZE];
> @@ -1759,10 +1758,13 @@ struct intel_dp {
>  	/* intersection of source and sink rates */
>  	int num_common_rates;
>  	int common_rates[DP_MAX_SUPPORTED_RATES];
> -	/* Max lane count for the current link */
> -	int max_link_lane_count;
> -	/* Max rate for the current link */
> -	int max_link_rate;
> +	struct {
> +		/* Max lane count for the current link */
> +		int max_lane_count;
> +		/* Max rate for the current link */
> +		int max_rate;
> +	} link_train;
> +	bool reset_link_params;
>  	int mso_link_count;
>  	int mso_pixel_overlap;
>  	/* sink or branch descriptor */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 6b8a94d0ca999..ffa627c63e048 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -372,13 +372,13 @@ int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
>  
>  int intel_dp_max_lane_count(struct intel_dp *intel_dp)
>  {
> -	switch (intel_dp->max_link_lane_count) {
> +	switch (intel_dp->link_train.max_lane_count) {
>  	case 1:
>  	case 2:
>  	case 4:
> -		return intel_dp->max_link_lane_count;
> +		return intel_dp->link_train.max_lane_count;
>  	default:
> -		MISSING_CASE(intel_dp->max_link_lane_count);
> +		MISSING_CASE(intel_dp->link_train.max_lane_count);
>  		return 1;
>  	}
>  }
> @@ -644,7 +644,7 @@ static bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
>  	 * boot-up.
>  	 */
>  	if (link_rate == 0 ||
> -	    link_rate > intel_dp->max_link_rate)
> +	    link_rate > intel_dp->link_train.max_rate)
>  		return false;
>  
>  	if (lane_count == 0 ||
> @@ -705,8 +705,8 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
>  				    "Retrying Link training for eDP with same parameters\n");
>  			return 0;
>  		}
> -		intel_dp->max_link_rate = intel_dp_common_rate(intel_dp, index - 1);
> -		intel_dp->max_link_lane_count = lane_count;
> +		intel_dp->link_train.max_rate = intel_dp_common_rate(intel_dp, index - 1);
> +		intel_dp->link_train.max_lane_count = lane_count;
>  	} else if (lane_count > 1) {
>  		if (intel_dp_is_edp(intel_dp) &&
>  		    !intel_dp_can_link_train_fallback_for_edp(intel_dp,
> @@ -716,8 +716,8 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
>  				    "Retrying Link training for eDP with same parameters\n");
>  			return 0;
>  		}
> -		intel_dp->max_link_rate = intel_dp_max_common_rate(intel_dp);
> -		intel_dp->max_link_lane_count = lane_count >> 1;
> +		intel_dp->link_train.max_rate = intel_dp_max_common_rate(intel_dp);
> +		intel_dp->link_train.max_lane_count = lane_count >> 1;
>  	} else {
>  		drm_err(&i915->drm, "Link Training Unsuccessful\n");
>  		return -1;
> @@ -1382,7 +1382,7 @@ intel_dp_max_link_rate(struct intel_dp *intel_dp)
>  {
>  	int len;
>  
> -	len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->max_link_rate);
> +	len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link_train.max_rate);
>  
>  	return intel_dp_common_rate(intel_dp, len - 1);
>  }
> @@ -3017,10 +3017,10 @@ void intel_dp_set_link_params(struct intel_dp *intel_dp,
>  	intel_dp->lane_count = lane_count;
>  }
>  
> -static void intel_dp_reset_max_link_params(struct intel_dp *intel_dp)
> +static void intel_dp_reset_link_train_params(struct intel_dp *intel_dp)
>  {
> -	intel_dp->max_link_lane_count = intel_dp_max_common_lane_count(intel_dp);
> -	intel_dp->max_link_rate = intel_dp_max_common_rate(intel_dp);
> +	intel_dp->link_train.max_lane_count = intel_dp_max_common_lane_count(intel_dp);
> +	intel_dp->link_train.max_rate = intel_dp_max_common_rate(intel_dp);
>  }
>  
>  /* Enable backlight PWM and backlight PP control. */
> @@ -3355,7 +3355,7 @@ void intel_dp_sync_state(struct intel_encoder *encoder,
>  	intel_dp_tunnel_resume(intel_dp, crtc_state, dpcd_updated);
>  
>  	if (crtc_state)
> -		intel_dp_reset_max_link_params(intel_dp);
> +		intel_dp_reset_link_train_params(intel_dp);
>  }
>  
>  bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
> @@ -5888,7 +5888,7 @@ intel_dp_detect(struct drm_connector *connector,
>  	 * supports link training fallback params.
>  	 */
>  	if (intel_dp->reset_link_params || intel_dp->is_mst) {
> -		intel_dp_reset_max_link_params(intel_dp);
> +		intel_dp_reset_link_train_params(intel_dp);
>  		intel_dp->reset_link_params = false;
>  	}
>  
> @@ -6740,7 +6740,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
>  
>  	intel_dp_set_source_rates(intel_dp);
>  	intel_dp_set_common_rates(intel_dp);
> -	intel_dp_reset_max_link_params(intel_dp);
> +	intel_dp_reset_link_train_params(intel_dp);
>  
>  	/* init MST on ports that can support it */
>  	intel_dp_mst_encoder_init(dig_port,

-- 
Jani Nikula, Intel
