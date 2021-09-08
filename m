Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFEFB4037F9
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 12:37:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CC586E17E;
	Wed,  8 Sep 2021 10:37:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E7726E17E
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 10:37:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="207677724"
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="207677724"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 03:37:24 -0700
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="538492583"
Received: from mdoerbec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.33.106])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 03:37:21 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@redhat.com>
In-Reply-To: <20210908003944.2972024-16-airlied@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210908003944.2972024-1-airlied@gmail.com>
 <20210908003944.2972024-16-airlied@gmail.com>
Date: Wed, 08 Sep 2021 13:37:19 +0300
Message-ID: <87v93b5p5s.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 15/21] drm/i915: constify the audio function
 vtable
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

On Wed, 08 Sep 2021, Dave Airlie <airlied@gmail.com> wrote:
> From: Dave Airlie <airlied@redhat.com>
>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 43 ++++++++++++++--------
>  drivers/gpu/drm/i915/i915_drv.h            |  2 +-
>  2 files changed, 28 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index f539826c0424..4707e1beb763 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -848,10 +848,10 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
>  
>  	connector->eld[6] = drm_av_sync_delay(connector, adjusted_mode) / 2;
>  
> -	if (dev_priv->audio_funcs.audio_codec_enable)
> -		dev_priv->audio_funcs.audio_codec_enable(encoder,
> -						     crtc_state,
> -						     conn_state);
> +	if (dev_priv->audio_funcs)
> +		dev_priv->audio_funcs->audio_codec_enable(encoder,
> +							  crtc_state,
> +							  conn_state);
>  
>  	mutex_lock(&dev_priv->av_mutex);
>  	encoder->audio_connector = connector;
> @@ -893,10 +893,10 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
>  	enum port port = encoder->port;
>  	enum pipe pipe = crtc->pipe;
>  
> -	if (dev_priv->audio_funcs.audio_codec_disable)
> -		dev_priv->audio_funcs.audio_codec_disable(encoder,
> -						      old_crtc_state,
> -						      old_conn_state);
> +	if (dev_priv->audio_funcs)
> +		dev_priv->audio_funcs->audio_codec_disable(encoder,
> +							   old_crtc_state,
> +							   old_conn_state);
>  
>  	mutex_lock(&dev_priv->av_mutex);
>  	encoder->audio_connector = NULL;
> @@ -915,6 +915,21 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
>  	intel_lpe_audio_notify(dev_priv, pipe, port, NULL, 0, false);
>  }
>  
> +static const struct drm_i915_display_audio_funcs g4x_audio_funcs = {
> +	.audio_codec_enable = g4x_audio_codec_enable,
> +	.audio_codec_disable = g4x_audio_codec_disable,
> +};
> +
> +static const struct drm_i915_display_audio_funcs ilk_audio_funcs = {
> +	.audio_codec_enable = ilk_audio_codec_enable,
> +	.audio_codec_disable = ilk_audio_codec_disable,
> +};
> +
> +static const struct drm_i915_display_audio_funcs hsw_audio_funcs = {
> +	.audio_codec_enable = hsw_audio_codec_enable,
> +	.audio_codec_disable = hsw_audio_codec_disable,
> +};
> +
>  /**
>   * intel_init_audio_hooks - Set up chip specific audio hooks
>   * @dev_priv: device private
> @@ -922,17 +937,13 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
>  void intel_init_audio_hooks(struct drm_i915_private *dev_priv)
>  {
>  	if (IS_G4X(dev_priv)) {
> -		dev_priv->audio_funcs.audio_codec_enable = g4x_audio_codec_enable;
> -		dev_priv->audio_funcs.audio_codec_disable = g4x_audio_codec_disable;
> +		dev_priv->audio_funcs = &g4x_audio_funcs;
>  	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> -		dev_priv->audio_funcs.audio_codec_enable = ilk_audio_codec_enable;
> -		dev_priv->audio_funcs.audio_codec_disable = ilk_audio_codec_disable;
> +		dev_priv->audio_funcs = &ilk_audio_funcs;
>  	} else if (IS_HASWELL(dev_priv) || DISPLAY_VER(dev_priv) >= 8) {
> -		dev_priv->audio_funcs.audio_codec_enable = hsw_audio_codec_enable;
> -		dev_priv->audio_funcs.audio_codec_disable = hsw_audio_codec_disable;
> +		dev_priv->audio_funcs = &hsw_audio_funcs;
>  	} else if (HAS_PCH_SPLIT(dev_priv)) {
> -		dev_priv->audio_funcs.audio_codec_enable = ilk_audio_codec_enable;
> -		dev_priv->audio_funcs.audio_codec_disable = ilk_audio_codec_disable;
> +		dev_priv->audio_funcs = &ilk_audio_funcs;
>  	}
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index e82df3bf493b..8d14318c5708 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1018,7 +1018,7 @@ struct drm_i915_private {
>  	const struct drm_i915_display_color_funcs *color_funcs;
>  
>  	/* Display internal audio functions */
> -	struct drm_i915_display_audio_funcs audio_funcs;
> +	const struct drm_i915_display_audio_funcs *audio_funcs;
>  
>  	/* Display CDCLK functions */
>  	struct drm_i915_display_cdclk_funcs cdclk_funcs;

-- 
Jani Nikula, Intel Open Source Graphics Center
