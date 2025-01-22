Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE23EA18FE6
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 11:39:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9552E10E2E9;
	Wed, 22 Jan 2025 10:39:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i9eN747p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6D1D10E2E9;
 Wed, 22 Jan 2025 10:39:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737542355; x=1769078355;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=31Fnv9LZ5JA0KPwnUfj5BYCAKj/GvTlzdpCgYCXAvRA=;
 b=i9eN747pf1TgiXiaDQRDJs9rEKluZDlHpfWjRhpEGflGjlfdFNEnCm7c
 PSUrZ2cT9RAgZH6XVVyUisabHJRY3I9wZeMtxOP6HhA6YjjYs6PEXpmSb
 uLjvLE7HWJcENVcV093Tom5L15CC83eww7XfwzkxsaBaVAdUXSRcTQEpC
 xKZxNWvfJSEFV3fwwF8XU41++uigkul0V9YjuY1BZQ37VGR4yf/vVtUR9
 XkoCrrytZ6KP00Hwv6Z5he1RFWC7tt7BVdh7fIa8QUE4nYPmWI+VKuZOi
 ZV+Gs5xeQLf7KkeEspgXIcoopU3Mq/Cjt0APiv/iFeDGI+s/62xNd8+GZ Q==;
X-CSE-ConnectionGUID: m/0Vo0D4RtSnGa/qfq7idA==
X-CSE-MsgGUID: 4yu55wY8QuCS/ZMU2UKMbA==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="37908607"
X-IronPort-AV: E=Sophos;i="6.13,225,1732608000"; d="scan'208";a="37908607"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 02:39:14 -0800
X-CSE-ConnectionGUID: mcYH727aRIaAobhYk4jHCA==
X-CSE-MsgGUID: ResTZrIET0+00LNdkKKzpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="112080591"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.30])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 02:39:11 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 santhosh.reddy.guddati@intel.com, jani.saarinen@intel.com
Subject: Re: [PATCH v4 4/6] drm/i915/xe3: add dirty rect support for FBC
In-Reply-To: <20250122093006.405711-5-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250122093006.405711-1-vinod.govindapillai@intel.com>
 <20250122093006.405711-5-vinod.govindapillai@intel.com>
Date: Wed, 22 Jan 2025 12:39:08 +0200
Message-ID: <878qr3p1yr.fsf@intel.com>
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

