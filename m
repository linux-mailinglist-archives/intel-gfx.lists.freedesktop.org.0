Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E639D5B0D
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2024 09:31:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8C3310E224;
	Fri, 22 Nov 2024 08:31:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PKH/+dmU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C40F010E224;
 Fri, 22 Nov 2024 08:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732264299; x=1763800299;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=iKWSzj3ytReFnfr3hZse5t9fFTwtCLsbwantzirQ09A=;
 b=PKH/+dmU9p2zNizttVslt6xBuYaxVXsYACoRmVqCbIiyewo4oayFUX/L
 C3JSYI4Nkthno4CARwICaFhxAxQbYZnpNMzeBqH50L1aAff5t/PHvfGiD
 GG8d75c+seyWQDWSyn5w7Of8fk2x3eoW6T5ExKDqJPh7obMqp3Jalcdfe
 JS2Os4pes0gMjMzBTgdRNexluQvBEcSLioI/U5umemG3KDxAVXvW1mdYn
 DUDm6Wc1SnqJm8RvF883e71PmuMxRNB/5fvueu3RBq9wm8ei52K6VvVmT
 6vk8ZlG/6q1VcBUBIIh3IcC9l3t6OgG7YQowKAQnFLUv3O4WVrP0OzbCt w==;
X-CSE-ConnectionGUID: y4SAf0t9Sr2hVRMnk4IfkQ==
X-CSE-MsgGUID: ZeaOm4qiQ+iqLDCHdkHs7w==
X-IronPort-AV: E=McAfee;i="6700,10204,11263"; a="31768699"
X-IronPort-AV: E=Sophos;i="6.12,175,1728975600"; d="scan'208";a="31768699"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2024 00:31:27 -0800
X-CSE-ConnectionGUID: fUq/sh0TTlKxm17uNl0N6g==
X-CSE-MsgGUID: AkqtAw2TS2eRNYIuTHA/rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,175,1728975600"; d="scan'208";a="90676676"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 22 Nov 2024 00:31:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 22 Nov 2024 10:31:23 +0200
Date: Fri, 22 Nov 2024 10:31:23 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ville.syrjala@intel.com, jani.saarinen@intel.com
Subject: Re: [RFC PATCH 3/4] drm/i915/xe3: add dirty rect support for FBC
Message-ID: <Z0BBWzVodqkA8Y6q@intel.com>
References: <20241118235325.353010-1-vinod.govindapillai@intel.com>
 <20241118235325.353010-4-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241118235325.353010-4-vinod.govindapillai@intel.com>
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

