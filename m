Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C48849C34B
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 06:34:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46C8610E52C;
	Wed, 26 Jan 2022 05:34:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75D8710E42F;
 Wed, 26 Jan 2022 05:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643175251; x=1674711251;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=mQnrrsy9vXrFQF1HDqF+5Ym3lVrPnDawzqwzm9Jk/2k=;
 b=NLGyWzU5FFBHHtBG9IKMfm10ZOmE7YNqZ2wGTSytUz5grRrmFXtqC5+a
 5YJ5WBUepSaWkB1DvENxOjnInk7nCnAJ5luhk/JSaqFgM88sVmm5hQI7J
 HHbCW/RKc9zAfu/Tn5vmye4MiTKE7qmR72YU4hzxbyb2RQGafvVGPZtpS
 ad7AO9ADInaWAX3DhWq6DTA13X4YHxw3NCnY+s3h3vdZ9eelDGKvkm4LD
 Ad3ahjX/pQDWqLP/SksJi//MMdWMYW8DEEt4efqWw5jWyLbawpprWcy9A
 Jo3NEiYb19KPpIz3qviJfGjRFWNWX3Dnzwdzh11QmxptY0/GgtXueDlgg A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="246428565"
X-IronPort-AV: E=Sophos;i="5.88,316,1635231600"; d="scan'208";a="246428565"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2022 21:34:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,316,1635231600"; d="scan'208";a="532661805"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga007.fm.intel.com with SMTP; 25 Jan 2022 21:34:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Jan 2022 07:34:07 +0200
Date: Wed, 26 Jan 2022 07:34:07 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YfDdT0IovfclLP3W@intel.com>
References: <cover.1643130139.git.jani.nikula@intel.com>
 <5c061c1610834b9b1b057e6d32b774e7db5500a8.1643130139.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5c061c1610834b9b1b057e6d32b774e7db5500a8.1643130139.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 5/8] drm/i915/dp: rewrite DP 2.0 128b/132b
 link training based on errata
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 25, 2022 at 07:03:43PM +0200, Jani Nikula wrote:
> The DP 2.0 errata completely overhauls the 128b/132b link training, with
> no provisions for backward compatibility with the original DP 2.0
> specification.
> 
> The changes are too intrusive to consider reusing the same code for both
> 8b/10b and 128b/132b, mainly because the LTTPR channel equalisation is
> done concurrently instead of serialized.
> 
> NOTES:
> 
> * It's a bit unclear when to wait for DP_INTERLANE_ALIGN_DONE and
>   per-lane DP_LANE_SYMBOL_LOCKED. Figure xx4 in the SCR implies the
>   LANEx_CHANNEL_EQ_DONE sequence may end with either 0x77,0x77,0x85 *or*
>   0x33,0x33,0x84 (for four lane configuration in DPCD 0x202..0x204)
>   i.e. without the above bits set. Text elsewhere seems contradictory or
>   incomplete.
> 
> * We read entire link status (6 bytes) everywhere instead of individual
>   DPCD addresses.
> 
> * There are some subtle ambiguities or contradictions in the order of
>   some DPCD access and TPS signal enables/disables. It's also not clear
>   whether these are significant.
> 
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_dp_link_training.c | 252 +++++++++++++++++-
>  1 file changed, 251 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 4e507aa75a03..8bb6a296f421 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1102,6 +1102,250 @@ intel_dp_link_train_all_phys(struct intel_dp *intel_dp,
>  	return ret;
>  }
>  
> +
> +/*
> + * 128b/132b DP LANEx_EQ_DONE Sequence (DP 2.0 E11 3.5.2.16.1)
> + */
> +static bool
> +intel_dp_128b132b_lane_eq(struct intel_dp *intel_dp,
> +			  const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	u8 link_status[DP_LINK_STATUS_SIZE];
> +	int delay_us;
> +	int try, max_tries = 20;
> +	unsigned long deadline;
> +
> +	/*
> +	 * Reset signal levels. Start transmitting 128b/132b TPS1.
> +	 *
> +	 * Put DPRX and LTTPRs (if any) into intra-hop AUX mode by writing TPS1
> +	 * in DP_TRAINING_PATTERN_SET.
> +	 */
> +	if (!intel_dp_reset_link_train(intel_dp, crtc_state, DP_PHY_DPRX,
> +				       DP_TRAINING_PATTERN_1)) {
> +		drm_err(&i915->drm,
> +			"[ENCODER:%d:%s] Failed to start 128b/132b TPS1\n",
> +			encoder->base.base.id, encoder->base.name);
> +		return false;
> +	}
> +
> +	delay_us = drm_dp_128b132b_read_aux_rd_interval(&intel_dp->aux);
> +
> +	/* Read the initial TX FFE settings. */
> +	if (drm_dp_dpcd_read_link_status(&intel_dp->aux, link_status) < 0) {
> +		drm_err(&i915->drm,
> +			"[ENCODER:%d:%s] Failed to read TX FFE presets\n",
> +			encoder->base.base.id, encoder->base.name);
> +		return false;
> +	}
> +
> +	/* Update signal levels and training set as requested. */
> +	intel_dp_get_adjust_train(intel_dp, crtc_state, DP_PHY_DPRX, link_status);
> +	if (!intel_dp_update_link_train(intel_dp, crtc_state, DP_PHY_DPRX)) {
> +		drm_err(&i915->drm,
> +			"[ENCODER:%d:%s] Failed to set initial TX FFE settings\n",
> +			encoder->base.base.id, encoder->base.name);
> +		return false;
> +	}
> +
> +	/* Start transmitting 128b/132b TPS2. */
> +	if (!intel_dp_set_link_train(intel_dp, crtc_state, DP_PHY_DPRX,
> +				     DP_TRAINING_PATTERN_2)) {
> +		drm_err(&i915->drm,
> +			"[ENCODER:%d:%s] Failed to start 128b/132b TPS2\n",
> +			encoder->base.base.id, encoder->base.name);
> +		return false;
> +	}
> +
> +	for (try = 0; try < max_tries; try++) {
> +		usleep_range(delay_us, 2 * delay_us);
> +
> +		/*
> +		 * The delay may get updated. The transmitter shall read the
> +		 * delay before link status during link training.
> +		 */
> +		delay_us = drm_dp_128b132b_read_aux_rd_interval(&intel_dp->aux);
> +
> +		if (drm_dp_dpcd_read_link_status(&intel_dp->aux, link_status) < 0) {
> +			drm_err(&i915->drm,
> +				"[ENCODER:%d:%s] Failed to read link status\n",
> +				encoder->base.base.id, encoder->base.name);
> +			return false;
> +		}
> +
> +		if (drm_dp_128b132b_link_training_failed(link_status)) {
> +			intel_dp_dump_link_status(intel_dp, DP_PHY_DPRX, link_status);
> +			drm_err(&i915->drm,
> +				"[ENCODER:%d:%s] Downstream link training failure\n",
> +				encoder->base.base.id, encoder->base.name);
> +			return false;
> +		}
> +
> +		if (drm_dp_128b132b_lane_channel_eq_done(link_status, crtc_state->lane_count)) {
> +			drm_dbg_kms(&i915->drm,
> +				    "[ENCODER:%d:%s] Lane channel eq done\n",
> +				    encoder->base.base.id, encoder->base.name);
> +			break;
> +		}
> +
> +		/* Update signal levels and training set as requested. */
> +		intel_dp_get_adjust_train(intel_dp, crtc_state, DP_PHY_DPRX, link_status);
> +		if (!intel_dp_update_link_train(intel_dp, crtc_state, DP_PHY_DPRX)) {
> +			drm_err(&i915->drm,
> +				"[ENCODER:%d:%s] Failed to update TX FFE settings\n",
> +				encoder->base.base.id, encoder->base.name);
> +			return false;
> +		}
> +	}
> +
> +	if (try == max_tries) {
> +		intel_dp_dump_link_status(intel_dp, DP_PHY_DPRX, link_status);
> +		drm_err(&i915->drm,
> +			"[ENCODER:%d:%s] Max loop count reached\n",
> +			encoder->base.base.id, encoder->base.name);
> +		return false;
> +	}
> +
> +	/*
> +	 * FIXME: This should probably be the total time budget for the complete
> +	 * LANEx_EQ_DONE Sequence, including the loop above and the aux rd
> +	 * intervals.
> +	 */

That is what my spec reading skills tell me. I suspect it's just there
to make sure some broken device can't specify an overly long aux rd
interval and make the link training too long. 20*256ms=~5 seconds max.

I'd either drop this for now, or try to intergrate properly inte loop.

> +	deadline = jiffies + msecs_to_jiffies(400);
> +	for (;;) {
> +		if (drm_dp_128b132b_eq_interlane_align_done(link_status)) {
> +			drm_dbg_kms(&i915->drm,
> +				    "[ENCODER:%d:%s] Interlane align done\n",
> +				    encoder->base.base.id, encoder->base.name);
> +			break;
> +		}
> +
> +		if (time_after(jiffies, deadline)) {
> +			intel_dp_dump_link_status(intel_dp, DP_PHY_DPRX, link_status);
> +			drm_err(&i915->drm,
> +				"[ENCODER:%d:%s] Interlane align timeout\n",
> +				encoder->base.base.id, encoder->base.name);
> +			return false;
> +		}
> +
> +		usleep_range(2000, 3000);
> +
> +		if (drm_dp_dpcd_read_link_status(&intel_dp->aux, link_status) < 0) {
> +			drm_err(&i915->drm,
> +				"[ENCODER:%d:%s] Failed to read link status\n",
> +				encoder->base.base.id, encoder->base.name);
> +			return false;
> +		}
> +
> +		if (drm_dp_128b132b_link_training_failed(link_status)) {
> +			intel_dp_dump_link_status(intel_dp, DP_PHY_DPRX, link_status);
> +			drm_err(&i915->drm,
> +				"[ENCODER:%d:%s] Downstream link training failure\n",
> +				encoder->base.base.id, encoder->base.name);
> +			return false;
> +		}
> +	}
> +
> +	return true;
> +}
> +
> +/*
> + * 128b/132b DP LANEx_CDS_DONE Sequence (DP 2.0 E11 3.5.2.16.2)
> + */
> +static bool
> +intel_dp_128b132b_lane_cds(struct intel_dp *intel_dp,
> +			   const struct intel_crtc_state *crtc_state,
> +			   int lttpr_count)
> +{
> +	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	u8 link_status[DP_LINK_STATUS_SIZE];
> +	unsigned long deadline;
> +
> +	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_TRAINING_PATTERN_SET,
> +			       DP_TRAINING_PATTERN_2_CDS) != 1) {
> +		drm_err(&i915->drm,
> +			"[ENCODER:%d:%s] Failed to start 128b/132b TPS2 CDS\n",
> +			encoder->base.base.id, encoder->base.name);
> +		return false;
> +	}
> +
> +	deadline = jiffies + msecs_to_jiffies((lttpr_count + 1) * 20);
> +	for (;;) {
> +		usleep_range(2000, 3000);
> +
> +		if (drm_dp_dpcd_read_link_status(&intel_dp->aux, link_status) < 0) {
> +			drm_err(&i915->drm,
> +				"[ENCODER:%d:%s] Failed to read link status\n",
> +				encoder->base.base.id, encoder->base.name);
> +			return false;
> +		}
> +
> +		if (drm_dp_128b132b_cds_interlane_align_done(link_status) &&
> +		    drm_dp_128b132b_lane_symbol_locked(link_status, crtc_state->lane_count)) {
> +			drm_dbg_kms(&i915->drm,
> +				    "[ENCODER:%d:%s] CDS interlane align done\n",
> +				    encoder->base.base.id, encoder->base.name);
> +			break;
> +		}
> +
> +		if (drm_dp_128b132b_link_training_failed(link_status)) {
> +			intel_dp_dump_link_status(intel_dp, DP_PHY_DPRX, link_status);
> +			drm_err(&i915->drm,
> +				"[ENCODER:%d:%s] Downstream link training failure\n",
> +				encoder->base.base.id, encoder->base.name);
> +			return false;
> +		}
> +
> +		if (time_after(jiffies, deadline)) {

This is racy. There's no telling how much time has passed since
the last time we checked the status. Standard rule of timeouts:
always check one last time after the timeout has expired.

> +			intel_dp_dump_link_status(intel_dp, DP_PHY_DPRX, link_status);
> +			drm_err(&i915->drm,
> +				"[ENCODER:%d:%s] CDS timeout\n",
> +				encoder->base.base.id, encoder->base.name);
> +			return false;
> +		}
> +	}
> +
> +	/* FIXME: Should DP_TRAINING_PATTERN_DISABLE be written first? */

