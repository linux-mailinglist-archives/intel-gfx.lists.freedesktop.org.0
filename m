Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3FBEA19021
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 11:47:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A02710E3A7;
	Wed, 22 Jan 2025 10:47:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iQbMoZP6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BAD410E228;
 Wed, 22 Jan 2025 10:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737542874; x=1769078874;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=008k5fumNGQT0qZbJ9gfLZ/jHsFZECQr1bvHSISfbaY=;
 b=iQbMoZP6JOpPWEpBPoMlPBkb9uvtRLG+fuFPbYTZGTu56zCxl/J6QV9S
 sq5tVPmATt3+MPg1ieT0eTqGACwzsUAonHH+GVbHXH1ONqRMJbTjvHs9w
 9XJ2chH1PzOIt6CspknexqKYfWvkbQ77YpNYWL6zfxtdA+jNBjpW+yaHV
 nSfkNhKpmIcbM7laClylu0a15v1aeg1nftF+uhQx/vGmOecyy1je/3vMp
 G7J8ZHD1TkLVMlfgjW+fuD1JZb7DHNoXFLBdd4rvIuOQyOyS2ZVrEbYQP
 TjxHsAQd9q3fzkLHzBBmTWw767Z63wf/kwcM710ejJbK41JDFn/Vf2dFf A==;
X-CSE-ConnectionGUID: W8wuiC1mR6y4wEHy+EKUvA==
X-CSE-MsgGUID: 32SIYzU1RZ+o06v071mMVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="37874844"
X-IronPort-AV: E=Sophos;i="6.13,225,1732608000"; d="scan'208";a="37874844"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 02:47:54 -0800
X-CSE-ConnectionGUID: wI8TjRVCRkSQ70NHtwb6fA==
X-CSE-MsgGUID: vkph8m3dQnilQM1jAgr6KA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="112081326"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.30])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 02:47:51 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 santhosh.reddy.guddati@intel.com, jani.saarinen@intel.com
Subject: Re: [PATCH v4 5/6] drm/i915/xe3: handle dirty rect update within
 the scope of DSB
In-Reply-To: <20250122093006.405711-6-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250122093006.405711-1-vinod.govindapillai@intel.com>
 <20250122093006.405711-6-vinod.govindapillai@intel.com>
Date: Wed, 22 Jan 2025 12:47:47 +0200
Message-ID: <871pwvp1kc.fsf@intel.com>
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
> Programming of the dirty rectangle coordinates should happen
> within the scope of DSB prepare and finish calls. So call the
> compute and programming of dirty rectangle related routines
> early within the DSB programming window. Some of the FBC state
> handling is done later as part of pre-plane or post-plane
> updates. So enabling / disabling / hw activate will happen
> later but it should handle the sequence without any issue.
>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  3 ++
>  drivers/gpu/drm/i915/display/intel_fbc.c     | 47 ++++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_fbc.h     |  3 ++
>  3 files changed, 44 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index d154fcd0e77a..e6e017e65da6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7773,6 +7773,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  
>  	intel_atomic_prepare_plane_clear_colors(state);
>  
> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
> +		intel_fbc_compute_dirty_rect(state, crtc);

"compute" is a fairly loaded word in our driver. The immediate
association is "it's compute config, but missing the config part". And
doing anything "compute" seems completely out of place in
intel_atomic_commit_tail(), where we've long since passed the compute
config stage.

> +
>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
>  		intel_atomic_dsb_finish(state, crtc);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 963fbe2c7361..033eb4a3eab0 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1213,6 +1213,10 @@ static bool tiling_is_valid(const struct intel_plane_state *plane_state)
>  		return i8xx_fbc_tiling_valid(plane_state);
>  }
>  
> +static bool intel_fbc_can_flip_nuke(struct intel_atomic_state *state,
> +				    struct intel_crtc *crtc,
> +				    struct intel_plane *plane);
> +
>  static void
>  __intel_fbc_program_dirty_rect(struct intel_dsb *dsb, struct intel_plane *plane)
>  {
> @@ -1251,7 +1255,6 @@ intel_fbc_program_dirty_rect(struct intel_dsb *dsb,
>  	}
>  }
>  
> -

The previous patch added a superfluous newline here, and this one
removes it. Please just don't add it in the first place.

