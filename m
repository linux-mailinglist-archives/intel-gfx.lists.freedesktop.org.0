Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C4E6DE66E
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 23:31:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3708B10E139;
	Tue, 11 Apr 2023 21:31:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 226CE10E139
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 21:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681248665; x=1712784665;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=N4v0+vCzAxaN1/7+wn9bSwuLn7t1ljdVEj/z+1EEVc8=;
 b=SQKgIPf1wl+egehTFi7JX95m1BPxdCBOGak+0zfsyTUU0T1/g+ALAWSo
 MAr0aEmSrdJT1ojIKprW0GudScwRycebrXX4e72FGOZHV3X104KO2VXCc
 lj1O2KeO5sXS+bdCqCohrrktpIljffwD2ltM4BL3BXrzVK726rTjFgHe2
 T08Fa9fxeUIppKk1IckdPBSXLiblkIw9b0jandp+3NeKSrKSFTXSsX4XY
 VyWmsgy7TKmS+JjPnyuzGi8gNX39MpA7ogaP+vqhtpYtsR2jTgIo43MFb
 ojtvzWZ7SBSGPNvkdzDNcrNq5e+gcWzC+JVzxoZ3KeWsaLyBj1cSBMAuB Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="323369235"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="323369235"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 14:31:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="666107900"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="666107900"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 14:31:02 -0700
