Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5DF425534
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 16:19:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 092D66F49F;
	Thu,  7 Oct 2021 14:19:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3807D6F49F
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 14:19:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="225031674"
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="225031674"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 07:19:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="489010102"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 07 Oct 2021 07:19:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Oct 2021 17:19:13 +0300
Date: Thu, 7 Oct 2021 17:19:13 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YV8B4ZZ7LvrblpQB@intel.com>
References: <20211007133908.6188-1-jani.nikula@intel.com>
 <20211007133908.6188-2-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211007133908.6188-2-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915/dg2: update link training
 for 128b/132b
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

On Thu, Oct 07, 2021 at 04:39:08PM +0300, Jani Nikula wrote:
> The 128b/132b channel coding link training uses more straightforward TX
> FFE preset values. Reuse voltage tries and max vswing for retry logic.
> 
> The delays for 128b/132b are still all wrong, but this is regardless a
> step forward.
> 
> v2: Fix UHBR rate checks, use intel_dp_is_uhbr() helper
> 
> v3:
> - Rebase
> - Modify intel_dp_adjust_request_changed() and
>   intel_dp_link_max_vswing_reached() to take 128b/132b into
>   account. (Ville)
> 
> v4:
> - Train request printing for TX FFE (Ville)
> - Log 8b/10b vs. 128b/132b (Ville)
> - Add helper for per-lane max vswing / tx ffe (Ville)
> - Name functions with tx_ffe/vswing instead of 128b132b/8b10b
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> # v3

