Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80AECA85F49
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Apr 2025 15:41:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0355E10EBC4;
	Fri, 11 Apr 2025 13:41:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BY9Oe0J3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90C6B10E0DE
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Apr 2025 13:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744378907; x=1775914907;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=SaOkJg9lu8pJI7aAV3IYF4+Jy0ipn//y43pljIoo72I=;
 b=BY9Oe0J34rnY1dtVSNnH/wzmhb9FEqZMvRyPD2q4s2Bnipo5eDkaXYOS
 YxlcjlkyAP5uPvC8U7IQEjqRA7qZtFy6DU5CRzPnooT9Se1XnPfCM1WPY
 Gz97u7/Kt8aD02tqqbLbONSPS8QRBeJReYLn6Y1HPNYN8cSGo0wEEbBdB
 sFVaaqhUjA9f1+H+pbRAowJymBX8dJZM3CIx8E6CKWsRZzi20DBGIfpq6
 vBHN2L432RP3DpBv68B2Bf+NmT+zWw/AXTqdjnPSr5OnXaanqTBHpgQjT
 cXi/bYbpf50b8pFNuGoVNJnA8tLuejyMeZ7nmzfL5zXW1A+Ml/7ZTbHLL g==;
X-CSE-ConnectionGUID: /QuDEapZQOGUH/TyJ4LQ4Q==
X-CSE-MsgGUID: Nh5jJPqNTKKyrQ0C6+Oc6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11401"; a="45170114"
X-IronPort-AV: E=Sophos;i="6.15,205,1739865600"; d="scan'208";a="45170114"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 06:41:46 -0700
X-CSE-ConnectionGUID: RxpqBTmqQkmLgq/2gU/Kgw==
X-CSE-MsgGUID: uAD9zD1vQiiXqcn1YowzvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,205,1739865600"; d="scan'208";a="134355276"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 11 Apr 2025 06:41:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Apr 2025 16:41:43 +0300
Date: Fri, 11 Apr 2025 16:41:43 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/dpio: have chv_data_lane_soft_reset() get/put
 dpio internally
Message-ID: <Z_kcF7u9DO7_FIiP@intel.com>
References: <20250411102715.613082-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250411102715.613082-1-jani.nikula@intel.com>
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

On Fri, Apr 11, 2025 at 01:27:15PM +0300, Jani Nikula wrote:
> Have chv_data_lane_soft_reset() get/put dpio internally, and use a
> locked version of it within intel_dpio_phy.c. This drops the dependency
> on vlv sideband from g4x_dp.c and g4x_hdmi.c, and makes that a DPIO PHY
> implementation detail.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c         |  7 -------
>  drivers/gpu/drm/i915/display/g4x_hdmi.c       |  8 -------
>  drivers/gpu/drm/i915/display/intel_dpio_phy.c | 21 ++++++++++++++-----
>  3 files changed, 16 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
> index b39aae9165df..18e51799d2a6 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -28,7 +28,6 @@
>  #include "intel_hotplug.h"
>  #include "intel_pch_display.h"
>  #include "intel_pps.h"
> -#include "vlv_sideband.h"
>  
>  static const struct dpll g4x_dpll[] = {
>  	{ .dot = 162000, .p1 = 2, .p2 = 10, .n = 2, .m1 = 23, .m2 = 8, },
> @@ -581,16 +580,10 @@ static void chv_post_disable_dp(struct intel_atomic_state *state,
>  				const struct intel_crtc_state *old_crtc_state,
>  				const struct drm_connector_state *old_conn_state)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> -
>  	intel_dp_link_down(encoder, old_crtc_state);
>  
> -	vlv_dpio_get(dev_priv);
> -
>  	/* Assert data lane reset */
>  	chv_data_lane_soft_reset(encoder, old_crtc_state, true);
> -
> -	vlv_dpio_put(dev_priv);
>  }
>  
>  static void
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> index 3dc2c59a3df0..21b5db2fa203 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -22,7 +22,6 @@
>  #include "intel_hdmi.h"
>  #include "intel_hotplug.h"
>  #include "intel_sdvo.h"
> -#include "vlv_sideband.h"
>  
>  static void intel_hdmi_prepare(struct intel_encoder *encoder,
>  			       const struct intel_crtc_state *crtc_state)
> @@ -539,15 +538,8 @@ static void chv_hdmi_post_disable(struct intel_atomic_state *state,
>  				  const struct intel_crtc_state *old_crtc_state,
>  				  const struct drm_connector_state *old_conn_state)
>  {
> -	struct intel_display *display = to_intel_display(encoder);
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
> -
> -	vlv_dpio_get(dev_priv);
> -
>  	/* Assert data lane reset */
>  	chv_data_lane_soft_reset(encoder, old_crtc_state, true);
> -
> -	vlv_dpio_put(dev_priv);
>  }
>  
>  static void chv_hdmi_pre_enable(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> index 429f89543789..1e1af7150723 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> @@ -808,9 +808,9 @@ void chv_set_phy_signal_level(struct intel_encoder *encoder,
>  	vlv_dpio_put(dev_priv);
>  }
>  
> -void chv_data_lane_soft_reset(struct intel_encoder *encoder,
> -			      const struct intel_crtc_state *crtc_state,
> -			      bool reset)
> +static void __chv_data_lane_soft_reset(struct intel_encoder *encoder,
> +				       const struct intel_crtc_state *crtc_state,
> +				       bool reset)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> @@ -853,6 +853,17 @@ void chv_data_lane_soft_reset(struct intel_encoder *encoder,
>  	}
>  }
>  
> +void chv_data_lane_soft_reset(struct intel_encoder *encoder,
> +			      const struct intel_crtc_state *crtc_state,
> +			      bool reset)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +
> +	vlv_dpio_get(i915);
> +	__chv_data_lane_soft_reset(encoder, crtc_state, reset);
> +	vlv_dpio_put(i915);
> +}
> +
>  void chv_phy_pre_pll_enable(struct intel_encoder *encoder,
>  			    const struct intel_crtc_state *crtc_state)
>  {
> @@ -880,7 +891,7 @@ void chv_phy_pre_pll_enable(struct intel_encoder *encoder,
>  	vlv_dpio_get(dev_priv);
>  
>  	/* Assert data lane reset */
> -	chv_data_lane_soft_reset(encoder, crtc_state, true);
> +	__chv_data_lane_soft_reset(encoder, crtc_state, true);
>  
>  	/* program left/right clock distribution */
>  	if (pipe != PIPE_B) {
> @@ -1008,7 +1019,7 @@ void chv_phy_pre_encoder_enable(struct intel_encoder *encoder,
>  	}
>  
>  	/* Deassert data lane reset */
> -	chv_data_lane_soft_reset(encoder, crtc_state, false);
> +	__chv_data_lane_soft_reset(encoder, crtc_state, false);
>  
>  	vlv_dpio_put(dev_priv);
>  }
> -- 
> 2.39.5

-- 
Ville Syrjälä
Intel
