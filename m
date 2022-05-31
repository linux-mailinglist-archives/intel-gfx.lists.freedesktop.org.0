Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D2F5397FB
	for <lists+intel-gfx@lfdr.de>; Tue, 31 May 2022 22:32:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56DC310E3C4;
	Tue, 31 May 2022 20:32:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6821F10E585
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 May 2022 20:32:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654029172; x=1685565172;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=wm4rtTxEjec1htLIiyaDczsgN9v8j+mbKmr7r4hFuwI=;
 b=filDa3uZIqyydz+/FnVue2GB7ol+8hL8quyyCq9R8a0LH+qCB1HS5ZG1
 YKg3awWHXZJFZAc8NReWqex/yAOApqayg6Q7TAFada+PYQ8/RQHqIWoSg
 g58Re1X0JJ547sOpca4fvNl6gs43cBEWwPALzWiYjA0HPCSN5Hpgvok4n
 /yAjsTbgQ6DTYhLtLe6PdFeQOSdF5kB+BDMvgXxogdX1WAiCNYMUljulU
 7FJ6Yc6AzmKbS9bSYrw2uZFxd7M9BvU5sAwyCHarP/OtXtLoPNd3/Dkq1
 LhokGbD5XmfkMBlR/dAC8zoeY7LYZH/4q9YuTKmUv95FAvj9Fz4V8OAuA Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10364"; a="257447945"
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="257447945"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 13:32:51 -0700
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="755247405"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.13.84])
 ([10.213.13.84])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 13:32:50 -0700
Message-ID: <1ce32d32-8c7d-ea6a-448d-cd4913d11a77@intel.com>
Date: Tue, 31 May 2022 22:32:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.9.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220531162527.1062319-1-jani.nikula@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20220531162527.1062319-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 31.05.2022 18:25, Jani Nikula wrote:
> Avoid bringing the entire machine down even if there's a bug that
> shouldn't happen, but won't corrupt the system either. Log them loudly
> and limp on.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

All BUG() cases seems to be converted.

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/display/intel_ddi.c      | 11 ++++++-----
>   drivers/gpu/drm/i915/display/intel_display.c  | 19 +++++++++++--------
>   .../drm/i915/display/intel_display_types.h    | 15 +++++++++------
>   3 files changed, 26 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 333871cf3a2c..915e8e3e8f38 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -455,6 +455,9 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
>   		temp |= TRANS_DDI_SELECT_PORT(port);
>   
>   	switch (crtc_state->pipe_bpp) {
> +	default:
> +		MISSING_CASE(crtc_state->pipe_bpp);
> +		fallthrough;
>   	case 18:
>   		temp |= TRANS_DDI_BPC_6;
>   		break;
> @@ -467,8 +470,6 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
>   	case 36:
>   		temp |= TRANS_DDI_BPC_12;
>   		break;
> -	default:
> -		BUG();
>   	}
>   
>   	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_PVSYNC)
> @@ -478,6 +479,9 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
>   
>   	if (cpu_transcoder == TRANSCODER_EDP) {
>   		switch (pipe) {
> +		default:
> +			MISSING_CASE(pipe);
> +			fallthrough;
>   		case PIPE_A:
>   			/* On Haswell, can only use the always-on power well for
>   			 * eDP when not using the panel fitter, and when not
> @@ -494,9 +498,6 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
>   		case PIPE_C:
>   			temp |= TRANS_DDI_EDP_INPUT_C_ONOFF;
>   			break;
> -		default:
> -			BUG();
> -			break;
>   		}
>   	}
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 806d50b302ab..e6a84d97718f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -500,6 +500,9 @@ void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
>   	i915_reg_t dpll_reg;
>   
>   	switch (dig_port->base.port) {
> +	default:
> +		MISSING_CASE(dig_port->base.port);
> +		fallthrough;
>   	case PORT_B:
>   		port_mask = DPLL_PORTB_READY_MASK;
>   		dpll_reg = DPLL(0);
> @@ -513,8 +516,6 @@ void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
>   		port_mask = DPLL_PORTD_READY_MASK;
>   		dpll_reg = DPIO_PHY_STATUS;
>   		break;
> -	default:
> -		BUG();
>   	}
>   
>   	if (intel_de_wait_for_register(dev_priv, dpll_reg,
> @@ -3157,6 +3158,10 @@ static void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
>   				    PIPECONF_DITHER_TYPE_SP;
>   
>   		switch (crtc_state->pipe_bpp) {
> +		default:
> +			/* Case prevented by intel_choose_pipe_bpp_dither. */
> +			MISSING_CASE(crtc_state->pipe_bpp);
> +			fallthrough;
>   		case 18:
>   			pipeconf |= PIPECONF_BPC_6;
>   			break;
> @@ -3166,9 +3171,6 @@ static void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
>   		case 30:
>   			pipeconf |= PIPECONF_BPC_10;
>   			break;
> -		default:
> -			/* Case prevented by intel_choose_pipe_bpp_dither. */
> -			BUG();
>   		}
>   	}
>   
> @@ -3464,6 +3466,10 @@ static void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state)
>   	val = 0;
>   
>   	switch (crtc_state->pipe_bpp) {
> +	default:
> +		/* Case prevented by intel_choose_pipe_bpp_dither. */
> +		MISSING_CASE(crtc_state->pipe_bpp);
> +		fallthrough;
>   	case 18:
>   		val |= PIPECONF_BPC_6;
>   		break;
> @@ -3476,9 +3482,6 @@ static void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state)
>   	case 36:
>   		val |= PIPECONF_BPC_12;
>   		break;
> -	default:
> -		/* Case prevented by intel_choose_pipe_bpp_dither. */
> -		BUG();
>   	}
>   
>   	if (crtc_state->dither)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index a27d66fd4383..37c25364350c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1798,13 +1798,14 @@ static inline enum dpio_channel
>   vlv_dig_port_to_channel(struct intel_digital_port *dig_port)
>   {
>   	switch (dig_port->base.port) {
> +	default:
> +		MISSING_CASE(dig_port->base.port);
> +		fallthrough;
>   	case PORT_B:
>   	case PORT_D:
>   		return DPIO_CH0;
>   	case PORT_C:
>   		return DPIO_CH1;
> -	default:
> -		BUG();
>   	}
>   }
>   
> @@ -1812,13 +1813,14 @@ static inline enum dpio_phy
>   vlv_dig_port_to_phy(struct intel_digital_port *dig_port)
>   {
>   	switch (dig_port->base.port) {
> +	default:
> +		MISSING_CASE(dig_port->base.port);
> +		fallthrough;
>   	case PORT_B:
>   	case PORT_C:
>   		return DPIO_PHY0;
>   	case PORT_D:
>   		return DPIO_PHY1;
> -	default:
> -		BUG();
>   	}
>   }
>   
> @@ -1826,13 +1828,14 @@ static inline enum dpio_channel
>   vlv_pipe_to_channel(enum pipe pipe)
>   {
>   	switch (pipe) {
> +	default:
> +		MISSING_CASE(pipe);
> +		fallthrough;
>   	case PIPE_A:
>   	case PIPE_C:
>   		return DPIO_CH0;
>   	case PIPE_B:
>   		return DPIO_CH1;
> -	default:
> -		BUG();
>   	}
>   }
>   

