Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2697E5B587E
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 12:34:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97D4910E386;
	Mon, 12 Sep 2022 10:34:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A9C810E39B
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 10:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662978839; x=1694514839;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=GIS21GrW+D2uEJ7rAQb8sNeFoG6AJ03SaI5rVQHnrck=;
 b=D5pRRGt+nwzVyDZ+3VGMyWxg5Bn8t/ePtIiWr5Vpok0QmM+Id6fZXzHC
 AeyxMRJUjlJptY3W2wjIv5iSjk645dvTsXe4XsXZBXWmh0VgZk90e2IOs
 7gXe8WX2bVFfBbHeMWCMrIdEzCqbXslVz8KMQBY6eHbb1N9BXvH70Putl
 5R0nFOXKXWlWAxGVdYCmZjgjQOfmAawsYS2dgaaZJwGF5nvQ/LmEmbbry
 Aie/cs/l9NBV2R5TENMLWWPkwIdM84k3h/SwUBT9fjRVOGXXTsA0W9Q+6
 Kx3CoKyiokRRKVr5EMn/IyhOA6kERt9ZtMhIddDXJ4OeK4FjZhnO3Z/aS g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10467"; a="359557802"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="359557802"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 03:33:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="705107045"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by FMSMGA003.fm.intel.com with SMTP; 12 Sep 2022 03:33:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 Sep 2022 13:33:54 +0300
Date: Mon, 12 Sep 2022 13:33:54 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Yx8LEn86GrAe330+@intel.com>
References: <20220909140552.110327-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220909140552.110327-1-andrzej.hajda@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: implement async_flip mode per
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

On Fri, Sep 09, 2022 at 04:05:52PM +0200, Andrzej Hajda wrote:
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
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic_plane.c  | 6 ++++++
>  drivers/gpu/drm/i915/display/intel_display.c       | 7 ++++---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 3 +++
>  3 files changed, 13 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index dd876dbbaa394d..4b4d8427b466c0 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -591,6 +591,12 @@ int intel_plane_atomic_check_with_state(const struct intel_crtc_state *old_crtc_
>  	if (new_plane_state->uapi.visible || old_plane_state->uapi.visible)
>  		new_crtc_state->update_planes |= BIT(plane->id);
>  
> +	if (new_crtc_state->uapi.async_flip && plane->async_flip)
> +		new_crtc_state->async_flip_planes |= BIT(plane->id);
> +	else if (new_plane_state->uapi.visible != old_plane_state->uapi.visible ||
> +		 new_plane_state->uapi.fb != old_plane_state->uapi.fb)
> +		new_crtc_state->async_flip_planes &= ~BIT(plane->id);

We should clear it in intel_plane_set_invisible() and calculate properly
otherwise. Seems this also won't catch anything that happens later in the
modeset (eg. intel_modeset_all_pipes() or skl_{wm,ddb}_add_affected_planes()).

I think there are several scenarios we should try to hit:

1. Keep plane in async flip mode during another plane update
  - ask for async flip on plane 1 to switch it to async flip mode
    (this may still do a sync flip internally)
  - ask async flip on plane 1 again and make sure it really happend async this time
  - sync update on another plane 2 (make sure it doesn't affect cdclk/ddb/etc.)
  - another async flip on plane 1 (should still be in async flip mode and thus
    should again happen async)
2. Switch out of async flip mode on wm/ddb change
  - similar as 1. except we want wm/ddb changes to affect both planes
    and thus plane 1 should exit async flip mode
3. Switch out of async flip mode on cdclk change
  - same as 1. except we want cdclk to trigger a modeset
  - should kick plane 1 out of async flip mode
  - not sure if we can do this w/o affecting wm/ddb as well,
    at least without hacks

4. Keep plane in async flip mode during a modeset on another pipe
  - ask for async flip on plane 1 to switch it to async flip mode
    (this may still do a sync flip internally)
  - ask async flip on plane 1 again and make sure it really happend async this time
  - modeset another pipe (make sure it doesn't trigger anything on the
    first pipe)
  - another async flip on plane 1 (should still be in async flip mode and this be fast)
5. Switch out of async flip on modeset+ddb change
  - same as 4. but have the modeset trigger a ddb reconfiguration for
    both pipes
  - should kick plane 1 out of async flip mode
6. Switch out of async flip on cdclk change change
  - same as 4. but have the modeset do a cdclk change that triggers a modeset
  - should kick plane 1 out of async flip mode
  - again not sure how easy it is to avoid the ddb change as well...

> +
>  	if (new_plane_state->uapi.visible &&
>  	    intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier)) {
>  		new_crtc_state->data_rate_y[plane->id] =
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 72e2091d9fcb59..7bab74b2a4ae2e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1292,7 +1292,8 @@ static void intel_crtc_async_flip_disable_wa(struct intel_atomic_state *state,
>  		intel_atomic_get_old_crtc_state(state, crtc);
>  	const struct intel_crtc_state *new_crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
> -	u8 update_planes = new_crtc_state->update_planes;
> +	u8 disable_async_flip_planes = old_crtc_state->async_flip_planes &
> +				       ~new_crtc_state->async_flip_planes;
>  	const struct intel_plane_state *old_plane_state;
>  	struct intel_plane *plane;
>  	bool need_vbl_wait = false;
> @@ -1301,7 +1302,7 @@ static void intel_crtc_async_flip_disable_wa(struct intel_atomic_state *state,
>  	for_each_old_intel_plane_in_state(state, plane, old_plane_state, i) {
>  		if (plane->need_async_flip_disable_wa &&
>  		    plane->pipe == crtc->pipe &&
> -		    update_planes & BIT(plane->id)) {
> +		    disable_async_flip_planes & BIT(plane->id)) {
>  			/*
>  			 * Apart from the async flip bit we want to
>  			 * preserve the old state for the plane.
> @@ -1418,7 +1419,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
>  	 * WA for platforms where async address update enable bit
>  	 * is double buffered and only latched at start of vblank.
>  	 */
> -	if (old_crtc_state->uapi.async_flip && !new_crtc_state->uapi.async_flip)
> +	if (old_crtc_state->async_flip_planes & ~new_crtc_state->async_flip_planes)
>  		intel_crtc_async_flip_disable_wa(state, crtc);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 0da9b208d56e8b..b37891a8def780 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1234,6 +1234,9 @@ struct intel_crtc_state {
>  	/* bitmask of planes that will be updated during the commit */
>  	u8 update_planes;
>  
> +	/* bitmask of planes with async flip active */
> +	u8 async_flip_planes;
> +
>  	u8 framestart_delay; /* 1-4 */
>  	u8 msa_timing_delay; /* 0-3 */
>  
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
