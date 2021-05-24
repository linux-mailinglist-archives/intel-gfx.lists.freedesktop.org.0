Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7737538E7D7
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 15:40:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A5936E80B;
	Mon, 24 May 2021 13:40:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A19226E80B
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 13:40:36 +0000 (UTC)
IronPort-SDR: acd3TKSPPjAcoNGOufa9yeULHaBUNiSHnpvVrR1mTtmNNbOFgfg5OlC8dIjM4MwgHlFikx/iXo
 w7iFla5+wcZQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9993"; a="263146140"
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="263146140"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 06:40:35 -0700
IronPort-SDR: L5pqlwF/EM/mWIr/7EFh6Y/VHUbl28tfDOLzno5IOm2pn4sEOSsrO/n87u1T/ETegOhWr0kiS7
 KcYW2cxFGFHw==
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="442039821"
Received: from pamcdon2-mobl1.amr.corp.intel.com (HELO [10.209.69.43])
 ([10.209.69.43])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 06:40:35 -0700
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210515031035.2561658-1-matthew.d.roper@intel.com>
 <20210515031035.2561658-6-matthew.d.roper@intel.com>
From: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <6a0912f0-df13-6509-282f-f021c5a5548b@intel.com>
Date: Mon, 24 May 2021 06:40:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210515031035.2561658-6-matthew.d.roper@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 05/23] drm/i915/xelpd: Add VRR guardband
 for VRR CTL
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 5/14/21 8:10 PM, Matt Roper wrote:
> From: Manasi Navare <manasi.d.navare@intel.com>
> 
> On XE_LPD, VRR CTL register adds a new VRR Guardband bitfield
> replacing the pipeline full and deprecating the pipeline override
> bit.
> 
> This patch adds this corresponding bitfield in the register defs,
> crtc state vrr structure and populates this in vrr compute
> config and vrr enable functions. It also adds the corresponding
> HW state readout for this field.

LGTM. Can add Bspec: 50508 for reference.

