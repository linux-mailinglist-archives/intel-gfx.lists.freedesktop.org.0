Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F41B67E85E
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 15:36:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92B5E10E477;
	Fri, 27 Jan 2023 14:36:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A75810E477
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Jan 2023 14:36:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674830207; x=1706366207;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5jj4fUGGk74Q2Xc8nFGWASV8O6UliO/I5FoPwRvnoZ0=;
 b=DIqONvUSrVCcxTOOFVlf3f9PCvW3u4q/oXuX9JHAuNi4id0ihR91wwxt
 6+K8x6UJV8NUFVboDkgSG2brgQC7jHthbYD5SVqEu5tcJ88XB8wDqztYe
 bWpel4C6coANFo2Cr4eMlKMnhrQrV5QE+t+wfazq7wPlbQ15LPhCad+sa
 UkdG+kyP+y9f2taxt+EmABqxIRZxtRC0TKbHFVhmHjnbcyqoj4i5JcZnz
 EmTFuaBZI8RtXT+9sQbvsdJVSsOt4gZTyzNNCBeZU/JyjkKkqgtUERLbX
 1ureuBdLYCnQhlMB/qzgOy7Dzog48vd3kPm0/UCYGHb/0Z1SHCZIuOOJF w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="389473372"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="389473372"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 06:36:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="640715641"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="640715641"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga006.jf.intel.com with SMTP; 27 Jan 2023 06:36:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Jan 2023 16:36:42 +0200
Date: Fri, 27 Jan 2023 16:36:42 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y9PhenLaGgdgtFVp@intel.com>
References: <20230127073403.1306050-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230127073403.1306050-1-andrzej.hajda@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: implement async_flip mode per
 plane tracking
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 27, 2023 at 08:34:03AM +0100, Andrzej Hajda wrote:
> Current implementation of async flip w/a relies on assumption that
> previous atomic commit contains valid information if async_flip is still
> enabled on the plane. It is incorrect. If previous commit did not modify
> the plane its state->uapi.async_flip can be false. As a result DMAR/PIPE
> errors can be observed:
> i915 0000:00:02.0: [drm] *ERROR* Fault errors on pipe A: 0x00000080
> i915 0000:00:02.0: [drm] *ERROR* Fault errors on pipe A: 0x00000080
> DMAR: DRHD: handling fault status reg 2
> DMAR: [DMA Read NO_PASID] Request device [00:02.0] fault addr 0x0 [fault reason 0x06] PTE Read access is not set
> 
> v2: update async_flip_planes in more reliable places (Ville)
> v3: reset async_flip_planes and do_async_flip in more scenarios (Ville)
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic_plane.c  | 5 ++++-
>  drivers/gpu/drm/i915/display/intel_color.c         | 3 +++
>  drivers/gpu/drm/i915/display/intel_display.c       | 9 ++++++---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 3 +++
>  drivers/gpu/drm/i915/display/skl_watermark.c       | 5 +++++
>  5 files changed, 21 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index 1409bcfb6fd3d9..3bd8f7eb75a60b 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -363,6 +363,7 @@ void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
>  	crtc_state->scaled_planes &= ~BIT(plane->id);
>  	crtc_state->nv12_planes &= ~BIT(plane->id);
>  	crtc_state->c8_planes &= ~BIT(plane->id);
> +	crtc_state->async_flip_planes &= ~BIT(plane->id);
>  	crtc_state->data_rate[plane->id] = 0;
>  	crtc_state->data_rate_y[plane->id] = 0;
>  	crtc_state->rel_data_rate[plane->id] = 0;
> @@ -582,8 +583,10 @@ static int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_cr
>  			 intel_plane_is_scaled(new_plane_state))))
>  		new_crtc_state->disable_lp_wm = true;
>  
> -	if (intel_plane_do_async_flip(plane, old_crtc_state, new_crtc_state))
> +	if (intel_plane_do_async_flip(plane, old_crtc_state, new_crtc_state)) {
>  		new_crtc_state->do_async_flip = true;
> +		new_crtc_state->async_flip_planes |= BIT(plane->id);
> +	}
>  
>  	return 0;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 8d97c299e6577b..5162b2b4ede080 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1506,6 +1506,9 @@ intel_color_add_affected_planes(struct intel_crtc_state *new_crtc_state)
>  			new_crtc_state->disable_cxsr = true;
>  	}
>  
> +	new_crtc_state->do_async_flip = false;
> +	new_crtc_state->async_flip_planes = 0;