Not sure. The other thing missing is waiting for the intra-hop AUX
indicator to go away after we exit link training.

It seems we should also block all other aux transfers during LT 
because of the intra-hop AUX mode. I can imagine things might get
a bit confused if the LTTPRs start answering directly to AUX
transfers that are intended to pass through to the DPRX.

> +	if (intel_dp->set_idle_link_train)
> +		intel_dp->set_idle_link_train(intel_dp, crtc_state);
> +
> +	return true;
> +}
> +
> +/*
> + * 128b/132b link training sequence. (DP 2.0 E11 SCR on link training.)
> + */
> +static bool
> +intel_dp_128b132b_link_train(struct intel_dp *intel_dp,
> +			     const struct intel_crtc_state *crtc_state,
> +			     int lttpr_count)
> +{
> +	struct intel_connector *connector = intel_dp->attached_connector;
> +	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> +	bool passed = false;
> +
> +	/*
> +	 * FIXME: Validate previous LT termination by reading Intra-Hop AUX
> +	 * Reply Indication by reading bit 3 of SINK_STATUS at 00205h
> +	 */
> +
> +	if (intel_dp_128b132b_lane_eq(intel_dp, crtc_state) &&
> +	    intel_dp_128b132b_lane_cds(intel_dp, crtc_state, lttpr_count))
> +		passed = true;
> +
> +	drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
> +		    "[CONNECTOR:%d:%s][ENCODER:%d:%s] 128b/132b Link Training %s at link rate = %d, lane count = %d\n",
> +		    connector->base.base.id, connector->base.name,
> +		    encoder->base.base.id, encoder->base.name,
> +		    passed ? "passed" : "failed",
> +		    crtc_state->port_clock, crtc_state->lane_count);
> +
> +	return passed;
> +}
> +
>  /**
>   * intel_dp_start_link_train - start link training
>   * @intel_dp: DP struct
> @@ -1115,6 +1359,7 @@ intel_dp_link_train_all_phys(struct intel_dp *intel_dp,
>  void intel_dp_start_link_train(struct intel_dp *intel_dp,
>  			       const struct intel_crtc_state *crtc_state)
>  {
> +	static bool passed;
>  	/*
>  	 * TODO: Reiniting LTTPRs here won't be needed once proper connector
>  	 * HW state readout is added.
> @@ -1127,6 +1372,11 @@ void intel_dp_start_link_train(struct intel_dp *intel_dp,
>  
>  	intel_dp_prepare_link_train(intel_dp, crtc_state);
>  
> -	if (!intel_dp_link_train_all_phys(intel_dp, crtc_state, lttpr_count))
> +	if (intel_dp_is_uhbr(crtc_state))
> +		passed = intel_dp_128b132b_link_train(intel_dp, crtc_state, lttpr_count);
> +	else
> +		passed = intel_dp_link_train_all_phys(intel_dp, crtc_state, lttpr_count);
> +
> +	if (!passed)
>  		intel_dp_schedule_fallback_link_training(intel_dp, crtc_state);
>  }
> -- 
> 2.30.2

-- 
Ville Syrj�l�
Intel