On Wed, 22 Jan 2025, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> Dirty rectangle feature allows FBC to recompress a subsection
> of a frame. When this feature is enabled, display will read
> the scan lines between dirty rectangle start line and dirty
> rectangle end line in subsequent frames.
>
> v2: Move dirty rect handling to fbc state (Ville)
>
> Bspec: 71675, 73424
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  4 +
>  drivers/gpu/drm/i915/display/intel_fbc.c     | 96 +++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_fbc.h     |  4 +
>  3 files changed, 103 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 10550bc0778e..d154fcd0e77a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7263,6 +7263,8 @@ static void intel_update_crtc(struct intel_atomic_state *state,
>  
>  		commit_pipe_pre_planes(state, crtc);
>  
> +		intel_fbc_program_dirty_rect(NULL, state, crtc);
> +
>  		intel_crtc_planes_update_arm(NULL, state, crtc);
>  
>  		commit_pipe_post_planes(state, crtc);
> @@ -7731,6 +7733,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>  					       new_crtc_state);
>  		bdw_set_pipe_misc(new_crtc_state->dsb_commit,
>  				  new_crtc_state);
> +		intel_fbc_program_dirty_rect(new_crtc_state->dsb_commit,
> +					     state, crtc);
>  		intel_crtc_planes_update_arm(new_crtc_state->dsb_commit,
>  					     state, crtc);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 7eefe699a0e6..963fbe2c7361 100644
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
> @@ -88,6 +90,7 @@ struct intel_fbc_state {
>  	u16 override_cfb_stride;
>  	u16 interval;
>  	s8 fence_id;
> +	struct drm_rect dirty_rect;
>  };
>  
>  struct intel_fbc {
> @@ -527,6 +530,9 @@ static void ilk_fbc_deactivate(struct intel_fbc *fbc)
>  	struct intel_display *display = fbc->display;
>  	u32 dpfc_ctl;
>  
> +	if (DISPLAY_VER(display) >= 30)

The repeated DISPLAY_VER(display) >= 30 around dirty rect in the series
smell like HAS_DIRTY_RECT() would be appropriate.

BR,
Jani.


> +		intel_de_write(display, XE3_FBC_DIRTY_CTL(fbc->id), 0);
> +
>  	/* Disable compression */
>  	dpfc_ctl = intel_de_read(display, ILK_DPFC_CONTROL(fbc->id));
>  	if (dpfc_ctl & DPFC_CTL_EN) {
> @@ -670,6 +676,10 @@ static void ivb_fbc_activate(struct intel_fbc *fbc)
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
> @@ -1203,6 +1213,85 @@ static bool tiling_is_valid(const struct intel_plane_state *plane_state)
>  		return i8xx_fbc_tiling_valid(plane_state);
>  }
>  
> +static void
> +__intel_fbc_program_dirty_rect(struct intel_dsb *dsb, struct intel_plane *plane)
> +{
> +	struct intel_display *display = to_intel_display(plane);
> +	struct intel_fbc *fbc = plane->fbc;
> +	struct intel_fbc_state *fbc_state = &fbc->state;
> +
> +	if (fbc_state->plane != plane)
> +		return;
> +
> +	intel_de_write_dsb(display, dsb, XE3_FBC_DIRTY_RECT(fbc->id),
> +			   FBC_DIRTY_RECT_START_LINE(fbc_state->dirty_rect.y1) |
> +			   FBC_DIRTY_RECT_END_LINE(fbc_state->dirty_rect.y2));
> +}
> +
> +void
> +intel_fbc_program_dirty_rect(struct intel_dsb *dsb,
> +			     struct intel_atomic_state *state,
> +			     struct intel_crtc *crtc)
> +{
> +	struct intel_display *display = to_intel_display(state);
> +	struct intel_plane_state __maybe_unused *plane_state;
> +	struct intel_plane *plane;
> +	int i;
> +
> +	if (DISPLAY_VER(display) < 30)
> +		return;
> +
> +	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
> +		struct intel_fbc *fbc = plane->fbc;
> +
> +		if (!fbc || plane->pipe != crtc->pipe)
> +			continue;
> +
> +		__intel_fbc_program_dirty_rect(dsb, plane);
> +	}
> +}
> +
> +
> +static void
> +update_dirty_rect_to_full_region(struct intel_plane_state *plane_state,
> +				 struct drm_rect *dirty_rect)
> +{
> +	int y_offset = plane_state->view.color_plane[0].y;
> +	int plane_height = drm_rect_height(&plane_state->uapi.src) >> 16;
> +
> +	dirty_rect->y1 = y_offset;
> +	dirty_rect->y2 = y_offset + plane_height - 1;
> +}
> +
> +static void
> +validate_and_clip_dirty_rect(struct intel_plane_state *plane_state,
> +			     struct drm_rect *dirty_rect)
> +{
> +	int y_offset = plane_state->view.color_plane[0].y;
> +	int plane_height = drm_rect_height(&plane_state->uapi.src) >> 16;
> +	int max_endline = y_offset + plane_height;
> +
> +	dirty_rect->y1 = clamp(dirty_rect->y1, y_offset, max_endline);
> +	dirty_rect->y2 = clamp(dirty_rect->y2, dirty_rect->y1, max_endline);
> +}
> +
> +static void
> +intel_fbc_compute_dirty_rect(struct intel_plane *plane,
> +			     struct intel_plane_state *old_plane_state,
> +			     struct intel_plane_state *new_plane_state)
> +{
> +	struct intel_fbc *fbc = plane->fbc;
> +	struct intel_fbc_state *fbc_state = &fbc->state;
> +	struct drm_rect *fbc_dirty_rect = &fbc_state->dirty_rect;
> +
> +	if (drm_atomic_helper_damage_merged(&old_plane_state->uapi,
> +					    &new_plane_state->uapi,
> +					    fbc_dirty_rect))
> +		validate_and_clip_dirty_rect(new_plane_state, fbc_dirty_rect);
> +	else
> +		update_dirty_rect_to_full_region(new_plane_state, fbc_dirty_rect);
> +}
> +
>  static void intel_fbc_update_state(struct intel_atomic_state *state,
>  				   struct intel_crtc *crtc,
>  				   struct intel_plane *plane)
> @@ -1210,8 +1299,10 @@ static void intel_fbc_update_state(struct intel_atomic_state *state,
>  	struct intel_display *display = to_intel_display(state->base.dev);
>  	const struct intel_crtc_state *crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
> -	const struct intel_plane_state *plane_state =
> +	struct intel_plane_state *plane_state =
>  		intel_atomic_get_new_plane_state(state, plane);
> +	struct intel_plane_state *old_plane_state =
> +		intel_atomic_get_old_plane_state(state, plane);
>  	struct intel_fbc *fbc = plane->fbc;
>  	struct intel_fbc_state *fbc_state = &fbc->state;
>  
> @@ -1236,6 +1327,9 @@ static void intel_fbc_update_state(struct intel_atomic_state *state,
>  	fbc_state->cfb_stride = intel_fbc_cfb_stride(plane_state);
>  	fbc_state->cfb_size = intel_fbc_cfb_size(plane_state);
>  	fbc_state->override_cfb_stride = intel_fbc_override_cfb_stride(plane_state);
> +
> +	if (DISPLAY_VER(display) >= 30)
> +		intel_fbc_compute_dirty_rect(plane, old_plane_state, plane_state);
>  }
>  
>  static bool intel_fbc_is_fence_ok(const struct intel_plane_state *plane_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
> index ceae55458e14..acaebe15f312 100644
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
> @@ -48,5 +49,8 @@ void intel_fbc_handle_fifo_underrun_irq(struct intel_display *display);
>  void intel_fbc_reset_underrun(struct intel_display *display);
>  void intel_fbc_crtc_debugfs_add(struct intel_crtc *crtc);
>  void intel_fbc_debugfs_register(struct intel_display *display);
> +void intel_fbc_program_dirty_rect(struct intel_dsb *dsb,
> +				  struct intel_atomic_state *state,
> +				  struct intel_crtc *crtc);
>  
>  #endif /* __INTEL_FBC_H__ */

-- 
Jani Nikula, Intel
