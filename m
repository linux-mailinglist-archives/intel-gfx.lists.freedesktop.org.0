Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70DE1679AF4
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 15:02:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0BA710E675;
	Tue, 24 Jan 2023 14:02:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D46E10E675
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 14:02:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674568937; x=1706104937;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=u2QsqwkjABD3fmf4QcWmZA1Nouxt1/5hPoeseLMvrWA=;
 b=axmsZQrE/zmvRSpLqZ11zM1KALiAN4NXDR4Neovp/FVDLKtipfW9vyVv
 zqIK15tzUJ/aEMXeYW/bULDEy4X7a6stu9pAyBD51jfQkXqiqq4AvOi3+
 M6q0b/cPYzCSsrzriMiOAAKC8esUqoXsgn3/h4CmBRwjJM4xlZj5s6Pl/
 nrIDkm6jX7WkEAo7rUdd4fqX3795Fv1o1bu4R542Wxn1pD5m1u5c7QnDY
 GJeVBD7GRu5igdpPbdvdVSjxotnZrbOP5/bLNbDw+FTCN0aTOa1u3czh9
 OyUjbym60zQXOGmNkqxY9HkTaaR28u23gF2No8Dp7DIgxFXHa51z3gF2j A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="328386603"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="328386603"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 06:02:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="639585266"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="639585266"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga006.jf.intel.com with SMTP; 24 Jan 2023 06:02:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Jan 2023 16:02:13 +0200
Date: Tue, 24 Jan 2023 16:02:13 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y8/k5btMRQ+VEI6/@intel.com>
References: <20230111162247.2991559-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230111162247.2991559-1-andrzej.hajda@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: implement async_flip mode per
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

On Wed, Jan 11, 2023 at 05:22:47PM +0100, Andrzej Hajda wrote:
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
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic_plane.c  | 5 ++++-
>  drivers/gpu/drm/i915/display/intel_display.c       | 7 ++++---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 3 +++
>  3 files changed, 11 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index 10e1fc9d069827..3f1b1548ede025 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -362,6 +362,7 @@ void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
>  	crtc_state->scaled_planes &= ~BIT(plane->id);
>  	crtc_state->nv12_planes &= ~BIT(plane->id);
>  	crtc_state->c8_planes &= ~BIT(plane->id);
> +	crtc_state->async_flip_planes &= ~BIT(plane->id);
>  	crtc_state->data_rate[plane->id] = 0;
>  	crtc_state->data_rate_y[plane->id] = 0;
>  	crtc_state->rel_data_rate[plane->id] = 0;
> @@ -581,8 +582,10 @@ static int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_cr
>  			 intel_plane_is_scaled(new_plane_state))))
>  		new_crtc_state->disable_lp_wm = true;
>  
> -	if (intel_plane_do_async_flip(plane, old_crtc_state, new_crtc_state))
> +	if (intel_plane_do_async_flip(plane, old_crtc_state, new_crtc_state)) {
>  		new_crtc_state->do_async_flip = true;
> +		new_crtc_state->async_flip_planes |= BIT(plane->id);
> +	}

intel_modeset_all_pipes() and intel_color_add_affected_planes() would
need to clear this stuff as well. Can't immediately think of other
places that need the same treatment (the nv12 plane stuff I believe
should be fine without this since we should be rejecting async flips
with planar formats).

Though I think that is still going to have annoying ping-pong 
for the the wm/ddb optimizations whenever there are internal
sync plane updates injected between async flips. I think to
sort that out fully we'd need to start tracking the last uapi
async flip state for each plane.

>  
>  	return 0;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index e75b9b2a0e015a..e1c3b1b0b6a8f1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1303,7 +1303,8 @@ static void intel_crtc_async_flip_disable_wa(struct intel_atomic_state *state,
>  		intel_atomic_get_old_crtc_state(state, crtc);
>  	const struct intel_crtc_state *new_crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
> -	u8 update_planes = new_crtc_state->update_planes;
> +	u8 disable_async_flip_planes = old_crtc_state->async_flip_planes &
> +				       ~new_crtc_state->async_flip_planes;
>  	const struct intel_plane_state *old_plane_state;
>  	struct intel_plane *plane;
>  	bool need_vbl_wait = false;
> @@ -1312,7 +1313,7 @@ static void intel_crtc_async_flip_disable_wa(struct intel_atomic_state *state,
>  	for_each_old_intel_plane_in_state(state, plane, old_plane_state, i) {
>  		if (plane->need_async_flip_disable_wa &&
>  		    plane->pipe == crtc->pipe &&
> -		    update_planes & BIT(plane->id)) {
> +		    disable_async_flip_planes & BIT(plane->id)) {
>  			/*
>  			 * Apart from the async flip bit we want to
>  			 * preserve the old state for the plane.
> @@ -1429,7 +1430,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
>  	 * WA for platforms where async address update enable bit
>  	 * is double buffered and only latched at start of vblank.
>  	 */
> -	if (old_crtc_state->uapi.async_flip && !new_crtc_state->uapi.async_flip)
> +	if (old_crtc_state->async_flip_planes & ~new_crtc_state->async_flip_planes)
>  		intel_crtc_async_flip_disable_wa(state, crtc);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 32e8b2fc3cc642..61b1a0ec3dede1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1248,6 +1248,9 @@ struct intel_crtc_state {
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
