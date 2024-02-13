Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CC28539A4
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 19:13:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 561BA10E168;
	Tue, 13 Feb 2024 18:13:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fcjbvqF0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AE1110E168
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Feb 2024 18:13:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707848013; x=1739384013;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=H+m5CTConc0wG9pnnPhbBhDexc4Mh11GYUkFgo+Yw40=;
 b=fcjbvqF0OyDJ5Po08AVh3IA0Z7OtC5uMklE2kDgaHo1dWl+o9ZLz3eS2
 wInDm64bJAYMXiWo//DE1QFP5AKb/dN+sfSOGvdneuTcRney0vrVFjhN5
 +bd3K87YP2YOybMyyCLnm0VShYGoHntepm0uwvaSgkAj/pYg24xuu5UgH
 Sy28d5DJKinBQRh9BjfM4ZeKgc5BxORHvsTeIMoKswPa/I7MKb3QvSo0e
 tMJxEdt1DEdpaRt+tdijiR+aqDs1JuWk8g3PPS0KnrzzQsD6dy/BsT6Rk
 JIlQghd566AcNFN+MOKhWFuE3EBlT7QFEPCPUoGE/j3Z6/gKMQWmtqj2K Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="5690829"
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; 
   d="scan'208";a="5690829"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 10:13:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="911857240"
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; d="scan'208";a="911857240"
Received: from snasibli-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.44.50])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 10:13:28 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com, ville.syrjala@intel.com, uma.shankar@intel.com,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [RFC 3/4] drm/i915/dp: use link rate and lane count in intel_dp
 struct
In-Reply-To: <20240206104759.2079133-4-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240206104759.2079133-1-arun.r.murthy@intel.com>
 <20240206104759.2079133-4-arun.r.murthy@intel.com>
Date: Tue, 13 Feb 2024 20:13:25 +0200
Message-ID: <87y1bo6xmi.fsf@intel.com>
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

On Tue, 06 Feb 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> The link rate and lane count are now part of the intel_crtc_state
> structure. These two parameters are nothing to do with the crtc and are
> more confined to DP.

As said offline, the parameters were specifically added to crtc state
for both atomic and the state checker.

No go.


BR,
Jani.

