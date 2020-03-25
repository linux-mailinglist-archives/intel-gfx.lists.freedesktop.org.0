Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2361922F9
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 09:40:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 757C46E3AA;
	Wed, 25 Mar 2020 08:40:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CBE66E3AA
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 08:40:20 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id h15so1742070wrx.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 01:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=hx5W2n4T4rRQbYZxLMV4OhpAwpcaWaWCU93OTBiK4yM=;
 b=id+VVOrSGvXw7zu6icu1FIvlSGTYf28oPCNRQJRw8qeF6P/gm0LNYA/Dg3jHamJblR
 HOzYk5hnaAyZu4HC6fQa7mle4BwL0gjbZBHYzLA2MtEjSwhbh/hHDZ+gNGZ9ISXW6RMb
 pSVKHvTjFkcag3+dVC6OkLbF5KD5CQ9hb8o0M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hx5W2n4T4rRQbYZxLMV4OhpAwpcaWaWCU93OTBiK4yM=;
 b=LrLJDxmGhFyrtlbCfq8OZddq7snrZ0P69EUPlbN2DPvgCYISGlDjq53VLJX26Iisqj
 MA7RKtcjziOSATiuDNuUQ46qvTO7MYflqfmb9604V4SGiS+d8L23b8WXRDEzBjUAcSHn
 +Gg2P90OZLgizWiVRrf5dN6h0IO5ysGpyc9I69UCXyO9WGZW1u4I00U+SMmP287Bcr9j
 ig4URgHmgtisYeXa033L9vrDOdBj91lAIjqQfF48uUEKj+VSoOAnS8wqUasGJeZMhthZ
 nElfb9u2EomxXwPc8a4vzuSI+k5oTZjRd504iqqzipY60EqjhplVDc7Ejpb7ZzDbWHpN
 80ng==
X-Gm-Message-State: ANhLgQ3O757fB70PpvGtEL41INopDMNt13TdL1OMHUYkmKCr+vlseZlt
 Rv5OBQX9vFEohp/uZq3Osb9/GeMiH92eWSJv
X-Google-Smtp-Source: ADFU+vtxB8/MRv/X8d0ZXY4dyGYCiprr/qdbMwMG5ZYB4DxhQvc6H98v78vzgSAimO6SPWJl8paCSQ==
X-Received: by 2002:adf:db49:: with SMTP id f9mr2033945wrj.145.1585125618749; 
 Wed, 25 Mar 2020 01:40:18 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p10sm27898573wrm.6.2020.03.25.01.40.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 01:40:18 -0700 (PDT)
