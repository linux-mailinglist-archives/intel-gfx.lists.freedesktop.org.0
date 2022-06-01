Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B80E453A26B
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jun 2022 12:16:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2EFB10E75E;
	Wed,  1 Jun 2022 10:16:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAB0810E72E
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jun 2022 10:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654078602; x=1685614602;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ZOrowBk8FrHFXPsg/W0rtDQZNRdW49C7dMOXmPegVOA=;
 b=hawPaF5syV6HP3uam5nEtZybs3JaSpCsCakQNCDJU7aQlzY51LfD7YsN
 mDrV5TIKndMz0EhIgls4HYIRem9neW8ZvmC3e3ibnPb9YmWsL4GgthHPj
 cttJGUMDEB1+zS+8f1cuS/uVj+7t+LG+vypMISKbHjKmQdpPvpLy5AfV2
 oiRATGHKoNr74Ms5pry/hl03HD+xg/X/IAkaLTa+Ih581wIHt6mMYQm3b
 28j57yEr8EdmFlc98+t/hFCtvh1Zv0OXwWYTu5cGFmmwxuMUGnwBvmy9x
 FNnGKeyc8xbwuaOvtbwJeDf3PGMw2SeCPAzHNZTHtS4UyLcPwGK/pkfyh w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10364"; a="336196410"
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="336196410"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2022 03:16:42 -0700
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="606188007"
Received: from hlipiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.45.79])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2022 03:16:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <1ce32d32-8c7d-ea6a-448d-cd4913d11a77@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220531162527.1062319-1-jani.nikula@intel.com>
 <1ce32d32-8c7d-ea6a-448d-cd4913d11a77@intel.com>
Date: Wed, 01 Jun 2022 13:16:38 +0300
Message-ID: <877d60r8mx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 31 May 2022, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
> On 31.05.2022 18:25, Jani Nikula wrote:
>> Avoid bringing the entire machine down even if there's a bug that
>> shouldn't happen, but won't corrupt the system either. Log them loudly
>> and limp on.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> All BUG() cases seems to be converted.
>
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Thanks for the reviews, pushed to drm-intel-next.

BR,
Jani.

