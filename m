Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BFFC6E12D2
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 18:52:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF59210EB99;
	Thu, 13 Apr 2023 16:52:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39C3510EB99
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 16:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681404722; x=1712940722;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=cAE5UuKPHAKRHXtRQ6zBOA+IEaShelYPGxhPnBSaRV0=;
 b=i0Tg1Ru+RfvuXaz9ed1/7tNLrkgdJ3CKQqREben6etBMxNtniN42yT82
 gOnGRFFuGMzcjfGHQoSUPEbSIKQL0klItb3jbDnDc/n9kw0oxFhWJC+FO
 +hxG6cWCN4dswd1aoDcOOpGU/vffdwaas4BLWnDMokpYVZz8mEKgXeUTv
 abnKt6JRABrwAKADSRGFcECKvkcoEuZZ4cjBKXJhMY+aHlsVUA58mCplu
 IqDceMwoF0qsX1NgfnZKj31XYUeK1bKT+qlsGMCJsnqdcrhPGdvJZKayX
 V/Bn9coC/0yCITo3QqslR6U6XngLjjgJOS30a1l9fOATyXul8tMq4o43/ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="324592636"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="324592636"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 09:52:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="719930967"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="719930967"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 09:52:00 -0700
Date: Thu, 13 Apr 2023 19:51:56 +0300
From: Imre Deak <imre.deak@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <ZDgzLGTYrA0pNnhv@ideak-desk.fi.intel.com>
References: <20230412224925.1309815-1-radhakrishna.sripada@intel.com>
 <20230412224925.1309815-10-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230412224925.1309815-10-radhakrishna.sripada@intel.com>
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915/display/mtl: Fill port width
 in DDI_BUF_/TRANS_DDI_FUNC_/PORT_BUF_CTL for HDMI
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 12, 2023 at 03:49:25PM -0700, Radhakrishna Sripada wrote:
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
> Cc: Taylor, Clinton A <clinton.a.taylor@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 32 ++++++++++++++++++++++--
>  drivers/gpu/drm/i915/i915_reg.h          |  2 ++
>  2 files changed, 32 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 9df3da46fdca..c5d210a6fb94 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -541,6 +541,8 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
>  			temp |= TRANS_DDI_HDMI_SCRAMBLING;
>  		if (crtc_state->hdmi_high_tmds_clock_ratio)
>  			temp |= TRANS_DDI_HIGH_TMDS_CHAR_RATE;
> +		if (DISPLAY_VER(dev_priv) >= 14)
> +			temp |= TRANS_DDI_PORT_WIDTH(crtc_state->lane_count);
>  	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_ANALOG)) {
>  		temp |= TRANS_DDI_MODE_SELECT_FDI_OR_128B132B;
>  		temp |= (crtc_state->fdi_lanes - 1) << 1;
> @@ -3158,6 +3160,10 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
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
> @@ -3203,12 +3209,30 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
>  	 *
>  	 * On ADL_P the PHY link rate and lane count must be programmed but
>  	 * these are both 0 for HDMI.
> +	 *
> +	 * But MTL onwards HDMI2.1 is supported and in TMDS mode this
> +	 * is filled with lane count, already set in the crtc_state.
> +	 * The same is required to be filled in PORT_BUF_CTL for C10/20 Phy.
>  	 */
>  	buf_ctl = dig_port->saved_port_bits | DDI_BUF_CTL_ENABLE;
> -	if (IS_ALDERLAKE_P(dev_priv) && intel_phy_is_tc(dev_priv, phy)) {
> +	if (DISPLAY_VER(dev_priv) >= 14) {
> +		u8  lane_count = mtl_get_port_width(crtc_state->lane_count);
> +		u32 port_buf = 0;
> +
> +		port_buf |= XELPDP_PORT_WIDTH(lane_count);
> +
> +		if (dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL)
> +			port_buf |= XELPDP_PORT_REVERSAL;
> +
> +		intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(port),
> +			     XELPDP_PORT_WIDTH_MASK | XELPDP_PORT_REVERSAL, port_buf);
> +
> +		buf_ctl |= DDI_PORT_WIDTH(lane_count);
> +	} else if (IS_ALDERLAKE_P(dev_priv) && intel_phy_is_tc(dev_priv, phy)) {
>  		drm_WARN_ON(&dev_priv->drm, !intel_tc_port_in_legacy_mode(dig_port));
>  		buf_ctl |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
>  	}
> +
>  	intel_de_write(dev_priv, DDI_BUF_CTL(port), buf_ctl);
>  
>  	intel_wait_ddi_buf_active(dev_priv, port);
> @@ -3669,7 +3693,11 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
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
> index d917353d4161..2f0371f8bcf0 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5596,6 +5596,8 @@ enum skl_power_gate {
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
