Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC2B7EF5ED
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 17:12:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C44A589CE3;
	Fri, 17 Nov 2023 16:12:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3577389CE3
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 16:12:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700237574; x=1731773574;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=l1p42MXnZDCf92jlsYyl3JpMCpEodfubme3Wl2btToM=;
 b=coVvHLqvSqCeWVVeLvAA+6GbBuqUYK4x5ZpcoWNDYUP/n3zGKJ9WkD+w
 8T7CgXpeVlj2NrOEfbb+Uk1XnoHJc1y02QkFPMHXFMA4AaU8BHJTc89jc
 SL8CPCc5n04skM3uxFFIGeuFec9yXmGPkA3Rfk53ioR/EldfRVgZY6JYu
 vi4GljBAw0xNGhdBa+zoJPnFJ17wr/WJxbRAVO/KtJBpkPXEK045uCaO1
 /rrwVNTlybXX+fHw6Gg9qPHd0vSHnvsUgMSZcG6k7Rnoln8kqgcupD7wG
 YwHiZ5ShxV9p1RZEMRJXZnWHvcvhj9YZ9Nb5nXlwjzPOVSt9T5HffdE9F Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="477537401"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="477537401"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 08:12:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="759218674"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="759218674"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 17 Nov 2023 08:12:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Nov 2023 18:12:50 +0200
Date: Fri, 17 Nov 2023 18:12:50 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <ZVeRAg61GMAIjy8d@intel.com>
References: <20231117100227.609261-1-jouni.hogander@intel.com>
 <20231117100227.609261-2-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231117100227.609261-2-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/psr: Move plane sel fetch
 configuration into plane source files
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