On Tue, Nov 19, 2024 at 01:53:24AM +0200, Vinod Govindapillai wrote:
> Dirty rectangle feature allows FBC to recompress a subsection
> of a frame. When this feature is enabled, display will read
> the scan lines between dirty rectangle start line and dirty
> rectangle end line in subsequent frames.
> 
> Bspec: 71675, 73424
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c      | 130 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_fbc.h      |   3 +
>  .../drm/i915/display/skl_universal_plane.c    |   2 +
>  3 files changed, 135 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 1fdb1a3e3fbe..01080171790f 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -42,6 +42,7 @@
>  #include <linux/string_helpers.h>
>  
>  #include <drm/drm_blend.h>
> +#include <drm/drm_damage_helper.h>
>  #include <drm/drm_fourcc.h>
>  
>  #include "gem/i915_gem_stolen.h"
> @@ -58,6 +59,7 @@
>  #include "intel_display_trace.h"
>  #include "intel_display_types.h"
>  #include "intel_display_wa.h"
> +#include "intel_dsb.h"
>  #include "intel_fbc.h"
>  #include "intel_fbc_regs.h"
>  #include "intel_frontbuffer.h"
> @@ -126,6 +128,8 @@ struct intel_fbc {
>  	 */
>  	struct intel_fbc_state state;
>  	const char *no_fbc_reason;
> +
> +	struct drm_rect dirty_rect;

That belongs in the fbc state.

>  };
>  
>  /* plane stride in pixels */
> @@ -670,6 +674,10 @@ static void ivb_fbc_activate(struct intel_fbc *fbc)
>  	if (DISPLAY_VER(display) >= 20)
>  		intel_de_write(display, ILK_DPFC_CONTROL(fbc->id), dpfc_ctl);
>  
> +	if (DISPLAY_VER(display) >= 30)
> +		intel_de_write(display, XE3_FBC_DIRTY_CTL(fbc->id),
> +			       FBC_DIRTY_RECT_EN);
> +
>  	intel_de_write(display, ILK_DPFC_CONTROL(fbc->id),
>  		       DPFC_CTL_EN | dpfc_ctl);
>  }
> @@ -1664,6 +1672,113 @@ void intel_fbc_flush(struct drm_i915_private *i915,
>  		__intel_fbc_flush(fbc, frontbuffer_bits, origin);
>  }
>  
> +void
> +intel_fbc_program_dirty_rect(struct intel_dsb *dsb, struct intel_plane *plane)
> +{
> +	struct intel_display *display = to_intel_display(plane);
> +	struct intel_fbc *fbc = plane->fbc;
> +
> +	if (DISPLAY_VER(display) < 30)
> +		return;
> +
> +	if (!fbc)
> +		return;
> +
> +	intel_de_write_dsb(display, dsb, XE3_FBC_DIRTY_RECT(fbc->id),
> +			   FBC_DIRTY_RECT_START_LINE(fbc->dirty_rect.y1) |
> +			   FBC_DIRTY_RECT_END_LINE(fbc->dirty_rect.y2));

I suspect the end line needs a -1. But that needs to be confirmed on
actual hardware.

> +}
> +
> +static bool
> +intel_fbc_need_full_region_update(struct intel_plane_state *old_plane_state,
> +				  struct intel_plane_state *new_plane_state)
> +{
> +	const struct drm_framebuffer *old_fb = old_plane_state->hw.fb;
> +	const struct drm_framebuffer *new_fb = new_plane_state->hw.fb;
> +
> +	if (!old_fb || !new_fb)
> +		return true;
> +
> +	if (old_fb->format->format != new_fb->format->format)
> +		return true;
> +
> +	if (old_fb->modifier != new_fb->modifier)
> +		return true;
> +
> +	if (intel_fbc_plane_stride(old_plane_state) !=
> +	    intel_fbc_plane_stride(new_plane_state))
> +		return true;
> +
> +	if (intel_fbc_cfb_stride(old_plane_state) !=
> +	    intel_fbc_cfb_stride(new_plane_state))
> +		return true;
> +
> +	if (intel_fbc_cfb_size(old_plane_state) !=
> +	    intel_fbc_cfb_size(new_plane_state))
> +		return true;
> +
> +	return false;
> +}

If any of those fail then I think we're going to be
disabling+re-enabling FBC anyway. So we might not need to check
any of this, or if we do we could perhaps just use can_flip_nuke().

