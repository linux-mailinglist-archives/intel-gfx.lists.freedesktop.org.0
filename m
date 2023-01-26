Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C8267D59E
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 20:45:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C159910E031;
	Thu, 26 Jan 2023 19:45:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD43D10E031
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Jan 2023 19:45:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674762345; x=1706298345;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=x1MNgfGNK4Vp1R6hxW4NiwtgpcAleW/+YsK8kOAVOjY=;
 b=MxstdGbW2b6v79rt3eiUPSFF9zWbHJrZrfRSUuKyVk8Ht0+p9xcEfFW7
 IV40GVL68G7+zrMyptMC5W0FMxhpy0cHzm7E3AhAictbF3AhMUDlycPs1
 bs/GhxBQ7hhgnqF520kCfKl2xrWIfX5spmaNOw/AiQTT2WbUwT2IQwP2B
 GIrYfXD1Nx9g4vDaUsWq7sAvbOjGXgeQsJYne/kEuk+e/ikf94lVIrj8h
 W7dNiGGV4Ur6Bys0LbqPMknJ5cpt+1TB/kztrdoRtUAd/VzVe4ke/n+aw
 8z80ujO0CgP6IyKq1ctgShCgoN0twYrSa27Y/connH4AzAI89myng4nej w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="325602514"
X-IronPort-AV: E=Sophos;i="5.97,249,1669104000"; d="scan'208";a="325602514"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 11:45:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="751714463"
X-IronPort-AV: E=Sophos;i="5.97,249,1669104000"; d="scan'208";a="751714463"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by FMSMGA003.fm.intel.com with SMTP; 26 Jan 2023 11:45:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 26 Jan 2023 21:45:42 +0200
Date: Thu, 26 Jan 2023 21:45:42 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y9LYZiKrU8tyjSXR@intel.com>
References: <20230111162247.2991559-1-andrzej.hajda@intel.com>
 <Y8/k5btMRQ+VEI6/@intel.com>
 <3d457482-94f7-3997-2c1e-3dbd03a3d331@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3d457482-94f7-3997-2c1e-3dbd03a3d331@intel.com>
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

On Thu, Jan 26, 2023 at 07:14:30PM +0100, Andrzej Hajda wrote:
> On 24.01.2023 15:02, Ville Syrjälä wrote:
> > On Wed, Jan 11, 2023 at 05:22:47PM +0100, Andrzej Hajda wrote:
> >> Current implementation of async flip w/a relies on assumption that
> >> previous atomic commit contains valid information if async_flip is still
> >> enabled on the plane. It is incorrect. If previous commit did not modify
> >> the plane its state->uapi.async_flip can be false. As a result DMAR/PIPE
> >> errors can be observed:
> >> i915 0000:00:02.0: [drm] *ERROR* Fault errors on pipe A: 0x00000080
> >> i915 0000:00:02.0: [drm] *ERROR* Fault errors on pipe A: 0x00000080
> >> DMAR: DRHD: handling fault status reg 2
> >> DMAR: [DMA Read NO_PASID] Request device [00:02.0] fault addr 0x0 [fault reason 0x06] PTE Read access is not set
> >>
> >> v2: update async_flip_planes in more reliable places (Ville)
> >>
> >> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_atomic_plane.c  | 5 ++++-
> >>   drivers/gpu/drm/i915/display/intel_display.c       | 7 ++++---
> >>   drivers/gpu/drm/i915/display/intel_display_types.h | 3 +++
> >>   3 files changed, 11 insertions(+), 4 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> >> index 10e1fc9d069827..3f1b1548ede025 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> >> @@ -362,6 +362,7 @@ void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
> >>   	crtc_state->scaled_planes &= ~BIT(plane->id);
> >>   	crtc_state->nv12_planes &= ~BIT(plane->id);
> >>   	crtc_state->c8_planes &= ~BIT(plane->id);
> >> +	crtc_state->async_flip_planes &= ~BIT(plane->id);
> >>   	crtc_state->data_rate[plane->id] = 0;
> >>   	crtc_state->data_rate_y[plane->id] = 0;
> >>   	crtc_state->rel_data_rate[plane->id] = 0;
> >> @@ -581,8 +582,10 @@ static int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_cr
> >>   			 intel_plane_is_scaled(new_plane_state))))
> >>   		new_crtc_state->disable_lp_wm = true;
> >>   
> >> -	if (intel_plane_do_async_flip(plane, old_crtc_state, new_crtc_state))
> >> +	if (intel_plane_do_async_flip(plane, old_crtc_state, new_crtc_state)) {
> >>   		new_crtc_state->do_async_flip = true;
> >> +		new_crtc_state->async_flip_planes |= BIT(plane->id);
> >> +	}
> > 
> > intel_modeset_all_pipes() and intel_color_add_affected_planes() would
> > need to clear this stuff as well. Can't immediately think of other
> 
> I am not familiar with the display, so forgive me being verbose in 
> verification of your comments :)
> 1. In case of intel_modeset_all_pipes
>   for every crtc: crtc_state->async_flip_planes = 0;
> 2. In case of intel_color_add_affected_planes:
>   for every plane: new_crtc_state->async_flip_planes &= ~BIT(plane->id);

