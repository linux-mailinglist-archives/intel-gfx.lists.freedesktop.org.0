Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4F5786E36
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 13:45:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27AEE10E535;
	Thu, 24 Aug 2023 11:45:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D06B210E539
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 11:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692877536; x=1724413536;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=yQziUz0E4tJNsKm+YCQVP8vjr78hqLKtdoLKSVyNJV8=;
 b=DIUROCDNyq79iJRbZC9wJ1+HpkYLtzH3zVjKY/vAQpoqiMC0K7RQMB8R
 FEYXJNxfhAM73Msmn4cZYXODcanE9zclah/WLaSJo/++Zw3OVDwHboU9l
 YGvsMICXz9vlZfmjcc0g1pbPQuyCQts9Cr7Yjt4/1jN5BkNVNtk2IZGm+
 zyngZWxoBHTANijuPU6nJdyI0mXSLp7pVodi731JMtvkzTsyxJISPpUZA
 azr71hoY9/WWOdpirgzPbzYp734XbF5bKLLoM1QTJoG1n3CCUp5jkORkN
 1jIUHuAR63avILAgFeyq3SUy31sNvA6V2OI5Y2nq05fg65H3sS6Ws2tuq A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="405422429"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="405422429"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 04:45:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="740149586"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="740149586"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.68])
 by fmsmga007.fm.intel.com with SMTP; 24 Aug 2023 04:45:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Aug 2023 14:45:33 +0300
Date: Thu, 24 Aug 2023 14:45:33 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <navaremanasi@chromium.org>
Message-ID: <ZOdC3Wq4_oD4W90H@intel.com>
References: <20230823235159.2140276-1-navaremanasi@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230823235159.2140276-1-navaremanasi@chromium.org>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/vrr: Compute VRR min/max
 based on highest clock mode for DRRS panel
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 23, 2023 at 11:51:59PM +0000, Manasi Navare wrote:
> In case of a DRRS panel, there is a preferred panel mode and there is
> a downclock mode with lower pixel clock. But the Vtotal for both remains
> the same. This means even in downclocking mode the VRR Vtotal min/max
> should remain the same.
> So in this case always use the highest clock mode to compute VRR
> parameters.

NAK. The VRR parameters must be calculated based on the actual timings
used. Trying to make seamless DRRS and VRR coexist nicely might be a
doomed idea. Not 100% sure though since I haven't really thought
through all the combinations.

> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Manasi Navare <navaremanasi@chromium.org>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c  | 4 ++--
>  drivers/gpu/drm/i915/display/intel_dp.h  | 2 ++
>  drivers/gpu/drm/i915/display/intel_vrr.c | 7 ++++---
>  3 files changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 7067ee3a4bd3..c572a018ce57 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1509,8 +1509,8 @@ static bool has_seamless_m_n(struct intel_connector *connector)
>  		intel_panel_drrs_type(connector) == DRRS_TYPE_SEAMLESS;
>  }
>  
> -static int intel_dp_mode_clock(const struct intel_crtc_state *crtc_state,
> -			       const struct drm_connector_state *conn_state)
> +int intel_dp_mode_clock(const struct intel_crtc_state *crtc_state,
> +			const struct drm_connector_state *conn_state)
>  {
>  	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>  	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 788a577ebe16..3c9866356359 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -119,6 +119,8 @@ u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
>  				bool bigjoiner);
>  bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
>  			     int hdisplay, int clock);
> +int intel_dp_mode_clock(const struct intel_crtc_state *crtc_state,
> +			const struct drm_connector_state *conn_state);
>  
>  static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 88e4759b538b..18a4e0e4e696 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -8,6 +8,7 @@
>  #include "i915_reg.h"
>  #include "intel_de.h"
>  #include "intel_display_types.h"
> +#include "intel_dp.h"
>  #include "intel_vrr.h"
>  
>  bool intel_vrr_is_capable(struct intel_connector *connector)
> @@ -106,7 +107,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  		to_intel_connector(conn_state->connector);
>  	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>  	const struct drm_display_info *info = &connector->base.display_info;
> -	int vmin, vmax;
> +	int vmin, vmax, clock = intel_dp_mode_clock(crtc_state, conn_state);
>  
>  	if (!intel_vrr_is_capable(connector))
>  		return;
> @@ -114,9 +115,9 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
>  		return;
>  
> -	vmin = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
> +	vmin = DIV_ROUND_UP(clock * 1000,
>  			    adjusted_mode->crtc_htotal * info->monitor_range.max_vfreq);
> -	vmax = adjusted_mode->crtc_clock * 1000 /
> +	vmax = clock * 1000 /
>  		(adjusted_mode->crtc_htotal * info->monitor_range.min_vfreq);
>  
>  	vmin = max_t(int, vmin, adjusted_mode->crtc_vtotal);
> -- 
> 2.42.0.rc1.204.g551eb34607-goog

-- 
Ville Syrjälä
Intel
