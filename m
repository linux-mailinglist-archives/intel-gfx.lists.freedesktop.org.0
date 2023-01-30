Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B09680E54
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 14:00:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8530010E242;
	Mon, 30 Jan 2023 13:00:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AF7510E242
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 13:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675083622; x=1706619622;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Igs/IKN2QYaxRb2f0KNOJyCy+0NYA9dzJE9G7yZyTKo=;
 b=JcTa+dz/IZtaSGMbUxNH1o++SfbW2NT0i7IcWiYWZgYVi0FePYOt7Rr9
 cPm1Zl5L7V8tynqZ11jllmgpFa1qLdqPxCmA/0+W8amooZXAhCxUhO+rS
 j5Q9Y2kxKf+VdgRdiCVImIKpOAZDaicAlb5ZI1ZOl6wlAUaf4jbGkwlfj
 YsCg6NZGhYjGwfyQOPLsjNR0LR56zRNKZDDeZ7XVfwPa6HHqINNw+9RjT
 AVrNBQfCXjhaX1v0Sqjj7V4Y8xxaHWGXQT8tMneVTgV7ECb4CgB20kOAW
 XnT8bMud9bYqCU8TbHFy1JqijssDfn2zpUuaZS+ExHr5fhx+nPRnSd/iV Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="392097066"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="392097066"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 05:00:20 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="732689939"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="732689939"
Received: from jproschw-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.33.170])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 05:00:18 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <87359a4e96.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221219130844.2914001-1-andrzej.hajda@intel.com>
 <87359a4e96.fsf@intel.com>
Date: Mon, 30 Jan 2023 15:00:16 +0200
Message-ID: <878rhk41pb.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/dsi: use intel_de_rmw if
 possible
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 20 Dec 2022, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Mon, 19 Dec 2022, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
>> The helper makes the code more compact and readable.
>>
>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

And pushed to din, thanks for the patch.

BR,
Jani.


