Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D473951BDBA
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 13:08:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA60A10F912;
	Thu,  5 May 2022 11:07:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6A5210F912
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 May 2022 11:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651748878; x=1683284878;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=58BMq5GNRtz2Y6I21S8GckLQmK7dmYUKsiuONSSA/2Q=;
 b=Sdq998qtlzl3IpVslPtkxgI29BAZrqNdeaHpHmJP9pADyK2HrjlXua4y
 XmOInkGmaTw8wOCkgj5hqS9DNuYAdt56D35dbUFmzUNG53xA0m68A84sU
 WXG9UMkVHzHJA+i8ECD+ZQ3FX76HUWrcxnJdr1qgx/kK67jxnZeeDxgM6
 arivrXTIgJQeOybiFNFxWFsEMqf603xjopbcSIf/AqNzyAa0+GQcPBL+N
 ASueeX+VEZHR5DVHFKT5sVYJBoA1hQM+rz0q6caWakL0cHiyjpQTwXTFD
 xi8nF/CkyabnshfHF1tiYKFbMlRa+1v9ztBNErH/+aHchBJ/6sDAgf1YU g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="267672200"
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="267672200"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 04:07:58 -0700
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="517463240"
Received: from mrbroom-mobl.ger.corp.intel.com (HELO [10.213.206.41])
 ([10.213.206.41])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 04:07:57 -0700
Message-ID: <0854f6c3-8cca-da61-6370-60820dd4e392@linux.intel.com>
Date: Thu, 5 May 2022 12:07:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220504183716.987793-1-jani.nikula@intel.com>
 <20220504183716.987793-3-jani.nikula@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220504183716.987793-3-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/display: stop using BUG()
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


On 04/05/2022 19:37, Jani Nikula wrote:
> Avoid bringing the entire machine down even if there's a bug that
> shouldn't happen, but won't corrupt the system either. Log them loudly
> and limp on.
> 
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_ddi.c      | 11 ++++++-----
>   drivers/gpu/drm/i915/display/intel_display.c  | 19 +++++++++++--------
>   .../drm/i915/display/intel_display_types.h    | 15 +++++++++------
>   3 files changed, 26 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 9e6fa59eabba..52cf6fb9994a 100644
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

No idea of how this "limp" would look in practice and if it is safe. 
Same approach taken elsewhere in the patch so I'm afraid someone with 
display know how will have to look at it.

Regards,

Tvrtko

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
> index 0decf3d24237..1a421dda36d7 100644
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
> index 408152f9f46a..8b10ef5153f2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1727,13 +1727,14 @@ static inline enum dpio_channel
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
> @@ -1741,13 +1742,14 @@ static inline enum dpio_phy
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
> @@ -1755,13 +1757,14 @@ static inline enum dpio_channel
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
