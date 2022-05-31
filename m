Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD63953950E
	for <lists+intel-gfx@lfdr.de>; Tue, 31 May 2022 18:43:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B54710F019;
	Tue, 31 May 2022 16:43:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57F0010F019
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 May 2022 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654015433; x=1685551433;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=SGtGZy8BGiNvIUsV23/vbBe8yJDNaccJKw52bAKYhS4=;
 b=EWiqWXkiEuLtvyqU08piC+qO4PsvxZMNzEkjUAWd6FiLoXq8WQQ9CvqV
 Fq12MQG8BTR2AO4TLGx18b3cGgh8he1Gz5AIFlEZGa8DRfPPdUFM+IG7I
 zvUpZzhLTDIQ188PVNK89vx1CmlLvBpVruNfKPqd838PPazGmANXMHi2f
 ICLOsv2gm8YfRBPBzAmUokjjyaGZCSayNf6LqW/XoW0z0c/60hJhX70Pw
 5MF8D9tet9z0EdwidWfhnCRUzBuQD0zYcw2trh5M7bOUvehdvwqMSI//P
 6NcDpglVQMj4SUuZgFvIesgOWh094mZITj6EqpbOllo23NozfdcPZz+DB w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10364"; a="338357531"
X-IronPort-AV: E=Sophos;i="5.91,265,1647327600"; d="scan'208";a="338357531"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 09:43:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,265,1647327600"; d="scan'208";a="605765258"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga008.jf.intel.com with SMTP; 31 May 2022 09:43:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 31 May 2022 19:43:49 +0300
Date: Tue, 31 May 2022 19:43:49 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YpZFxYjlJykSXuxI@intel.com>
References: <20220531162527.1062319-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220531162527.1062319-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [RESEND] drm/i915/display: stop using BUG()
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 31, 2022 at 07:25:27PM +0300, Jani Nikula wrote:
> Avoid bringing the entire machine down even if there's a bug that
> shouldn't happen, but won't corrupt the system either. Log them loudly
> and limp on.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 11 ++++++-----
>  drivers/gpu/drm/i915/display/intel_display.c  | 19 +++++++++++--------
>  .../drm/i915/display/intel_display_types.h    | 15 +++++++++------
>  3 files changed, 26 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 333871cf3a2c..915e8e3e8f38 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -455,6 +455,9 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
>  		temp |= TRANS_DDI_SELECT_PORT(port);
>  
>  	switch (crtc_state->pipe_bpp) {
> +	default:
> +		MISSING_CASE(crtc_state->pipe_bpp);
> +		fallthrough;
>  	case 18:
>  		temp |= TRANS_DDI_BPC_6;
>  		break;
> @@ -467,8 +470,6 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
>  	case 36:
>  		temp |= TRANS_DDI_BPC_12;
>  		break;
> -	default:
> -		BUG();
>  	}
>  
>  	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_PVSYNC)
> @@ -478,6 +479,9 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
>  
>  	if (cpu_transcoder == TRANSCODER_EDP) {
>  		switch (pipe) {
> +		default:
> +			MISSING_CASE(pipe);
> +			fallthrough;
>  		case PIPE_A:
>  			/* On Haswell, can only use the always-on power well for
>  			 * eDP when not using the panel fitter, and when not
> @@ -494,9 +498,6 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
>  		case PIPE_C:
>  			temp |= TRANS_DDI_EDP_INPUT_C_ONOFF;
>  			break;
> -		default:
> -			BUG();
> -			break;
>  		}
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 806d50b302ab..e6a84d97718f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -500,6 +500,9 @@ void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
>  	i915_reg_t dpll_reg;
>  
>  	switch (dig_port->base.port) {
> +	default:
> +		MISSING_CASE(dig_port->base.port);
> +		fallthrough;
>  	case PORT_B:
>  		port_mask = DPLL_PORTB_READY_MASK;
>  		dpll_reg = DPLL(0);
> @@ -513,8 +516,6 @@ void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
>  		port_mask = DPLL_PORTD_READY_MASK;
>  		dpll_reg = DPIO_PHY_STATUS;
>  		break;
> -	default:
> -		BUG();
>  	}
>  
>  	if (intel_de_wait_for_register(dev_priv, dpll_reg,
> @@ -3157,6 +3158,10 @@ static void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
>  				    PIPECONF_DITHER_TYPE_SP;
>  
>  		switch (crtc_state->pipe_bpp) {
> +		default:
> +			/* Case prevented by intel_choose_pipe_bpp_dither. */
> +			MISSING_CASE(crtc_state->pipe_bpp);
> +			fallthrough;
>  		case 18:
>  			pipeconf |= PIPECONF_BPC_6;
>  			break;
> @@ -3166,9 +3171,6 @@ static void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
>  		case 30:
>  			pipeconf |= PIPECONF_BPC_10;
>  			break;
> -		default:
> -			/* Case prevented by intel_choose_pipe_bpp_dither. */
> -			BUG();
>  		}
>  	}
>  
> @@ -3464,6 +3466,10 @@ static void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state)
>  	val = 0;
>  
>  	switch (crtc_state->pipe_bpp) {
> +	default:
> +		/* Case prevented by intel_choose_pipe_bpp_dither. */
> +		MISSING_CASE(crtc_state->pipe_bpp);
> +		fallthrough;
>  	case 18:
>  		val |= PIPECONF_BPC_6;
>  		break;
> @@ -3476,9 +3482,6 @@ static void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state)
>  	case 36:
>  		val |= PIPECONF_BPC_12;
>  		break;
> -	default:
> -		/* Case prevented by intel_choose_pipe_bpp_dither. */
> -		BUG();
>  	}
>  
>  	if (crtc_state->dither)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index a27d66fd4383..37c25364350c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1798,13 +1798,14 @@ static inline enum dpio_channel
>  vlv_dig_port_to_channel(struct intel_digital_port *dig_port)
>  {
>  	switch (dig_port->base.port) {
> +	default:
> +		MISSING_CASE(dig_port->base.port);
> +		fallthrough;
>  	case PORT_B:
>  	case PORT_D:
>  		return DPIO_CH0;
>  	case PORT_C:
>  		return DPIO_CH1;
> -	default:
> -		BUG();
>  	}
>  }
>  
> @@ -1812,13 +1813,14 @@ static inline enum dpio_phy
>  vlv_dig_port_to_phy(struct intel_digital_port *dig_port)
>  {
>  	switch (dig_port->base.port) {
> +	default:
> +		MISSING_CASE(dig_port->base.port);
> +		fallthrough;
>  	case PORT_B:
>  	case PORT_C:
>  		return DPIO_PHY0;
>  	case PORT_D:
>  		return DPIO_PHY1;
> -	default:
> -		BUG();
>  	}
>  }
>  
> @@ -1826,13 +1828,14 @@ static inline enum dpio_channel
>  vlv_pipe_to_channel(enum pipe pipe)
>  {
>  	switch (pipe) {
> +	default:
> +		MISSING_CASE(pipe);
> +		fallthrough;
>  	case PIPE_A:
>  	case PIPE_C:
>  		return DPIO_CH0;
>  	case PIPE_B:
>  		return DPIO_CH1;
> -	default:
> -		BUG();
>  	}
>  }
>  
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