>
>> ---
>>  drivers/gpu/drm/i915/display/icl_dsi.c | 256 ++++++++-----------------
>>  1 file changed, 82 insertions(+), 174 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
>> index ae14c794c4bc09..b02ac9d2b1e4a2 100644
>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>> @@ -207,7 +207,7 @@ void icl_dsi_frame_update(struct intel_crtc_state *crtc_state)
>>  {
>>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>> -	u32 tmp, mode_flags;
>> +	u32 mode_flags;
>>  	enum port port;
>>  
>>  	mode_flags = crtc_state->mode_flags;
>> @@ -224,9 +224,7 @@ void icl_dsi_frame_update(struct intel_crtc_state *crtc_state)
>>  	else
>>  		return;
>>  
>> -	tmp = intel_de_read(dev_priv, DSI_CMD_FRMCTL(port));
>> -	tmp |= DSI_FRAME_UPDATE_REQUEST;
>> -	intel_de_write(dev_priv, DSI_CMD_FRMCTL(port), tmp);
>> +	intel_de_rmw(dev_priv, DSI_CMD_FRMCTL(port), 0, DSI_FRAME_UPDATE_REQUEST);
>>  }
>>  
>>  static void dsi_program_swing_and_deemphasis(struct intel_encoder *encoder)
>> @@ -234,7 +232,7 @@ static void dsi_program_swing_and_deemphasis(struct intel_encoder *encoder)
>>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>>  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
>>  	enum phy phy;
>> -	u32 tmp;
>> +	u32 tmp, mask, val;
>>  	int lane;
>>  
>>  	for_each_dsi_phy(phy, intel_dsi->phys) {
>> @@ -242,56 +240,35 @@ static void dsi_program_swing_and_deemphasis(struct intel_encoder *encoder)
>>  		 * Program voltage swing and pre-emphasis level values as per
>>  		 * table in BSPEC under DDI buffer programing
>>  		 */
>> +		mask = SCALING_MODE_SEL_MASK | RTERM_SELECT_MASK;
>> +		val = SCALING_MODE_SEL(0x2) | TAP2_DISABLE | TAP3_DISABLE |
>> +		      RTERM_SELECT(0x6);
>>  		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN(0, phy));
>> -		tmp &= ~(SCALING_MODE_SEL_MASK | RTERM_SELECT_MASK);
>> -		tmp |= SCALING_MODE_SEL(0x2);
>> -		tmp |= TAP2_DISABLE | TAP3_DISABLE;
>> -		tmp |= RTERM_SELECT(0x6);
>> +		tmp &= ~mask;
>> +		tmp |= val;
>>  		intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), tmp);
>> +		intel_de_rmw(dev_priv, ICL_PORT_TX_DW5_AUX(phy), mask, val);
>>  
>> -		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW5_AUX(phy));
>> -		tmp &= ~(SCALING_MODE_SEL_MASK | RTERM_SELECT_MASK);
>> -		tmp |= SCALING_MODE_SEL(0x2);
>> -		tmp |= TAP2_DISABLE | TAP3_DISABLE;
>> -		tmp |= RTERM_SELECT(0x6);
>> -		intel_de_write(dev_priv, ICL_PORT_TX_DW5_AUX(phy), tmp);
>> -
>> +		mask = SWING_SEL_LOWER_MASK | SWING_SEL_UPPER_MASK |
>> +		       RCOMP_SCALAR_MASK;
>> +		val = SWING_SEL_UPPER(0x2) | SWING_SEL_LOWER(0x2) |
>> +		      RCOMP_SCALAR(0x98);
>>  		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW2_LN(0, phy));
>> -		tmp &= ~(SWING_SEL_LOWER_MASK | SWING_SEL_UPPER_MASK |
>> -			 RCOMP_SCALAR_MASK);
>> -		tmp |= SWING_SEL_UPPER(0x2);
>> -		tmp |= SWING_SEL_LOWER(0x2);
>> -		tmp |= RCOMP_SCALAR(0x98);
>> +		tmp &= ~mask;
>> +		tmp |= val;
>>  		intel_de_write(dev_priv, ICL_PORT_TX_DW2_GRP(phy), tmp);
>> +		intel_de_rmw(dev_priv, ICL_PORT_TX_DW2_AUX(phy), mask, val);
>>  
>> -		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW2_AUX(phy));
>> -		tmp &= ~(SWING_SEL_LOWER_MASK | SWING_SEL_UPPER_MASK |
>> -			 RCOMP_SCALAR_MASK);
>> -		tmp |= SWING_SEL_UPPER(0x2);
>> -		tmp |= SWING_SEL_LOWER(0x2);
>> -		tmp |= RCOMP_SCALAR(0x98);
>> -		intel_de_write(dev_priv, ICL_PORT_TX_DW2_AUX(phy), tmp);
>> -
>> -		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW4_AUX(phy));
>> -		tmp &= ~(POST_CURSOR_1_MASK | POST_CURSOR_2_MASK |
>> -			 CURSOR_COEFF_MASK);
>> -		tmp |= POST_CURSOR_1(0x0);
>> -		tmp |= POST_CURSOR_2(0x0);
>> -		tmp |= CURSOR_COEFF(0x3f);
>> -		intel_de_write(dev_priv, ICL_PORT_TX_DW4_AUX(phy), tmp);
>> -
>> -		for (lane = 0; lane <= 3; lane++) {
>> -			/* Bspec: must not use GRP register for write */
>> -			tmp = intel_de_read(dev_priv,
>> -					    ICL_PORT_TX_DW4_LN(lane, phy));
>> -			tmp &= ~(POST_CURSOR_1_MASK | POST_CURSOR_2_MASK |
>> -				 CURSOR_COEFF_MASK);
>> -			tmp |= POST_CURSOR_1(0x0);
>> -			tmp |= POST_CURSOR_2(0x0);
>> -			tmp |= CURSOR_COEFF(0x3f);
>> -			intel_de_write(dev_priv,
>> -				       ICL_PORT_TX_DW4_LN(lane, phy), tmp);
>> -		}
>> +		mask = POST_CURSOR_1_MASK | POST_CURSOR_2_MASK |
>> +		       CURSOR_COEFF_MASK;
>> +		val = POST_CURSOR_1(0x0) | POST_CURSOR_2(0x0) |
>> +		      CURSOR_COEFF(0x3f);
>> +		intel_de_rmw(dev_priv, ICL_PORT_TX_DW4_AUX(phy), mask, val);
>> +
>> +		/* Bspec: must not use GRP register for write */
>> +		for (lane = 0; lane <= 3; lane++)
>> +			intel_de_rmw(dev_priv, ICL_PORT_TX_DW4_LN(lane, phy),
>> +				     mask, val);
>>  	}
>>  }
>>  
>> @@ -310,7 +287,6 @@ static void configure_dual_link_mode(struct intel_encoder *encoder,
>>  	if (intel_dsi->dual_link == DSI_DUAL_LINK_FRONT_BACK) {
>>  		const struct drm_display_mode *adjusted_mode =
>>  					&pipe_config->hw.adjusted_mode;
>> -		u32 dss_ctl2;
>>  		u16 hactive = adjusted_mode->crtc_hdisplay;
>>  		u16 dl_buffer_depth;
>>  
>> @@ -323,10 +299,8 @@ static void configure_dual_link_mode(struct intel_encoder *encoder,
>>  
>>  		dss_ctl1 &= ~LEFT_DL_BUF_TARGET_DEPTH_MASK;
>>  		dss_ctl1 |= LEFT_DL_BUF_TARGET_DEPTH(dl_buffer_depth);
>> -		dss_ctl2 = intel_de_read(dev_priv, DSS_CTL2);
>> -		dss_ctl2 &= ~RIGHT_DL_BUF_TARGET_DEPTH_MASK;
>> -		dss_ctl2 |= RIGHT_DL_BUF_TARGET_DEPTH(dl_buffer_depth);
>> -		intel_de_write(dev_priv, DSS_CTL2, dss_ctl2);
>> +		intel_de_rmw(dev_priv, DSS_CTL2, RIGHT_DL_BUF_TARGET_DEPTH_MASK,
>> +			     RIGHT_DL_BUF_TARGET_DEPTH(dl_buffer_depth));
>>  	} else {
>>  		/* Interleave */
>>  		dss_ctl1 |= DUAL_LINK_MODE_INTERLEAVE;
>> @@ -412,13 +386,10 @@ static void gen11_dsi_enable_io_power(struct intel_encoder *encoder)
>>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>>  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
>>  	enum port port;
>> -	u32 tmp;
>>  
>> -	for_each_dsi_port(port, intel_dsi->ports) {
>> -		tmp = intel_de_read(dev_priv, ICL_DSI_IO_MODECTL(port));
>> -		tmp |= COMBO_PHY_MODE_DSI;
>> -		intel_de_write(dev_priv, ICL_DSI_IO_MODECTL(port), tmp);
>> -	}
>> +	for_each_dsi_port(port, intel_dsi->ports)
>> +		intel_de_rmw(dev_priv, ICL_DSI_IO_MODECTL(port),
>> +			     0, COMBO_PHY_MODE_DSI);
>>  
>>  	get_dsi_io_power_domains(dev_priv, intel_dsi);
>>  }
>> @@ -444,26 +415,16 @@ static void gen11_dsi_config_phy_lanes_sequence(struct intel_encoder *encoder)
>>  
>>  	/* Step 4b(i) set loadgen select for transmit and aux lanes */
>>  	for_each_dsi_phy(phy, intel_dsi->phys) {
>> -		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW4_AUX(phy));
>> -		tmp &= ~LOADGEN_SELECT;
>> -		intel_de_write(dev_priv, ICL_PORT_TX_DW4_AUX(phy), tmp);
>> -		for (lane = 0; lane <= 3; lane++) {
>> -			tmp = intel_de_read(dev_priv,
>> -					    ICL_PORT_TX_DW4_LN(lane, phy));
>> -			tmp &= ~LOADGEN_SELECT;
>> -			if (lane != 2)
>> -				tmp |= LOADGEN_SELECT;
>> -			intel_de_write(dev_priv,
>> -				       ICL_PORT_TX_DW4_LN(lane, phy), tmp);
>> -		}
>> +		intel_de_rmw(dev_priv, ICL_PORT_TX_DW4_AUX(phy), LOADGEN_SELECT, 0);
>> +		for (lane = 0; lane <= 3; lane++)
>> +			intel_de_rmw(dev_priv, ICL_PORT_TX_DW4_LN(lane, phy),
>> +				     LOADGEN_SELECT, lane != 2 ? LOADGEN_SELECT : 0);
>>  	}
>>  
>>  	/* Step 4b(ii) set latency optimization for transmit and aux lanes */
>>  	for_each_dsi_phy(phy, intel_dsi->phys) {
>> -		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW2_AUX(phy));
>> -		tmp &= ~FRC_LATENCY_OPTIM_MASK;
>> -		tmp |= FRC_LATENCY_OPTIM_VAL(0x5);
>> -		intel_de_write(dev_priv, ICL_PORT_TX_DW2_AUX(phy), tmp);
>> +		intel_de_rmw(dev_priv, ICL_PORT_TX_DW2_AUX(phy),
>> +			     FRC_LATENCY_OPTIM_MASK, FRC_LATENCY_OPTIM_VAL(0x5));
>>  		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW2_LN(0, phy));
>>  		tmp &= ~FRC_LATENCY_OPTIM_MASK;
>>  		tmp |= FRC_LATENCY_OPTIM_VAL(0x5);
>> @@ -471,12 +432,8 @@ static void gen11_dsi_config_phy_lanes_sequence(struct intel_encoder *encoder)
>>  
>>  		/* For EHL, TGL, set latency optimization for PCS_DW1 lanes */
>>  		if (IS_JSL_EHL(dev_priv) || (DISPLAY_VER(dev_priv) >= 12)) {
>> -			tmp = intel_de_read(dev_priv,
>> -					    ICL_PORT_PCS_DW1_AUX(phy));
>> -			tmp &= ~LATENCY_OPTIM_MASK;
>> -			tmp |= LATENCY_OPTIM_VAL(0);
>> -			intel_de_write(dev_priv, ICL_PORT_PCS_DW1_AUX(phy),
>> -				       tmp);
>> +			intel_de_rmw(dev_priv, ICL_PORT_PCS_DW1_AUX(phy),
>> +				     LATENCY_OPTIM_MASK, LATENCY_OPTIM_VAL(0));
>>  
>>  			tmp = intel_de_read(dev_priv,
>>  					    ICL_PORT_PCS_DW1_LN(0, phy));
>> @@ -501,9 +458,7 @@ static void gen11_dsi_voltage_swing_program_seq(struct intel_encoder *encoder)
>>  		tmp = intel_de_read(dev_priv, ICL_PORT_PCS_DW1_LN(0, phy));
>>  		tmp &= ~COMMON_KEEPER_EN;
>>  		intel_de_write(dev_priv, ICL_PORT_PCS_DW1_GRP(phy), tmp);
>> -		tmp = intel_de_read(dev_priv, ICL_PORT_PCS_DW1_AUX(phy));
>> -		tmp &= ~COMMON_KEEPER_EN;
>> -		intel_de_write(dev_priv, ICL_PORT_PCS_DW1_AUX(phy), tmp);
>> +		intel_de_rmw(dev_priv, ICL_PORT_PCS_DW1_AUX(phy), COMMON_KEEPER_EN, 0);
>>  	}
>>  
>>  	/*
>> @@ -511,20 +466,15 @@ static void gen11_dsi_voltage_swing_program_seq(struct intel_encoder *encoder)
>>  	 * Note: loadgen select program is done
>>  	 * as part of lane phy sequence configuration
>>  	 */
>> -	for_each_dsi_phy(phy, intel_dsi->phys) {
>> -		tmp = intel_de_read(dev_priv, ICL_PORT_CL_DW5(phy));
>> -		tmp |= SUS_CLOCK_CONFIG;
>> -		intel_de_write(dev_priv, ICL_PORT_CL_DW5(phy), tmp);
>> -	}
>> +	for_each_dsi_phy(phy, intel_dsi->phys)
>> +		intel_de_rmw(dev_priv, ICL_PORT_CL_DW5(phy), 0, SUS_CLOCK_CONFIG);
>>  
>>  	/* Clear training enable to change swing values */
>>  	for_each_dsi_phy(phy, intel_dsi->phys) {
>>  		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN(0, phy));
>>  		tmp &= ~TX_TRAINING_EN;
>>  		intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), tmp);
>> -		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW5_AUX(phy));
>> -		tmp &= ~TX_TRAINING_EN;
>> -		intel_de_write(dev_priv, ICL_PORT_TX_DW5_AUX(phy), tmp);
>> +		intel_de_rmw(dev_priv, ICL_PORT_TX_DW5_AUX(phy), TX_TRAINING_EN, 0);
>>  	}
>>  
>>  	/* Program swing and de-emphasis */
>> @@ -535,9 +485,7 @@ static void gen11_dsi_voltage_swing_program_seq(struct intel_encoder *encoder)
>>  		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN(0, phy));
>>  		tmp |= TX_TRAINING_EN;
>>  		intel_de_write(dev_priv, ICL_PORT_TX_DW5_GRP(phy), tmp);
>> -		tmp = intel_de_read(dev_priv, ICL_PORT_TX_DW5_AUX(phy));
>> -		tmp |= TX_TRAINING_EN;
>> -		intel_de_write(dev_priv, ICL_PORT_TX_DW5_AUX(phy), tmp);
>> +		intel_de_rmw(dev_priv, ICL_PORT_TX_DW5_AUX(phy), 0, TX_TRAINING_EN);
>>  	}
>>  }
>>  
>> @@ -545,13 +493,10 @@ static void gen11_dsi_enable_ddi_buffer(struct intel_encoder *encoder)
>>  {
>>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>>  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
>> -	u32 tmp;
>>  	enum port port;
>>  
>>  	for_each_dsi_port(port, intel_dsi->ports) {
>> -		tmp = intel_de_read(dev_priv, DDI_BUF_CTL(port));
>> -		tmp |= DDI_BUF_CTL_ENABLE;
>> -		intel_de_write(dev_priv, DDI_BUF_CTL(port), tmp);
>> +		intel_de_rmw(dev_priv, DDI_BUF_CTL(port), 0, DDI_BUF_CTL_ENABLE);
>>  
>>  		if (wait_for_us(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
>>  				  DDI_BUF_IS_IDLE),
>> @@ -567,17 +512,13 @@ gen11_dsi_setup_dphy_timings(struct intel_encoder *encoder,
>>  {
>>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>>  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
>> -	u32 tmp;
>>  	enum port port;
>>  	enum phy phy;
>>  
>>  	/* Program T-INIT master registers */
>> -	for_each_dsi_port(port, intel_dsi->ports) {
>> -		tmp = intel_de_read(dev_priv, ICL_DSI_T_INIT_MASTER(port));
>> -		tmp &= ~DSI_T_INIT_MASTER_MASK;
>> -		tmp |= intel_dsi->init_count;
>> -		intel_de_write(dev_priv, ICL_DSI_T_INIT_MASTER(port), tmp);
>> -	}
>> +	for_each_dsi_port(port, intel_dsi->ports)
>> +		intel_de_rmw(dev_priv, ICL_DSI_T_INIT_MASTER(port),
>> +			     DSI_T_INIT_MASTER_MASK, intel_dsi->init_count);
>>  
>>  	/* Program DPHY clock lanes timings */
>>  	for_each_dsi_port(port, intel_dsi->ports) {
>> @@ -608,31 +549,22 @@ gen11_dsi_setup_dphy_timings(struct intel_encoder *encoder,
>>  	if (DISPLAY_VER(dev_priv) == 11) {
>>  		if (afe_clk(encoder, crtc_state) <= 800000) {
>>  			for_each_dsi_port(port, intel_dsi->ports) {
>> -				tmp = intel_de_read(dev_priv,
>> -						    DPHY_TA_TIMING_PARAM(port));
>> -				tmp &= ~TA_SURE_MASK;
>> -				tmp |= TA_SURE_OVERRIDE | TA_SURE(0);
>> -				intel_de_write(dev_priv,
>> -					       DPHY_TA_TIMING_PARAM(port),
>> -					       tmp);
>> +				intel_de_rmw(dev_priv, DPHY_TA_TIMING_PARAM(port),
>> +					     TA_SURE_MASK,
>> +					     TA_SURE_OVERRIDE | TA_SURE(0));
>>  
>>  				/* shadow register inside display core */
>> -				tmp = intel_de_read(dev_priv,
>> -						    DSI_TA_TIMING_PARAM(port));
>> -				tmp &= ~TA_SURE_MASK;
>> -				tmp |= TA_SURE_OVERRIDE | TA_SURE(0);
>> -				intel_de_write(dev_priv,
>> -					       DSI_TA_TIMING_PARAM(port), tmp);
>> +				intel_de_rmw(dev_priv, DSI_TA_TIMING_PARAM(port),
>> +					     TA_SURE_MASK,
>> +					     TA_SURE_OVERRIDE | TA_SURE(0));
>>  			}
>>  		}
>>  	}
>>  
>>  	if (IS_JSL_EHL(dev_priv)) {
>> -		for_each_dsi_phy(phy, intel_dsi->phys) {
>> -			tmp = intel_de_read(dev_priv, ICL_DPHY_CHKN(phy));
>> -			tmp |= ICL_DPHY_CHKN_AFE_OVER_PPI_STRAP;
>> -			intel_de_write(dev_priv, ICL_DPHY_CHKN(phy), tmp);
>> -		}
>> +		for_each_dsi_phy(phy, intel_dsi->phys)
>> +			intel_de_rmw(dev_priv, ICL_DPHY_CHKN(phy),
>> +				     0, ICL_DPHY_CHKN_AFE_OVER_PPI_STRAP);
>>  	}
>>  }
>>  
>> @@ -824,11 +756,8 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
>>  	if (intel_dsi->dual_link) {
>>  		for_each_dsi_port(port, intel_dsi->ports) {
>>  			dsi_trans = dsi_port_to_transcoder(port);
>> -			tmp = intel_de_read(dev_priv,
>> -					    TRANS_DDI_FUNC_CTL2(dsi_trans));
>> -			tmp |= PORT_SYNC_MODE_ENABLE;
>> -			intel_de_write(dev_priv,
>> -				       TRANS_DDI_FUNC_CTL2(dsi_trans), tmp);
>> +			intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL2(dsi_trans),
>> +				     0, PORT_SYNC_MODE_ENABLE);
>>  		}
>>  
>>  		/* configure stream splitting */
>> @@ -1044,13 +973,10 @@ static void gen11_dsi_enable_transcoder(struct intel_encoder *encoder)
>>  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
>>  	enum port port;
>>  	enum transcoder dsi_trans;
>> -	u32 tmp;
>>  
>>  	for_each_dsi_port(port, intel_dsi->ports) {
>>  		dsi_trans = dsi_port_to_transcoder(port);
>> -		tmp = intel_de_read(dev_priv, PIPECONF(dsi_trans));
>> -		tmp |= PIPECONF_ENABLE;
>> -		intel_de_write(dev_priv, PIPECONF(dsi_trans), tmp);
>> +		intel_de_rmw(dev_priv, PIPECONF(dsi_trans), 0, PIPECONF_ENABLE);
>>  
>>  		/* wait for transcoder to be enabled */
>>  		if (intel_de_wait_for_set(dev_priv, PIPECONF(dsi_trans),
>> @@ -1067,7 +993,7 @@ static void gen11_dsi_setup_timeouts(struct intel_encoder *encoder,
>>  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
>>  	enum port port;
>>  	enum transcoder dsi_trans;
>> -	u32 tmp, hs_tx_timeout, lp_rx_timeout, ta_timeout, divisor, mul;
>> +	u32 hs_tx_timeout, lp_rx_timeout, ta_timeout, divisor, mul;
>>  
>>  	/*
>>  	 * escape clock count calculation:
>> @@ -1087,26 +1013,23 @@ static void gen11_dsi_setup_timeouts(struct intel_encoder *encoder,
>>  		dsi_trans = dsi_port_to_transcoder(port);
>>  
>>  		/* program hst_tx_timeout */
>> -		tmp = intel_de_read(dev_priv, DSI_HSTX_TO(dsi_trans));
>> -		tmp &= ~HSTX_TIMEOUT_VALUE_MASK;
>> -		tmp |= HSTX_TIMEOUT_VALUE(hs_tx_timeout);
>> -		intel_de_write(dev_priv, DSI_HSTX_TO(dsi_trans), tmp);
>> +		intel_de_rmw(dev_priv, DSI_HSTX_TO(dsi_trans),
>> +			     HSTX_TIMEOUT_VALUE_MASK,
>> +			     HSTX_TIMEOUT_VALUE(hs_tx_timeout));
>>  
>>  		/* FIXME: DSI_CALIB_TO */
>>  
>>  		/* program lp_rx_host timeout */
>> -		tmp = intel_de_read(dev_priv, DSI_LPRX_HOST_TO(dsi_trans));
>> -		tmp &= ~LPRX_TIMEOUT_VALUE_MASK;
>> -		tmp |= LPRX_TIMEOUT_VALUE(lp_rx_timeout);
>> -		intel_de_write(dev_priv, DSI_LPRX_HOST_TO(dsi_trans), tmp);
>> +		intel_de_rmw(dev_priv, DSI_LPRX_HOST_TO(dsi_trans),
>> +			     LPRX_TIMEOUT_VALUE_MASK,
>> +			     LPRX_TIMEOUT_VALUE(lp_rx_timeout));
>>  
>>  		/* FIXME: DSI_PWAIT_TO */
>>  
>>  		/* program turn around timeout */
>> -		tmp = intel_de_read(dev_priv, DSI_TA_TO(dsi_trans));
>> -		tmp &= ~TA_TIMEOUT_VALUE_MASK;
>> -		tmp |= TA_TIMEOUT_VALUE(ta_timeout);
>> -		intel_de_write(dev_priv, DSI_TA_TO(dsi_trans), tmp);
>> +		intel_de_rmw(dev_priv, DSI_TA_TO(dsi_trans),
>> +			     TA_TIMEOUT_VALUE_MASK,
>> +			     TA_TIMEOUT_VALUE(ta_timeout));
>>  	}
>>  }
>>  
>> @@ -1310,15 +1233,12 @@ static void gen11_dsi_disable_transcoder(struct intel_encoder *encoder)
>>  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
>>  	enum port port;
>>  	enum transcoder dsi_trans;
>> -	u32 tmp;
>>  
>>  	for_each_dsi_port(port, intel_dsi->ports) {
>>  		dsi_trans = dsi_port_to_transcoder(port);
>>  
>>  		/* disable transcoder */
>> -		tmp = intel_de_read(dev_priv, PIPECONF(dsi_trans));
>> -		tmp &= ~PIPECONF_ENABLE;
>> -		intel_de_write(dev_priv, PIPECONF(dsi_trans), tmp);
>> +		intel_de_rmw(dev_priv, PIPECONF(dsi_trans), PIPECONF_ENABLE, 0);
>>  
>>  		/* wait for transcoder to be disabled */
>>  		if (intel_de_wait_for_clear(dev_priv, PIPECONF(dsi_trans),
>> @@ -1350,11 +1270,9 @@ static void gen11_dsi_deconfigure_trancoder(struct intel_encoder *encoder)
>>  
>>  	/* disable periodic update mode */
>>  	if (is_cmd_mode(intel_dsi)) {
>> -		for_each_dsi_port(port, intel_dsi->ports) {
>> -			tmp = intel_de_read(dev_priv, DSI_CMD_FRMCTL(port));
>> -			tmp &= ~DSI_PERIODIC_FRAME_UPDATE_ENABLE;
>> -			intel_de_write(dev_priv, DSI_CMD_FRMCTL(port), tmp);
>> -		}
>> +		for_each_dsi_port(port, intel_dsi->ports)
>> +			intel_de_rmw(dev_priv, DSI_CMD_FRMCTL(port),
>> +				     DSI_PERIODIC_FRAME_UPDATE_ENABLE, 0);
>>  	}
>>  
>>  	/* put dsi link in ULPS */
>> @@ -1374,20 +1292,16 @@ static void gen11_dsi_deconfigure_trancoder(struct intel_encoder *encoder)
>>  	/* disable ddi function */
>>  	for_each_dsi_port(port, intel_dsi->ports) {
>>  		dsi_trans = dsi_port_to_transcoder(port);
>> -		tmp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(dsi_trans));
>> -		tmp &= ~TRANS_DDI_FUNC_ENABLE;
>> -		intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(dsi_trans), tmp);
>> +		intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(dsi_trans),
>> +			     TRANS_DDI_FUNC_ENABLE, 0);
>>  	}
>>  
>>  	/* disable port sync mode if dual link */
>>  	if (intel_dsi->dual_link) {
>>  		for_each_dsi_port(port, intel_dsi->ports) {
>>  			dsi_trans = dsi_port_to_transcoder(port);
>> -			tmp = intel_de_read(dev_priv,
>> -					    TRANS_DDI_FUNC_CTL2(dsi_trans));
>> -			tmp &= ~PORT_SYNC_MODE_ENABLE;
>> -			intel_de_write(dev_priv,
>> -				       TRANS_DDI_FUNC_CTL2(dsi_trans), tmp);
>> +			intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL2(dsi_trans),
>> +				     PORT_SYNC_MODE_ENABLE, 0);
>>  		}
>>  	}
>>  }
>> @@ -1396,14 +1310,11 @@ static void gen11_dsi_disable_port(struct intel_encoder *encoder)
>>  {
>>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>>  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
>> -	u32 tmp;
>>  	enum port port;
>>  
>>  	gen11_dsi_ungate_clocks(encoder);
>>  	for_each_dsi_port(port, intel_dsi->ports) {
>> -		tmp = intel_de_read(dev_priv, DDI_BUF_CTL(port));
>> -		tmp &= ~DDI_BUF_CTL_ENABLE;
>> -		intel_de_write(dev_priv, DDI_BUF_CTL(port), tmp);
>> +		intel_de_rmw(dev_priv, DDI_BUF_CTL(port), DDI_BUF_CTL_ENABLE, 0);
>>  
>>  		if (wait_for_us((intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
>>  				 DDI_BUF_IS_IDLE),
>> @@ -1420,7 +1331,6 @@ static void gen11_dsi_disable_io_power(struct intel_encoder *encoder)
>>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>>  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
>>  	enum port port;
>> -	u32 tmp;
>>  
>>  	for_each_dsi_port(port, intel_dsi->ports) {
>>  		intel_wakeref_t wakeref;
>> @@ -1434,11 +1344,9 @@ static void gen11_dsi_disable_io_power(struct intel_encoder *encoder)
>>  	}
>>  
>>  	/* set mode to DDI */
>> -	for_each_dsi_port(port, intel_dsi->ports) {
>> -		tmp = intel_de_read(dev_priv, ICL_DSI_IO_MODECTL(port));
>> -		tmp &= ~COMBO_PHY_MODE_DSI;
>> -		intel_de_write(dev_priv, ICL_DSI_IO_MODECTL(port), tmp);
>> -	}
>> +	for_each_dsi_port(port, intel_dsi->ports)
>> +		intel_de_rmw(dev_priv, ICL_DSI_IO_MODECTL(port),
>> +			     COMBO_PHY_MODE_DSI, 0);
>>  }
>>  
>>  static void gen11_dsi_disable(struct intel_atomic_state *state,

-- 
Jani Nikula, Intel Open Source Graphics Center
