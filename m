Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6FA41F15C
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 17:38:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C25946E52A;
	Fri,  1 Oct 2021 15:38:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC5BB6E52A
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 15:38:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10124"; a="205625155"
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="205625155"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 08:38:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="556370747"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 01 Oct 2021 08:38:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Oct 2021 18:38:29 +0300
Date: Fri, 1 Oct 2021 18:38:29 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YVcrdbY1Snq1U4dE@intel.com>
References: <20211001100247.26185-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211001100247.26185-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: update link training for
 128b/132b
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

On Fri, Oct 01, 2021 at 01:02:47PM +0300, Jani Nikula wrote:
> The 128b/132b channel coding link training uses more straightforward TX
> FFE preset values.
> 
> v2: Fix UHBR rate checks, use intel_dp_is_uhbr() helper
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 13 ++-
>  .../drm/i915/display/intel_dp_link_training.c | 86 +++++++++++++------
>  2 files changed, 70 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 51cd0420e00e..341fda4055ed 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -1398,11 +1398,16 @@ static int translate_signal_level(struct intel_dp *intel_dp,
>  static int intel_ddi_dp_level(struct intel_dp *intel_dp,
>  			      const struct intel_crtc_state *crtc_state)
>  {
> -	u8 train_set = intel_dp->train_set[0];
> -	u8 signal_levels = train_set & (DP_TRAIN_VOLTAGE_SWING_MASK |
> -					DP_TRAIN_PRE_EMPHASIS_MASK);
> +	if (intel_dp_is_uhbr(crtc_state)) {
> +		/* FIXME: We'll want independent presets for each lane. */
> +		return intel_dp->train_set[0] & DP_TX_FFE_PRESET_VALUE_MASK;
> +	} else {
> +		u8 train_set = intel_dp->train_set[0];
> +		u8 signal_levels = train_set & (DP_TRAIN_VOLTAGE_SWING_MASK |
> +						DP_TRAIN_PRE_EMPHASIS_MASK);
>  
> -	return translate_signal_level(intel_dp, signal_levels);
> +		return translate_signal_level(intel_dp, signal_levels);
> +	}
>  }
>  
>  static void
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 053ed9302cda..1dda3d31394e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -301,6 +301,24 @@ static u8 intel_dp_phy_preemph_max(struct intel_dp *intel_dp,
>  	return preemph_max;
>  }
>  
> +static void intel_dp_128b132b_adjust_train(struct intel_dp *intel_dp,
> +					   const struct intel_crtc_state *crtc_state,
> +					   const u8 link_status[DP_LINK_STATUS_SIZE])
> +{
> +	int lane;
> +	u8 tx_ffe = 0;
> +
> +	/*
> +	 * FIXME: We'll want independent presets for each lane. See also
> +	 * intel_ddi_dp_level() and intel_snps_phy_ddi_vswing_sequence().
> +	 */

Wait a few patches [1] and we can avoid the FIXMEs ;)

[1] https://patchwork.freedesktop.org/series/95122/

> +	for (lane = 0; lane < crtc_state->lane_count; lane++)
> +		tx_ffe = max(tx_ffe, drm_dp_get_adjust_tx_ffe_preset(link_status, lane));
> +
> +	for (lane = 0; lane < crtc_state->lane_count; lane++)
> +		intel_dp->train_set[lane] = tx_ffe;
> +}
> +
>  void
>  intel_dp_get_adjust_train(struct intel_dp *intel_dp,
>  			  const struct intel_crtc_state *crtc_state,
> @@ -313,6 +331,11 @@ intel_dp_get_adjust_train(struct intel_dp *intel_dp,
>  	u8 voltage_max;
>  	u8 preemph_max;
>  
> +	if (intel_dp_is_uhbr(crtc_state)) {
> +		intel_dp_128b132b_adjust_train(intel_dp, crtc_state, link_status);
> +		return;
> +	}
> +
>  	for (lane = 0; lane < crtc_state->lane_count; lane++) {
>  		v = max(v, drm_dp_get_adjust_request_voltage(link_status, lane));
>  		p = max(p, drm_dp_get_adjust_request_pre_emphasis(link_status, lane));
> @@ -402,14 +425,21 @@ void intel_dp_set_signal_levels(struct intel_dp *intel_dp,
>  	u8 train_set = intel_dp->train_set[0];
>  	char phy_name[10];
>  
> -	drm_dbg_kms(&dev_priv->drm, "Using vswing level %d%s, pre-emphasis level %d%s, at %s\n",
> -		    train_set & DP_TRAIN_VOLTAGE_SWING_MASK,
> -		    train_set & DP_TRAIN_MAX_SWING_REACHED ? " (max)" : "",
> -		    (train_set & DP_TRAIN_PRE_EMPHASIS_MASK) >>
> -		    DP_TRAIN_PRE_EMPHASIS_SHIFT,
> -		    train_set & DP_TRAIN_MAX_PRE_EMPHASIS_REACHED ?
> -		    " (max)" : "",
> -		    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)));
> +	if (intel_dp_is_uhbr(crtc_state)) {
> +		/* FIXME: We'll want independent presets for each lane. */
> +		drm_dbg_kms(&dev_priv->drm, "%s: Using 128b/132b TX FFE preset %u\n",
> +			    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
> +			    train_set & DP_TX_FFE_PRESET_VALUE_MASK);
> +	} else {
> +		drm_dbg_kms(&dev_priv->drm, "%s: Using 8b/10b vswing level %d%s, pre-emphasis level %d%s\n",
> +			    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)),
> +			    train_set & DP_TRAIN_VOLTAGE_SWING_MASK,
> +			    train_set & DP_TRAIN_MAX_SWING_REACHED ? " (max)" : "",
> +			    (train_set & DP_TRAIN_PRE_EMPHASIS_MASK) >>
> +			    DP_TRAIN_PRE_EMPHASIS_SHIFT,
> +			    train_set & DP_TRAIN_MAX_PRE_EMPHASIS_REACHED ?
> +			    " (max)" : "");
> +	}
>  
>  	if (intel_dp_phy_is_downstream_of_source(intel_dp, dp_phy))
>  		intel_dp->set_signal_levels(intel_dp, crtc_state);
> @@ -563,18 +593,21 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
>  			return true;
>  		}
>  
> -		if (voltage_tries == 5) {
> -			drm_dbg_kms(&i915->drm,
> -				    "Same voltage tried 5 times\n");
> -			return false;
> -		}
> +		/* FIXME: 128b/132b needs better abstractions here. */
> +		if (!intel_dp_is_uhbr(crtc_state)) {
> +			if (voltage_tries == 5) {
> +				drm_dbg_kms(&i915->drm,
> +					    "Same voltage tried 5 times\n");
> +				return false;
> +			}
>  
> -		if (max_vswing_reached) {
> -			drm_dbg_kms(&i915->drm, "Max Voltage Swing reached\n");
> -			return false;
> -		}
> +			if (max_vswing_reached) {
> +				drm_dbg_kms(&i915->drm, "Max Voltage Swing reached\n");
> +				return false;
> +			}
>  
> -		voltage = intel_dp->train_set[0] & DP_TRAIN_VOLTAGE_SWING_MASK;
> +			voltage = intel_dp->train_set[0] & DP_TRAIN_VOLTAGE_SWING_MASK;
> +		}
>  
>  		/* Update training set as requested by target */
>  		intel_dp_get_adjust_train(intel_dp, crtc_state, dp_phy,
> @@ -585,14 +618,17 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
>  			return false;
>  		}
>  
> -		if ((intel_dp->train_set[0] & DP_TRAIN_VOLTAGE_SWING_MASK) ==
> -		    voltage)
> -			++voltage_tries;
> -		else
> -			voltage_tries = 1;
> +		/* FIXME: 128b/132b needs better abstractions here. */
> +		if (!intel_dp_is_uhbr(crtc_state)) {
> +			if ((intel_dp->train_set[0] & DP_TRAIN_VOLTAGE_SWING_MASK) ==
> +			    voltage)
> +				++voltage_tries;
> +			else
> +				voltage_tries = 1;

Unfortunately the spec seems to totally lack any description of
128b/132b link training sequence. So I have no idea if we should
consider the entire tx_ffe here as the voltage and still do the
"no more than five times with the same setting" thing.

Ugh. Also just realized this code needs further surgery for the
per-lane drive settings...

Ugh2. This code looks totally wrong anyway. At least DP2.0 seems
to say that we should check whether the _request_ stays the same
five times in a row, not whether we happen to transmit the
same voltage level five times...

Also we seem to be missing the 128b/132b AUX_RD_INTERVAL stuff...

-- 
Ville Syrjälä
Intel
