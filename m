Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F2C9D644E
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2024 19:49:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CF5310E8A6;
	Fri, 22 Nov 2024 18:49:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IHtkgMq7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C34A210E300;
 Fri, 22 Nov 2024 18:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732301349; x=1763837349;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=e2/XP1mSahEYmc2jYYg1IB+koUSxtx1SgHTdmaBwphQ=;
 b=IHtkgMq7ioFCR/dia1/+2TnnCCNPUH/DG4IQWInWerjL1Xw5lkMlhm9B
 tq+/KdyNWSegykjE812ZL8f6iEiuYWizJKTVqivk3B6HiD8xsg0Hduh0i
 KwSFiW6mPrPPPvGWQ9aXnhYZXGiaAldWeCmZiWas4awlaZivrnvRo/zGU
 R9jxu0lpk3GrKWStQZtinnqEk7xple1u7h7dyt5BEoejHXJ0OusT1G4Km
 ykY6Hg7Z+2W7XVW2VnxuF+bGCtw9VMldy3yGOfOpa0gG7e2JKlbACQM40
 Skl2CLrTp7J2YYL23bn7u0JuCRMyn8oxVb+/nwyPQosqw3RL/yxxHfzwa A==;
X-CSE-ConnectionGUID: QZd7SBZhQUmrx4VlTHNRvQ==
X-CSE-MsgGUID: dSoNTn4qRwGE4OR4okKOiQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11264"; a="32209782"
X-IronPort-AV: E=Sophos;i="6.12,176,1728975600"; d="scan'208";a="32209782"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2024 10:49:08 -0800
X-CSE-ConnectionGUID: 6IHqsfeCQRq/AgYYS/kX4g==
X-CSE-MsgGUID: 0YTo26vQQF2T/0vV+7odGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,176,1728975600"; d="scan'208";a="90829573"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 22 Nov 2024 10:48:57 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 22 Nov 2024 20:48:56 +0200
Date: Fri, 22 Nov 2024 20:48:56 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v5 2/6] drm/i915/display: Add gmch_panel_fitting in all
 encoders
Message-ID: <Z0DSGC5FF0Wdbxyh@intel.com>
References: <20241120053838.3794419-1-nemesa.garg@intel.com>
 <20241120053838.3794419-3-nemesa.garg@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241120053838.3794419-3-nemesa.garg@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Nov 20, 2024 at 11:08:34AM +0530, Nemesa Garg wrote:
> For all encoders add gmch_panel_fitting and remove
> pch_panel_fitting as it will be called from pipe_config
> after joiner calculation is done.
> 
> -v5: Nuke GMCH check from few places [Ville]
> 
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c    |  4 ----
>  drivers/gpu/drm/i915/display/intel_dp.c   |  6 +++---
>  drivers/gpu/drm/i915/display/intel_hdmi.c |  6 ------
>  drivers/gpu/drm/i915/display/intel_lvds.c | 10 ++++++----
>  drivers/gpu/drm/i915/display/intel_pfit.c | 15 ++++++++-------
>  drivers/gpu/drm/i915/display/intel_pfit.h |  6 ++++--
>  drivers/gpu/drm/i915/display/vlv_dsi.c    |  9 ++++++---
>  7 files changed, 27 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 74ab3d1a1622..30c2393d9f30 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1651,10 +1651,6 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
>  	if (ret)
>  		return ret;
>  
> -	ret = intel_panel_fitting(pipe_config, conn_state);
> -	if (ret)
> -		return ret;
> -

I don't you adding the pch_panel_fitting() call anywhere,
so this patch looks completely broken on ilk+.

