Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A033495F03F
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 13:58:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9564010E199;
	Mon, 26 Aug 2024 11:58:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OKiYoWox";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52DB010E199;
 Mon, 26 Aug 2024 11:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724673499; x=1756209499;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=BaYrpwabEz1/36/u5deXN/jM/l8uHF2zQnr3KJnrKcQ=;
 b=OKiYoWoxIzqUT2PoLfnx7vEiFVuOO6kuWtV/eYHU8079AHh9Cqny0Gpq
 Vw/VFF+sL+n6ShVzRz3hh+59AgoRIr9RxObhehzY9nGr/OC55ADi/52NM
 NxwDGCMVZHUVXUcW4bjEqD3eH/9sjMLky6YvJStMnBlSk4pHJ8e/P8SP/
 Hd3Kogl+9CdRwwwCnBLRWEdft1fWPPEvh7k0td+BrEIkIQRRKqptHEvm3
 ov6zwRtOjcJngBj67F7jb7xJmIcJSz/7BmzQiTvmoIx3xMedZU6x78Xbe
 vM5WhlXDmWDtSo6gS0hUPJQqHa+oNZ6lOeeCwQ574DHz65GGqpyP7+zQM g==;
X-CSE-ConnectionGUID: AW+3QkH9Qk2GSETu/jHKaQ==
X-CSE-MsgGUID: aYdzno9RRLOMs1WB5RyhdA==
X-IronPort-AV: E=McAfee;i="6700,10204,11175"; a="33711156"
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="33711156"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 04:58:19 -0700
X-CSE-ConnectionGUID: 4d5Pf5l5QfqUlLEMP899Ew==
X-CSE-MsgGUID: +4USCB8FTT+TyBr/b0s06Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="85670649"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.113])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 04:58:16 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, ville.syrjala@linux.intel.com
Subject: Re: [PATCH 04/12] drm/i915/icl_dsi: Move helpers to configure dsi
 dual link to intel_dss
In-Reply-To: <20240826111527.1113622-5-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240826111527.1113622-1-ankit.k.nautiyal@intel.com>
 <20240826111527.1113622-5-ankit.k.nautiyal@intel.com>
Date: Mon, 26 Aug 2024 14:58:03 +0300
Message-ID: <87wmk31ook.fsf@intel.com>
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

On Mon, 26 Aug 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Move the function to configure dss_ctl for dual_link dsi to intel_dss
> files. While at it, use struct intel_display wherever possible.

Also here, I prefer splitting code movement from other changes. It's
just so much easier to review, and so much easier to figure out what
went wrong if a bisection ever lands here.