> +
> +static void
> +update_dirty_rect_to_full_region(struct intel_plane_state *plane_state,
> +				 struct drm_rect *dirty_rect)
> +{
> +	int y_offset = plane_state->view.color_plane[0].y;
> +	int plane_height = drm_rect_height(&plane_state->uapi.src) >> 16;
> +
> +	dirty_rect->y1 = y_offset;
> +	dirty_rect->y2 = y_offset + plane_height;
> +}
> +
> +static void validate_and_clip_dirty_rect(struct intel_plane_state *plane_state,
> +					 struct drm_rect *dirty_rect)
> +{
> +	int y_offset = plane_state->view.color_plane[0].y;
> +	int plane_height = drm_rect_height(&plane_state->uapi.src) >> 16;
> +	int max_endline = y_offset + plane_height;
> +
> +	dirty_rect->y1 = clamp(dirty_rect->y1, y_offset, max_endline);
> +	dirty_rect->y2 = clamp(dirty_rect->y2, dirty_rect->y1, max_endline);
> +}
> +
> +static void intel_fbc_compute_dirty_rect(struct intel_plane *plane,
> +					struct intel_plane_state *old_plane_state,
> +					struct intel_plane_state *new_plane_state,
> +					bool need_full_region_update)
> +{
> +	struct intel_display *display = to_intel_display(plane);
> +	struct intel_fbc *fbc = plane->fbc;
> +	struct drm_rect *fbc_dirty_rect = &fbc->dirty_rect;
> +
> +	if (need_full_region_update) {
> +		drm_dbg_kms(display->drm,
> +			    "[PLANE:%d:%s] Full region update needed\n",
> +			    plane->base.base.id, plane->base.name);
> +		update_dirty_rect_to_full_region(new_plane_state, fbc_dirty_rect);
> +		goto out;
> +	}
> +
> +	if (drm_atomic_helper_damage_merged(&old_plane_state->uapi,
> +					    &new_plane_state->uapi,
> +					    fbc_dirty_rect)) {
> +		validate_and_clip_dirty_rect(new_plane_state, fbc_dirty_rect);

Your fbc_dirty_rect here will still be in a different coordinate space
(fb relative) than the plane src coordinates (PLANE_SURF relative).

> +	} else {
> +		drm_dbg_kms(display->drm,
> +			    "[PLANE:%d:%s] Damage clips merge cal failed. Use full region\n",
> +			    plane->base.base.id, plane->base.name);
> +

That's going to create excessive spam.

> +		/* TODO! if the drm call failed, update full region? */
> +		update_dirty_rect_to_full_region(new_plane_state, fbc_dirty_rect);
> +	}
> +
> +out:
> +	drm_dbg_kms(display->drm,
> +		    "[PLANE:%d:%s] Dirty rect start line: %d End line: %d\n",
> +		    plane->base.base.id, plane->base.name, fbc_dirty_rect->y1,
> +		    fbc_dirty_rect->y2);a

ditto

> +}
> +
>  int intel_fbc_atomic_check(struct intel_atomic_state *state)
>  {
>  	struct intel_plane_state __maybe_unused *new_plane_state;
> @@ -1673,11 +1788,26 @@ int intel_fbc_atomic_check(struct intel_atomic_state *state)
>  
>  	for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state,
>  					     new_plane_state, i) {
> +		bool full_region_update;
>  		int ret;
>  
> +		if (!plane->fbc)
> +			continue;
> +
>  		ret = intel_fbc_check_plane(state, plane);
>  		if (ret)
>  			return ret;
> +
> +		if (!new_plane_state->no_fbc_reason)
> +			continue;
> +
> +		full_region_update =
> +			intel_fbc_need_full_region_update(old_plane_state,
> +							  new_plane_state);
> +
> +		intel_fbc_compute_dirty_rect(plane, old_plane_state,
> +					     new_plane_state,
> +					     full_region_update);

That belongs in intel_fbc_update_state()

>  	}
>  
>  	return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
> index ceae55458e14..073d671ea94d 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.h
> @@ -14,6 +14,7 @@ struct intel_atomic_state;
>  struct intel_crtc;
>  struct intel_crtc_state;
>  struct intel_display;
> +struct intel_dsb;
>  struct intel_fbc;
>  struct intel_plane;
>  struct intel_plane_state;
> @@ -48,5 +49,7 @@ void intel_fbc_handle_fifo_underrun_irq(struct intel_display *display);
>  void intel_fbc_reset_underrun(struct intel_display *display);
>  void intel_fbc_crtc_debugfs_add(struct intel_crtc *crtc);
>  void intel_fbc_debugfs_register(struct intel_display *display);
> +void intel_fbc_program_dirty_rect(struct intel_dsb *dsb,
> +				  struct intel_plane *plane);
>  
>  #endif /* __INTEL_FBC_H__ */
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 4c7bcf6806ff..fd3611323ec0 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1510,6 +1510,8 @@ icl_plane_update_noarm(struct intel_dsb *dsb,
>  		icl_plane_csc_load_black(dsb, plane, crtc_state);
>  
>  	icl_plane_update_sel_fetch_noarm(dsb, plane, crtc_state, plane_state, color_plane);
> +
> +	intel_fbc_program_dirty_rect(dsb, plane);

I think we want a completely separate call to FBC around where call
intel_crtc_planes_update_arm().

It's going to be a bit dodgy becase we won't be able take fbc->lock
and thus accessing the fbc state needs to be done locklessly. But
I *think* it should be safe because the fbc state should only be
updated from intel_fbc_{update,disable}() which are done from the
atomic commit path only.

We are going to need some real tests for this:
- update region A -> flip with dirty rect A -> update region B -> flip with dirty rect B
- update region A -> flip with dirty rect A -> update region B -> flip without dirty rect
- update region A -> flip with dirty rect A -> update region B -> dirtyfb
- probably some other ones which involve format changes/etc. as well.

>  }
>  
>  static void icl_plane_update_sel_fetch_arm(struct intel_dsb *dsb,
> -- 
> 2.34.1

-- 
Ville Syrj�l�
Intel
