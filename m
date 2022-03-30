Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A8104EBFAC
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 13:15:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A23110EA9E;
	Wed, 30 Mar 2022 11:15:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3E8110EA9E
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 11:15:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648638948; x=1680174948;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=SIQR2pA5VgsrUWgjJdfRLxc6a+tKrJO18WOnOHBZeAY=;
 b=lD76AwcCJWbwzepL1nyIhqw27XUtHMV6dkqhg1+TEGSogfhN3rXidq9S
 238wsQWAuOfSg9eN/zTkddjhq+WbdENsLNnqESy3YjPKOqzcNz6VT3mEG
 PoXgWBIEdZcjO8Gqr0XXnIPDTtxebAlYPNftiiuZSEm5Ebk5YCvLUwQQZ
 4OnXAEBkVPf0lB/vMTLZulIs40s+YxOrJQXKr4zlNtFpd1zcodVygUWu4
 iKrM9iWLF/DMaugsEBXQblyw9Yq5dUBYW8uC4i/bT8XpIeaGlSbdFa27c
 fEPpGuxtFZ0qrmvg3KzFhit0fd2oIjqxA2DktxJYV7i0nmw65iS8/rA+u g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="320216213"
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="320216213"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 04:15:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="649830188"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga002.fm.intel.com with SMTP; 30 Mar 2022 04:15:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 30 Mar 2022 14:15:45 +0300
Date: Wed, 30 Mar 2022 14:15:45 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YkQ74bnGzk7cd9jA@intel.com>
References: <20220330094109.4164326-1-jani.nikula@intel.com>
 <20220330094109.4164326-2-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220330094109.4164326-2-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/audio: move has_audio checks
 to within codec enable/disable
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

