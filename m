Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1B6403741
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 11:48:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90FD66E092;
	Wed,  8 Sep 2021 09:48:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9375A6E092
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 09:48:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="220121063"
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="220121063"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 02:48:43 -0700
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="547619437"
Received: from mdoerbec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.33.106])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 02:48:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@redhat.com>
In-Reply-To: <20210908003944.2972024-8-airlied@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210908003944.2972024-1-airlied@gmail.com>
 <20210908003944.2972024-8-airlied@gmail.com>
Date: Wed, 08 Sep 2021 12:48:37 +0300
Message-ID: <87ilzb75ze.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 07/21] drm/i915: split audio functions from
 display vtable
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
> These are only used internally in the audio code
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 24 +++++++++++-----------
>  drivers/gpu/drm/i915/i915_drv.h            | 19 +++++++++++------
>  2 files changed, 25 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 532237588511..f539826c0424 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -848,8 +848,8 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
>  
>  	connector->eld[6] = drm_av_sync_delay(connector, adjusted_mode) / 2;
>  
> -	if (dev_priv->display.audio_codec_enable)
> -		dev_priv->display.audio_codec_enable(encoder,
> +	if (dev_priv->audio_funcs.audio_codec_enable)
> +		dev_priv->audio_funcs.audio_codec_enable(encoder,
>  						     crtc_state,
>  						     conn_state);
>  
> @@ -893,8 +893,8 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
>  	enum port port = encoder->port;
>  	enum pipe pipe = crtc->pipe;
>  
> -	if (dev_priv->display.audio_codec_disable)
> -		dev_priv->display.audio_codec_disable(encoder,
> +	if (dev_priv->audio_funcs.audio_codec_disable)
> +		dev_priv->audio_funcs.audio_codec_disable(encoder,
>  						      old_crtc_state,
>  						      old_conn_state);

Again, nice isolation here. :)

>  
> @@ -922,17 +922,17 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
>  void intel_init_audio_hooks(struct drm_i915_private *dev_priv)
>  {
>  	if (IS_G4X(dev_priv)) {
> -		dev_priv->display.audio_codec_enable = g4x_audio_codec_enable;
> -		dev_priv->display.audio_codec_disable = g4x_audio_codec_disable;
> +		dev_priv->audio_funcs.audio_codec_enable = g4x_audio_codec_enable;
> +		dev_priv->audio_funcs.audio_codec_disable = g4x_audio_codec_disable;
>  	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> -		dev_priv->display.audio_codec_enable = ilk_audio_codec_enable;
> -		dev_priv->display.audio_codec_disable = ilk_audio_codec_disable;
> +		dev_priv->audio_funcs.audio_codec_enable = ilk_audio_codec_enable;
> +		dev_priv->audio_funcs.audio_codec_disable = ilk_audio_codec_disable;
>  	} else if (IS_HASWELL(dev_priv) || DISPLAY_VER(dev_priv) >= 8) {
> -		dev_priv->display.audio_codec_enable = hsw_audio_codec_enable;
> -		dev_priv->display.audio_codec_disable = hsw_audio_codec_disable;
> +		dev_priv->audio_funcs.audio_codec_enable = hsw_audio_codec_enable;
> +		dev_priv->audio_funcs.audio_codec_disable = hsw_audio_codec_disable;
>  	} else if (HAS_PCH_SPLIT(dev_priv)) {
> -		dev_priv->display.audio_codec_enable = ilk_audio_codec_enable;
> -		dev_priv->display.audio_codec_disable = ilk_audio_codec_disable;
> +		dev_priv->audio_funcs.audio_codec_enable = ilk_audio_codec_enable;
> +		dev_priv->audio_funcs.audio_codec_disable = ilk_audio_codec_disable;
>  	}
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 7e5a8b1bbdd8..3e60bf8182e3 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -364,6 +364,15 @@ struct drm_i915_display_color_funcs {
>  	void (*read_luts)(struct intel_crtc_state *crtc_state);
>  };
>  
> +struct drm_i915_display_audio_funcs {

Nitpick, I'd make it struct intel_audio_funcs.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> +	void (*audio_codec_enable)(struct intel_encoder *encoder,
> +				   const struct intel_crtc_state *crtc_state,
> +				   const struct drm_connector_state *conn_state);
> +	void (*audio_codec_disable)(struct intel_encoder *encoder,
> +				    const struct intel_crtc_state *old_crtc_state,
> +				    const struct drm_connector_state *old_conn_state);
> +};
> +
>  struct drm_i915_display_funcs {
>  	void (*get_cdclk)(struct drm_i915_private *dev_priv,
>  			  struct intel_cdclk_config *cdclk_config);
> @@ -386,12 +395,7 @@ struct drm_i915_display_funcs {
>  			     struct intel_crtc *crtc);
>  	void (*commit_modeset_enables)(struct intel_atomic_state *state);
>  	void (*commit_modeset_disables)(struct intel_atomic_state *state);
> -	void (*audio_codec_enable)(struct intel_encoder *encoder,
> -				   const struct intel_crtc_state *crtc_state,
> -				   const struct drm_connector_state *conn_state);
> -	void (*audio_codec_disable)(struct intel_encoder *encoder,
> -				    const struct intel_crtc_state *old_crtc_state,
> -				    const struct drm_connector_state *old_conn_state);
> +
>  	void (*fdi_link_train)(struct intel_crtc *crtc,
>  			       const struct intel_crtc_state *crtc_state);
>  	void (*hpd_irq_setup)(struct drm_i915_private *dev_priv);
> @@ -992,6 +996,9 @@ struct drm_i915_private {
>  	/* Display internal color functions */
>  	struct drm_i915_display_color_funcs color_funcs;
>  
> +	/* Display internal audio functions */
> +	struct drm_i915_display_audio_funcs audio_funcs;
> +
>  	/* PCH chipset type */
>  	enum intel_pch pch_type;
>  	unsigned short pch_id;

-- 
Jani Nikula, Intel Open Source Graphics Center
