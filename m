Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 635124EBF9F
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 13:13:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E936010E6F1;
	Wed, 30 Mar 2022 11:13:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 265B810E6F1
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 11:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648638779; x=1680174779;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=PJTe26Qw3IbPUPOPuWSYfN6KPSQDQGZB8GLtM7peYtA=;
 b=IF6fo4yAytZ7ErcA51QC6vfoillSUpSUVhtrCsr4h/kUphPu0r41OZVb
 m117K7lDH8WVTV7pVLGXnXDYEwurF9KctwWOqLkGAH8OMtnxKO+gXrtLn
 EUzoRTLHFowi8/b9QL/Sufpbyf6Z1kHcYB8AJZR27V+UhwhODoYiJKsMU
 F+q01Uu2ZWV9e4Ohg9HODBOsC0yxWbgOseqNX+Y1HuUY2u90yGy0EqOgW
 2j2HlRF19Z4wo4SOz7qRHxy2aq0UoBl+KFFoj2z7jibyTp0a48L84ZKP2
 OEaBda8G0VsUojr6V2C5sGoABx6vR8WN/w59wqh+6K43XXFQNiJnmgWQq g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="259231997"
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="259231997"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 04:12:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="605391437"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga008.fm.intel.com with SMTP; 30 Mar 2022 04:12:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 30 Mar 2022 14:12:35 +0300
Date: Wed, 30 Mar 2022 14:12:35 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YkQ7I+ma4kT4hpxm@intel.com>
References: <20220330094109.4164326-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220330094109.4164326-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/audio: unify audio codec
 enable/disable debug logging
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