On Wed, Mar 30, 2022 at 12:41:09PM +0300, Jani Nikula wrote:
> Reduce duplication.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c       |  7 ++---
>  drivers/gpu/drm/i915/display/g4x_hdmi.c     | 33 +++++++--------------
>  drivers/gpu/drm/i915/display/intel_audio.c  |  6 ++++
>  drivers/gpu/drm/i915/display/intel_ddi.c    | 14 +++------
>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  8 ++---
>  5 files changed, 26 insertions(+), 42 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
> index 55fefc950f41..16bb21ad898b 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -495,9 +495,7 @@ static void intel_disable_dp(struct intel_atomic_state *state,
>  
>  	intel_dp->link_trained = false;
>  
> -	if (old_crtc_state->has_audio)
> -		intel_audio_codec_disable(encoder,
> -					  old_crtc_state, old_conn_state);
> +	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
>  
>  	/*
>  	 * Make sure the panel is off before trying to change the mode.
> @@ -692,8 +690,7 @@ static void intel_enable_dp(struct intel_atomic_state *state,
>  	intel_dp_start_link_train(intel_dp, pipe_config);
>  	intel_dp_stop_link_train(intel_dp, pipe_config);
>  
> -	if (pipe_config->has_audio)
> -		intel_audio_codec_enable(encoder, pipe_config, conn_state);
> +	intel_audio_codec_enable(encoder, pipe_config, conn_state);
>  }
>  
>  static void g4x_enable_dp(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> index 39ba5dc51f8e..8bfef08b7c43 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -143,16 +143,6 @@ static void intel_hdmi_get_config(struct intel_encoder *encoder,
>  			     &pipe_config->infoframes.hdmi);
>  }
>  
> -static void intel_enable_hdmi_audio(struct intel_encoder *encoder,
> -				    const struct intel_crtc_state *pipe_config,
> -				    const struct drm_connector_state *conn_state)
> -{
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> -
> -	drm_WARN_ON(&i915->drm, !pipe_config->has_hdmi_sink);
> -	intel_audio_codec_enable(encoder, pipe_config, conn_state);
> -}
> -
>  static void g4x_enable_hdmi(struct intel_atomic_state *state,
>  			    struct intel_encoder *encoder,
>  			    const struct intel_crtc_state *pipe_config,
> @@ -172,8 +162,9 @@ static void g4x_enable_hdmi(struct intel_atomic_state *state,
>  	intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
>  	intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
>  
> -	if (pipe_config->has_audio)
> -		intel_enable_hdmi_audio(encoder, pipe_config, conn_state);
> +	drm_WARN_ON(&dev_priv->drm, pipe_config->has_audio &&
> +		    !pipe_config->has_hdmi_sink);

I'd probably just drop these warns. We don't have them for hsw+ either.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +	intel_audio_codec_enable(encoder, pipe_config, conn_state);
>  }
>  
>  static void ibx_enable_hdmi(struct intel_atomic_state *state,
> @@ -224,8 +215,9 @@ static void ibx_enable_hdmi(struct intel_atomic_state *state,
>  		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
>  	}
>  
> -	if (pipe_config->has_audio)
> -		intel_enable_hdmi_audio(encoder, pipe_config, conn_state);
> +	drm_WARN_ON(&dev_priv->drm, pipe_config->has_audio &&
> +		    !pipe_config->has_hdmi_sink);
> +	intel_audio_codec_enable(encoder, pipe_config, conn_state);
>  }
>  
>  static void cpt_enable_hdmi(struct intel_atomic_state *state,
> @@ -278,8 +270,9 @@ static void cpt_enable_hdmi(struct intel_atomic_state *state,
>  			       intel_de_read(dev_priv, TRANS_CHICKEN1(pipe)) & ~TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE);
>  	}
>  
> -	if (pipe_config->has_audio)
> -		intel_enable_hdmi_audio(encoder, pipe_config, conn_state);
> +	drm_WARN_ON(&dev_priv->drm, pipe_config->has_audio &&
> +		    !pipe_config->has_hdmi_sink);
> +	intel_audio_codec_enable(encoder, pipe_config, conn_state);
>  }
>  
>  static void vlv_enable_hdmi(struct intel_atomic_state *state,
> @@ -353,9 +346,7 @@ static void g4x_disable_hdmi(struct intel_atomic_state *state,
>  			     const struct intel_crtc_state *old_crtc_state,
>  			     const struct drm_connector_state *old_conn_state)
>  {
> -	if (old_crtc_state->has_audio)
> -		intel_audio_codec_disable(encoder,
> -					  old_crtc_state, old_conn_state);
> +	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
>  
>  	intel_disable_hdmi(state, encoder, old_crtc_state, old_conn_state);
>  }
> @@ -365,9 +356,7 @@ static void pch_disable_hdmi(struct intel_atomic_state *state,
>  			     const struct intel_crtc_state *old_crtc_state,
>  			     const struct drm_connector_state *old_conn_state)
>  {
> -	if (old_crtc_state->has_audio)
> -		intel_audio_codec_disable(encoder,
> -					  old_crtc_state, old_conn_state);
> +	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
>  }
>  
>  static void pch_post_disable_hdmi(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 24d20817a5e5..1c87bf66b092 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -821,6 +821,9 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
>  	enum port port = encoder->port;
>  	enum pipe pipe = crtc->pipe;
>  
> +	if (!crtc_state->has_audio)
> +		return;
> +
>  	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s] Enable audio codec on pipe %c, %u bytes ELD\n",
>  		    connector->base.id, connector->name,
>  		    encoder->base.base.id, encoder->base.name,
> @@ -880,6 +883,9 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
>  	enum port port = encoder->port;
>  	enum pipe pipe = crtc->pipe;
>  
> +	if (!old_crtc_state->has_audio)
> +		return;
> +
>  	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s] Disable audio codec on pipe %c\n",
>  		    connector->base.id, connector->name,
>  		    encoder->base.base.id, encoder->base.name, pipe);
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index dc208df829f1..cec578efc4bd 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2819,8 +2819,7 @@ static void intel_enable_ddi_dp(struct intel_atomic_state *state,
>  	if (!dig_port->lspcon.active || dig_port->dp.has_hdmi_sink)
>  		intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
>  
> -	if (crtc_state->has_audio)
> -		intel_audio_codec_enable(encoder, crtc_state, conn_state);
> +	intel_audio_codec_enable(encoder, crtc_state, conn_state);
>  
>  	trans_port_sync_stop_link_train(state, encoder, crtc_state);
>  }
> @@ -2914,8 +2913,7 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
>  	intel_de_write(dev_priv, DDI_BUF_CTL(port),
>  		       dig_port->saved_port_bits | DDI_BUF_CTL_ENABLE);
>  
> -	if (crtc_state->has_audio)
> -		intel_audio_codec_enable(encoder, crtc_state, conn_state);
> +	intel_audio_codec_enable(encoder, crtc_state, conn_state);
>  }
>  
>  static void intel_enable_ddi(struct intel_atomic_state *state,
> @@ -2956,9 +2954,7 @@ static void intel_disable_ddi_dp(struct intel_atomic_state *state,
>  
>  	intel_dp->link_trained = false;
>  
> -	if (old_crtc_state->has_audio)
> -		intel_audio_codec_disable(encoder,
> -					  old_crtc_state, old_conn_state);
> +	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
>  
>  	intel_psr_disable(intel_dp, old_crtc_state);
>  	intel_edp_backlight_off(old_conn_state);
> @@ -2978,9 +2974,7 @@ static void intel_disable_ddi_hdmi(struct intel_atomic_state *state,
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	struct drm_connector *connector = old_conn_state->connector;
>  
> -	if (old_crtc_state->has_audio)
> -		intel_audio_codec_disable(encoder,
> -					  old_crtc_state, old_conn_state);
> +	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
>  
>  	if (!intel_hdmi_handle_sink_scrambling(encoder, connector,
>  					       false, false))
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index e30e698aa684..061b277e5ce7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -398,9 +398,8 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
>  	if (ret) {
>  		drm_dbg_kms(&i915->drm, "failed to update payload %d\n", ret);
>  	}
> -	if (old_crtc_state->has_audio)
> -		intel_audio_codec_disable(encoder,
> -					  old_crtc_state, old_conn_state);
> +
> +	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
>  }
>  
>  static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
> @@ -599,8 +598,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>  
>  	intel_crtc_vblank_on(pipe_config);
>  
> -	if (pipe_config->has_audio)
> -		intel_audio_codec_enable(encoder, pipe_config, conn_state);
> +	intel_audio_codec_enable(encoder, pipe_config, conn_state);
>  
>  	/* Enable hdcp if it's desired */
>  	if (conn_state->content_protection ==
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
