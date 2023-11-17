Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ACE57EEC78
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 08:07:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCD4110E71B;
	Fri, 17 Nov 2023 07:07:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 786D610E71B
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 07:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700204871; x=1731740871;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=eRKujyBjDByAySLwQDkuCMsvqPL2kFecpugUggaXZbU=;
 b=BxYhgv+nUhr+BD4aReu/Sg4gUYRN+9NjatGfIC2vjqmAE6wEETLl3rno
 /i0/S8gpwxbfC/qW2XkFjL1Xj6vhwiGJ0KZnDqhoV1z4cVhUlyPkUTMGg
 Lz/kJOwxPAoQvQ1NLdHUv3wmOzKv+/ott5l6OLk3yZuf8ryEOA1234+7G
 /nuGca9jYNKnjZV2mJbkLR4dWTj6CpOowGtctHGThLnUhyOddvy3EoL7e
 UxuOqFu/Pzm/oH6Pu2FfJ2rKAjsSafzA1icPsxvNbQzxE3Z480UYZ8pcw
 10ciSr+et6HsU4wPlVPC0tLKRM2fnd8JGveUMGtu7FXtQ3lLgGEzf/w9j g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="477466045"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="477466045"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 23:07:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="759088081"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="759088081"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 16 Nov 2023 23:07:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Nov 2023 09:07:47 +0200