Date: Wed, 12 Apr 2023 00:30:59 +0300
From: Imre Deak <imre.deak@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <ZDXRkzTo9gJuPYLV@ideak-desk.fi.intel.com>
References: <20230406130221.2998457-1-mika.kahola@intel.com>
 <20230406130221.2998457-8-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230406130221.2998457-8-mika.kahola@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 7/8] drm/i915/display/mtl: Fill port
 width in DDI_BUF_/TRANS_DDI_FUNC_/PORT_BUF_CTL for HDMI
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, Taylor@freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 06, 2023 at 04:02:20PM +0300, Mika Kahola wrote:
> From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> 
> MTL requires the PORT_CTL_WIDTH, TRANS_DDI_FUNC_CTL and DDI_BUF_CTL
> to be filled with 4 lanes for TMDS mode.
> This patch enables D2D link and fills PORT_WIDTH in appropriate
> registers.
> 
> v2:
>   - Added fixes from Clint's Add HDMI implementation changes.
>   - Modified commit message.
> v3:
>   - Use TRANS_DDI_PORT_WIDTH() instead of DDI_PORT_WIDTH() for the value
>     of TRANS_DDI_FUNC_CTL_*. (Gustavo)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Taylor, Clinton A <clinton.a.taylor@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 48 +++++++++++++++++++++---
>  drivers/gpu/drm/i915/i915_reg.h          |  2 +
>  2 files changed, 44 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index e97d7627d9d1..20b0844b8240 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -516,6 +516,8 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
>  			temp |= TRANS_DDI_HDMI_SCRAMBLING;
>  		if (crtc_state->hdmi_high_tmds_clock_ratio)
>  			temp |= TRANS_DDI_HIGH_TMDS_CHAR_RATE;
> +		if (DISPLAY_VER(dev_priv) >= 14)
> +			temp |= TRANS_DDI_PORT_WIDTH(crtc_state->lane_count);
>  	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_ANALOG)) {
>  		temp |= TRANS_DDI_MODE_SELECT_FDI_OR_128B132B;
>  		temp |= (crtc_state->fdi_lanes - 1) << 1;
> @@ -2891,6 +2893,10 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
>  	if (has_buf_trans_select(dev_priv))
>  		hsw_prepare_hdmi_ddi_buffers(encoder, crtc_state);
>  
> +	/* e. Enable D2D Link for C10/C20 Phy */
> +	if (DISPLAY_VER(dev_priv) >= 14)
> +		mtl_ddi_enable_d2d(encoder);
> +
>  	encoder->set_signal_levels(encoder, crtc_state);
>  
>  	/* Display WA #1143: skl,kbl,cfl */
> @@ -2936,13 +2942,39 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
>  	 *
>  	 * On ADL_P the PHY link rate and lane count must be programmed but
>  	 * these are both 0 for HDMI.
> +	 *
> +	 * But MTL onwards HDMI2.1 is supported and in TMDS mode this
> +	 * is always filled with 4 lanes, already set in the crtc_state.

Looks like HDMI FRL mode can be configured to 3 lanes as well.

> +	 * The same is required to be filled in PORT_BUF_CTL for C10/20 Phy.
>  	 */
> -	buf_ctl = dig_port->saved_port_bits | DDI_BUF_CTL_ENABLE;

I'd keep the above here which is valid on all platforms.

> -	if (IS_ALDERLAKE_P(dev_priv) && intel_phy_is_tc(dev_priv, phy)) {
> -		drm_WARN_ON(&dev_priv->drm, !intel_tc_port_in_legacy_mode(dig_port));
> -		buf_ctl |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
> +	if (DISPLAY_VER(dev_priv) >= 14) {
> +		u32 ddi_buf = 0;
> +		u8  lane_count = mtl_get_port_width(crtc_state->lane_count);

mtl_get_port_width() is defined only in the next patch, but would be
better to have XELPDP_PORT_WIDTH() do the conversion instead similarly
to TRANS_DDI_PORT_WIDTH().

> +		u32 port_buf = 0;
> +
> +		port_buf |= XELPDP_PORT_WIDTH(lane_count);
> +
> +		if (intel_bios_is_lane_reversal_needed(dev_priv, port))
> +			port_buf |= XELPDP_PORT_REVERSAL;
> +
> +		intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(port), 0, port_buf);

The above needs the actual mask to clear the fields before setting them.

> +
> +		ddi_buf |= DDI_BUF_CTL_ENABLE |
> +			   DDI_PORT_WIDTH(lane_count);
> +
> +		intel_de_write(dev_priv, DDI_BUF_CTL(port),
> +			       dig_port->saved_port_bits | ddi_buf);

DDI_BUF_CTL_ENABLE and saved_port_bits should be set for all platforms
before the if-ladder and the write should happen at one place after the
if-ladder.

> +
> +		/* i. Poll for PORT_BUF_CTL Idle Status == 0, timeout after 100 us */
> +		intel_wait_ddi_buf_active(dev_priv, port);

The above is called now twice, can be removed from here.

> +	} else {
> +		buf_ctl = dig_port->saved_port_bits | DDI_BUF_CTL_ENABLE;
> +		if (IS_ALDERLAKE_P(dev_priv) && intel_phy_is_tc(dev_priv, phy)) {
> +			drm_WARN_ON(&dev_priv->drm, !intel_tc_port_in_legacy_mode(dig_port));
> +			buf_ctl |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
> +		}
> +		intel_de_write(dev_priv, DDI_BUF_CTL(port), buf_ctl);
>  	}
> -	intel_de_write(dev_priv, DDI_BUF_CTL(port), buf_ctl);
>  
>  	intel_wait_ddi_buf_active(dev_priv, port);
>  
> @@ -3357,7 +3389,11 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
>  		fallthrough;
>  	case TRANS_DDI_MODE_SELECT_DVI:
>  		pipe_config->output_types |= BIT(INTEL_OUTPUT_HDMI);
> -		pipe_config->lane_count = 4;
> +		if (DISPLAY_VER(dev_priv) >= 14)
> +			pipe_config->lane_count =
> +				((temp & DDI_PORT_WIDTH_MASK) >> DDI_PORT_WIDTH_SHIFT) + 1;
> +		else
> +			pipe_config->lane_count = 4;
>  		break;
>  	case TRANS_DDI_MODE_SELECT_DP_SST:
>  		if (encoder->type == INTEL_OUTPUT_EDP)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 8d49676148f2..c4d363248bd2 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5597,6 +5597,8 @@ enum skl_power_gate {
>  #define  TRANS_DDI_HDCP_SELECT		REG_BIT(5)
>  #define  TRANS_DDI_BFI_ENABLE		(1 << 4)
>  #define  TRANS_DDI_HIGH_TMDS_CHAR_RATE	(1 << 4)
> +#define  TRANS_DDI_PORT_WIDTH_MASK	REG_GENMASK(3, 1)
> +#define  TRANS_DDI_PORT_WIDTH(width)	REG_FIELD_PREP(TRANS_DDI_PORT_WIDTH_MASK, (width) - 1)
>  #define  TRANS_DDI_HDMI_SCRAMBLING	(1 << 0)
>  #define  TRANS_DDI_HDMI_SCRAMBLING_MASK (TRANS_DDI_HDMI_SCRAMBLER_CTS_ENABLE \
>  					| TRANS_DDI_HDMI_SCRAMBLER_RESET_FREQ \
> -- 
> 2.34.1
> 
