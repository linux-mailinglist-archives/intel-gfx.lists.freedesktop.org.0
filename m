Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD6DA2F66D
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 19:07:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A130210E5E1;
	Mon, 10 Feb 2025 18:07:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UMwWuxNs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37E0F10E5DD;
 Mon, 10 Feb 2025 18:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739210824; x=1770746824;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=zTa4v4EYBpnJSTWurxwPLYPrD0Ea/t+LiSBgU8Aa758=;
 b=UMwWuxNstdGOF59ROfFIuipbKVEgkTFhPjYk6rzoyNgFJlp1XWmYxi5i
 7OceRgSQWpS6GkoDeFf3i0pJfPa8sulI0XqwoDASFk5wx/FAKvcRw8A86
 nr+0uDdsG5EHMeNKUBHQNYlbWUjZrPY42YjmggfeDLTnBuYiHpEsdw2FP
 r2hY0Sws1bUYcOKtjNy30DeLLQqCOJ3sOioJ98bImSuaB1yoTmSepVrdg
 m+uMGZ6+h+7otCDlyHHB4jGNyS25k4SX4KaQCGhaBxLyzjg4B4fSGcOmH
 ckkP/M7DedLvCYHFVEIJIZXTdcmLaWyR3wZVcVMSvM8w69B00cUJu5OoD Q==;
X-CSE-ConnectionGUID: B+B8+08QR/iP0lRfVpDd2Q==
X-CSE-MsgGUID: Ao/ZEmrET6OHrcPtH9ZVjA==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="50035868"
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="50035868"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 10:07:03 -0800
X-CSE-ConnectionGUID: kCoqfcEPSAqgCkVsExK5Gg==
X-CSE-MsgGUID: f3xDblF4QyydWZ2/Lvrmjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="112891586"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.29])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 10:07:00 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 13/17] drm/i915/ddi: Factor out a helper to get
 DDI_BUF_CTL's config value
In-Reply-To: <20250129200221.2508101-14-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250129200221.2508101-1-imre.deak@intel.com>
 <20250129200221.2508101-14-imre.deak@intel.com>
Date: Mon, 10 Feb 2025 20:06:58 +0200
Message-ID: <87y0yd3c8t.fsf@intel.com>
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

On Wed, 29 Jan 2025, Imre Deak <imre.deak@intel.com> wrote:
> Factor out a function to get the configuration fields in the DDI_BUF_CTL
> register. This can be used for configuring an HDMI output as well.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 32 ++++++++++++++++--------
>  1 file changed, 21 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 64c42505f2ad6..dd8ae5cf96c70 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -333,45 +333,55 @@ static int dp_phy_lane_stagger_delay(int port_clock)
>  	return DIV_ROUND_UP(port_clock, intel_dp_link_symbol_size(port_clock) * 1000);
>  }
>  
> -static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
> -				      const struct intel_crtc_state *crtc_state)
> +static u32 intel_ddi_buf_ctl_config_val(struct intel_encoder *encoder,
> +					const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> -	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> +	u32 val = 0;
>  
>  	/* DDI_BUF_CTL_ENABLE will be set by intel_ddi_prepare_link_retrain() later */
> -	intel_dp->DP = DDI_PORT_WIDTH(crtc_state->lane_count) |
> +	val |= DDI_PORT_WIDTH(crtc_state->lane_count) |
>  		DDI_BUF_TRANS_SELECT(0);
>  
>  	if (dig_port->lane_reversal)
> -		intel_dp->DP |= DDI_BUF_PORT_REVERSAL;
> +		val |= DDI_BUF_PORT_REVERSAL;
>  	if (dig_port->ddi_a_4_lanes)
> -		intel_dp->DP |= DDI_A_4_LANES;
> +		val |= DDI_A_4_LANES;
>  
>  	if (DISPLAY_VER(i915) >= 14) {
>  		if (intel_dp_is_uhbr(crtc_state))
> -			intel_dp->DP |= DDI_BUF_PORT_DATA_40BIT;
> +			val |= DDI_BUF_PORT_DATA_40BIT;
>  		else
> -			intel_dp->DP |= DDI_BUF_PORT_DATA_10BIT;
> +			val |= DDI_BUF_PORT_DATA_10BIT;
>  	}
>  
>  	if (IS_ALDERLAKE_P(i915) && intel_encoder_is_tc(encoder)) {
> -		intel_dp->DP |= ddi_buf_phy_link_rate(crtc_state->port_clock);
> +		val |= ddi_buf_phy_link_rate(crtc_state->port_clock);
>  		/*
>  		 * TODO: remove the following once DDI_BUF_CTL is updated via
>  		 * an RMW everywhere.
>  		 */
>  		if (!intel_tc_port_in_tbt_alt_mode(dig_port))
> -			intel_dp->DP |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
> +			val |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
>  	}
>  
>  	if (IS_DISPLAY_VER(display, 11, 13) && intel_encoder_is_tc(encoder)) {
>  		int delay = dp_phy_lane_stagger_delay(crtc_state->port_clock);
>  
> -		intel_dp->DP |= DDI_BUF_LANE_STAGGER_DELAY(delay);
> +		val |= DDI_BUF_LANE_STAGGER_DELAY(delay);
>  	}
> +
> +	return val;
> +}
> +
> +static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
> +				      const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +
> +	intel_dp->DP = intel_ddi_buf_ctl_config_val(encoder, crtc_state);
>  }
>  
>  static u32 intel_ddi_buf_ctl_config_mask(struct intel_encoder *encoder)

-- 
Jani Nikula, Intel