These should be next to the update_plane bitmask change.

> +
>  	return 0;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 717ca3d7890d34..8581b32c9cf0eb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1252,7 +1252,8 @@ static void intel_crtc_async_flip_disable_wa(struct intel_atomic_state *state,
>  		intel_atomic_get_old_crtc_state(state, crtc);
>  	const struct intel_crtc_state *new_crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
> -	u8 update_planes = new_crtc_state->update_planes;
> +	u8 disable_async_flip_planes = old_crtc_state->async_flip_planes &
> +				       ~new_crtc_state->async_flip_planes;
>  	const struct intel_plane_state *old_plane_state;
>  	struct intel_plane *plane;
>  	bool need_vbl_wait = false;
> @@ -1261,7 +1262,7 @@ static void intel_crtc_async_flip_disable_wa(struct intel_atomic_state *state,
>  	for_each_old_intel_plane_in_state(state, plane, old_plane_state, i) {
>  		if (plane->need_async_flip_disable_wa &&
>  		    plane->pipe == crtc->pipe &&
> -		    update_planes & BIT(plane->id)) {
> +		    disable_async_flip_planes & BIT(plane->id)) {
>  			/*
>  			 * Apart from the async flip bit we want to
>  			 * preserve the old state for the plane.
> @@ -1378,7 +1379,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
>  	 * WA for platforms where async address update enable bit
>  	 * is double buffered and only latched at start of vblank.
>  	 */
> -	if (old_crtc_state->uapi.async_flip && !new_crtc_state->uapi.async_flip)
> +	if (old_crtc_state->async_flip_planes & ~new_crtc_state->async_flip_planes)
>  		intel_crtc_async_flip_disable_wa(state, crtc);
>  }
>  
> @@ -5939,6 +5940,8 @@ int intel_modeset_all_pipes(struct intel_atomic_state *state,
>  			return ret;
>  
>  		crtc_state->update_planes |= crtc_state->active_planes;
> +		crtc_state->do_async_flip = false;
> +		crtc_state->async_flip_planes = 0;
>  	}
>  
>  	return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 54c517ca9632fb..9ccae7a4602009 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1249,6 +1249,9 @@ struct intel_crtc_state {
>  	/* bitmask of planes that will be updated during the commit */
>  	u8 update_planes;
>  
> +	/* bitmask of planes with async flip active */
> +	u8 async_flip_planes;
> +
>  	u8 framestart_delay; /* 1-4 */
>  	u8 msa_timing_delay; /* 0-3 */
>  
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index ae4e9e680c2e30..eb5e07647a348f 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2397,6 +2397,8 @@ skl_ddb_add_affected_planes(const struct intel_crtc_state *old_crtc_state,
>  			return PTR_ERR(plane_state);
>  
>  		new_crtc_state->update_planes |= BIT(plane_id);
> +		new_crtc_state->do_async_flip = false;
> +		new_crtc_state->async_flip_planes = 0;
>  	}
>  
>  	return 0;
> @@ -2756,6 +2758,9 @@ static int skl_wm_add_affected_planes(struct intel_atomic_state *state,
>  		new_crtc_state->update_planes |= BIT(plane_id);
>  	}
>  
> +	new_crtc_state->do_async_flip = false;
> +	new_crtc_state->async_flip_planes = 0;

ditto

> +
>  	return 0;
>  }
>  
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