On Fri, Nov 17, 2023 at 12:02:26PM +0200, Jouni Högander wrote:
> Currently selective fetch configuration for planes is implemented in psr
> code. More suitable place for this code is where everything else is
> configured for planes -> move it into skl_universal_plane.c and
> intel_cursor.c. This also allows us to drop hooks for cursor handling.
> 
> v2: Removed setting sel_fetch_area->y1/y2 as -1
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cursor.c   | 31 +++++++-
>  drivers/gpu/drm/i915/display/intel_psr.c      | 75 -------------------
>  drivers/gpu/drm/i915/display/intel_psr.h      | 10 ---
>  .../drm/i915/display/skl_universal_plane.c    | 75 ++++++++++++++++++-
>  4 files changed, 101 insertions(+), 90 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> index b342fad180ca..c089dd6f9781 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -21,6 +21,7 @@
>  #include "intel_fb_pin.h"
>  #include "intel_frontbuffer.h"
>  #include "intel_psr.h"
> +#include "intel_psr_regs.h"
>  #include "skl_watermark.h"
>  
>  /* Cursor formats */
> @@ -484,6 +485,32 @@ static int i9xx_check_cursor(struct intel_crtc_state *crtc_state,
>  	return 0;
>  }
>  
> +static void i9xx_cursor_update_sel_fetch_arm(struct intel_plane *plane,
> +					     const struct intel_crtc_state *crtc_state,
> +					     const struct intel_plane_state *plane_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(plane->base.dev);
> +	enum pipe pipe = plane->pipe;
> +
> +	if (!crtc_state->enable_psr2_sel_fetch)
> +		return;
> +
> +	intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id),
> +			  plane_state->ctl);
> +}
> +
> +static void i9xx_cursor_disable_sel_fetch_arm(struct intel_plane *plane,
> +					    const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(plane->base.dev);
> +	enum pipe pipe = plane->pipe;
> +
> +	if (!crtc_state->enable_psr2_sel_fetch)
> +		return;

We should probably replace these with HAS_SEL_FETCH we're not
dependent on the old state as much (since we use disable_plane()
also as a means to sanitize state). But that can be done as a followup.

> +
> +	intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id), 0);
> +}
> +
>  /* TODO: split into noarm+arm pair */
>  static void i9xx_cursor_update_arm(struct intel_plane *plane,
>  				   const struct intel_crtc_state *crtc_state,
> @@ -531,10 +558,10 @@ static void i9xx_cursor_update_arm(struct intel_plane *plane,
>  		skl_write_cursor_wm(plane, crtc_state);
>  
>  	if (plane_state)
> -		intel_psr2_program_plane_sel_fetch_arm(plane, crtc_state,
> +		i9xx_cursor_update_sel_fetch_arm(plane, crtc_state,
>  						       plane_state);
>  	else
> -		intel_psr2_disable_plane_sel_fetch_arm(plane, crtc_state);
> +		i9xx_cursor_disable_sel_fetch_arm(plane, crtc_state);
>  
>  	if (plane->cursor.base != base ||
>  	    plane->cursor.size != fbc_ctl ||
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 8d180132a74b..87eb1535ba98 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1914,81 +1914,6 @@ static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
>  	intel_de_write(dev_priv, CURSURFLIVE(intel_dp->psr.pipe), 0);
>  }
>  
> -void intel_psr2_disable_plane_sel_fetch_arm(struct intel_plane *plane,
> -					    const struct intel_crtc_state *crtc_state)
> -{
> -	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> -	enum pipe pipe = plane->pipe;
> -
> -	if (!crtc_state->enable_psr2_sel_fetch)
> -		return;
> -
> -	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id), 0);
> -}
> -
> -void intel_psr2_program_plane_sel_fetch_arm(struct intel_plane *plane,
> -					    const struct intel_crtc_state *crtc_state,
> -					    const struct intel_plane_state *plane_state)
> -{
> -	struct drm_i915_private *i915 = to_i915(plane->base.dev);
> -	enum pipe pipe = plane->pipe;
> -
> -	if (!crtc_state->enable_psr2_sel_fetch)
> -		return;
> -
> -	if (plane->id == PLANE_CURSOR)
> -		intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id),
> -				  plane_state->ctl);
> -	else
> -		intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id),
> -				  PLANE_SEL_FETCH_CTL_ENABLE);
> -}
> -
> -void intel_psr2_program_plane_sel_fetch_noarm(struct intel_plane *plane,
> -					      const struct intel_crtc_state *crtc_state,
> -					      const struct intel_plane_state *plane_state,
> -					      int color_plane)
> -{
> -	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> -	enum pipe pipe = plane->pipe;
> -	const struct drm_rect *clip;
> -	u32 val;
> -	int x, y;
> -
> -	if (!crtc_state->enable_psr2_sel_fetch)
> -		return;
> -
> -	if (plane->id == PLANE_CURSOR)
> -		return;
> -
> -	clip = &plane_state->psr2_sel_fetch_area;
> -
> -	val = (clip->y1 + plane_state->uapi.dst.y1) << 16;
> -	val |= plane_state->uapi.dst.x1;
> -	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_POS(pipe, plane->id), val);
> -
> -	x = plane_state->view.color_plane[color_plane].x;
> -
> -	/*
> -	 * From Bspec: UV surface Start Y Position = half of Y plane Y
> -	 * start position.
> -	 */
> -	if (!color_plane)
> -		y = plane_state->view.color_plane[color_plane].y + clip->y1;
> -	else
> -		y = plane_state->view.color_plane[color_plane].y + clip->y1 / 2;
> -
> -	val = y << 16 | x;
> -
> -	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_OFFSET(pipe, plane->id),
> -			  val);
> -
> -	/* Sizes are 0 based */
> -	val = (drm_rect_height(clip) - 1) << 16;
> -	val |= (drm_rect_width(&plane_state->uapi.src) >> 16) - 1;
> -	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_SIZE(pipe, plane->id), val);
> -}
> -
>  void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
> index 6a1f4573852b..143e0595c097 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> @@ -55,16 +55,6 @@ bool intel_psr_enabled(struct intel_dp *intel_dp);
>  int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>  				struct intel_crtc *crtc);
>  void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_state);
> -void intel_psr2_program_plane_sel_fetch_noarm(struct intel_plane *plane,
> -					      const struct intel_crtc_state *crtc_state,
> -					      const struct intel_plane_state *plane_state,
> -					      int color_plane);
> -void intel_psr2_program_plane_sel_fetch_arm(struct intel_plane *plane,
> -					    const struct intel_crtc_state *crtc_state,
> -					    const struct intel_plane_state *plane_state);
> -
> -void intel_psr2_disable_plane_sel_fetch_arm(struct intel_plane *plane,
> -					    const struct intel_crtc_state *crtc_state);
>  void intel_psr_pause(struct intel_dp *intel_dp);
>  void intel_psr_resume(struct intel_dp *intel_dp);
>  
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 39499a0ec6c0..99d33ac5ceee 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -18,6 +18,7 @@
>  #include "intel_fbc.h"
>  #include "intel_frontbuffer.h"
>  #include "intel_psr.h"
> +#include "intel_psr_regs.h"

I think we want to introduce skl_universal_plane_regs.h
and move all the plane registers (including the sel_fetch
registers) there. But that's followup material too.