v4 looks even better
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  18 ++-
>  .../drm/i915/display/intel_dp_link_training.c | 152 ++++++++++++++----
>  2 files changed, 134 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 3f7bbeb3e3cd..59428ce4f8c1 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -1338,13 +1338,20 @@ static int translate_signal_level(struct intel_dp *intel_dp,
>  	return 0;
>  }
>  
> -static int intel_ddi_dp_level(struct intel_dp *intel_dp, int lane)
> +static int intel_ddi_dp_level(struct intel_dp *intel_dp,
> +			      const struct intel_crtc_state *crtc_state,
> +			      int lane)
>  {
>  	u8 train_set = intel_dp->train_set[lane];
> -	u8 signal_levels = train_set & (DP_TRAIN_VOLTAGE_SWING_MASK |
> -					DP_TRAIN_PRE_EMPHASIS_MASK);
>  
> -	return translate_signal_level(intel_dp, signal_levels);
> +	if (intel_dp_is_uhbr(crtc_state)) {
> +		return train_set & DP_TX_FFE_PRESET_VALUE_MASK;
> +	} else {
> +		u8 signal_levels = train_set & (DP_TRAIN_VOLTAGE_SWING_MASK |
> +						DP_TRAIN_PRE_EMPHASIS_MASK);
> +
> +		return translate_signal_level(intel_dp, signal_levels);
> +	}
>  }
>  
>  int intel_ddi_level(struct intel_encoder *encoder,
> @@ -1362,7 +1369,8 @@ int intel_ddi_level(struct intel_encoder *encoder,
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
>  		level = intel_ddi_hdmi_level(encoder, trans);
>  	else
> -		level = intel_ddi_dp_level(enc_to_intel_dp(encoder), lane);
> +		level = intel_ddi_dp_level(enc_to_intel_dp(encoder), crtc_state,
> +					   lane);
>  
>  	if (drm_WARN_ON_ONCE(&i915->drm, level >= n_entries))
>  		level = n_entries - 1;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index d239d72bfcf2..6eb7803ee0b3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -304,11 +304,33 @@ static bool has_per_lane_signal_levels(struct intel_dp *intel_dp,
>  	return !intel_dp_phy_is_downstream_of_source(intel_dp, dp_phy);
>  }
>  
> -static u8 intel_dp_get_lane_adjust_train(struct intel_dp *intel_dp,
> -					 const struct intel_crtc_state *crtc_state,
> -					 enum drm_dp_phy dp_phy,
> -					 const u8 link_status[DP_LINK_STATUS_SIZE],
> -					 int lane)
> +
> +/* 128b/132b */
> +static u8 intel_dp_get_lane_adjust_tx_ffe_preset(struct intel_dp *intel_dp,
> +						 const struct intel_crtc_state *crtc_state,
> +						 enum drm_dp_phy dp_phy,
> +						 const u8 link_status[DP_LINK_STATUS_SIZE],
> +						 int lane)
> +{
> +	u8 tx_ffe = 0;
> +
> +	if (has_per_lane_signal_levels(intel_dp, dp_phy)) {
> +		lane = min(lane, crtc_state->lane_count - 1);
> +		tx_ffe = drm_dp_get_adjust_tx_ffe_preset(link_status, lane);
> +	} else {
> +		for (lane = 0; lane < crtc_state->lane_count; lane++)
> +			tx_ffe = max(tx_ffe, drm_dp_get_adjust_tx_ffe_preset(link_status, lane));
> +	}
> +
> +	return tx_ffe;
> +}
> +
> +/* 8b/10b */
> +static u8 intel_dp_get_lane_adjust_vswing_preemph(struct intel_dp *intel_dp,
> +						  const struct intel_crtc_state *crtc_state,
> +						  enum drm_dp_phy dp_phy,
> +						  const u8 link_status[DP_LINK_STATUS_SIZE],
> +						  int lane)
>  {
>  	u8 v = 0;
>  	u8 p = 0;
> @@ -340,6 +362,20 @@ static u8 intel_dp_get_lane_adjust_train(struct intel_dp *intel_dp,
>  	return v | p;
>  }
>  
> +static u8 intel_dp_get_lane_adjust_train(struct intel_dp *intel_dp,
> +					 const struct intel_crtc_state *crtc_state,
> +					 enum drm_dp_phy dp_phy,
> +					 const u8 link_status[DP_LINK_STATUS_SIZE],
> +					 int lane)
> +{
> +	if (intel_dp_is_uhbr(crtc_state))
> +		return intel_dp_get_lane_adjust_tx_ffe_preset(intel_dp, crtc_state,
> +							      dp_phy, link_status, lane);
> +	else
> +		return intel_dp_get_lane_adjust_vswing_preemph(intel_dp, crtc_state,
> +							       dp_phy, link_status, lane);
> +}
> +
>  #define TRAIN_REQ_FMT "%d/%d/%d/%d"
>  #define _TRAIN_REQ_VSWING_ARGS(link_status, lane) \
>  	(drm_dp_get_adjust_request_voltage((link_status), (lane)) >> DP_TRAIN_VOLTAGE_SWING_SHIFT)
> @@ -355,6 +391,13 @@ static u8 intel_dp_get_lane_adjust_train(struct intel_dp *intel_dp,
>  	_TRAIN_REQ_PREEMPH_ARGS(link_status, 1), \
>  	_TRAIN_REQ_PREEMPH_ARGS(link_status, 2), \
>  	_TRAIN_REQ_PREEMPH_ARGS(link_status, 3)
> +#define _TRAIN_REQ_TX_FFE_ARGS(link_status, lane) \
> +	drm_dp_get_adjust_tx_ffe_preset((link_status), (lane))
> +#define TRAIN_REQ_TX_FFE_ARGS(link_status) \
> +	_TRAIN_REQ_TX_FFE_ARGS(link_status, 0), \
> +	_TRAIN_REQ_TX_FFE_ARGS(link_status, 1), \
> +	_TRAIN_REQ_TX_FFE_ARGS(link_status, 2), \
> +	_TRAIN_REQ_TX_FFE_ARGS(link_status, 3)
>  
>  void
>  intel_dp_get_adjust_train(struct intel_dp *intel_dp,
> @@ -367,14 +410,23 @@ intel_dp_get_adjust_train(struct intel_dp *intel_dp,
>  	char phy_name[10];
>  	int lane;
>  
> -	drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s][%s] lanes: %d, "
> -		    "vswing request: " TRAIN_REQ_FMT ", "
> -		    "pre-emphasis request: " TRAIN_REQ_FMT "\n",
> -		    encoder->base.base.id, encoder->base.name,
> -		    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
> -		    crtc_state->lane_count,
> -		    TRAIN_REQ_VSWING_ARGS(link_status),
> -		    TRAIN_REQ_PREEMPH_ARGS(link_status));
> +	if (intel_dp_is_uhbr(crtc_state)) {
> +		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s][%s] 128b/132b, lanes: %d, "
> +			    "TX FFE request: " TRAIN_REQ_FMT "\n",
> +			    encoder->base.base.id, encoder->base.name,
> +			    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
> +			    crtc_state->lane_count,
> +			    TRAIN_REQ_TX_FFE_ARGS(link_status));
> +	} else {
> +		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s][%s] 8b/10b, lanes: %d, "
> +			    "vswing request: " TRAIN_REQ_FMT ", "
> +			    "pre-emphasis request: " TRAIN_REQ_FMT "\n",
> +			    encoder->base.base.id, encoder->base.name,
> +			    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
> +			    crtc_state->lane_count,
> +			    TRAIN_REQ_VSWING_ARGS(link_status),
> +			    TRAIN_REQ_PREEMPH_ARGS(link_status));
> +	}
>  
>  	for (lane = 0; lane < 4; lane++)
>  		intel_dp->train_set[lane] =
> @@ -464,6 +516,13 @@ intel_dp_program_link_training_pattern(struct intel_dp *intel_dp,
>  	_TRAIN_SET_PREEMPH_ARGS((train_set)[1]), \
>  	_TRAIN_SET_PREEMPH_ARGS((train_set)[2]), \
>  	_TRAIN_SET_PREEMPH_ARGS((train_set)[3])
> +#define _TRAIN_SET_TX_FFE_ARGS(train_set) \
> +	((train_set) & DP_TX_FFE_PRESET_VALUE_MASK), ""
> +#define TRAIN_SET_TX_FFE_ARGS(train_set) \
> +	_TRAIN_SET_TX_FFE_ARGS((train_set)[0]), \
> +	_TRAIN_SET_TX_FFE_ARGS((train_set)[1]), \
> +	_TRAIN_SET_TX_FFE_ARGS((train_set)[2]), \
> +	_TRAIN_SET_TX_FFE_ARGS((train_set)[3])
>  
>  void intel_dp_set_signal_levels(struct intel_dp *intel_dp,
>  				const struct intel_crtc_state *crtc_state,
> @@ -473,14 +532,23 @@ void intel_dp_set_signal_levels(struct intel_dp *intel_dp,
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	char phy_name[10];
>  
> -	drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s][%s] lanes: %d, "
> -		    "vswing levels: " TRAIN_SET_FMT ", "
> -		    "pre-emphasis levels: " TRAIN_SET_FMT "\n",
> -		    encoder->base.base.id, encoder->base.name,
> -		    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
> -		    crtc_state->lane_count,
> -		    TRAIN_SET_VSWING_ARGS(intel_dp->train_set),
> -		    TRAIN_SET_PREEMPH_ARGS(intel_dp->train_set));
> +	if (intel_dp_is_uhbr(crtc_state)) {
> +		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s][%s] 128b/132b, lanes: %d, "
> +			    "TX FFE presets: " TRAIN_SET_FMT "\n",
> +			    encoder->base.base.id, encoder->base.name,
> +			    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
> +			    crtc_state->lane_count,
> +			    TRAIN_SET_TX_FFE_ARGS(intel_dp->train_set));
> +	} else {
> +		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s][%s] 8b/10b, lanes: %d, "
> +			    "vswing levels: " TRAIN_SET_FMT ", "
> +			    "pre-emphasis levels: " TRAIN_SET_FMT "\n",
> +			    encoder->base.base.id, encoder->base.name,
> +			    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
> +			    crtc_state->lane_count,
> +			    TRAIN_SET_VSWING_ARGS(intel_dp->train_set),
> +			    TRAIN_SET_PREEMPH_ARGS(intel_dp->train_set));
> +	}
>  
>  	if (intel_dp_phy_is_downstream_of_source(intel_dp, dp_phy))
>  		encoder->set_signal_levels(encoder, crtc_state);
> @@ -515,7 +583,16 @@ intel_dp_update_link_train(struct intel_dp *intel_dp,
>  	return ret == crtc_state->lane_count;
>  }
>  
> +/* 128b/132b */
> +static bool intel_dp_lane_max_tx_ffe_reached(u8 train_set_lane)
> +{
> +	return (train_set_lane & DP_TX_FFE_PRESET_VALUE_MASK) ==
> +		DP_TX_FFE_PRESET_VALUE_MASK;
> +}
> +
>  /*
> + * 8b/10b
> + *
>   * FIXME: The DP spec is very confusing here, also the Link CTS spec seems to
>   * have self contradicting tests around this area.
>   *
> @@ -545,8 +622,15 @@ static bool intel_dp_link_max_vswing_reached(struct intel_dp *intel_dp,
>  	int lane;
>  
>  	for (lane = 0; lane < crtc_state->lane_count; lane++) {
> -		if (!intel_dp_lane_max_vswing_reached(intel_dp->train_set[lane]))
> -			return false;
> +		u8 train_set_lane = intel_dp->train_set[lane];
> +
> +		if (intel_dp_is_uhbr(crtc_state)) {
> +			if (!intel_dp_lane_max_tx_ffe_reached(train_set_lane))
> +				return false;
> +		} else {
> +			if (!intel_dp_lane_max_vswing_reached(train_set_lane))
> +				return false;
> +		}
>  	}
>  
>  	return true;
> @@ -609,17 +693,24 @@ static void intel_dp_link_training_clock_recovery_delay(struct intel_dp *intel_d
>  		drm_dp_lttpr_link_train_clock_recovery_delay();
>  }
>  
> -static bool intel_dp_adjust_request_changed(int lane_count,
> +static bool intel_dp_adjust_request_changed(const struct intel_crtc_state *crtc_state,
>  					    const u8 old_link_status[DP_LINK_STATUS_SIZE],
>  					    const u8 new_link_status[DP_LINK_STATUS_SIZE])
>  {
>  	int lane;
>  
> -	for (lane = 0; lane < lane_count; lane++) {
> -		u8 old = drm_dp_get_adjust_request_voltage(old_link_status, lane) |
> -			drm_dp_get_adjust_request_pre_emphasis(old_link_status, lane);
> -		u8 new = drm_dp_get_adjust_request_voltage(new_link_status, lane) |
> -			drm_dp_get_adjust_request_pre_emphasis(new_link_status, lane);
> +	for (lane = 0; lane < crtc_state->lane_count; lane++) {
> +		u8 old, new;
> +
> +		if (intel_dp_is_uhbr(crtc_state)) {
> +			old = drm_dp_get_adjust_tx_ffe_preset(old_link_status, lane);
> +			new = drm_dp_get_adjust_tx_ffe_preset(new_link_status, lane);
> +		} else {
> +			old = drm_dp_get_adjust_request_voltage(old_link_status, lane) |
> +				drm_dp_get_adjust_request_pre_emphasis(old_link_status, lane);
> +			new = drm_dp_get_adjust_request_voltage(new_link_status, lane) |
> +				drm_dp_get_adjust_request_pre_emphasis(new_link_status, lane);
> +		}
>  
>  		if (old != new)
>  			return true;
> @@ -729,8 +820,7 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
>  			return false;
>  		}
>  
> -		if (!intel_dp_adjust_request_changed(crtc_state->lane_count,
> -						     old_link_status, link_status))
> +		if (!intel_dp_adjust_request_changed(crtc_state, old_link_status, link_status))
>  			++voltage_tries;
>  		else
>  			voltage_tries = 1;
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