Date: Wed, 25 Mar 2020 09:40:16 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200325084016.GP2363188@phenom.ffwll.local>
References: <cover.1584714939.git.jani.nikula@intel.com>
 <5ee3b8040658b5b4ef0b8b1a546fa04f554cdf6a.1584714939.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5ee3b8040658b5b4ef0b8b1a546fa04f554cdf6a.1584714939.git.jani.nikula@intel.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 04/13] drm/i915/dp_mst: use struct
 drm_device based logging
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
Cc: intel-gfx@lists.freedesktop.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 20, 2020 at 04:36:29PM +0200, Jani Nikula wrote:
> Convert all the DRM_* logging macros to the struct drm_device based
> macros to provide device specific logging.
> 
> No functional changes.
> 
> Generated using the following semantic patch, originally written by
> Wambui Karuga <wambui.karugax@gmail.com>, with manual fixups on top:
> 
> @@
> identifier fn, T;
> @@
> 
> fn(...,struct drm_i915_private *T,...) {
> <+...
> (
> -DRM_INFO(
> +drm_info(&T->drm,
> ...)
> |
> -DRM_NOTE(
> +drm_notice(&T->drm,
> ...)
> |
> -DRM_ERROR(
> +drm_err(&T->drm,
> ...)
> |
> -DRM_WARN(
> +drm_warn(&T->drm,
> ...)
> |
> -DRM_DEBUG_DRIVER(
> +drm_dbg(&T->drm,
> ...)
> |
> -DRM_DEBUG_KMS(
> +drm_dbg_kms(&T->drm,
> ...)
> |
> -DRM_DEBUG_ATOMIC(
> +drm_dbg_atomic(&T->drm,
> ...)
> )
> ...+>
> }
> 
> @@
> identifier fn, T;
> @@
> 
> fn(...) {
> ...
> struct drm_i915_private *T = ...;
> <+...
> (
> -DRM_INFO(
> +drm_info(&T->drm,
> ...)
> |
> -DRM_NOTE(
> +drm_notice(&T->drm,
> ...)
> |
> -DRM_ERROR(
> +drm_err(&T->drm,
> ...)
> |
> -DRM_WARN(
> +drm_warn(&T->drm,
> ...)
> |
> -DRM_DEBUG_DRIVER(
> +drm_dbg(&T->drm,
> ...)
> |
> -DRM_DEBUG_KMS(
> +drm_dbg_kms(&T->drm,
> ...)
> |
> -DRM_DEBUG_ATOMIC(
> +drm_dbg_atomic(&T->drm,
> ...)
> )
> ...+>
> }
> 
> Cc: Wambui Karuga <wambui.karugax@gmail.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 26 ++++++++++++++-------
>  1 file changed, 17 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 44f3fd251ca1..b978ddd96578 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -47,6 +47,7 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
>  	struct intel_dp *intel_dp = &intel_mst->primary->dp;
>  	struct intel_connector *connector =
>  		to_intel_connector(conn_state->connector);
> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  	const struct drm_display_mode *adjusted_mode =
>  		&crtc_state->hw.adjusted_mode;
>  	void *port = connector->port;
> @@ -73,7 +74,8 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
>  	}
>  
>  	if (slots < 0) {
> -		DRM_DEBUG_KMS("failed finding vcpi slots:%d\n", slots);
> +		drm_dbg_kms(&i915->drm, "failed finding vcpi slots:%d\n",
> +			    slots);
>  		return slots;
>  	}
>  
> @@ -322,15 +324,17 @@ static void intel_mst_disable_dp(struct intel_encoder *encoder,
>  	struct intel_dp *intel_dp = &intel_dig_port->dp;
>  	struct intel_connector *connector =
>  		to_intel_connector(old_conn_state->connector);
> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  	int ret;
>  
> -	DRM_DEBUG_KMS("active links %d\n", intel_dp->active_mst_links);
> +	drm_dbg_kms(&i915->drm, "active links %d\n",
> +		    intel_dp->active_mst_links);
>  
>  	drm_dp_mst_reset_vcpi_slots(&intel_dp->mst_mgr, connector->port);
>  
>  	ret = drm_dp_update_payload_part1(&intel_dp->mst_mgr);
>  	if (ret) {
> -		DRM_DEBUG_KMS("failed to update payload %d\n", ret);
> +		drm_dbg_kms(&i915->drm, "failed to update payload %d\n", ret);
>  	}
>  	if (old_crtc_state->has_audio)
>  		intel_audio_codec_disable(encoder,
> @@ -371,7 +375,8 @@ static void intel_mst_post_disable_dp(struct intel_encoder *encoder,
>  
>  	if (intel_de_wait_for_set(dev_priv, intel_dp->regs.dp_tp_status,
>  				  DP_TP_STATUS_ACT_SENT, 1))
> -		DRM_ERROR("Timed out waiting for ACT sent when disabling\n");
> +		drm_err(&dev_priv->drm,
> +			"Timed out waiting for ACT sent when disabling\n");
>  	drm_dp_check_act_status(&intel_dp->mst_mgr);
>  
>  	drm_dp_mst_deallocate_vcpi(&intel_dp->mst_mgr, connector->port);
> @@ -405,7 +410,8 @@ static void intel_mst_post_disable_dp(struct intel_encoder *encoder,
>  		intel_dig_port->base.post_disable(&intel_dig_port->base,
>  						  old_crtc_state, NULL);
>  
> -	DRM_DEBUG_KMS("active links %d\n", intel_dp->active_mst_links);
> +	drm_dbg_kms(&dev_priv->drm, "active links %d\n",
> +		    intel_dp->active_mst_links);
>  }
>  
>  static void intel_mst_pre_pll_enable_dp(struct intel_encoder *encoder,
> @@ -445,7 +451,8 @@ static void intel_mst_pre_enable_dp(struct intel_encoder *encoder,
>  		    INTEL_GEN(dev_priv) >= 12 && first_mst_stream &&
>  		    !intel_dp_mst_is_master_trans(pipe_config));
>  
> -	DRM_DEBUG_KMS("active links %d\n", intel_dp->active_mst_links);
> +	drm_dbg_kms(&dev_priv->drm, "active links %d\n",
> +		    intel_dp->active_mst_links);
>  
>  	if (first_mst_stream)
>  		intel_dp_sink_dpms(intel_dp, DRM_MODE_DPMS_ON);
> @@ -461,7 +468,7 @@ static void intel_mst_pre_enable_dp(struct intel_encoder *encoder,
>  				       pipe_config->pbn,
>  				       pipe_config->dp_m_n.tu);
>  	if (!ret)
> -		DRM_ERROR("failed to allocate vcpi\n");
> +		drm_err(&dev_priv->drm, "failed to allocate vcpi\n");
>  
>  	intel_dp->active_mst_links++;
>  	temp = intel_de_read(dev_priv, intel_dp->regs.dp_tp_status);
> @@ -499,11 +506,12 @@ static void intel_mst_enable_dp(struct intel_encoder *encoder,
>  
>  	intel_crtc_vblank_on(pipe_config);
>  
> -	DRM_DEBUG_KMS("active links %d\n", intel_dp->active_mst_links);
> +	drm_dbg_kms(&dev_priv->drm, "active links %d\n",
> +		    intel_dp->active_mst_links);
>  
>  	if (intel_de_wait_for_set(dev_priv, intel_dp->regs.dp_tp_status,
>  				  DP_TP_STATUS_ACT_SENT, 1))
> -		DRM_ERROR("Timed out waiting for ACT sent\n");
> +		drm_err(&dev_priv->drm, "Timed out waiting for ACT sent\n");
>  
>  	drm_dp_check_act_status(&intel_dp->mst_mgr);

I'm wondering whether we should build a set of drm_connector/encoder/bla_to_i915() macros.

Anyway, this is Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

>  
> -- 
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