>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c   | 55 ++----------------------
>  drivers/gpu/drm/i915/display/intel_dss.c | 51 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dss.h |  3 ++
>  3 files changed, 58 insertions(+), 51 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 5ad5011e1fee..ab59638a8c6c 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -44,7 +44,7 @@
>  #include "intel_de.h"
>  #include "intel_dsi.h"
>  #include "intel_dsi_vbt.h"
> -#include "intel_dss_regs.h"
> +#include "intel_dss.h"
>  #include "intel_panel.h"
>  #include "intel_vdsc.h"
>  #include "skl_scaler.h"
> @@ -274,55 +274,6 @@ static void dsi_program_swing_and_deemphasis(struct intel_encoder *encoder)
>  	}
>  }
>  
> -static void configure_dual_link_mode(struct intel_encoder *encoder,
> -				     const struct intel_crtc_state *pipe_config)
> -{
> -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> -	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> -	i915_reg_t dss_ctl1_reg, dss_ctl2_reg;
> -	u32 dss_ctl1;
> -
> -	/* FIXME: Move all DSS handling to intel_vdsc.c */
> -	if (DISPLAY_VER(dev_priv) >= 12) {
> -		struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
> -
> -		dss_ctl1_reg = ICL_PIPE_DSS_CTL1(crtc->pipe);
> -		dss_ctl2_reg = ICL_PIPE_DSS_CTL2(crtc->pipe);
> -	} else {
> -		dss_ctl1_reg = DSS_CTL1;
> -		dss_ctl2_reg = DSS_CTL2;
> -	}
> -
> -	dss_ctl1 = intel_de_read(dev_priv, dss_ctl1_reg);
> -	dss_ctl1 |= SPLITTER_ENABLE;
> -	dss_ctl1 &= ~OVERLAP_PIXELS_MASK;
> -	dss_ctl1 |= OVERLAP_PIXELS(intel_dsi->pixel_overlap);
> -
> -	if (intel_dsi->dual_link == DSI_DUAL_LINK_FRONT_BACK) {
> -		const struct drm_display_mode *adjusted_mode =
> -					&pipe_config->hw.adjusted_mode;
> -		u16 hactive = adjusted_mode->crtc_hdisplay;
> -		u16 dl_buffer_depth;
> -
> -		dss_ctl1 &= ~DUAL_LINK_MODE_INTERLEAVE;
> -		dl_buffer_depth = hactive / 2 + intel_dsi->pixel_overlap;
> -
> -		if (dl_buffer_depth > MAX_DL_BUFFER_TARGET_DEPTH)
> -			drm_err(&dev_priv->drm,
> -				"DL buffer depth exceed max value\n");
> -
> -		dss_ctl1 &= ~LEFT_DL_BUF_TARGET_DEPTH_MASK;
> -		dss_ctl1 |= LEFT_DL_BUF_TARGET_DEPTH(dl_buffer_depth);
> -		intel_de_rmw(dev_priv, dss_ctl2_reg, RIGHT_DL_BUF_TARGET_DEPTH_MASK,
> -			     RIGHT_DL_BUF_TARGET_DEPTH(dl_buffer_depth));
> -	} else {
> -		/* Interleave */
> -		dss_ctl1 |= DUAL_LINK_MODE_INTERLEAVE;
> -	}
> -
> -	intel_de_write(dev_priv, dss_ctl1_reg, dss_ctl1);
> -}
> -
>  /* aka DSI 8X clock */
>  static int afe_clk(struct intel_encoder *encoder,
>  		   const struct intel_crtc_state *crtc_state)
> @@ -791,7 +742,9 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
>  		}
>  
>  		/* configure stream splitting */
> -		configure_dual_link_mode(encoder, pipe_config);
> +		intel_dss_configure_dsi_dual_link_mode(encoder, pipe_config,
> +						       intel_dsi->dual_link,
> +						       intel_dsi->pixel_overlap);
>  	}
>  
>  	for_each_dsi_port(port, intel_dsi->ports) {
> diff --git a/drivers/gpu/drm/i915/display/intel_dss.c b/drivers/gpu/drm/i915/display/intel_dss.c
> index 9cb89fe656cb..f44dcac84aa4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dss.c
> +++ b/drivers/gpu/drm/i915/display/intel_dss.c
> @@ -7,6 +7,7 @@
>  #include "i915_reg_defs.h"
>  #include "intel_de.h"
>  #include "intel_display_types.h"
> +#include "intel_dsi.h"
>  #include "intel_dss.h"
>  #include "intel_dss_regs.h"
>  
> @@ -85,3 +86,53 @@ void intel_dss_configure_mso(const struct intel_crtc_state *crtc_state)
>  		     SPLITTER_ENABLE | SPLITTER_CONFIGURATION_MASK |
>  		     OVERLAP_PIXELS_MASK, dss1);
>  }
> +
> +void intel_dss_configure_dsi_dual_link_mode(struct intel_encoder *encoder,
> +					    const struct intel_crtc_state *pipe_config,
> +					    u8 dual_link,
> +					    u8 pixel_overlap)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +	i915_reg_t dss_ctl1_reg, dss_ctl2_reg;
> +	u32 dss_ctl1;
> +
> +	if (DISPLAY_VER(display) >= 12) {
> +		struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
> +
> +		dss_ctl1_reg = ICL_PIPE_DSS_CTL1(crtc->pipe);
> +		dss_ctl2_reg = ICL_PIPE_DSS_CTL2(crtc->pipe);
> +	} else {
> +		dss_ctl1_reg = DSS_CTL1;
> +		dss_ctl2_reg = DSS_CTL2;
> +	}
> +
> +	dss_ctl1 = intel_de_read(display, dss_ctl1_reg);
> +	dss_ctl1 |= SPLITTER_ENABLE;
> +	dss_ctl1 &= ~OVERLAP_PIXELS_MASK;
> +	dss_ctl1 |= OVERLAP_PIXELS(pixel_overlap);
> +
> +	if (dual_link == DSI_DUAL_LINK_FRONT_BACK) {
> +		struct drm_i915_private *i915 = to_i915(display->drm);

You don't need that.

> +		const struct drm_display_mode *adjusted_mode =
> +					&pipe_config->hw.adjusted_mode;
> +		u16 hactive = adjusted_mode->crtc_hdisplay;
> +		u16 dl_buffer_depth;
> +
> +		dss_ctl1 &= ~DUAL_LINK_MODE_INTERLEAVE;
> +		dl_buffer_depth = hactive / 2 + pixel_overlap;
> +
> +		if (dl_buffer_depth > MAX_DL_BUFFER_TARGET_DEPTH)
> +			drm_err(&i915->drm,

display->drm

> +				"DL buffer depth exceed max value\n");
> +
> +		dss_ctl1 &= ~LEFT_DL_BUF_TARGET_DEPTH_MASK;
> +		dss_ctl1 |= LEFT_DL_BUF_TARGET_DEPTH(dl_buffer_depth);
> +		intel_de_rmw(display, dss_ctl2_reg, RIGHT_DL_BUF_TARGET_DEPTH_MASK,
> +			     RIGHT_DL_BUF_TARGET_DEPTH(dl_buffer_depth));
> +	} else {
> +		/* Interleave */
> +		dss_ctl1 |= DUAL_LINK_MODE_INTERLEAVE;
> +	}
> +
> +	intel_de_write(display, dss_ctl1_reg, dss_ctl1);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_dss.h b/drivers/gpu/drm/i915/display/intel_dss.h
> index 0571ee2a19f9..0c5d652d46f5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dss.h
> +++ b/drivers/gpu/drm/i915/display/intel_dss.h
> @@ -16,6 +16,9 @@ u8 intel_dss_splitter_pipe_mask(struct intel_display *display);
>  void intel_dss_get_mso_config(struct intel_encoder *encoder,
>  			      struct intel_crtc_state *pipe_config);
>  void intel_dss_configure_mso(const struct intel_crtc_state *crtc_state);
> +void intel_dss_configure_dsi_dual_link_mode(struct intel_encoder *encoder,
> +					    const struct intel_crtc_state *pipe_config,
> +					    u8 dual_link, u8 pixel_overlap);

Nitpick, I think I'd name this intel_dss_dsi_dual_link_mode_configure()
or something.

>  
>  #endif /* __INTEL_DSS_H__ */

-- 
Jani Nikula, Intel
