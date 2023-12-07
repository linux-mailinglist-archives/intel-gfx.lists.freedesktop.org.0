Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1BFD808A3B
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Dec 2023 15:19:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BC2D8985A;
	Thu,  7 Dec 2023 14:19:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0047B8985A
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Dec 2023 14:19:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701958791; x=1733494791;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ENJMZ5sQSczfdXPwrjheAdHMELFjMy7VIM6fZGKDSuc=;
 b=WZFzK6jnfu1DjzIfmLDDUuCFoQaWvNlOYYS3dpNvmW3LvR+Tf2kLzTCb
 LbDYicnJwkx2JJvnJdJTroyD6PoefcICJklm/hJ2EKUzpK8lmDW+0LS+a
 YaglUedFAVUo+B4A0uaow11ZOqnQ6opxnSrCVt8rWQs3DMSYLro7Qu/JK
 Co49smZZhsOxROv6Jp257v/7/JKsk17n9d7bSnOHybE1yapy2Oxt1LmK6
 UAozlNS+OpTMwPBugJNOI2dgHbyo5YGky92rS7NbC6NxmOd+1+FOG/+gs
 PX1f0ldu0A7ExG7Z0yMYB7eRYptX3KmEVB5FBEnaNz94T61932gagzJI7 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="397027358"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="397027358"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 06:19:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="765126699"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="765126699"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 07 Dec 2023 06:19:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Dec 2023 16:19:48 +0200
Date: Thu, 7 Dec 2023 16:19:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Stop accessing crtc->state
 from the flip done irq
Message-ID: <ZXHUhAQS9mFPgVmh@intel.com>
References: <20230928152450.30109-1-ville.syrjala@linux.intel.com>
 <ZVy1r7Z7JwR8JQIq@intel.com>
 <DS0PR11MB8740B1CB1D1ECA45E4276D89BA85A@DS0PR11MB8740.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DS0PR11MB8740B1CB1D1ECA45E4276D89BA85A@DS0PR11MB8740.namprd11.prod.outlook.com>
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 05, 2023 at 11:16:58PM +0000, Murthy, Arun R wrote:
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> > Syrjälä
> > Sent: Tuesday, November 21, 2023 7:21 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Stop accessing crtc->state from
> > the flip done irq
> > 
> > On Thu, Sep 28, 2023 at 06:24:49PM +0300, Ville Syrjala wrote:
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > >
> > > Assuming crtc->state is pointing at the correct thing for the async
> > > flip commit is nonsense. If we had already queued up multiple commits
> > > this would point at the very lates crtc state even if the older
> > > commits hadn't even happened yet.
> > >
> > > Instead properly stage/arm the event like we do for async flips.
> > > Since we don't need to arm multiple of these at the same time we don't
> > > need a list like the normal vblank even processing uses.
> > >
> > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_crtc.c          | 9 ++++++++-
> > >  drivers/gpu/drm/i915/display/intel_display_irq.c   | 9 ++++-----
> > >  drivers/gpu/drm/i915/display/intel_display_types.h | 3 +++
> > >  3 files changed, 15 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c
> > > b/drivers/gpu/drm/i915/display/intel_crtc.c
> > > index 1fd068e6e26c..8a84a31c7b48 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> > > @@ -553,8 +553,15 @@ void intel_pipe_update_start(struct
> > > intel_atomic_state *state,
> > >
> > >  	intel_psr_lock(new_crtc_state);
> > >
> > > -	if (new_crtc_state->do_async_flip)
> > > +	if (new_crtc_state->do_async_flip) {
> > > +		spin_lock_irq(&crtc->base.dev->event_lock);
> 
> 
> Would it be better to use irqsave since we are dealing with events.

One uses irqsave/restore when the we must protect against irq handlers,
and the code can be called both with irqs enabled and irqs disabled.
Here we are always called with irqs enabled, so the save/restore would
be pointless.

> 
> > > +		/* arm the event for the flip done irq handler */
> > > +		crtc->flip_done_event = new_crtc_state->uapi.event;
> > > +		spin_unlock_irq(&crtc->base.dev->event_lock);
> > > +
> > > +		new_crtc_state->uapi.event = NULL;
> > >  		return;
> > > +	}
> > >
> > >  	if (intel_crtc_needs_vblank_work(new_crtc_state))
> > >  		intel_crtc_vblank_work_init(new_crtc_state);
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c
> > > b/drivers/gpu/drm/i915/display/intel_display_irq.c
> > > index bff4a76310c0..d3df615f0e48 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> > > @@ -340,16 +340,15 @@ static void flip_done_handler(struct
> > drm_i915_private *i915,
> > >  			      enum pipe pipe)
> > >  {
> > >  	struct intel_crtc *crtc = intel_crtc_for_pipe(i915, pipe);
> > > -	struct drm_crtc_state *crtc_state = crtc->base.state;
> > > -	struct drm_pending_vblank_event *e = crtc_state->event;
> > >  	struct drm_device *dev = &i915->drm;
> > >  	unsigned long irqflags;
> > >
> > >  	spin_lock_irqsave(&dev->event_lock, irqflags);
> > >
> > > -	crtc_state->event = NULL;
> > > -
> > > -	drm_crtc_send_vblank_event(&crtc->base, e);
> > > +	if (crtc->flip_done_event) {
> > > +		drm_crtc_send_vblank_event(&crtc->base, crtc-
> > >flip_done_event);
> > > +		crtc->flip_done_event = NULL;
> > > +	}
> > 
> > I just observed an oops here due to e==NULL with the current code.
> > I *think* I've seen it once before as well. Pstore also caught what seemed to
> > some kind of spurious DE interrupt, which might explain the oops. But not
> > really sure what happened as the machine died before I could poke at it more.
> > 
> 
> Earlier the event was set to NULL and then drm_crtc_send_vblank_event() was called.

The question is "how was this called when the event was NULL?".

The possible answers are:
- spurious flip done irq
- some kind of race with multiple commits, but can't immediately
  think how that would happen as we still signal hw_done after
  flip_done, and drm_atomic_helper_swap_state() will block on
  hw_done, and the flip_done irq will not be enabled otherwise

> 
> > >
> > >  	spin_unlock_irqrestore(&dev->event_lock, irqflags);  } diff --git
> > > a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index 8d8b2f8d37a9..a8ae1a25a550 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -1461,6 +1461,9 @@ struct intel_crtc {
> > >
> > >  	struct intel_crtc_state *config;
> > >
> > > +	/* armed event for async flip */
> > > +	struct drm_pending_vblank_event *flip_done_event;
> > > +
> > >  	/* Access to these should be protected by dev_priv->irq_lock. */
> > >  	bool cpu_fifo_underrun_disabled;
> > >  	bool pch_fifo_underrun_disabled;
> > > --
> > > 2.41.0
> > 
> > --
> > Ville Syrjälä
> > Intel
> 
> Thanks and Regards,
> Arun R Murthy
> --------------------

-- 
Ville Syrjälä
Intel
