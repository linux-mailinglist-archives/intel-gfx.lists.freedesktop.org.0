Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7E18CD709
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 17:28:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68E9910E385;
	Thu, 23 May 2024 15:28:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jD54PgKA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0004610E385
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 15:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716478097; x=1748014097;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=UTQ5W5rChGkyWVPzXCY9xtRFLg2ojXhIajQbRBZOsV0=;
 b=jD54PgKARwqK522KKEJhE/kNlXkR8YCTB91ozc1Fg0tmnX28Vqis+5hu
 CdHlAYzMZ6paJ9ivr8NTS9NazkviVOJMMUvqLkHsM189WXAPcZDcvkTYA
 wNGD7Ob2OXoUbX66L8oNxvT9w2prDjd+ptYQrKvoZxGivHZtA0EBNWzBY
 /d3+eJrwu+eS5OPecOZ1DxOQJU2AKIIykRJ1/oUQ36uKlzeB/r5hdaBac
 1Aoa+JYY59fL99PQwRVF8th3QTGEYoAOUYh1IEKeh00dXyogUafY5xdAz
 rEYb1WBU0hQh0Gjtodhre/4gvos4cau4dP5eTTn6BJ+GN7J+yvMpkGFUV A==;
X-CSE-ConnectionGUID: QyihNtyXRx6ANM3VAzvyAw==
X-CSE-MsgGUID: oc21OWvCRtiq2RMSa+9PbA==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="35318330"
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="35318330"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 08:28:16 -0700
X-CSE-ConnectionGUID: LlhT5O2jSpqQN8uVzhJxBQ==
X-CSE-MsgGUID: up6VSRl2TFqxTkKL/+e2dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="33677996"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 May 2024 08:28:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 May 2024 18:28:12 +0300
Date: Thu, 23 May 2024 18:28:12 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 14/21] drm/i915/dp: Disable link retraining after the
 last fallback step
Message-ID: <Zk9gjMYbI_Ym8pYl@intel.com>
References: <20240520185822.3725844-1-imre.deak@intel.com>
 <20240520185822.3725844-15-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240520185822.3725844-15-imre.deak@intel.com>
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

On Mon, May 20, 2024 at 09:58:12PM +0300, Imre Deak wrote:
> After a link training failure if the link parameters can't be further
> reduced, there is no point in trying to retrain the link in the driver.
> This avoids excessive retrain attempts after detecting a bad link, for
> instance while handling MST HPD IRQs, which is likely redundant as the
> link training failed already twice with the same minimum link
> parameters. Userspace can still try to retrain the link with these
> parameters via a modeset.
> 
> While at it make the error message more accurate and emit instead a
> debug message if the link training failure was only forced for testing
> purposes.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c       |  4 ++++
>  .../drm/i915/display/intel_dp_link_training.c | 22 +++++++++++++------
>  3 files changed, 20 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index bde518c843468..eb0cac3e27acf 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1765,6 +1765,7 @@ struct intel_dp {
>  		int max_lane_count;
>  		/* Max rate for the current link */
>  		int max_rate;
> +		bool retrain_disabled;
>  		/* Sequential link training failures after a passing LT */
>  		int seq_train_failures;
>  	} link;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index b72dbd7becb74..34d64fe3302ef 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2950,6 +2950,7 @@ static void intel_dp_reset_link_params(struct intel_dp *intel_dp)
>  {
>  	intel_dp->link.max_lane_count = intel_dp_max_common_lane_count(intel_dp);
>  	intel_dp->link.max_rate = intel_dp_max_common_rate(intel_dp);
> +	intel_dp->link.retrain_disabled = false;
>  	intel_dp->link.seq_train_failures = 0;
>  }
>  
> @@ -5061,6 +5062,9 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
>  					intel_dp->lane_count))
>  		return false;
>  
> +	if (intel_dp->link.retrain_disabled)
> +		return false;
> +
>  	if (intel_dp->link.seq_train_failures)
>  		return true;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 97d499e4b6ef7..375f59afd4dec 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1165,10 +1165,8 @@ static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
>  		new_link_rate = intel_dp_max_common_rate(intel_dp);
>  	}
>  
> -	if (new_lane_count < 0) {
> -		drm_err(&i915->drm, "Link Training Unsuccessful\n");
> +	if (new_lane_count < 0)
>  		return -1;
> -	}
>  
>  	if (intel_dp_is_edp(intel_dp) &&
>  	    !intel_dp_can_link_train_fallback_for_edp(intel_dp, new_link_rate, new_lane_count)) {
> @@ -1187,7 +1185,7 @@ static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
>  	return 0;
>  }
>  
> -static void intel_dp_schedule_fallback_link_training(struct intel_atomic_state *state,
> +static bool intel_dp_schedule_fallback_link_training(struct intel_atomic_state *state,
>  						     struct intel_dp *intel_dp,
>  						     const struct intel_crtc_state *crtc_state)
>  {
> @@ -1195,7 +1193,7 @@ static void intel_dp_schedule_fallback_link_training(struct intel_atomic_state *
>  
>  	if (!intel_digital_port_connected(&dp_to_dig_port(intel_dp)->base)) {
>  		lt_dbg(intel_dp, DP_PHY_DPRX, "Link Training failed on disconnected sink.\n");
> -		return;
> +		return true;
>  	}
>  
>  	if (intel_dp->hobl_active) {
> @@ -1203,11 +1201,13 @@ static void intel_dp_schedule_fallback_link_training(struct intel_atomic_state *
>  		       "Link Training failed with HOBL active, not enabling it from now on\n");
>  		intel_dp->hobl_failed = true;
>  	} else if (intel_dp_get_link_train_fallback_values(intel_dp, crtc_state)) {
> -		return;
> +		return false;
>  	}
>  
>  	/* Schedule a Hotplug Uevent to userspace to start modeset */
>  	intel_dp_queue_modeset_retry_for_link(state, encoder, crtc_state);
> +
> +	return true;
>  }
>  
>  /* Perform the link training on all LTTPRs and the DPRX on a link. */
> @@ -1518,7 +1518,15 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
>  		return;
>  	}
>  
> -	intel_dp_schedule_fallback_link_training(state, intel_dp, crtc_state);
> +	if (intel_dp_schedule_fallback_link_training(state, intel_dp, crtc_state))
> +		return;
> +
> +	intel_dp->link.retrain_disabled = true;
> +
> +	if (!passed)
> +		lt_err(intel_dp, DP_PHY_DPRX, "Can't reduce link training parameters after failure\n");
> +	else
> +		lt_dbg(intel_dp, DP_PHY_DPRX, "Can't reduce link training parameters after forced failure\n");

The forced failure stuff is in later patch, is it not?

>  }
>  
>  void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
> -- 
> 2.43.3

-- 
Ville Syrjälä
Intel
