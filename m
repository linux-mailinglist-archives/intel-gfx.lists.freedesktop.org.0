Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C50E19C426E
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 17:14:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3362510E145;
	Mon, 11 Nov 2024 16:14:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QqJ+qp5C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3B6B10E145;
 Mon, 11 Nov 2024 16:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731341663; x=1762877663;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=oGNyGWus4ZUOPQiGMy366Rmt3aOnqRaQQ1aSUgSlZKw=;
 b=QqJ+qp5CBlc53gEVhzfgOWSZp0sFN7xesm0WSndF6mAuql273nbvch2U
 tqtdYBdsbaWmqQVm+gAovX9BuEP47ZgPIxJ6Jgt+aa1MQVyOhvuPcXsum
 Wt30enO36nNJhpno5JVH6crmCeC3IyE7aJNJKo++oEBd0aS/j3u/3oO0o
 x20jGsGzb2So9vsQZBPRpqGxODmZ90CuPF4GSrtM7QUfVPVKTG1sR6j7Z
 dKMVcDb/9l3zRSRsul0Uzm0QHlJFBqYfK1mFcUmAjQ7KHvIEvS4vNDuGu
 K4WFDDUh4jkvOtEGxCA1+7nhjVdfDUSU0y0g4iwr+sn7De+pd9w057ly+ w==;
X-CSE-ConnectionGUID: A8JINNOGRw6y6Jz6PFSlLw==
X-CSE-MsgGUID: I7Pvp9+8Tl6nfzw5CWyGVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="31031360"
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="31031360"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 08:14:22 -0800
X-CSE-ConnectionGUID: Ah2WQrqxSEWRpn8CxkrnUw==
X-CSE-MsgGUID: eviXNSSHQLuqvdy0T3TbMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="87354799"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 08:14:21 -0800
Date: Mon, 11 Nov 2024 18:14:55 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ville.syrjala@linux.intel.com
Subject: Re: [PATCH v2] drm/i915/display: make CHICKEN_TRANS() display
 version aware
Message-ID: <ZzItf44y_Uo0QA-0@ideak-desk.fi.intel.com>
References: <547599ac740ffb71bc83f4ac44c88f0b572e9c7e.1731011435.git.jani.nikula@intel.com>
 <20241108093129.136940-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241108093129.136940-1-jani.nikula@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 08, 2024 at 11:31:29AM +0200, Jani Nikula wrote:
> Making register macros platform or display version aware is not exactly
> something I want to promote widely, but in this case it's the lesser of
> two evils. hsw_chicken_trans_reg() is not pretty, and it doesn't have a
> suitable home.
> 
> v2: Rebase
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     | 21 ++++++--------------
>  drivers/gpu/drm/i915/display/intel_ddi.h     |  2 --
>  drivers/gpu/drm/i915/display/intel_display.c | 15 +++++++-------
>  drivers/gpu/drm/i915/display/intel_dp_mst.c  |  4 ++--
>  drivers/gpu/drm/i915/display/intel_hdcp.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c     |  4 ++--
>  drivers/gpu/drm/i915/display/intel_vrr.c     |  2 +-
>  drivers/gpu/drm/i915/i915_reg.h              |  5 +++--
>  8 files changed, 23 insertions(+), 32 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 769bd1f26db2..c973b70185cf 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3293,18 +3293,8 @@ static void intel_enable_ddi_dp(struct intel_atomic_state *state,
>  	trans_port_sync_stop_link_train(state, encoder, crtc_state);
>  }
>  
> -/* FIXME bad home for this function */
> -i915_reg_t hsw_chicken_trans_reg(struct drm_i915_private *i915,
> -				 enum transcoder cpu_transcoder)
> -{
> -	return DISPLAY_VER(i915) >= 14 ?
> -		MTL_CHICKEN_TRANS(cpu_transcoder) :
> -		CHICKEN_TRANS(cpu_transcoder);
> -}
> -
>  static i915_reg_t
> -gen9_chicken_trans_reg_by_port(struct drm_i915_private *dev_priv,
> -			       enum port port)
> +gen9_chicken_trans_reg_by_port(struct intel_display *display, enum port port)
>  {
>  	static const enum transcoder trans[] = {
>  		[PORT_A] = TRANSCODER_EDP,
> @@ -3314,12 +3304,12 @@ gen9_chicken_trans_reg_by_port(struct drm_i915_private *dev_priv,
>  		[PORT_E] = TRANSCODER_A,
>  	};
>  
> -	drm_WARN_ON(&dev_priv->drm, DISPLAY_VER(dev_priv) < 9);
> +	drm_WARN_ON(display->drm, DISPLAY_VER(display) < 9);
>  
> -	if (drm_WARN_ON(&dev_priv->drm, port < PORT_A || port > PORT_E))
> +	if (drm_WARN_ON(display->drm, port < PORT_A || port > PORT_E))
>  		port = PORT_A;
>  
> -	return CHICKEN_TRANS(trans[port]);
> +	return CHICKEN_TRANS(display, trans[port]);
>  }
>  
>  static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
> @@ -3327,6 +3317,7 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
>  				  const struct intel_crtc_state *crtc_state,
>  				  const struct drm_connector_state *conn_state)
>  {
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  	struct drm_connector *connector = conn_state->connector;
> @@ -3357,7 +3348,7 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
>  		 * the bits affect a specific DDI port rather than
>  		 * a specific transcoder.
>  		 */
> -		i915_reg_t reg = gen9_chicken_trans_reg_by_port(dev_priv, port);
> +		i915_reg_t reg = gen9_chicken_trans_reg_by_port(display, port);
>  		u32 val;
>  
>  		val = intel_de_read(dev_priv, reg);
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
> index b7fdf0a388cf..0d5d820740f6 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> @@ -28,8 +28,6 @@ i915_reg_t dp_tp_ctl_reg(struct intel_encoder *encoder,
>  			 const struct intel_crtc_state *crtc_state);
>  i915_reg_t dp_tp_status_reg(struct intel_encoder *encoder,
>  			    const struct intel_crtc_state *crtc_state);
> -i915_reg_t hsw_chicken_trans_reg(struct drm_i915_private *i915,
> -				 enum transcoder cpu_transcoder);
>  void intel_ddi_fdi_post_disable(struct intel_atomic_state *state,
>  				struct intel_encoder *intel_encoder,
>  				const struct intel_crtc_state *old_crtc_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 14aa171a9eb2..b925aaa3f230 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -511,6 +511,7 @@ void vlv_wait_port_ready(struct intel_display *display,
>  
>  void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
>  {
> +	struct intel_display *display = to_intel_display(new_crtc_state);
>  	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
> @@ -554,8 +555,7 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
>  		if (DISPLAY_VER(dev_priv) == 14)
>  			set |= DP_FEC_BS_JITTER_WA;
>  
> -		intel_de_rmw(dev_priv,
> -			     hsw_chicken_trans_reg(dev_priv, cpu_transcoder),
> +		intel_de_rmw(display, CHICKEN_TRANS(display, cpu_transcoder),
>  			     clear, set);
>  	}
>  
> @@ -591,6 +591,7 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
>  
>  void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state)
>  {
> +	struct intel_display *display = to_intel_display(old_crtc_state);
>  	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
> @@ -628,7 +629,7 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state)
>  	intel_de_write(dev_priv, TRANSCONF(dev_priv, cpu_transcoder), val);
>  
>  	if (DISPLAY_VER(dev_priv) >= 12)
> -		intel_de_rmw(dev_priv, hsw_chicken_trans_reg(dev_priv, cpu_transcoder),
> +		intel_de_rmw(display, CHICKEN_TRANS(display, cpu_transcoder),
>  			     FECSTALL_DIS_DPTSTREAM_DPTTG, 0);
>  
>  	if ((val & TRANSCONF_ENABLE) == 0)
> @@ -1744,10 +1745,9 @@ static void hsw_set_linetime_wm(const struct intel_crtc_state *crtc_state)
>  
>  static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
>  {
> -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	struct intel_display *display = to_intel_display(crtc_state);
>  
> -	intel_de_rmw(i915, hsw_chicken_trans_reg(i915, crtc_state->cpu_transcoder),
> +	intel_de_rmw(display, CHICKEN_TRANS(display, crtc_state->cpu_transcoder),
>  		     HSW_FRAME_START_DELAY_MASK,
>  		     HSW_FRAME_START_DELAY(crtc_state->framestart_delay - 1));
>  }
> @@ -4111,6 +4111,7 @@ static void intel_joiner_get_config(struct intel_crtc_state *crtc_state)
>  static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>  				struct intel_crtc_state *pipe_config)
>  {
> +	struct intel_display *display = to_intel_display(crtc);
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	bool active;
>  	u32 tmp;
> @@ -4187,7 +4188,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>  	}
>  
>  	if (!transcoder_is_dsi(pipe_config->cpu_transcoder)) {
> -		tmp = intel_de_read(dev_priv, hsw_chicken_trans_reg(dev_priv, pipe_config->cpu_transcoder));
> +		tmp = intel_de_read(display, CHICKEN_TRANS(display, pipe_config->cpu_transcoder));
>  
>  		pipe_config->framestart_delay = REG_FIELD_GET(HSW_FRAME_START_DELAY_MASK, tmp) + 1;
>  	} else {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 6d0b4a8f4849..3c898c7dbc36 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1326,8 +1326,8 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>  	if (ret < 0)
>  		intel_dp_queue_modeset_retry_for_link(state, primary_encoder, pipe_config);
>  
> -	if (DISPLAY_VER(dev_priv) >= 12)
> -		intel_de_rmw(dev_priv, hsw_chicken_trans_reg(dev_priv, trans),
> +	if (DISPLAY_VER(display) >= 12)
> +		intel_de_rmw(display, CHICKEN_TRANS(display, trans),
>  			     FECSTALL_DIS_DPTSTREAM_DPTTG,
>  			     pipe_config->fec_enable ? FECSTALL_DIS_DPTSTREAM_DPTTG : 0);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index dbcdd1777fa3..05965b9e193e 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -52,7 +52,7 @@ intel_hdcp_adjust_hdcp_line_rekeying(struct intel_encoder *encoder,
>  		rekey_reg = TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder);
>  		rekey_bit = TRANS_DDI_HDCP_LINE_REKEY_DISABLE;
>  	} else if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0, STEP_FOREVER)) {
> -		rekey_reg = MTL_CHICKEN_TRANS(hdcp->cpu_transcoder);
> +		rekey_reg = CHICKEN_TRANS(display, hdcp->cpu_transcoder);
>  		rekey_bit = HDCP_LINE_REKEY_DISABLE;
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index a784c0b81556..ad16bb60bd24 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1908,7 +1908,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>  
>  	if (intel_dp->psr.sel_update_enabled) {
>  		if (DISPLAY_VER(display) == 9)
> -			intel_de_rmw(display, CHICKEN_TRANS(cpu_transcoder), 0,
> +			intel_de_rmw(display, CHICKEN_TRANS(display, cpu_transcoder), 0,
>  				     PSR2_VSC_ENABLE_PROG_HEADER |
>  				     PSR2_ADD_VERTICAL_LINE_COUNT);
>  
> @@ -1920,7 +1920,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>  		if (!intel_dp->psr.panel_replay_enabled &&
>  		    (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_A0, STEP_B0) ||
>  		     IS_ALDERLAKE_P(dev_priv)))
> -			intel_de_rmw(display, hsw_chicken_trans_reg(dev_priv, cpu_transcoder),
> +			intel_de_rmw(display, CHICKEN_TRANS(display, cpu_transcoder),
>  				     0, ADLP_1_BASED_X_GRANULARITY);
>  
>  		/* Wa_16012604467:adlp,mtl[a0,b0] */
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 19a5d0076bb8..b386e62d1664 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -288,7 +288,7 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>  	 * ADL/DG2: make TRANS_SET_CONTEXT_LATENCY effective with VRR
>  	 */
>  	if (IS_DISPLAY_VER(display, 12, 13))
> -		intel_de_rmw(display, CHICKEN_TRANS(cpu_transcoder),
> +		intel_de_rmw(display, CHICKEN_TRANS(display, cpu_transcoder),
>  			     0, PIPE_VBLANK_WITH_DELAY);
>  
>  	if (!intel_vrr_possible(crtc_state)) {
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index c160e087972a..68b1e5abf478 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2802,7 +2802,7 @@
>  #define _CHICKEN_TRANS_C	0x420c8
>  #define _CHICKEN_TRANS_EDP	0x420cc
>  #define _CHICKEN_TRANS_D	0x420d8
> -#define CHICKEN_TRANS(trans)	_MMIO(_PICK((trans), \
> +#define _CHICKEN_TRANS(trans)	_MMIO(_PICK((trans), \
>  					    [TRANSCODER_EDP] = _CHICKEN_TRANS_EDP, \
>  					    [TRANSCODER_A] = _CHICKEN_TRANS_A, \
>  					    [TRANSCODER_B] = _CHICKEN_TRANS_B, \
> @@ -2810,9 +2810,10 @@
>  					    [TRANSCODER_D] = _CHICKEN_TRANS_D))
>  #define _MTL_CHICKEN_TRANS_A	0x604e0
>  #define _MTL_CHICKEN_TRANS_B	0x614e0
> -#define MTL_CHICKEN_TRANS(trans)	_MMIO_TRANS((trans), \
> +#define _MTL_CHICKEN_TRANS(trans)	_MMIO_TRANS((trans), \
>  						    _MTL_CHICKEN_TRANS_A, \
>  						    _MTL_CHICKEN_TRANS_B)
> +#define CHICKEN_TRANS(display, trans)	(DISPLAY_VER(display) >= 14 ? _MTL_CHICKEN_TRANS(trans) : _CHICKEN_TRANS(trans))
>  #define   PIPE_VBLANK_WITH_DELAY	REG_BIT(31) /* tgl+ */
>  #define   SKL_UNMASK_VBL_TO_PIPE_IN_SRD	REG_BIT(30) /* skl+ */
>  #define   HSW_FRAME_START_DELAY_MASK	REG_GENMASK(28, 27)
> -- 
> 2.39.5
> 