This is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  #include "skl_scaler.h"
>  #include "skl_universal_plane.h"
>  #include "skl_watermark.h"
> @@ -629,6 +630,18 @@ skl_plane_disable_arm(struct intel_plane *plane,
>  	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
>  }
>  
> +static void icl_plane_disable_sel_fetch_arm(struct intel_plane *plane,
> +					    const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(plane->base.dev);
> +	enum pipe pipe = plane->pipe;
> +
> +	if (!crtc_state->enable_psr2_sel_fetch)
> +		return;
> +
> +	intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id), 0);
> +}
> +
>  static void
>  icl_plane_disable_arm(struct intel_plane *plane,
>  		      const struct intel_crtc_state *crtc_state)
> @@ -642,7 +655,7 @@ icl_plane_disable_arm(struct intel_plane *plane,
>  
>  	skl_write_plane_wm(plane, crtc_state);
>  
> -	intel_psr2_disable_plane_sel_fetch_arm(plane, crtc_state);
> +	icl_plane_disable_sel_fetch_arm(plane, crtc_state);
>  	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
>  	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
>  }
> @@ -1196,6 +1209,48 @@ skl_plane_update_arm(struct intel_plane *plane,
>  			  skl_plane_surf(plane_state, 0));
>  }
>  
> +static void icl_plane_update_sel_fetch_noarm(struct intel_plane *plane,
> +					      const struct intel_crtc_state *crtc_state,
> +					      const struct intel_plane_state *plane_state,
> +					      int color_plane)
> +{
> +	struct drm_i915_private *i915 = to_i915(plane->base.dev);
> +	enum pipe pipe = plane->pipe;
> +	const struct drm_rect *clip;
> +	u32 val;
> +	int x, y;
> +
> +	if (!crtc_state->enable_psr2_sel_fetch)
> +		return;
> +
> +	clip = &plane_state->psr2_sel_fetch_area;
> +
> +	val = (clip->y1 + plane_state->uapi.dst.y1) << 16;
> +	val |= plane_state->uapi.dst.x1;
> +	intel_de_write_fw(i915, PLANE_SEL_FETCH_POS(pipe, plane->id), val);
> +
> +	x = plane_state->view.color_plane[color_plane].x;
> +
> +	/*
> +	 * From Bspec: UV surface Start Y Position = half of Y plane Y
> +	 * start position.
> +	 */
> +	if (!color_plane)
> +		y = plane_state->view.color_plane[color_plane].y + clip->y1;
> +	else
> +		y = plane_state->view.color_plane[color_plane].y + clip->y1 / 2;
> +
> +	val = y << 16 | x;
> +
> +	intel_de_write_fw(i915, PLANE_SEL_FETCH_OFFSET(pipe, plane->id),
> +			  val);
> +
> +	/* Sizes are 0 based */
> +	val = (drm_rect_height(clip) - 1) << 16;
> +	val |= (drm_rect_width(&plane_state->uapi.src) >> 16) - 1;
> +	intel_de_write_fw(i915, PLANE_SEL_FETCH_SIZE(pipe, plane->id), val);
> +}
> +
>  static void
>  icl_plane_update_noarm(struct intel_plane *plane,
>  		       const struct intel_crtc_state *crtc_state,
> @@ -1268,7 +1323,21 @@ icl_plane_update_noarm(struct intel_plane *plane,
>  	if (plane_state->force_black)
>  		icl_plane_csc_load_black(plane);
>  
> -	intel_psr2_program_plane_sel_fetch_noarm(plane, crtc_state, plane_state, color_plane);
> +	icl_plane_update_sel_fetch_noarm(plane, crtc_state, plane_state, color_plane);
> +}
> +
> +static void icl_plane_update_sel_fetch_arm(struct intel_plane *plane,
> +					    const struct intel_crtc_state *crtc_state,
> +					    const struct intel_plane_state *plane_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(plane->base.dev);
> +	enum pipe pipe = plane->pipe;
> +
> +	if (!crtc_state->enable_psr2_sel_fetch)
> +		return;
> +
> +	intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id),
> +			  PLANE_SEL_FETCH_CTL_ENABLE);
>  }
>  
>  static void
> @@ -1295,7 +1364,7 @@ icl_plane_update_arm(struct intel_plane *plane,
>  	if (plane_state->scaler_id >= 0)
>  		skl_program_plane_scaler(plane, crtc_state, plane_state);
>  
> -	intel_psr2_program_plane_sel_fetch_arm(plane, crtc_state, plane_state);
> +	icl_plane_update_sel_fetch_arm(plane, crtc_state, plane_state);
>  
>  	/*
>  	 * The control register self-arms if the plane was previously
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
