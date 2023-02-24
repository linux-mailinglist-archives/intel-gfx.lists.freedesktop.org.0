Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E988D6A1F8C
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 17:23:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE87989654;
	Fri, 24 Feb 2023 16:23:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F68089654
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 16:23:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677255799; x=1708791799;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=Et/e3p6RtblcuvME2w4isY5e4e3AuyAB2FcQE4ZdWfM=;
 b=mfC6cpxBlhCiMDwcnq3M6laclbSgZuVU8vfpGHENzwDzn+xbKZfWjreB
 +ty0mw14HAX5sbfkf83wL0IA5fQMAFjbX4oaGQtIZQP51S2Bty5OyJC6d
 9Ltlr+FUMaSj3bLYcHiBcEeC3NDt8ccxll2QvOqD8mv5YsCEmX2rhpB/7
 Y0NtH2xsbsXMlNw+bK/sKzrO49fPRBDeHKFVsVwHFT6QMMlc4ImpOrQBM
 TDSBUBn9G/iW13mOGUnTMP/zy5NWsFQoUAZIiFK3hSnZONJ8mzKfgoMeh
 QdyQxOQOi0pdGNVPwIKBhroNunJrbbNfuoFUnWGpNK0foECzykQoA7+qY A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="335749270"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="335749270"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 08:23:18 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="761830092"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="761830092"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.7.163])
 ([10.213.7.163])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 08:23:17 -0800
Message-ID: <7ffd8499-1d79-9a3f-312c-32f2d0c16024@intel.com>
Date: Fri, 24 Feb 2023 17:23:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.8.0
Content-Language: en-US
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230224153707.813953-1-rodrigo.vivi@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230224153707.813953-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove unused tmp assignment.
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



On 24.02.2023 16:37, Rodrigo Vivi wrote:
> These are left overs from the conversion towards intel_de_rmw.
>
> Fixes: aa80b2b12b89 ("drm/i915/display/panel: use intel_de_rmw if possible in panel related code")
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej
> ---
>   drivers/gpu/drm/i915/display/intel_backlight.c | 11 ++++-------
>   1 file changed, 4 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
> index b89e96bb4150..2e8f17c04522 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -352,20 +352,19 @@ static void lpt_disable_backlight(const struct drm_connector_state *old_conn_sta
>   		intel_de_write(i915, BLC_PWM_CPU_CTL2, tmp & ~BLM_PWM_ENABLE);
>   	}
>   
> -	tmp = intel_de_rmw(i915, BLC_PWM_PCH_CTL1, BLM_PCH_PWM_ENABLE, 0);
> +	intel_de_rmw(i915, BLC_PWM_PCH_CTL1, BLM_PCH_PWM_ENABLE, 0);
>   }
>   
>   static void pch_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
>   {
>   	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
>   	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> -	u32 tmp;
>   
>   	intel_backlight_set_pwm_level(old_conn_state, val);
>   
>   	intel_de_rmw(i915, BLC_PWM_CPU_CTL2, BLM_PWM_ENABLE, 0);
>   
> -	tmp = intel_de_rmw(i915, BLC_PWM_PCH_CTL1, BLM_PCH_PWM_ENABLE, 0);
> +	intel_de_rmw(i915, BLC_PWM_PCH_CTL1, BLM_PCH_PWM_ENABLE, 0);
>   }
>   
>   static void i9xx_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
> @@ -376,11 +375,10 @@ static void i9xx_disable_backlight(const struct drm_connector_state *old_conn_st
>   static void i965_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
>   {
>   	struct drm_i915_private *i915 = to_i915(old_conn_state->connector->dev);
> -	u32 tmp;
>   
>   	intel_backlight_set_pwm_level(old_conn_state, val);
>   
> -	tmp = intel_de_rmw(i915, BLC_PWM_CTL2, BLM_PWM_ENABLE, 0);
> +	intel_de_rmw(i915, BLC_PWM_CTL2, BLM_PWM_ENABLE, 0);
>   }
>   
>   static void vlv_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
> @@ -388,11 +386,10 @@ static void vlv_disable_backlight(const struct drm_connector_state *old_conn_sta
>   	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
>   	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>   	enum pipe pipe = to_intel_crtc(old_conn_state->crtc)->pipe;
> -	u32 tmp;
>   
>   	intel_backlight_set_pwm_level(old_conn_state, val);
>   
> -	tmp = intel_de_rmw(i915, VLV_BLC_PWM_CTL2(pipe), BLM_PWM_ENABLE, 0);
> +	intel_de_rmw(i915, VLV_BLC_PWM_CTL2(pipe), BLM_PWM_ENABLE, 0);
>   }
>   
>   static void bxt_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)

