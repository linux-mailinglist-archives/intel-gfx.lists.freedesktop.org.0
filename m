Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B457EEEE6
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 10:40:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88A9D10E734;
	Fri, 17 Nov 2023 09:40:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96AE210E734
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 09:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700214055; x=1731750055;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Dwd2Xo/XHx3se36yUrhZnSL0VsGAcbnJquCDLiOxegI=;
 b=aJ0amXEg6dy+xY7A+PfKeo4PRGjQlwgl90Jj5VD/J+fhMQFl7sPY0YNv
 Th1I2PF++SMWRRQtRRUl+ydt6lUn5X5DcP+QwNTyG/c6ij4WyxAyda+lJ
 oE8ZFpeSEBU/5KhINUDq5bY75Yg3i9OhBX4P274DPKLvU42/qBOBD73b6
 y5d28+NLTDiAyo9vOJcJ0QQudy6z8mDAjtEFEmxWgUExlMiNwZuxVLNL6
 +ER/JOI7SpKwTrhdOErqyAmSnHEKdF2flkl4UVkaw9Px2cUHAkUrieqnG
 K2VruZ6XDGQ5E+NnlJiVxzKI6i/bqYpA+NOnO5qkxe9BQ0cNnOrNci1xz Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="12815704"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="12815704"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 01:40:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="759123029"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="759123029"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 17 Nov 2023 01:40:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Nov 2023 11:40:50 +0200
Date: Fri, 17 Nov 2023 11:40:50 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <ZVc1IgVWBqiIpqiN@intel.com>
References: <20231109153450.142185-1-maarten.lankhorst@linux.intel.com>
 <20231109153450.142185-3-maarten.lankhorst@linux.intel.com>
 <ZVcS19ZKt2ui-4AH@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZVcS19ZKt2ui-4AH@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Use a different vblank worker
 for atomic unpin
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

On Fri, Nov 17, 2023 at 09:14:31AM +0200, Ville Syrjälä wrote:
> On Thu, Nov 09, 2023 at 04:34:50PM +0100, Maarten Lankhorst wrote:
> > For the atomic codepath we unpin_work in old_plane_state to unpin the
> > old fb. As this happened after swapping state, this is allowed.
> > 
> > Use the unpin_work only as a barrier, and keep doing the actual
> > unpinning in the atomic path.
> > 
> > Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_atomic_plane.c | 18 ++++++++++++
> >  .../gpu/drm/i915/display/intel_atomic_plane.h |  2 ++
> >  drivers/gpu/drm/i915/display/intel_crtc.c     | 28 +++++++++++++++++++
> >  3 files changed, 48 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > index 06c2455bdd788..6ddb4f4ec79ac 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > @@ -1164,6 +1164,9 @@ intel_cleanup_plane_fb(struct drm_plane *plane,
> >  	intel_display_rps_mark_interactive(dev_priv, state, false);
> >  
> >  	/* Should only be called after a successful intel_prepare_plane_fb()! */
> > +	if (old_plane_state->unpin_work.vblank)
> > +		drm_vblank_work_flush(&old_plane_state->unpin_work);
> 
> This feels rather convoluted. Can't we just schedule the cleanup work
> to the vblank worker instead of the normal wq?

I suppose the other option would be to just do a vblank wait right here.

> 
> > +
> >  	intel_plane_unpin_fb(old_plane_state);
> >  }
> >  
> > @@ -1176,3 +1179,18 @@ void intel_plane_helper_add(struct intel_plane *plane)
> >  {
> >  	drm_plane_helper_add(&plane->base, &intel_plane_helper_funcs);
> >  }
> > +
> > +/* Completion is enough */
> > +static void intel_plane_cursor_vblank_work(struct kthread_work *base)
> > +{ }
> > +
> > +void intel_plane_init_cursor_vblank_work(struct intel_plane_state *old_plane_state,
> > +					 struct intel_plane_state *new_plane_state)
> > +{
> > +	if (!old_plane_state->ggtt_vma ||
> > +	    old_plane_state->ggtt_vma == new_plane_state->ggtt_vma)
> > +		return;
> > +
> > +	drm_vblank_work_init(&old_plane_state->unpin_work, old_plane_state->uapi.crtc,
> > +			     intel_plane_cursor_vblank_work);
> > +}
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> > index 191dad0efc8e6..5a897cf6fa021 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> > @@ -66,5 +66,7 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state);
> >  void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
> >  			       struct intel_plane_state *plane_state);
> >  void intel_plane_helper_add(struct intel_plane *plane);
> > +void intel_plane_init_cursor_vblank_work(struct intel_plane_state *old_plane_state,
> > +					 struct intel_plane_state *new_plane_state);
> >  
> >  #endif /* __INTEL_ATOMIC_PLANE_H__ */
> > diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> > index 1fd068e6e26ca..755c40fd0ac13 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> > @@ -559,6 +559,19 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
> >  	if (intel_crtc_needs_vblank_work(new_crtc_state))
> >  		intel_crtc_vblank_work_init(new_crtc_state);
> >  
> > +	if (state->base.legacy_cursor_update) {
> > +		struct intel_plane *plane;
> > +		struct intel_plane_state *old_plane_state, *new_plane_state;
> > +		int i;
> > +
> > +		for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state,
> > +						     new_plane_state, i) {
> > +			if (old_plane_state->uapi.crtc == &crtc->base)
> > +				intel_plane_init_cursor_vblank_work(old_plane_state,
> > +								    new_plane_state);
> > +		}
> > +	}
> > +
> >  	intel_crtc_vblank_evade_scanlines(state, crtc, &min, &max, &vblank_start);
> >  	if (min <= 0 || max <= 0)
> >  		goto irq_disable;
> > @@ -721,6 +734,21 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
> >  		new_crtc_state->uapi.event = NULL;
> >  	}
> >  
> > +	if (state->base.legacy_cursor_update) {
> > +		struct intel_plane *plane;
> > +		struct intel_plane_state *old_plane_state;
> > +		int i;
> > +
> > +		for_each_old_intel_plane_in_state(state, plane, old_plane_state, i) {
> > +			if (old_plane_state->uapi.crtc == &crtc->base &&
> > +			    old_plane_state->unpin_work.vblank) {
> > +				drm_vblank_work_schedule(&old_plane_state->unpin_work,
> > +							 drm_crtc_accurate_vblank_count(&crtc->base) + 1,
> > +							 false);
> > +			}
> > +		}
> > +	}
> > +
> >  	/*
> >  	 * Send VRR Push to terminate Vblank. If we are already in vblank
> >  	 * this has to be done _after_ sampling the frame counter, as
> > -- 
> > 2.39.2
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