I think I'd do async_flip_planes=0 in both case, and also
do_async_flip=false. Guarantees we don't end up in some funny
state where some planes would want to do an async update
and some other ones a sync update.

> Are the changes OK?
> 
> > places that need the same treatment (the nv12 plane stuff I believe
> > should be fine without this since we should be rejecting async flips
> > with planar formats).
> 
> The driver is quite big and I quickly get lost when lurking into it, so 
> hard to comment it :)
> 
> > 
> > Though I think that is still going to have annoying ping-pong
> > for the the wm/ddb optimizations whenever there are internal
> > sync plane updates injected between async flips. I think to
> 
> Hmm, I hoped, that since intel_crtc_duplicate_state preserves 
> async_flip_planes ping-pong shouldn't happen.
> 
> > sort that out fully we'd need to start tracking the last uapi
> > async flip state for each plane.
> 
> 
> I hoped async_flip_planes should serve it, modulo it is not fully clear 
> to me when to switch async_flip. Enabling async flip is quite clear 
> (requested by user), but disabling:
> - full modeset,
> - sync fb update,
> - plane disable,
> - cases mentioned above,
> - ?

That reminds me that skl_{ddb,wm}_add_affected_planes() should
also disable async flips.

> 
> Is it OK to send next version with added clearing code in 
> intel_modeset_all_pipes and intel_color_add_affected_planes ?

Yeah, I think that should be good enough improvement for the moment.

> 
> Regards
> Andrzej
> 
> > 
> >>   
> >>   	return 0;
> >>   }
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> >> index e75b9b2a0e015a..e1c3b1b0b6a8f1 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >> @@ -1303,7 +1303,8 @@ static void intel_crtc_async_flip_disable_wa(struct intel_atomic_state *state,
> >>   		intel_atomic_get_old_crtc_state(state, crtc);
> >>   	const struct intel_crtc_state *new_crtc_state =
> >>   		intel_atomic_get_new_crtc_state(state, crtc);
> >> -	u8 update_planes = new_crtc_state->update_planes;
> >> +	u8 disable_async_flip_planes = old_crtc_state->async_flip_planes &
> >> +				       ~new_crtc_state->async_flip_planes;
> >>   	const struct intel_plane_state *old_plane_state;
> >>   	struct intel_plane *plane;
> >>   	bool need_vbl_wait = false;
> >> @@ -1312,7 +1313,7 @@ static void intel_crtc_async_flip_disable_wa(struct intel_atomic_state *state,
> >>   	for_each_old_intel_plane_in_state(state, plane, old_plane_state, i) {
> >>   		if (plane->need_async_flip_disable_wa &&
> >>   		    plane->pipe == crtc->pipe &&
> >> -		    update_planes & BIT(plane->id)) {
> >> +		    disable_async_flip_planes & BIT(plane->id)) {
> >>   			/*
> >>   			 * Apart from the async flip bit we want to
> >>   			 * preserve the old state for the plane.
> >> @@ -1429,7 +1430,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
> >>   	 * WA for platforms where async address update enable bit
> >>   	 * is double buffered and only latched at start of vblank.
> >>   	 */
> >> -	if (old_crtc_state->uapi.async_flip && !new_crtc_state->uapi.async_flip)
> >> +	if (old_crtc_state->async_flip_planes & ~new_crtc_state->async_flip_planes)
> >>   		intel_crtc_async_flip_disable_wa(state, crtc);
> >>   }
> >>   
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> >> index 32e8b2fc3cc642..61b1a0ec3dede1 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> >> @@ -1248,6 +1248,9 @@ struct intel_crtc_state {
> >>   	/* bitmask of planes that will be updated during the commit */
> >>   	u8 update_planes;
> >>   
> >> +	/* bitmask of planes with async flip active */
> >> +	u8 async_flip_planes;
> >> +
> >>   	u8 framestart_delay; /* 1-4 */
> >>   	u8 msa_timing_delay; /* 0-3 */
> >>   
> >> -- 
> >> 2.34.1
> > 

-- 
Ville Syrjälä
Intel
