Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAAC99ECD78
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 14:42:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3931910E3EA;
	Wed, 11 Dec 2024 13:42:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BycPLqOp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1235310E3EA
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 13:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733924572; x=1765460572;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+iZJqhxYkn4wPW9chSTjb/Thk1T8ybSTUK3TCO7H4hw=;
 b=BycPLqOpAKZNsQUlOiAl59cynYA6mhEId5WgqrAb358X+JWNJkxGlV0R
 kwZZs2p+rLE+tc+lRT48sjztANycktVSr+vJYmaLKkhYkXrUTJGJZCftE
 6jh4WNNoFRRrk/DEQPOOaCb/SA421Jk0XaIJ+hVQaWd1WgLwnjqUFZypR
 ScqOQ/VPJUuLsnFo9UYu30a35VZEcka9UWTDK+NT0ZpIfNxPZf/6xAXSv
 4oJIudYJH4QqoD5tsEt5GIJha4xFeRgg9wSl2eiYfMhhTI4rkf0AnL3x9
 AsP32HsrUHpUx5pgh3VNYyiT9oBmVUc8J9zSduM2MfMuajG5TpRjQOSnc Q==;
X-CSE-ConnectionGUID: CR0uriy+SfSV0Y4BICwUDw==
X-CSE-MsgGUID: bGl3GCpKQ26GD8FaRtv++A==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="38233722"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="38233722"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 05:42:52 -0800
X-CSE-ConnectionGUID: cf7MgRTXRiC5p+9gE7K32w==
X-CSE-MsgGUID: bD7maUk+TtaFzlTHrYG7mQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,225,1728975600"; d="scan'208";a="96000044"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Dec 2024 05:42:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Dec 2024 15:42:48 +0200
Date: Wed, 11 Dec 2024 15:42:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/i915/dp: move g4x_dp_set_clock() call to
 g4x_dp_compute_config()
Message-ID: <Z1mW2C4f3szIVRjN@intel.com>
References: <20241211125431.680227-1-jani.nikula@intel.com>
 <20241211125431.680227-2-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241211125431.680227-2-jani.nikula@intel.com>
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

On Wed, Dec 11, 2024 at 02:54:31PM +0200, Jani Nikula wrote:
> It does not look like anything in intel_dp_compute_config() after the
> g4x_dp_set_clock() call depends on the changes it makes, namely setting
> dpll and clock_set in crtc_state.

Hmm, yeah I was a bit worried about DRRS and such, but as long
as don't mangle the clock itself/etc. then this looks fine.

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> Move the call one level higher to
> g4x_dp_compute_config() to reduce the clutter in
> intel_dp_compute_config().
> 
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c   | 13 ++++++++++---
>  drivers/gpu/drm/i915/display/g4x_dp.h   |  6 ------
>  drivers/gpu/drm/i915/display/intel_dp.c |  3 ---
>  3 files changed, 10 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
> index 9ac894a7411f..e06405a3b82d 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -55,8 +55,8 @@ const struct dpll *vlv_get_dpll(struct drm_i915_private *i915)
>  	return IS_CHERRYVIEW(i915) ? &chv_dpll[0] : &vlv_dpll[0];
>  }
>  
> -void g4x_dp_set_clock(struct intel_encoder *encoder,
> -		      struct intel_crtc_state *pipe_config)
> +static void g4x_dp_set_clock(struct intel_encoder *encoder,
> +			     struct intel_crtc_state *pipe_config)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	const struct dpll *divisor = NULL;
> @@ -1228,11 +1228,18 @@ static int g4x_dp_compute_config(struct intel_encoder *encoder,
>  				 struct drm_connector_state *conn_state)
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	int ret;
>  
>  	if (HAS_PCH_SPLIT(i915) && encoder->port != PORT_A)
>  		crtc_state->has_pch_encoder = true;
>  
> -	return intel_dp_compute_config(encoder, crtc_state, conn_state);
> +	ret = intel_dp_compute_config(encoder, crtc_state, conn_state);
> +	if (ret)
> +		return ret;
> +
> +	g4x_dp_set_clock(encoder, crtc_state);
> +
> +	return 0;
>  }
>  
>  static void g4x_dp_suspend_complete(struct intel_encoder *encoder)
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.h b/drivers/gpu/drm/i915/display/g4x_dp.h
> index c75e64ae79b7..839a251dc069 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.h
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.h
> @@ -19,8 +19,6 @@ struct intel_encoder;
>  
>  #ifdef I915
>  const struct dpll *vlv_get_dpll(struct drm_i915_private *i915);
> -void g4x_dp_set_clock(struct intel_encoder *encoder,
> -		      struct intel_crtc_state *pipe_config);
>  bool g4x_dp_port_enabled(struct drm_i915_private *dev_priv,
>  			 i915_reg_t dp_reg, enum port port,
>  			 enum pipe *pipe);
> @@ -31,10 +29,6 @@ static inline const struct dpll *vlv_get_dpll(struct drm_i915_private *i915)
>  {
>  	return NULL;
>  }
> -static inline void g4x_dp_set_clock(struct intel_encoder *encoder,
> -				    struct intel_crtc_state *pipe_config)
> -{
> -}
>  static inline bool g4x_dp_port_enabled(struct drm_i915_private *dev_priv,
>  				       i915_reg_t dp_reg, int port,
>  				       enum pipe *pipe)
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index adc51567ec17..f8100c4f4d20 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3172,9 +3172,6 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  	if (pipe_config->splitter.enable)
>  		pipe_config->dp_m_n.data_m *= pipe_config->splitter.link_count;
>  
> -	if (!HAS_DDI(dev_priv))
> -		g4x_dp_set_clock(encoder, pipe_config);
> -
>  	intel_vrr_compute_config(pipe_config, conn_state);
>  	intel_dp_compute_as_sdp(intel_dp, pipe_config);
>  	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
> -- 
> 2.39.5

-- 
Ville Syrjälä
Intel