Reviewed-by: Aditya Swarup <aditya.swarup@intel.com>
> 
> Cc: Aditya Swarup <aditya.swarup@intel.com>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  8 ++-
>  .../drm/i915/display/intel_display_types.h    |  2 +-
>  drivers/gpu/drm/i915/display/intel_vrr.c      | 58 +++++++++++++------
>  drivers/gpu/drm/i915/i915_drv.h               |  3 +
>  drivers/gpu/drm/i915/i915_reg.h               |  2 +
>  5 files changed, 53 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 422b59ebf6dc..ce44f18340ee 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7631,10 +7631,11 @@ static void intel_dump_pipe_config(const struct intel_crtc_state *pipe_config,
>  	    intel_hdmi_infoframe_enable(DP_SDP_VSC))
>  		intel_dump_dp_vsc_sdp(dev_priv, &pipe_config->infoframes.vsc);
>  
> -	drm_dbg_kms(&dev_priv->drm, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
> +	drm_dbg_kms(&dev_priv->drm, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
>  		    yesno(pipe_config->vrr.enable),
>  		    pipe_config->vrr.vmin, pipe_config->vrr.vmax,
> -		    pipe_config->vrr.pipeline_full, pipe_config->vrr.flipline,
> +		    pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband,
> +		    pipe_config->vrr.flipline,
>  		    intel_vrr_vmin_vblank_start(pipe_config),
>  		    intel_vrr_vmax_vblank_start(pipe_config));
>  
> @@ -8640,6 +8641,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  	PIPE_CONF_CHECK_I(vrr.vmax);
>  	PIPE_CONF_CHECK_I(vrr.flipline);
>  	PIPE_CONF_CHECK_I(vrr.pipeline_full);
> +	PIPE_CONF_CHECK_I(vrr.guardband);
>  
>  	PIPE_CONF_CHECK_BOOL(has_psr);
>  	PIPE_CONF_CHECK_BOOL(has_psr2);
> @@ -12200,6 +12202,8 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
>  
>  	i915->framestart_delay = 1; /* 1-4 */
>  
> +	i915->window2_delay = 0; /* No DSB so no window2 delay */
> +
>  	intel_mode_config_init(i915);
>  
>  	ret = intel_cdclk_init(i915);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 9c0adfc60c6f..9e9f768e2d7f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1202,7 +1202,7 @@ struct intel_crtc_state {
>  	struct {
>  		bool enable;
>  		u8 pipeline_full;
> -		u16 flipline, vmin, vmax;
> +		u16 flipline, vmin, vmax, guardband;
>  	} vrr;
>  
>  	/* Stream Splitter for eDP MSO */
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 046210ae1de0..c335b1dbafcf 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -68,7 +68,10 @@ static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_stat
>  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  
>  	/* The hw imposes the extra scanline before frame start */
> -	return crtc_state->vrr.pipeline_full + i915->framestart_delay + 1;
> +	if (DISPLAY_VER(i915) >= 13)
> +		return crtc_state->vrr.guardband + i915->framestart_delay + 1;
> +	else
> +		return crtc_state->vrr.pipeline_full + i915->framestart_delay + 1;
>  }
>  
>  int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state)
> @@ -86,6 +89,8 @@ void
>  intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  			 struct drm_connector_state *conn_state)
>  {
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  	struct intel_connector *connector =
>  		to_intel_connector(conn_state->connector);
>  	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> @@ -124,17 +129,26 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	crtc_state->vrr.flipline = crtc_state->vrr.vmin + 1;
>  
>  	/*
> -	 * FIXME: s/4/framestart_delay+1/ to get consistent
> -	 * earliest/latest points for register latching regardless
> -	 * of the framestart_delay used?
> -	 *
> -	 * FIXME: this really needs the extra scanline to provide consistent
> -	 * behaviour for all framestart_delay values. Otherwise with
> -	 * framestart_delay==3 we will end up extending the min vblank by
> -	 * one extra line.
> +	 * For XE_LPD+, we use guardband and pipeline override
> +	 * is deprecated.
>  	 */
> -	crtc_state->vrr.pipeline_full =
> -		min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay - 4 - 1);
> +	if (DISPLAY_VER(i915) >= 13)
> +		crtc_state->vrr.guardband =
> +			crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay -
> +			i915->window2_delay;
> +	else
> +		/*
> +		 * FIXME: s/4/framestart_delay+1/ to get consistent
> +		 * earliest/latest points for register latching regardless
> +		 * of the framestart_delay used?
> +		 *
> +		 * FIXME: this really needs the extra scanline to provide consistent
> +		 * behaviour for all framestart_delay values. Otherwise with
> +		 * framestart_delay==3 we will end up extending the min vblank by
> +		 * one extra line.
> +		 */
> +		crtc_state->vrr.pipeline_full =
> +			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay - 4 - 1);
>  
>  	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>  }
> @@ -149,10 +163,15 @@ void intel_vrr_enable(struct intel_encoder *encoder,
>  	if (!crtc_state->vrr.enable)
>  		return;
>  
> -	trans_vrr_ctl = VRR_CTL_VRR_ENABLE |
> -		VRR_CTL_IGN_MAX_SHIFT | VRR_CTL_FLIP_LINE_EN |
> -		VRR_CTL_PIPELINE_FULL(crtc_state->vrr.pipeline_full) |
> -		VRR_CTL_PIPELINE_FULL_OVERRIDE;
> +	if (DISPLAY_VER(dev_priv) >= 13)
> +		trans_vrr_ctl = VRR_CTL_VRR_ENABLE |
> +			VRR_CTL_IGN_MAX_SHIFT | VRR_CTL_FLIP_LINE_EN |
> +			XELPD_VRR_CTL_VRR_GUARDBAND(crtc_state->vrr.guardband);
> +	else
> +		trans_vrr_ctl = VRR_CTL_VRR_ENABLE |
> +			VRR_CTL_IGN_MAX_SHIFT | VRR_CTL_FLIP_LINE_EN |
> +			VRR_CTL_PIPELINE_FULL(crtc_state->vrr.pipeline_full) |
> +			VRR_CTL_PIPELINE_FULL_OVERRIDE;
>  
>  	intel_de_write(dev_priv, TRANS_VRR_VMIN(cpu_transcoder), crtc_state->vrr.vmin - 1);
>  	intel_de_write(dev_priv, TRANS_VRR_VMAX(cpu_transcoder), crtc_state->vrr.vmax - 1);
> @@ -199,8 +218,13 @@ void intel_vrr_get_config(struct intel_crtc *crtc,
>  	if (!crtc_state->vrr.enable)
>  		return;
>  
> -	if (trans_vrr_ctl & VRR_CTL_PIPELINE_FULL_OVERRIDE)
> -		crtc_state->vrr.pipeline_full = REG_FIELD_GET(VRR_CTL_PIPELINE_FULL_MASK, trans_vrr_ctl);
> +	if (DISPLAY_VER(dev_priv) >= 13)
> +		crtc_state->vrr.guardband =
> +			REG_FIELD_GET(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, trans_vrr_ctl);
> +	else
> +		if (trans_vrr_ctl & VRR_CTL_PIPELINE_FULL_OVERRIDE)
> +			crtc_state->vrr.pipeline_full =
> +				REG_FIELD_GET(VRR_CTL_PIPELINE_FULL_MASK, trans_vrr_ctl);
>  	if (trans_vrr_ctl & VRR_CTL_FLIP_LINE_EN)
>  		crtc_state->vrr.flipline = intel_de_read(dev_priv, TRANS_VRR_FLIPLINE(cpu_transcoder)) + 1;
>  	crtc_state->vrr.vmax = intel_de_read(dev_priv, TRANS_VRR_VMAX(cpu_transcoder)) + 1;
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 39b5e019c1a5..6eb6c6acd81e 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1139,6 +1139,9 @@ struct drm_i915_private {
>  
>  	u8 framestart_delay;
>  
> +	/* Window2 specifies time required to program DSB (Window2) in number of scan lines */
> +	u8 window2_delay;
> +
>  	u8 pch_ssc_use;
>  
>  	/* For i915gm/i945gm vblank irq workaround */
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 506a5aa0646b..dbb75cd087d3 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4376,6 +4376,8 @@ enum {
>  #define   VRR_CTL_PIPELINE_FULL_MASK		REG_GENMASK(10, 3)
>  #define   VRR_CTL_PIPELINE_FULL(x)		REG_FIELD_PREP(VRR_CTL_PIPELINE_FULL_MASK, (x))
>  #define   VRR_CTL_PIPELINE_FULL_OVERRIDE	REG_BIT(0)
> +#define	  XELPD_VRR_CTL_VRR_GUARDBAND_MASK	REG_GENMASK(15, 0)
> +#define	  XELPD_VRR_CTL_VRR_GUARDBAND(x)	REG_FIELD_PREP(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, (x))
>  
>  #define _TRANS_VRR_VMAX_A		0x60424
>  #define _TRANS_VRR_VMAX_B		0x61424
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