>
> TODO: Need to still seperate out the use of link rate and port clock
> which is in intel_dp and intel_crtc_state structure.
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 16 ++--
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 21 ++---
>  .../drm/i915/display/intel_ddi_buf_trans.c    |  7 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |  8 +-
>  drivers/gpu/drm/i915/display/intel_dp.h       |  2 +-
>  .../drm/i915/display/intel_dp_link_training.c | 81 ++++++++++---------
>  .../drm/i915/display/intel_dp_link_training.h |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 29 ++++---
>  8 files changed, 92 insertions(+), 74 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 288a00e083c8..cde8f26ba26b 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -414,6 +414,7 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	const struct intel_ddi_buf_trans *trans;
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	enum phy phy = intel_port_to_phy(i915, encoder->port);
>  	u8 owned_lane_mask;
>  	intel_wakeref_t wakeref;
> @@ -446,7 +447,7 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
>  			      MB_WRITE_COMMITTED);
>  	}
>  
> -	for (ln = 0; ln < crtc_state->lane_count; ln++) {
> +	for (ln = 0; ln < intel_dp->lane_count; ln++) {
>  		int level = intel_ddi_level(encoder, crtc_state, ln);
>  		int lane = ln / 2;
>  		int tx = ln % 2;
> @@ -2327,10 +2328,11 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
>  				  const struct intel_crtc_state *crtc_state,
>  				  struct intel_encoder *encoder)
>  {
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	const struct intel_c20pll_state *pll_state = &crtc_state->cx0pll_state.c20;
>  	bool dp = false;
> -	int lane = crtc_state->lane_count > 2 ? INTEL_CX0_BOTH_LANES : INTEL_CX0_LANE0;
> -	u32 clock = crtc_state->port_clock;
> +	int lane = intel_dp->lane_count > 2 ? INTEL_CX0_BOTH_LANES : INTEL_CX0_LANE0;
> +	u32 clock = intel_dp->link_rate;
>  	bool cntx;
>  	int i;
>  
> @@ -2455,6 +2457,7 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
>  					 const struct intel_crtc_state *crtc_state,
>  					 bool lane_reversal)
>  {
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	u32 val = 0;
>  
> @@ -2475,7 +2478,7 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
>  
>  	/* TODO: HDMI FRL */
>  	/* DP2.0 10G and 20G rates enable MPLLA*/
> -	if (crtc_state->port_clock == 1000000 || crtc_state->port_clock == 2000000)
> +	if (intel_dp->link_rate == 1000000 || intel_dp->link_rate == 2000000)
>  		val |= crtc_state->cx0pll_state.ssc_enabled ? XELPDP_SSC_ENABLE_PLLA : 0;
>  	else
>  		val |= crtc_state->cx0pll_state.ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
> @@ -2705,6 +2708,7 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
>  				const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	enum phy phy = intel_port_to_phy(i915, encoder->port);
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
> @@ -2744,7 +2748,7 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
>  	 * 6. Program the enabled and disabled owned PHY lane
>  	 * transmitters over message bus
>  	 */
> -	intel_cx0_program_phy_lane(i915, encoder, crtc_state->lane_count, lane_reversal);
> +	intel_cx0_program_phy_lane(i915, encoder, intel_dp->lane_count, lane_reversal);
>  
>  	/*
>  	 * 7. Follow the Display Voltage Frequency Switching - Sequence
> @@ -2756,7 +2760,7 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
>  	 * clock frequency.
>  	 */
>  	intel_de_write(i915, DDI_CLK_VALFREQ(encoder->port),
> -		       crtc_state->port_clock);
> +		       intel_dp->link_rate);
>  
>  	/*
>  	 * 9. Set PORT_CLOCK_CTL register PCLK PLL Request
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index bea441590204..ed7620e7f763 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -334,18 +334,18 @@ static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
>  
>  	/* DDI_BUF_CTL_ENABLE will be set by intel_ddi_prepare_link_retrain() later */
>  	intel_dp->DP = dig_port->saved_port_bits |
> -		DDI_PORT_WIDTH(crtc_state->lane_count) |
> +		DDI_PORT_WIDTH(intel_dp->lane_count) |
>  		DDI_BUF_TRANS_SELECT(0);
>  
>  	if (DISPLAY_VER(i915) >= 14) {
> -		if (intel_dp_is_uhbr(crtc_state))
> +		if (intel_dp_is_uhbr(intel_dp))
>  			intel_dp->DP |= DDI_BUF_PORT_DATA_40BIT;
>  		else
>  			intel_dp->DP |= DDI_BUF_PORT_DATA_10BIT;
>  	}
>  
>  	if (IS_ALDERLAKE_P(i915) && intel_phy_is_tc(i915, phy)) {
> -		intel_dp->DP |= ddi_buf_phy_link_rate(crtc_state->port_clock);
> +		intel_dp->DP |= ddi_buf_phy_link_rate(intel_dp->link_rate);
>  		if (!intel_tc_port_in_tbt_alt_mode(dig_port))
>  			intel_dp->DP |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
>  	}
> @@ -456,10 +456,11 @@ intel_ddi_config_transcoder_dp2(struct intel_encoder *encoder,
>  				const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  	u32 val = 0;
>  
> -	if (intel_dp_is_uhbr(crtc_state))
> +	if (intel_dp_is_uhbr(intel_dp))
>  		val = TRANS_DP2_128B132B_CHANNEL_CODING;
>  
>  	intel_de_write(i915, TRANS_DP2_CTL(cpu_transcoder), val);
> @@ -477,6 +478,7 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	enum pipe pipe = crtc->pipe;
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  	enum port port = encoder->port;
> @@ -552,11 +554,11 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
>  		temp |= TRANS_DDI_MODE_SELECT_FDI_OR_128B132B;
>  		temp |= (crtc_state->fdi_lanes - 1) << 1;
>  	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST)) {
> -		if (intel_dp_is_uhbr(crtc_state))
> +		if (intel_dp_is_uhbr(intel_dp))
>  			temp |= TRANS_DDI_MODE_SELECT_FDI_OR_128B132B;
>  		else
>  			temp |= TRANS_DDI_MODE_SELECT_DP_MST;
> -		temp |= DDI_PORT_WIDTH(crtc_state->lane_count);
> +		temp |= DDI_PORT_WIDTH(intel_dp->lane_count);
>  
>  		if (DISPLAY_VER(dev_priv) >= 12) {
>  			enum transcoder master;
> @@ -1414,7 +1416,7 @@ static int intel_ddi_dp_level(struct intel_dp *intel_dp,
>  {
>  	u8 train_set = intel_dp->train_set[lane];
>  
> -	if (intel_dp_is_uhbr(crtc_state)) {
> +	if (intel_dp_is_uhbr(intel_dp)) {
>  		return train_set & DP_TX_FFE_PRESET_VALUE_MASK;
>  	} else {
>  		u8 signal_levels = train_set & (DP_TRAIN_VOLTAGE_SWING_MASK |
> @@ -2456,15 +2458,16 @@ static void mtl_port_buf_ctl_program(struct intel_encoder *encoder,
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	enum port port = encoder->port;
>  	u32 val;
>  
>  	val = intel_de_read(i915, XELPDP_PORT_BUF_CTL1(i915, port));
>  	val &= ~XELPDP_PORT_WIDTH_MASK;
> -	val |= XELPDP_PORT_WIDTH(mtl_get_port_width(crtc_state->lane_count));
> +	val |= XELPDP_PORT_WIDTH(mtl_get_port_width(intel_dp->lane_count));
>  
>  	val &= ~XELPDP_PORT_BUF_PORT_DATA_WIDTH_MASK;
> -	if (intel_dp_is_uhbr(crtc_state))
> +	if (intel_dp_is_uhbr(intel_dp))
>  		val |= XELPDP_PORT_BUF_PORT_DATA_40BIT;
>  	else
>  		val |= XELPDP_PORT_BUF_PORT_DATA_10BIT;
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index de809e2d9cac..e490bffd3e49 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -1679,8 +1679,10 @@ dg2_get_snps_buf_trans(struct intel_encoder *encoder,
>  		       const struct intel_crtc_state *crtc_state,
>  		       int *n_entries)
>  {
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +
>  	if (intel_crtc_has_dp_encoder(crtc_state) &&
> -	    intel_dp_is_uhbr(crtc_state))
> +	    intel_dp_is_uhbr(intel_dp))
>  		return intel_get_buf_trans(&dg2_snps_trans_uhbr, n_entries);
>  	else
>  		return intel_get_buf_trans(&dg2_snps_trans, n_entries);
> @@ -1692,9 +1694,10 @@ mtl_get_cx0_buf_trans(struct intel_encoder *encoder,
>  		      int *n_entries)
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	enum phy phy = intel_port_to_phy(i915, encoder->port);
>  
> -	if (intel_crtc_has_dp_encoder(crtc_state) && crtc_state->port_clock >= 1000000)
> +	if (intel_crtc_has_dp_encoder(crtc_state) && intel_dp_is_uhbr(intel_dp))
>  		return intel_get_buf_trans(&mtl_c20_trans_uhbr, n_entries);
>  	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) && !(intel_is_c10phy(i915, phy)))
>  		return intel_get_buf_trans(&mtl_c20_trans_hdmi, n_entries);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 82d354a6b0cd..ba3c8201c0ef 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -167,9 +167,9 @@ bool intel_dp_is_edp(struct intel_dp *intel_dp)
>  static void intel_dp_unset_edid(struct intel_dp *intel_dp);
>  
>  /* Is link rate UHBR and thus 128b/132b? */
> -bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state)
> +bool intel_dp_is_uhbr(struct intel_dp *intel_dp)
>  {
> -	return drm_dp_is_uhbr_rate(crtc_state->port_clock);
> +	return drm_dp_is_uhbr_rate(intel_dp->link_rate);
>  }
>  
>  /**
> @@ -2901,12 +2901,14 @@ intel_dp_audio_compute_config(struct intel_encoder *encoder,
>  			      struct intel_crtc_state *pipe_config,
>  			      struct drm_connector_state *conn_state)
>  {
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +
>  	pipe_config->has_audio =
>  		intel_dp_has_audio(encoder, pipe_config, conn_state) &&
>  		intel_audio_compute_config(encoder, pipe_config, conn_state);
>  
>  	pipe_config->sdp_split_enable = pipe_config->has_audio &&
> -					intel_dp_is_uhbr(pipe_config);
> +					intel_dp_is_uhbr(intel_dp);
>  }
>  
>  int
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 530cc97bc42f..cc93c244a2f9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -80,7 +80,7 @@ void intel_dp_audio_compute_config(struct intel_encoder *encoder,
>  				   struct drm_connector_state *conn_state);
>  bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp);
>  bool intel_dp_is_edp(struct intel_dp *intel_dp);
> -bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state);
> +bool intel_dp_is_uhbr(struct intel_dp *intel_dp);
>  int intel_dp_link_symbol_size(int rate);
>  int intel_dp_link_symbol_clock(int rate);
>  bool intel_dp_is_port_edp(struct drm_i915_private *dev_priv, enum port port);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 242cb08e9fc4..eb25b59a4eb3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -355,7 +355,7 @@ static u8 intel_dp_get_lane_adjust_vswing_preemph(struct intel_dp *intel_dp,
>  		v = drm_dp_get_adjust_request_voltage(link_status, lane);
>  		p = drm_dp_get_adjust_request_pre_emphasis(link_status, lane);
>  	} else {
> -		for (lane = 0; lane < crtc_state->lane_count; lane++) {
> +		for (lane = 0; lane < intel_dp->lane_count; lane++) {
>  			v = max(v, drm_dp_get_adjust_request_voltage(link_status, lane));
>  			p = max(p, drm_dp_get_adjust_request_pre_emphasis(link_status, lane));
>  		}
> @@ -380,7 +380,7 @@ static u8 intel_dp_get_lane_adjust_train(struct intel_dp *intel_dp,
>  					 const u8 link_status[DP_LINK_STATUS_SIZE],
>  					 int lane)
>  {
> -	if (intel_dp_is_uhbr(crtc_state))
> +	if (intel_dp_is_uhbr(intel_dp))
>  		return intel_dp_get_lane_adjust_tx_ffe_preset(intel_dp, crtc_state,
>  							      dp_phy, link_status, lane);
>  	else
> @@ -419,18 +419,18 @@ intel_dp_get_adjust_train(struct intel_dp *intel_dp,
>  {
>  	int lane;
>  
> -	if (intel_dp_is_uhbr(crtc_state)) {
> +	if (intel_dp_is_uhbr(intel_dp)) {
>  		lt_dbg(intel_dp, dp_phy,
>  		       "128b/132b, lanes: %d, "
>  		       "TX FFE request: " TRAIN_REQ_FMT "\n",
> -		       crtc_state->lane_count,
> +		       intel_dp->lane_count,
>  		       TRAIN_REQ_TX_FFE_ARGS(link_status));
>  	} else {
>  		lt_dbg(intel_dp, dp_phy,
>  		       "8b/10b, lanes: %d, "
>  		       "vswing request: " TRAIN_REQ_FMT ", "
>  		       "pre-emphasis request: " TRAIN_REQ_FMT "\n",
> -		       crtc_state->lane_count,
> +		       intel_dp->lane_count,
>  		       TRAIN_REQ_VSWING_ARGS(link_status),
>  		       TRAIN_REQ_PREEMPH_ARGS(link_status));
>  	}
> @@ -464,7 +464,7 @@ intel_dp_set_link_train(struct intel_dp *intel_dp,
>  
>  	buf[0] = dp_train_pat;
>  	/* DP_TRAINING_LANEx_SET follow DP_TRAINING_PATTERN_SET */
> -	memcpy(buf + 1, intel_dp->train_set, crtc_state->lane_count);
> +	memcpy(buf + 1, intel_dp->train_set, intel_dp->lane_count);
>  	len = crtc_state->lane_count + 1;
>  
>  	return drm_dp_dpcd_write(&intel_dp->aux, reg, buf, len) == len;
> @@ -531,18 +531,18 @@ void intel_dp_set_signal_levels(struct intel_dp *intel_dp,
>  {
>  	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
>  
> -	if (intel_dp_is_uhbr(crtc_state)) {
> +	if (intel_dp_is_uhbr(intel_dp)){
>  		lt_dbg(intel_dp, dp_phy,
>  		       "128b/132b, lanes: %d, "
>  		       "TX FFE presets: " TRAIN_SET_FMT "\n",
> -		       crtc_state->lane_count,
> +		       intel_dp->lane_count,
>  		       TRAIN_SET_TX_FFE_ARGS(intel_dp->train_set));
>  	} else {
>  		lt_dbg(intel_dp, dp_phy,
>  		       "8b/10b, lanes: %d, "
>  		       "vswing levels: " TRAIN_SET_FMT ", "
>  		       "pre-emphasis levels: " TRAIN_SET_FMT "\n",
> -		       crtc_state->lane_count,
> +		       intel_dp->lane_count,
>  		       TRAIN_SET_VSWING_ARGS(intel_dp->train_set),
>  		       TRAIN_SET_PREEMPH_ARGS(intel_dp->train_set));
>  	}
> @@ -575,9 +575,9 @@ intel_dp_update_link_train(struct intel_dp *intel_dp,
>  	intel_dp_set_signal_levels(intel_dp, crtc_state, dp_phy);
>  
>  	ret = drm_dp_dpcd_write(&intel_dp->aux, reg,
> -				intel_dp->train_set, crtc_state->lane_count);
> +				intel_dp->train_set, intel_dp->lane_count);
>  
> -	return ret == crtc_state->lane_count;
> +	return ret == intel_dp->lane_count;
>  }
>  
>  /* 128b/132b */
> @@ -618,10 +618,10 @@ static bool intel_dp_link_max_vswing_reached(struct intel_dp *intel_dp,
>  {
>  	int lane;
>  
> -	for (lane = 0; lane < crtc_state->lane_count; lane++) {
> +	for (lane = 0; lane < intel_dp->lane_count; lane++) {
>  		u8 train_set_lane = intel_dp->train_set[lane];
>  
> -		if (intel_dp_is_uhbr(crtc_state)) {
> +		if (intel_dp_is_uhbr(intel_dp)) {
>  			if (!intel_dp_lane_max_tx_ffe_reached(train_set_lane))
>  				return false;
>  		} else {
> @@ -640,7 +640,7 @@ intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
>  	u8 link_config[2];
>  
>  	link_config[0] = crtc_state->vrr.flipline ? DP_MSA_TIMING_PAR_IGNORE_EN : 0;
> -	link_config[1] = intel_dp_is_uhbr(crtc_state) ?
> +	link_config[1] = intel_dp_is_uhbr(intel_dp) ?
>  			 DP_SET_ANSI_128B132B : DP_SET_ANSI_8B10B;
>  	drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL, link_config, 2);
>  }
> @@ -650,7 +650,7 @@ intel_dp_update_link_bw_set(struct intel_dp *intel_dp,
>  			    const struct intel_crtc_state *crtc_state,
>  			    u8 link_bw, u8 rate_select)
>  {
> -	u8 lane_count = crtc_state->lane_count;
> +	u8 lane_count = intel_dp->lane_count;
>  
>  	if (crtc_state->enhanced_framing)
>  		lane_count |= DP_LANE_COUNT_ENHANCED_FRAME_EN;
> @@ -689,7 +689,7 @@ intel_dp_prepare_link_train(struct intel_dp *intel_dp,
>  	if (intel_dp->prepare_link_retrain)
>  		intel_dp->prepare_link_retrain(intel_dp, crtc_state);
>  
> -	intel_dp_compute_rate(intel_dp, crtc_state->port_clock,
> +	intel_dp_compute_rate(intel_dp, intel_dp->link_rate,
>  			      &link_bw, &rate_select);
>  
>  	/*
> @@ -730,16 +730,16 @@ intel_dp_prepare_link_train(struct intel_dp *intel_dp,
>  	return true;
>  }
>  
> -static bool intel_dp_adjust_request_changed(const struct intel_crtc_state *crtc_state,
> +static bool intel_dp_adjust_request_changed(struct intel_dp *intel_dp,
>  					    const u8 old_link_status[DP_LINK_STATUS_SIZE],
>  					    const u8 new_link_status[DP_LINK_STATUS_SIZE])
>  {
>  	int lane;
>  
> -	for (lane = 0; lane < crtc_state->lane_count; lane++) {
> +	for (lane = 0; lane < intel_dp->lane_count; lane++) {
>  		u8 old, new;
>  
> -		if (intel_dp_is_uhbr(crtc_state)) {
> +		if (intel_dp_is_uhbr(intel_dp)) {
>  			old = drm_dp_get_adjust_tx_ffe_preset(old_link_status, lane);
>  			new = drm_dp_get_adjust_tx_ffe_preset(new_link_status, lane);
>  		} else {
> @@ -783,7 +783,7 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
>  
>  	delay_us = drm_dp_read_clock_recovery_delay(&intel_dp->aux,
>  						    intel_dp->dpcd, dp_phy,
> -						    intel_dp_is_uhbr(crtc_state));
> +						    intel_dp_is_uhbr(intel_dp));
>  
>  	/* clock recovery */
>  	if (!intel_dp_reset_link_train(intel_dp, crtc_state, dp_phy,
> @@ -816,7 +816,7 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
>  			return false;
>  		}
>  
> -		if (drm_dp_clock_recovery_ok(link_status, crtc_state->lane_count)) {
> +		if (drm_dp_clock_recovery_ok(link_status, intel_dp->lane_count)) {
>  			lt_dbg(intel_dp, dp_phy, "Clock recovery OK\n");
>  			return true;
>  		}
> @@ -841,7 +841,7 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
>  			return false;
>  		}
>  
> -		if (!intel_dp_adjust_request_changed(crtc_state, old_link_status, link_status))
> +		if (!intel_dp_adjust_request_changed(intel_dp, old_link_status, link_status))
>  			++voltage_tries;
>  		else
>  			voltage_tries = 1;
> @@ -872,7 +872,7 @@ static u32 intel_dp_training_pattern(struct intel_dp *intel_dp,
>  	bool source_tps3, sink_tps3, source_tps4, sink_tps4;
>  
>  	/* UHBR+ use separate 128b/132b TPS2 */
> -	if (intel_dp_is_uhbr(crtc_state))
> +	if (intel_dp_is_uhbr(intel_dp))
>  		return DP_TRAINING_PATTERN_2;
>  
>  	/*
> @@ -886,7 +886,7 @@ static u32 intel_dp_training_pattern(struct intel_dp *intel_dp,
>  		    drm_dp_tps4_supported(intel_dp->dpcd);
>  	if (source_tps4 && sink_tps4) {
>  		return DP_TRAINING_PATTERN_4;
> -	} else if (crtc_state->port_clock == 810000) {
> +	} else if (intel_dp->link_rate == 810000) {
>  		if (!source_tps4)
>  			lt_dbg(intel_dp, dp_phy,
>  			       "8.1 Gbps link rate without source TPS4 support\n");
> @@ -904,7 +904,7 @@ static u32 intel_dp_training_pattern(struct intel_dp *intel_dp,
>  		    drm_dp_tps3_supported(intel_dp->dpcd);
>  	if (source_tps3 && sink_tps3) {
>  		return  DP_TRAINING_PATTERN_3;
> -	} else if (crtc_state->port_clock >= 540000) {
> +	} else if (intel_dp->link_rate >= 540000) {
>  		if (!source_tps3)
>  			lt_dbg(intel_dp, dp_phy,
>  			       ">=5.4/6.48 Gbps link rate without source TPS3 support\n");
> @@ -934,7 +934,7 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp,
>  
>  	delay_us = drm_dp_read_channel_eq_delay(&intel_dp->aux,
>  						intel_dp->dpcd, dp_phy,
> -						intel_dp_is_uhbr(crtc_state));
> +						intel_dp_is_uhbr(intel_dp));
>  
>  	training_pattern = intel_dp_training_pattern(intel_dp, crtc_state, dp_phy);
>  	/* Scrambling is disabled for TPS2/3 and enabled for TPS4 */
> @@ -959,7 +959,7 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp,
>  
>  		/* Make sure clock is still ok */
>  		if (!drm_dp_clock_recovery_ok(link_status,
> -					      crtc_state->lane_count)) {
> +					      intel_dp->lane_count)) {
>  			intel_dp_dump_link_status(intel_dp, dp_phy, link_status);
>  			lt_dbg(intel_dp, dp_phy,
>  			       "Clock recovery check failed, cannot continue channel equalization\n");
> @@ -967,7 +967,7 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp,
>  		}
>  
>  		if (drm_dp_channel_eq_ok(link_status,
> -					 crtc_state->lane_count)) {
> +					 intel_dp->lane_count)) {
>  			channel_eq = true;
>  			lt_dbg(intel_dp, dp_phy, "Channel EQ done. DP Training successful\n");
>  			break;
> @@ -1041,7 +1041,7 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
>  	intel_dp_program_link_training_pattern(intel_dp, crtc_state, DP_PHY_DPRX,
>  					       DP_TRAINING_PATTERN_DISABLE);
>  
> -	if (intel_dp_is_uhbr(crtc_state) &&
> +	if (intel_dp_is_uhbr(intel_dp) &&
>  	    wait_for(intel_dp_128b132b_intra_hop(intel_dp, crtc_state) == 0, 500)) {
>  		lt_dbg(intel_dp, DP_PHY_DPRX, "128b/132b intra-hop not clearing\n");
>  	}
> @@ -1066,7 +1066,7 @@ intel_dp_link_train_phy(struct intel_dp *intel_dp,
>  	lt_dbg(intel_dp, dp_phy,
>  	       "Link Training %s at link rate = %d, lane count = %d\n",
>  	       ret ? "passed" : "failed",
> -	       crtc_state->port_clock, crtc_state->lane_count);
> +	       intel_dp->link_rate, intel_dp->lane_count);
>  
>  	return ret;
>  }
> @@ -1085,8 +1085,8 @@ static void intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp,
>  		       "Link Training failed with HOBL active, not enabling it from now on\n");
>  		intel_dp->hobl_failed = true;
>  	} else if (intel_dp_get_link_train_fallback_values(intel_dp,
> -							   crtc_state->port_clock,
> -							   crtc_state->lane_count)) {
> +							   intel_dp->link_rate,
> +							   intel_dp->lane_count)) {
>  		return;
>  	}
>  
> @@ -1192,7 +1192,7 @@ intel_dp_128b132b_lane_eq(struct intel_dp *intel_dp,
>  			return false;
>  		}
>  
> -		if (drm_dp_128b132b_lane_channel_eq_done(link_status, crtc_state->lane_count)) {
> +		if (drm_dp_128b132b_lane_channel_eq_done(link_status, intel_dp->lane_count)) {
>  			lt_dbg(intel_dp, DP_PHY_DPRX, "Lane channel eq done\n");
>  			break;
>  		}
> @@ -1287,7 +1287,7 @@ intel_dp_128b132b_lane_cds(struct intel_dp *intel_dp,
>  
>  		if (drm_dp_128b132b_eq_interlane_align_done(link_status) &&
>  		    drm_dp_128b132b_cds_interlane_align_done(link_status) &&
> -		    drm_dp_128b132b_lane_symbol_locked(link_status, crtc_state->lane_count)) {
> +		    drm_dp_128b132b_lane_symbol_locked(link_status, intel_dp->lane_count)) {
>  			lt_dbg(intel_dp, DP_PHY_DPRX, "CDS interlane align done\n");
>  			break;
>  		}
> @@ -1330,7 +1330,7 @@ intel_dp_128b132b_link_train(struct intel_dp *intel_dp,
>  	lt_dbg(intel_dp, DP_PHY_DPRX,
>  	       "128b/132b Link Training %s at link rate = %d, lane count = %d\n",
>  	       passed ? "passed" : "failed",
> -	       crtc_state->port_clock, crtc_state->lane_count);
> +	       intel_dp->link_rate, intel_dp->lane_count);
>  
>  	return passed;
>  }
> @@ -1344,8 +1344,9 @@ intel_dp_128b132b_link_train(struct intel_dp *intel_dp,
>   * retraining with reduced link rate/lane parameters if the link training
>   * fails.
>   * After calling this function intel_dp_stop_link_train() must be called.
> + * Return: Link trained status success/failure.
>   */
> -void intel_dp_start_link_train(struct intel_dp *intel_dp,
> +bool intel_dp_start_link_train(struct intel_dp *intel_dp,
>  			       const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> @@ -1363,7 +1364,7 @@ void intel_dp_start_link_train(struct intel_dp *intel_dp,
>  
>  	intel_dp_prepare_link_train(intel_dp, crtc_state);
>  
> -	if (intel_dp_is_uhbr(crtc_state))
> +	if (intel_dp_is_uhbr(intel_dp))
>  		passed = intel_dp_128b132b_link_train(intel_dp, crtc_state, lttpr_count);
>  	else
>  		passed = intel_dp_link_train_all_phys(intel_dp, crtc_state, lttpr_count);
> @@ -1382,11 +1383,13 @@ void intel_dp_start_link_train(struct intel_dp *intel_dp,
>  	 */
>  	if (!passed && i915->display.hotplug.ignore_long_hpd) {
>  		lt_dbg(intel_dp, DP_PHY_DPRX, "Ignore the link failure\n");
> -		return;
> +		return true;
>  	}
>  
>  	if (!passed)
>  		intel_dp_schedule_fallback_link_training(intel_dp, crtc_state);
> +
> +	return passed;
>  }
>  
>  void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
> @@ -1398,7 +1401,7 @@ void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
>  	 * Default value of bit 31 is '0' hence discarding the write
>  	 * TODO: Corrective actions on SDP corruption yet to be defined
>  	 */
> -	if (!intel_dp_is_uhbr(crtc_state))
> +	if (!intel_dp_is_uhbr(intel_dp))
>  		return;
>  
>  	/* DP v2.0 SCR on SDP CRC16 for 128b/132b Link Layer */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> index 2c8f2775891b..601f7e80476e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> @@ -24,7 +24,7 @@ void intel_dp_program_link_training_pattern(struct intel_dp *intel_dp,
>  void intel_dp_set_signal_levels(struct intel_dp *intel_dp,
>  				const struct intel_crtc_state *crtc_state,
>  				enum drm_dp_phy dp_phy);
> -void intel_dp_start_link_train(struct intel_dp *intel_dp,
> +bool intel_dp_start_link_train(struct intel_dp *intel_dp,
>  			       const struct intel_crtc_state *crtc_state);
>  void intel_dp_stop_link_train(struct intel_dp *intel_dp,
>  			      const struct intel_crtc_state *crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 5fa25a5a36b5..27994a3b568c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -52,13 +52,13 @@
>  
>  static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp,
>  					  const struct drm_display_mode *adjusted_mode,
> -					  struct intel_crtc_state *crtc_state,
> +					  struct intel_dp *intel_dp,
>  					  bool dsc)
>  {
> -	if (intel_dp_is_uhbr(crtc_state) && DISPLAY_VER(i915) < 14 && dsc) {
> +	if (intel_dp_is_uhbr(intel_dp) && DISPLAY_VER(i915) < 14 && dsc) {
>  		int output_bpp = bpp;
>  		/* DisplayPort 2 128b/132b, bits per lane is always 32 */
> -		int symbol_clock = crtc_state->port_clock / 32;
> +		int symbol_clock = intel_dp->link_rate / 32;
>  
>  		if (output_bpp * adjusted_mode->crtc_clock >=
>  		    symbol_clock * 72) {
> @@ -71,7 +71,8 @@ static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp
>  	return 0;
>  }
>  
> -static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
> +static int intel_dp_mst_bw_overhead(struct intel_dp *intel_dp,
> +				    const struct intel_crtc_state *crtc_state,
>  				    const struct intel_connector *connector,
>  				    bool ssc, bool dsc, int bpp_x16)
>  {
> @@ -81,7 +82,7 @@ static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
>  	int dsc_slice_count = 0;
>  	int overhead;
>  
> -	flags |= intel_dp_is_uhbr(crtc_state) ? DRM_DP_BW_OVERHEAD_UHBR : 0;
> +	flags |= intel_dp_is_uhbr(intel_dp) ? DRM_DP_BW_OVERHEAD_UHBR : 0;
>  	flags |= ssc ? DRM_DP_BW_OVERHEAD_SSC_REF_CLK : 0;
>  	flags |= crtc_state->fec_enable ? DRM_DP_BW_OVERHEAD_FEC : 0;
>  
> @@ -170,12 +171,12 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  		if (!intel_dp_supports_fec(intel_dp, connector, crtc_state))
>  			return -EINVAL;
>  
> -		crtc_state->fec_enable = !intel_dp_is_uhbr(crtc_state);
> +		crtc_state->fec_enable = !intel_dp_is_uhbr(intel_dp);
>  	}
>  
>  	mst_state->pbn_div = drm_dp_get_vc_payload_bw(&intel_dp->mst_mgr,
> -						      crtc_state->port_clock,
> -						      crtc_state->lane_count);
> +						      intel_dp->link_rate,
> +						      intel_dp->lane_count);
>  
>  	drm_dbg_kms(&i915->drm, "Looking for slots in range min bpp %d max bpp %d\n",
>  		    min_bpp, max_bpp);
> @@ -188,16 +189,18 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  
>  		drm_dbg_kms(&i915->drm, "Trying bpp %d\n", bpp);
>  
> -		ret = intel_dp_mst_check_constraints(i915, bpp, adjusted_mode, crtc_state, dsc);
> +		ret = intel_dp_mst_check_constraints(i915, bpp, adjusted_mode, intel_dp, dsc);
>  		if (ret)
>  			continue;
>  
>  		link_bpp_x16 = to_bpp_x16(dsc ? bpp :
>  					  intel_dp_output_bpp(crtc_state->output_format, bpp));
>  
> -		local_bw_overhead = intel_dp_mst_bw_overhead(crtc_state, connector,
> +		local_bw_overhead = intel_dp_mst_bw_overhead(intel_dp,
> +							     crtc_state, connector,
>  							     false, dsc, link_bpp_x16);
> -		remote_bw_overhead = intel_dp_mst_bw_overhead(crtc_state, connector,
> +		remote_bw_overhead = intel_dp_mst_bw_overhead(intel_dp,
> +							      crtc_state, connector,
>  							      true, dsc, link_bpp_x16);
>  
>  		intel_dp_mst_compute_m_n(crtc_state, connector,
> @@ -368,7 +371,7 @@ static int intel_dp_mst_update_slots(struct intel_encoder *encoder,
>  	struct intel_dp *intel_dp = &intel_mst->primary->dp;
>  	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst_mgr;
>  	struct drm_dp_mst_topology_state *topology_state;
> -	u8 link_coding_cap = intel_dp_is_uhbr(crtc_state) ?
> +	u8 link_coding_cap = intel_dp_is_uhbr(intel_dp) ?
>  		DP_CAP_ANSI_128B132B : DP_CAP_ANSI_8B10B;
>  
>  	topology_state = drm_atomic_get_mst_topology_state(conn_state->state, mgr);
> @@ -1123,7 +1126,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>  
>  	drm_WARN_ON(&dev_priv->drm, pipe_config->has_pch_encoder);
>  
> -	if (intel_dp_is_uhbr(pipe_config)) {
> +	if (intel_dp_is_uhbr(intel_dp)) {
>  		const struct drm_display_mode *adjusted_mode =
>  			&pipe_config->hw.adjusted_mode;
>  		u64 crtc_clock_hz = KHz(adjusted_mode->crtc_clock);

-- 
Jani Nikula, Intel