Date: Fri, 17 Nov 2023 09:07:47 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Message-ID: <ZVcRQ_CLQ0N6hhAc@intel.com>
References: <20231109153450.142185-1-maarten.lankhorst@linux.intel.com>
 <20231109153450.142185-2-maarten.lankhorst@linux.intel.com>
 <CY5PR11MB6344C633C0151E9C6D2C8349F4B0A@CY5PR11MB6344.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CY5PR11MB6344C633C0151E9C6D2C8349F4B0A@CY5PR11MB6344.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Use vblank worker to unpin
 old legacy cursor fb safely
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 16, 2023 at 07:49:40AM +0000, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Maarten
> > Lankhorst
> > Sent: Thursday, November 9, 2023 9:05 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Use vblank worker to unpin old legacy
> > cursor fb safely
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > The cursor hardware only does sync updates, and thus the hardware will be
> > scanning out from the old fb until the next start of vblank.
> > So in order to make the legacy cursor fastpath actually safe we should not unpin
> > the old fb until we're sure the hardware has ceased accessing it. The simplest
> > approach is to just use a vblank work here to do the delayed unpin.
> > 
> > Not 100% sure it's a good idea to put this onto the same high priority vblank
> > worker as eg. our timing critical gamma updates.
> > But let's keep it simple for now, and it we later discover that this is causing
> > problems we can think about adding a lower priority worker for such things.
> > 
> > This patch is slightly reworked by Maarten
> > 
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cursor.c   | 37 ++++++++++++++++---
> >  drivers/gpu/drm/i915/display/intel_display.c  |  3 ++
> >  .../drm/i915/display/intel_display_types.h    |  3 ++
> >  3 files changed, 38 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c
> > b/drivers/gpu/drm/i915/display/intel_cursor.c
> > index b342fad180ca5..1728ecd5cc782 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> > @@ -603,6 +603,17 @@ static bool intel_cursor_format_mod_supported(struct
> > drm_plane *_plane,
> >  	return format == DRM_FORMAT_ARGB8888;
> >  }
> > 
> > +static void intel_cursor_unpin_work(struct kthread_work *base) {
> > +	struct drm_vblank_work *work = to_drm_vblank_work(base);
> > +	struct intel_plane_state *plane_state =
> > +		container_of(work, typeof(*plane_state), unpin_work);
> > +	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
> > +
> > +	intel_plane_unpin_fb(plane_state);
> > +	intel_plane_destroy_state(&plane->base, &plane_state->uapi); }
> > +
> >  static int
> >  intel_legacy_cursor_update(struct drm_plane *_plane,
> >  			   struct drm_crtc *_crtc,
> > @@ -688,9 +699,14 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
> >  	if (ret)
> >  		goto out_free;
> > 
> > -	ret = intel_plane_pin_fb(new_plane_state);
> > -	if (ret)
> > -		goto out_free;
> > +	if (new_plane_state->uapi.fb != old_plane_state->uapi.fb) {
> > +		ret = intel_plane_pin_fb(new_plane_state);
> > +		if (ret)
> > +			goto out_free;
> > +	} else {
> > +		/* magic trick */
> 
> Please add some comment on the rationale for change

NAK to this "trick" outright. Xe needs to be made to return
the same vma when you pin the same obj with the same ggtt layout
multiple times. Otherwise we'll also have other problems such as
potentially not even being able to do a nop atomic commit since
we're going to end up using twice the ggtt address space that
we should be using.

As a quick fix we should be able to replace the old.fb != new.fb
check with old.vma != new.vma. I think with xe that's going to suck
more as supposedly we have to take the vblank worker path every
time for now, but at least it should work. I even posted that
version IIRC.

> 
> > +		swap(new_plane_state->ggtt_vma, old_plane_state->ggtt_vma);
> > +	}
> > 
> >  	intel_frontbuffer_flush(to_intel_frontbuffer(new_plane_state->hw.fb),
> >  				ORIGIN_CURSOR_UPDATE);
> > @@ -730,14 +746,25 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
> > 
> >  	local_irq_enable();
> > 
> > -	intel_plane_unpin_fb(old_plane_state);
> > +	if (old_plane_state->uapi.fb != new_plane_state->uapi.fb) {
> > +		drm_vblank_work_init(&old_plane_state->unpin_work, &crtc-
> > >base,
> > +				     intel_cursor_unpin_work);
> > +
> > +		drm_vblank_work_schedule(&old_plane_state->unpin_work,
> > +
> > drm_crtc_accurate_vblank_count(&crtc->base) + 1,
> > +					 false);
> > +
> > +		old_plane_state = NULL;
> > +	} else {
> > +		intel_plane_unpin_fb(old_plane_state);
> 
> Could it not cause an issue with reference counts, here we are invoking the
> unpin_fb but its respective pin call is replaced with a gggtt_vma swap operation.
> intel_unpin_fb_vma will get called which will try to lower the ref count.
> 
> > +	}
> > 
> >  out_free:
> >  	if (new_crtc_state)
> >  		intel_crtc_destroy_state(&crtc->base, &new_crtc_state->uapi);
> >  	if (ret)
> >  		intel_plane_destroy_state(&plane->base, &new_plane_state-
> > >uapi);
> > -	else
> > +	else if (old_plane_state)
> >  		intel_plane_destroy_state(&plane->base, &old_plane_state-
> > >uapi);
> >  	return ret;
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 3effafcbb411a..9b43810f9a934 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -64,6 +64,7 @@
> >  #include "intel_crt.h"
> >  #include "intel_crtc.h"
> >  #include "intel_crtc_state_dump.h"
> > +#include "intel_cursor.h"
> 
> This can be dropped.
> 
> >  #include "intel_ddi.h"
> >  #include "intel_de.h"
> >  #include "intel_display_driver.h"
> > @@ -6883,6 +6884,8 @@ static void intel_commit_modeset_disables(struct
> > intel_atomic_state *state)
> > 
> >  		intel_pre_plane_update(state, crtc);
> >  		intel_crtc_disable_planes(state, crtc);
> > +
> > +		drm_vblank_work_flush_all(&crtc->base);
> >  	}
> > 
> >  	/* Only disable port sync and MST slaves */ diff --git
> > a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 926bf9c1a3ede..6d27cfb4f08e7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -709,6 +709,9 @@ struct intel_plane_state {
> > 
> >  	struct intel_fb_view view;
> > 
> > +	/* for legacy cursor fb unpin */
> > +	struct drm_vblank_work unpin_work;
> > +
> >  	/* Plane pxp decryption state */
> >  	bool decrypt;
> > 
> > --
> > 2.39.2
> 

-- 
Ville Syrjälä
Intel