>  	adjusted_mode->flags = 0;
>  
>  	/* Dual link goes to trancoder DSI'0' */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 053a9a4182e7..0b1ff6291e74 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3090,6 +3090,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  			struct intel_crtc_state *pipe_config,
>  			struct drm_connector_state *conn_state)
>  {
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_atomic_state *state = to_intel_atomic_state(conn_state->state);
>  	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
> @@ -3131,9 +3132,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  	if (ret)
>  		return ret;
>  
> -	if ((intel_dp_is_edp(intel_dp) && fixed_mode) ||
> -	    pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
> -		ret = intel_panel_fitting(pipe_config, conn_state);
> +	if (HAS_GMCH(display)) {
> +		ret = intel_gmch_panel_fitting(pipe_config, conn_state);
>  		if (ret)
>  			return ret;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 23c270a8c4aa..20fb1bd44b4f 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2374,12 +2374,6 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
>  		return ret;
>  	}
>  
> -	if (intel_hdmi_is_ycbcr420(pipe_config)) {
> -		ret = intel_panel_fitting(pipe_config, conn_state);
> -		if (ret)
> -			return ret;
> -	}
> -
>  	pipe_config->limited_color_range =
>  		intel_hdmi_limited_color_range(pipe_config, conn_state);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
> index 6d7637ad980a..92f0b7b76cc7 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -416,6 +416,7 @@ static int intel_lvds_compute_config(struct intel_encoder *encoder,
>  				     struct intel_crtc_state *crtc_state,
>  				     struct drm_connector_state *conn_state)
>  {
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
>  	struct intel_connector *connector = lvds_encoder->attached_connector;
> @@ -465,10 +466,11 @@ static int intel_lvds_compute_config(struct intel_encoder *encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
>  
> -	ret = intel_panel_fitting(crtc_state, conn_state);
> -	if (ret)
> -		return ret;
> -
> +	if (HAS_GMCH(display)) {
> +		ret = intel_gmch_panel_fitting(crtc_state, conn_state);
> +		if (ret)
> +			return ret;
> +	}
>  	/*
>  	 * XXX: It would be nice to support lower refresh rates on the
>  	 * panels to reduce power consumption, and perhaps match the
> diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
> index e214e19f8174..fb6387b537b7 100644
> --- a/drivers/gpu/drm/i915/display/intel_pfit.c
> +++ b/drivers/gpu/drm/i915/display/intel_pfit.c
> @@ -545,13 +545,14 @@ static int gmch_panel_fitting(struct intel_crtc_state *crtc_state,
>  	return intel_gmch_pfit_check_timings(crtc_state);
>  }
>  
> -int intel_panel_fitting(struct intel_crtc_state *crtc_state,
> -			const struct drm_connector_state *conn_state)
> +int intel_gmch_panel_fitting(struct intel_crtc_state *crtc_state,
> +			     const struct drm_connector_state *conn_state)
>  {
> -	struct intel_display *display = to_intel_display(crtc_state);
> +	return gmch_panel_fitting(crtc_state, conn_state);
> +}
>  
> -	if (HAS_GMCH(display))
> -		return gmch_panel_fitting(crtc_state, conn_state);
> -	else
> -		return pch_panel_fitting(crtc_state, conn_state);
> +int intel_pch_panel_fitting(struct intel_crtc_state *crtc_state,
> +			    const struct drm_connector_state *conn_state)
> +{
> +	return pch_panel_fitting(crtc_state, conn_state);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_pfit.h b/drivers/gpu/drm/i915/display/intel_pfit.h
> index add8d78de2c9..1365ab86c89c 100644
> --- a/drivers/gpu/drm/i915/display/intel_pfit.h
> +++ b/drivers/gpu/drm/i915/display/intel_pfit.h
> @@ -9,7 +9,9 @@
>  struct drm_connector_state;
>  struct intel_crtc_state;
>  
> -int intel_panel_fitting(struct intel_crtc_state *crtc_state,
> -			const struct drm_connector_state *conn_state);
> +int intel_gmch_panel_fitting(struct intel_crtc_state *crtc_state,
> +			     const struct drm_connector_state *conn_state);
> +int intel_pch_panel_fitting(struct intel_crtc_state *crtc_state,
> +			    const struct drm_connector_state *conn_state);
>  
>  #endif /* __INTEL_PFIT_H__ */
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> index d49e9b3c7627..6de10f5722b4 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -269,6 +269,7 @@ static int intel_dsi_compute_config(struct intel_encoder *encoder,
>  				    struct intel_crtc_state *pipe_config,
>  				    struct drm_connector_state *conn_state)
>  {
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
>  	struct intel_connector *intel_connector = intel_dsi->attached_connector;
> @@ -283,9 +284,11 @@ static int intel_dsi_compute_config(struct intel_encoder *encoder,
>  	if (ret)
>  		return ret;
>  
> -	ret = intel_panel_fitting(pipe_config, conn_state);
> -	if (ret)
> -		return ret;
> +	if (HAS_GMCH(display)) {
> +		ret = intel_gmch_panel_fitting(pipe_config, conn_state);
> +		if (ret)
> +			return ret;
> +	}
>  
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
> -- 
> 2.25.1

-- 
Ville Syrj�l�
Intel