>  static void
>  update_dirty_rect_to_full_region(struct intel_plane_state *plane_state,
>  				 struct drm_rect *dirty_rect)
> @@ -1276,9 +1279,9 @@ validate_and_clip_dirty_rect(struct intel_plane_state *plane_state,
>  }
>  
>  static void
> -intel_fbc_compute_dirty_rect(struct intel_plane *plane,
> -			     struct intel_plane_state *old_plane_state,
> -			     struct intel_plane_state *new_plane_state)
> +__intel_fbc_compute_dirty_rect(struct intel_plane *plane,
> +			       struct intel_plane_state *old_plane_state,
> +			       struct intel_plane_state *new_plane_state)
>  {
>  	struct intel_fbc *fbc = plane->fbc;
>  	struct intel_fbc_state *fbc_state = &fbc->state;
> @@ -1292,6 +1295,37 @@ intel_fbc_compute_dirty_rect(struct intel_plane *plane,
>  		update_dirty_rect_to_full_region(new_plane_state, fbc_dirty_rect);
>  }
>  
> +void
> +intel_fbc_compute_dirty_rect(struct intel_atomic_state *state,
> +			     struct intel_crtc *crtc)
> +{
> +	struct intel_display *display = to_intel_display(state);
> +	struct intel_plane_state *new_plane_state;
> +	struct intel_plane_state *old_plane_state;
> +	struct intel_plane *plane;
> +	int i;
> +
> +	if (DISPLAY_VER(display) < 30)
> +		return;
> +
> +	for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state, new_plane_state, i) {
> +		struct intel_fbc *fbc = plane->fbc;
> +
> +		if (!fbc || plane->pipe != crtc->pipe)
> +			continue;
> +
> +		/* If plane not visible, dirty rect might have invalid coordinates */
> +		if (!new_plane_state->uapi.visible)
> +			continue;
> +
> +		/* If FBC to be disabled, then no need to update dirty rect */
> +		if (!intel_fbc_can_flip_nuke(state, crtc, plane))
> +			continue;
> +
> +		__intel_fbc_compute_dirty_rect(plane, old_plane_state, new_plane_state);
> +	}
> +}
> +
>  static void intel_fbc_update_state(struct intel_atomic_state *state,
>  				   struct intel_crtc *crtc,
>  				   struct intel_plane *plane)
> @@ -1301,8 +1335,6 @@ static void intel_fbc_update_state(struct intel_atomic_state *state,
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct intel_plane_state *plane_state =
>  		intel_atomic_get_new_plane_state(state, plane);
> -	struct intel_plane_state *old_plane_state =
> -		intel_atomic_get_old_plane_state(state, plane);
>  	struct intel_fbc *fbc = plane->fbc;
>  	struct intel_fbc_state *fbc_state = &fbc->state;
>  
> @@ -1327,9 +1359,6 @@ static void intel_fbc_update_state(struct intel_atomic_state *state,
>  	fbc_state->cfb_stride = intel_fbc_cfb_stride(plane_state);
>  	fbc_state->cfb_size = intel_fbc_cfb_size(plane_state);
>  	fbc_state->override_cfb_stride = intel_fbc_override_cfb_stride(plane_state);
> -
> -	if (DISPLAY_VER(display) >= 30)
> -		intel_fbc_compute_dirty_rect(plane, old_plane_state, plane_state);
>  }
>  
>  static bool intel_fbc_is_fence_ok(const struct intel_plane_state *plane_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
> index acaebe15f312..87be5653db0f 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.h
> @@ -49,8 +49,11 @@ void intel_fbc_handle_fifo_underrun_irq(struct intel_display *display);
>  void intel_fbc_reset_underrun(struct intel_display *display);
>  void intel_fbc_crtc_debugfs_add(struct intel_crtc *crtc);
>  void intel_fbc_debugfs_register(struct intel_display *display);
> +void intel_fbc_compute_dirty_rect(struct intel_atomic_state *state,
> +				  struct intel_crtc *crtc);
>  void intel_fbc_program_dirty_rect(struct intel_dsb *dsb,
>  				  struct intel_atomic_state *state,
>  				  struct intel_crtc *crtc);
>  
> +

Superfluous newline.

>  #endif /* __INTEL_FBC_H__ */

-- 
Jani Nikula, Intel
