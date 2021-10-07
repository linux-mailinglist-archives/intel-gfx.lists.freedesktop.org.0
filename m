Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76AB242552E
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 16:17:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB62B6E530;
	Thu,  7 Oct 2021 14:17:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBE946E530
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 14:17:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="226158895"
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="226158895"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 07:17:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="624264688"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 07 Oct 2021 07:17:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Oct 2021 17:17:24 +0300
Date: Thu, 7 Oct 2021 17:17:24 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YV8BdPhTVg1rQR48@intel.com>
References: <20211007133908.6188-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211007133908.6188-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v4 1/2] drm/i915/dp: abstract
 intel_dp_lane_max_vswing_reached()
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

On Thu, Oct 07, 2021 at 04:39:07PM +0300, Jani Nikula wrote:
> Add per-lane abstraction for max vswing reached to make follow-up
> cleaner, as this one reverses the conditions.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_dp_link_training.c | 42 +++++++++++--------
>  1 file changed, 25 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 1a943ae38a6b..d239d72bfcf2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -515,29 +515,37 @@ intel_dp_update_link_train(struct intel_dp *intel_dp,
>  	return ret == crtc_state->lane_count;
>  }
>  
> +/*
> + * FIXME: The DP spec is very confusing here, also the Link CTS spec seems to
> + * have self contradicting tests around this area.
> + *
> + * In lieu of better ideas let's just stop when we've reached the max supported
> + * vswing with its max pre-emphasis, which is either 2+1 or 3+0 depending on
> + * whether vswing level 3 is supported or not.
> + */
> +static bool intel_dp_lane_max_vswing_reached(u8 train_set_lane)
> +{
> +	u8 v = (train_set_lane & DP_TRAIN_VOLTAGE_SWING_MASK) >>
> +		DP_TRAIN_VOLTAGE_SWING_SHIFT;
> +	u8 p = (train_set_lane & DP_TRAIN_PRE_EMPHASIS_MASK) >>
> +		DP_TRAIN_PRE_EMPHASIS_SHIFT;
> +
> +	if (train_set_lane & DP_TRAIN_MAX_SWING_REACHED)
> +		return true;
> +
> +	if (v + p == 3)
> +		return true;

We want both to be true at the same time.

> +
> +	return false;
> +}
> +
>  static bool intel_dp_link_max_vswing_reached(struct intel_dp *intel_dp,
>  					     const struct intel_crtc_state *crtc_state)
>  {
>  	int lane;
>  
> -	/*
> -	 * FIXME: The DP spec is very confusing here, also the Link CTS
> -	 * spec seems to have self contradicting tests around this area.
> -	 *
> -	 * In lieu of better ideas let's just stop when we've reached the
> -	 * max supported vswing with its max pre-emphasis, which is either
> -	 * 2+1 or 3+0 depending on whether vswing level 3 is supported or not.
> -	 */
>  	for (lane = 0; lane < crtc_state->lane_count; lane++) {
> -		u8 v = (intel_dp->train_set[lane] & DP_TRAIN_VOLTAGE_SWING_MASK) >>
> -			DP_TRAIN_VOLTAGE_SWING_SHIFT;
> -		u8 p = (intel_dp->train_set[lane] & DP_TRAIN_PRE_EMPHASIS_MASK) >>
> -			DP_TRAIN_PRE_EMPHASIS_SHIFT;
> -
> -		if ((intel_dp->train_set[lane] & DP_TRAIN_MAX_SWING_REACHED) == 0)
> -			return false;
> -
> -		if (v + p != 3)
> +		if (!intel_dp_lane_max_vswing_reached(intel_dp->train_set[lane]))
>  			return false;
>  	}
>  
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
