Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 814CF8CCF81
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 11:41:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADE4210E5BF;
	Thu, 23 May 2024 09:41:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ggj1Ox1P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EA5710E5BF
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 09:41:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716457299; x=1747993299;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=cchU2s5CZevV21mk7uyLB3Z5koiwDsOohk3E3z1qw+A=;
 b=Ggj1Ox1Pc/wk4Ue9bxClNNWas6cLCKgbYYsbQKd+T6CQ4hl9rMImcYRk
 Eq+dU1QPfIOaU0mFu/A2PkzSdl1gDXmLl2PcctCymC+Vn3cO4BVfGp0B5
 wcHHP+Ni9YwpaDdTlPi+oYmHYG22xSkRgwdzmcv0DBXNw/UK/mb2LlK2J
 M+r9gBegarTkXBgwO5E7jl7pbjEfMPZYX8cJlKx3dLIicwG234/L1+d13
 k58oJ4WgVx8ZHDKY8vgvPpKrAzXBkPBrxIWL9vYBUKqySkDC1vEFNwKVD
 5KvPlsUS5smUZj319QiLL6EkmIdSELIYncdZBN3NmGldSNKrT7pKZhLF2 w==;
X-CSE-ConnectionGUID: bMTpsZSmRu2Ifm+HO7a+1w==
X-CSE-MsgGUID: //iDIYgUTCK/JoTtaWZrYg==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="24169791"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="24169791"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 02:41:37 -0700
X-CSE-ConnectionGUID: iZSkcHcDR7yBemhTwMc5OA==
X-CSE-MsgGUID: KBmb9fN5SZiVU1sXsdLuSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="38085297"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.57])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 02:41:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: Fix audio component initialization
In-Reply-To: <20240521143022.3784539-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240521143022.3784539-1-imre.deak@intel.com>
Date: Thu, 23 May 2024 12:41:32 +0300
Message-ID: <87ed9sq303.fsf@intel.com>
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

On Tue, 21 May 2024, Imre Deak <imre.deak@intel.com> wrote:
> After registering the audio component in i915_audio_component_init()
> the audio driver may call i915_audio_component_get_power() via the
> component ops. This could program AUD_FREQ_CNTRL with an uninitialized
> value if the latter function is called before display.audio.freq_cntrl
> gets initialized. The get_power() function also does a modeset which in
> the above case happens too early before the initialization step and
> triggers the
>
> "Reject display access from task"
>
> error message added by the Fixes: commit below.
>
> Fix the above issue by registering the audio component only after the
> initialization step.
>
> Fixes: bd738d859e71 ("drm/i915: Prevent modesets during driver init/shutdown")

I think the race condition exists before that commit, actually.

Already commit 87c1694533c9 ("drm/i915: save AUD_FREQ_CNTRL state at
audio domain suspend") adds freq_cntrl init after component register,
and the order should be different, right?

> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10291
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c    | 32 ++++++++++++-------
>  drivers/gpu/drm/i915/display/intel_audio.h    |  1 +
>  .../drm/i915/display/intel_display_driver.c   |  2 ++
>  3 files changed, 24 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index adde87900557f..4c031e97f9a55 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -1267,17 +1267,6 @@ static const struct component_ops i915_audio_component_bind_ops = {
>  static void i915_audio_component_init(struct drm_i915_private *i915)
>  {
>  	u32 aud_freq, aud_freq_init;
> -	int ret;
> -
> -	ret = component_add_typed(i915->drm.dev,
> -				  &i915_audio_component_bind_ops,
> -				  I915_COMPONENT_AUDIO);
> -	if (ret < 0) {
> -		drm_err(&i915->drm,
> -			"failed to add audio component (%d)\n", ret);
> -		/* continue with reduced functionality */
> -		return;
> -	}
>  
>  	if (DISPLAY_VER(i915) >= 9) {
>  		aud_freq_init = intel_de_read(i915, AUD_FREQ_CNTRL);
> @@ -1300,6 +1289,21 @@ static void i915_audio_component_init(struct drm_i915_private *i915)
>  
>  	/* init with current cdclk */
>  	intel_audio_cdclk_change_post(i915);
> +}
> +
> +static void i915_audio_component_register(struct drm_i915_private *i915)
> +{
> +	int ret;
> +
> +	ret = component_add_typed(i915->drm.dev,
> +				  &i915_audio_component_bind_ops,
> +				  I915_COMPONENT_AUDIO);
> +	if (ret < 0) {
> +		drm_err(&i915->drm,
> +			"failed to add audio component (%d)\n", ret);
> +		/* continue with reduced functionality */
> +		return;
> +	}
>  
>  	i915->display.audio.component_registered = true;
>  }
> @@ -1332,6 +1336,12 @@ void intel_audio_init(struct drm_i915_private *i915)
>  		i915_audio_component_init(i915);
>  }
>  
> +void intel_audio_register(struct drm_i915_private *i915)
> +{
> +	if (!i915->display.audio.lpe.platdev)
> +		i915_audio_component_register(i915);
> +}
> +
>  /**
>   * intel_audio_deinit() - deinitialize the audio driver
>   * @i915: the i915 drm device private data
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm/i915/display/intel_audio.h
> index 9327954b801e5..576c061d72a45 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.h
> +++ b/drivers/gpu/drm/i915/display/intel_audio.h
> @@ -28,6 +28,7 @@ void intel_audio_codec_get_config(struct intel_encoder *encoder,
>  void intel_audio_cdclk_change_pre(struct drm_i915_private *dev_priv);
>  void intel_audio_cdclk_change_post(struct drm_i915_private *dev_priv);
>  void intel_audio_init(struct drm_i915_private *dev_priv);
> +void intel_audio_register(struct drm_i915_private *i915);
>  void intel_audio_deinit(struct drm_i915_private *dev_priv);
>  void intel_audio_sdp_split_update(const struct intel_crtc_state *crtc_state);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 89bd032ed995e..794b4af380558 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -540,6 +540,8 @@ void intel_display_driver_register(struct drm_i915_private *i915)
>  
>  	intel_display_driver_enable_user_access(i915);
>  
> +	intel_audio_register(i915);
> +

It's a bit silly that intel_display_driver_register() now calls both
intel_audio_init() and intel_audio_register(). We should probably move
the init earlier. The register part shouldn't really be doing any
hardware initialization stuff, just expose the software interfaces to
the world.

Regardless,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>  	intel_display_debugfs_register(i915);
>  
>  	/*

-- 
Jani Nikula, Intel