On Wed, Mar 30, 2022 at 12:41:08PM +0300, Jani Nikula wrote:
> The audio codec enable/disable debug logging is spread around in callers
> and the platform specific hooks. Put them all together in one place on
> both the enable and disable paths.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c      |  7 +---
>  drivers/gpu/drm/i915/display/g4x_hdmi.c    |  3 --
>  drivers/gpu/drm/i915/display/intel_audio.c | 39 ++++++----------------
>  3 files changed, 11 insertions(+), 38 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
> index 8e1338678d91..55fefc950f41 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -658,9 +658,7 @@ static void intel_enable_dp(struct intel_atomic_state *state,
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> -	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
>  	u32 dp_reg = intel_de_read(dev_priv, intel_dp->output_reg);
> -	enum pipe pipe = crtc->pipe;
>  	intel_wakeref_t wakeref;
>  
>  	if (drm_WARN_ON(&dev_priv->drm, dp_reg & DP_PORT_EN))
> @@ -694,11 +692,8 @@ static void intel_enable_dp(struct intel_atomic_state *state,
>  	intel_dp_start_link_train(intel_dp, pipe_config);
>  	intel_dp_stop_link_train(intel_dp, pipe_config);
>  
> -	if (pipe_config->has_audio) {
> -		drm_dbg(&dev_priv->drm, "Enabling DP audio on pipe %c\n",
> -			pipe_name(pipe));
> +	if (pipe_config->has_audio)
>  		intel_audio_codec_enable(encoder, pipe_config, conn_state);
> -	}
>  }
>  
>  static void g4x_enable_dp(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> index 06e00b1eaa7c..39ba5dc51f8e 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -148,11 +148,8 @@ static void intel_enable_hdmi_audio(struct intel_encoder *encoder,
>  				    const struct drm_connector_state *conn_state)
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> -	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
>  
>  	drm_WARN_ON(&i915->drm, !pipe_config->has_hdmi_sink);
> -	drm_dbg_kms(&i915->drm, "Enabling HDMI audio on pipe %c\n",
> -		    pipe_name(crtc->pipe));
>  	intel_audio_codec_enable(encoder, pipe_config, conn_state);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 3bdca0fe2cee..24d20817a5e5 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -337,8 +337,6 @@ static void g4x_audio_codec_disable(struct intel_encoder *encoder,
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	u32 eldv, tmp;
>  
> -	drm_dbg_kms(&dev_priv->drm, "Disable audio codec\n");
> -
>  	tmp = intel_de_read(dev_priv, G4X_AUD_VID_DID);
>  	if (tmp == INTEL_AUDIO_DEVBLC || tmp == INTEL_AUDIO_DEVCL)
>  		eldv = G4X_ELDV_DEVCL_DEVBLC;
> @@ -362,9 +360,6 @@ static void g4x_audio_codec_enable(struct intel_encoder *encoder,
>  	u32 tmp;
>  	int len, i;
>  
> -	drm_dbg_kms(&dev_priv->drm, "Enable audio codec, %u bytes ELD\n",
> -		    drm_eld_size(eld));
> -
>  	tmp = intel_de_read(dev_priv, G4X_AUD_VID_DID);
>  	if (tmp == INTEL_AUDIO_DEVBLC || tmp == INTEL_AUDIO_DEVCL)
>  		eldv = G4X_ELDV_DEVCL_DEVBLC;
> @@ -383,7 +378,6 @@ static void g4x_audio_codec_enable(struct intel_encoder *encoder,
>  	intel_de_write(dev_priv, G4X_AUD_CNTL_ST, tmp);
>  
>  	len = min(drm_eld_size(eld) / 4, len);
> -	drm_dbg(&dev_priv->drm, "ELD size %d\n", len);
>  	for (i = 0; i < len; i++)
>  		intel_de_write(dev_priv, G4X_HDMIW_HDMIEDID,
>  			       *((const u32 *)eld + i));
> @@ -501,9 +495,6 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
>  	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
>  	u32 tmp;
>  
> -	drm_dbg_kms(&dev_priv->drm, "Disable audio codec on transcoder %s\n",
> -		    transcoder_name(cpu_transcoder));
> -
>  	mutex_lock(&dev_priv->audio.mutex);
>  
>  	/* Disable timestamps */
> @@ -647,10 +638,6 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
>  	u32 tmp;
>  	int len, i;
>  
> -	drm_dbg_kms(&dev_priv->drm,
> -		    "Enable audio codec on transcoder %s, %u bytes ELD\n",
> -		     transcoder_name(cpu_transcoder), drm_eld_size(eld));
> -
>  	mutex_lock(&dev_priv->audio.mutex);
>  
>  	/* Enable Audio WA for 4k DSC usecases */
> @@ -703,11 +690,6 @@ static void ilk_audio_codec_disable(struct intel_encoder *encoder,
>  	u32 tmp, eldv;
>  	i915_reg_t aud_config, aud_cntrl_st2;
>  
> -	drm_dbg_kms(&dev_priv->drm,
> -		    "Disable audio codec on [ENCODER:%d:%s], pipe %c\n",
> -		     encoder->base.base.id, encoder->base.name,
> -		     pipe_name(pipe));
> -
>  	if (drm_WARN_ON(&dev_priv->drm, port == PORT_A))
>  		return;
>  
> @@ -754,11 +736,6 @@ static void ilk_audio_codec_enable(struct intel_encoder *encoder,
>  	int len, i;
>  	i915_reg_t hdmiw_hdmiedid, aud_config, aud_cntl_st, aud_cntrl_st2;
>  
> -	drm_dbg_kms(&dev_priv->drm,
> -		    "Enable audio codec on [ENCODER:%d:%s], pipe %c, %u bytes ELD\n",
> -		    encoder->base.base.id, encoder->base.name,
> -		    pipe_name(pipe), drm_eld_size(eld));
> -
>  	if (drm_WARN_ON(&dev_priv->drm, port == PORT_A))
>  		return;
>  
> @@ -844,18 +821,17 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
>  	enum port port = encoder->port;
>  	enum pipe pipe = crtc->pipe;
>  
> +	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s] Enable audio codec on pipe %c, %u bytes ELD\n",
> +		    connector->base.id, connector->name,
> +		    encoder->base.base.id, encoder->base.name,
> +		    pipe, drm_eld_size(connector->eld));

Could also use the [CRTC:%d:%s] format for the pipe.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +
>  	/* FIXME precompute the ELD in .compute_config() */
>  	if (!connector->eld[0])
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Bogus ELD on [CONNECTOR:%d:%s]\n",
>  			    connector->base.id, connector->name);
>  
> -	drm_dbg(&dev_priv->drm, "ELD on [CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
> -		connector->base.id,
> -		connector->name,
> -		encoder->base.base.id,
> -		encoder->base.name);
> -
>  	connector->eld[6] = drm_av_sync_delay(connector, adjusted_mode) / 2;
>  
>  	if (dev_priv->audio.funcs)
> @@ -900,9 +876,14 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct i915_audio_component *acomp = dev_priv->audio.component;
>  	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
> +	struct drm_connector *connector = old_conn_state->connector;
>  	enum port port = encoder->port;
>  	enum pipe pipe = crtc->pipe;
>  
> +	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s] Disable audio codec on pipe %c\n",
> +		    connector->base.id, connector->name,
> +		    encoder->base.base.id, encoder->base.name, pipe);
> +
>  	if (dev_priv->audio.funcs)
>  		dev_priv->audio.funcs->audio_codec_disable(encoder,
>  							   old_crtc_state,
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