>
> Regards
> Andrzej
>
>> ---
>>   drivers/gpu/drm/i915/display/intel_ddi.c      | 11 ++++++-----
>>   drivers/gpu/drm/i915/display/intel_display.c  | 19 +++++++++++--------
>>   .../drm/i915/display/intel_display_types.h    | 15 +++++++++------
>>   3 files changed, 26 insertions(+), 19 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index 333871cf3a2c..915e8e3e8f38 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -455,6 +455,9 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
>>   		temp |= TRANS_DDI_SELECT_PORT(port);
>>   
>>   	switch (crtc_state->pipe_bpp) {
>> +	default:
>> +		MISSING_CASE(crtc_state->pipe_bpp);
>> +		fallthrough;
>>   	case 18:
>>   		temp |= TRANS_DDI_BPC_6;
>>   		break;
>> @@ -467,8 +470,6 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
>>   	case 36:
>>   		temp |= TRANS_DDI_BPC_12;
>>   		break;
>> -	default:
>> -		BUG();
>>   	}
>>   
>>   	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_PVSYNC)
>> @@ -478,6 +479,9 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
>>   
>>   	if (cpu_transcoder == TRANSCODER_EDP) {
>>   		switch (pipe) {
>> +		default:
>> +			MISSING_CASE(pipe);
>> +			fallthrough;
>>   		case PIPE_A:
>>   			/* On Haswell, can only use the always-on power well for
>>   			 * eDP when not using the panel fitter, and when not
>> @@ -494,9 +498,6 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
>>   		case PIPE_C:
>>   			temp |= TRANS_DDI_EDP_INPUT_C_ONOFF;
>>   			break;
>> -		default:
>> -			BUG();
>> -			break;
>>   		}
>>   	}
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 806d50b302ab..e6a84d97718f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -500,6 +500,9 @@ void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
>>   	i915_reg_t dpll_reg;
>>   
>>   	switch (dig_port->base.port) {
>> +	default:
>> +		MISSING_CASE(dig_port->base.port);
>> +		fallthrough;
>>   	case PORT_B:
>>   		port_mask = DPLL_PORTB_READY_MASK;
>>   		dpll_reg = DPLL(0);
>> @@ -513,8 +516,6 @@ void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
>>   		port_mask = DPLL_PORTD_READY_MASK;
>>   		dpll_reg = DPIO_PHY_STATUS;
>>   		break;
>> -	default:
>> -		BUG();
>>   	}
>>   
>>   	if (intel_de_wait_for_register(dev_priv, dpll_reg,
>> @@ -3157,6 +3158,10 @@ static void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
>>   				    PIPECONF_DITHER_TYPE_SP;
>>   
>>   		switch (crtc_state->pipe_bpp) {
>> +		default:
>> +			/* Case prevented by intel_choose_pipe_bpp_dither. */
>> +			MISSING_CASE(crtc_state->pipe_bpp);
>> +			fallthrough;
>>   		case 18:
>>   			pipeconf |= PIPECONF_BPC_6;
>>   			break;
>> @@ -3166,9 +3171,6 @@ static void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
>>   		case 30:
>>   			pipeconf |= PIPECONF_BPC_10;
>>   			break;
>> -		default:
>> -			/* Case prevented by intel_choose_pipe_bpp_dither. */
>> -			BUG();
>>   		}
>>   	}
>>   
>> @@ -3464,6 +3466,10 @@ static void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state)
>>   	val = 0;
>>   
>>   	switch (crtc_state->pipe_bpp) {
>> +	default:
>> +		/* Case prevented by intel_choose_pipe_bpp_dither. */
>> +		MISSING_CASE(crtc_state->pipe_bpp);
>> +		fallthrough;
>>   	case 18:
>>   		val |= PIPECONF_BPC_6;
>>   		break;
>> @@ -3476,9 +3482,6 @@ static void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state)
>>   	case 36:
>>   		val |= PIPECONF_BPC_12;
>>   		break;
>> -	default:
>> -		/* Case prevented by intel_choose_pipe_bpp_dither. */
>> -		BUG();
>>   	}
>>   
>>   	if (crtc_state->dither)
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index a27d66fd4383..37c25364350c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1798,13 +1798,14 @@ static inline enum dpio_channel
>>   vlv_dig_port_to_channel(struct intel_digital_port *dig_port)
>>   {
>>   	switch (dig_port->base.port) {
>> +	default:
>> +		MISSING_CASE(dig_port->base.port);
>> +		fallthrough;
>>   	case PORT_B:
>>   	case PORT_D:
>>   		return DPIO_CH0;
>>   	case PORT_C:
>>   		return DPIO_CH1;
>> -	default:
>> -		BUG();
>>   	}
>>   }
>>   
>> @@ -1812,13 +1813,14 @@ static inline enum dpio_phy
>>   vlv_dig_port_to_phy(struct intel_digital_port *dig_port)
>>   {
>>   	switch (dig_port->base.port) {
>> +	default:
>> +		MISSING_CASE(dig_port->base.port);
>> +		fallthrough;
>>   	case PORT_B:
>>   	case PORT_C:
>>   		return DPIO_PHY0;
>>   	case PORT_D:
>>   		return DPIO_PHY1;
>> -	default:
>> -		BUG();
>>   	}
>>   }
>>   
>> @@ -1826,13 +1828,14 @@ static inline enum dpio_channel
>>   vlv_pipe_to_channel(enum pipe pipe)
>>   {
>>   	switch (pipe) {
>> +	default:
>> +		MISSING_CASE(pipe);
>> +		fallthrough;
>>   	case PIPE_A:
>>   	case PIPE_C:
>>   		return DPIO_CH0;
>>   	case PIPE_B:
>>   		return DPIO_CH1;
>> -	default:
>> -		BUG();
>>   	}
>>   }
>>   
>

-- 
Jani Nikula, Intel Open Source Graphics Center
