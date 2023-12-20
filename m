Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D291E81A16A
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Dec 2023 15:49:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 413F810E57C;
	Wed, 20 Dec 2023 14:49:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CF1C10E57C
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 14:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703083740; x=1734619740;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=eD5akF41nsGXGEybZtG1WMOPX6i2LVoCzH1hv/3byvk=;
 b=mcrD7iSpqca2MA61Hqgqtwfz2f30Id0QU9xv31XrHVMgBomcdBduG5GN
 Y+OmX3/rgz9qDNOe0UWsoNF+GGA+5xjNd96oeCPcaaTeQeS+M75Q/R3HP
 XX0VhwghQp+HmG8GXCAIVtjTddW7pH0dfVojDk2nVUViVjdYzbD9fFTga
 WbLOX3BJZPP80ONKU5WF52C6BLi/lhTTgkpxXFMrTY+BKNOG2Hoap+XuD
 h6YwYCWn586eO0dbx1iZfWAr3IzjZCwGqGwaqV5N5+kG+zvBh5jY8Lnrh
 27K4Ygpy8oLqVvA7H457aNmL2KKyEv31xNLgxNCR0F1vaaFa2G4DXimUO Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="2663135"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; 
   d="scan'208";a="2663135"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 06:48:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="769607428"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; d="scan'208";a="769607428"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 20 Dec 2023 06:48:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 20 Dec 2023 16:48:55 +0200
Date: Wed, 20 Dec 2023 16:48:55 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Subject: Re: [PATCH 8/9] drm/i915: Perform vblank evasion around legacy
 cursor updates
Message-ID: <ZYL-1416tbqydw0C@intel.com>
References: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
 <20231213102519.13500-9-ville.syrjala@linux.intel.com>
 <CY5PR11MB63440EB2396C4C24EE0C1A1DF496A@CY5PR11MB6344.namprd11.prod.outlook.com>
 <CY5PR11MB6344EA05F9B4796CCEDE704DF496A@CY5PR11MB6344.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CY5PR11MB6344EA05F9B4796CCEDE704DF496A@CY5PR11MB6344.namprd11.prod.outlook.com>
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

On Wed, Dec 20, 2023 at 11:45:44AM +0000, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Shankar, Uma
> > Sent: Wednesday, December 20, 2023 5:11 PM
> > To: Ville Syrjala <ville.syrjala@linux.intel.com>; intel-gfx@lists.freedesktop.org
> > Subject: RE: [PATCH 8/9] drm/i915: Perform vblank evasion around legacy cursor
> > updates
> > 
> > 
> > 
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > > Ville Syrjala
> > > Sent: Wednesday, December 13, 2023 3:55 PM
> > > To: intel-gfx@lists.freedesktop.org
> > > Subject: [PATCH 8/9] drm/i915: Perform vblank evasion around legacy
> > > cursor updates
> > >
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > >
> > > Our legacy cursor updates are actually mailbox updates.
> > > Ie. the hardware latches things once per frame on start of vblank, but
> > > we issue an number of updates per frame, withough any attempt to
> > > synchronize against the vblank in software. So in theory only the last
> > > update issued during the frame will latch, and the previous ones are discarded.
> > >
> > > However this can lead to problems with maintaining the ggtt/iommu
> > > mappings as we have no idea which updates will actually latch.
> > >
> > > The problem is exacerbated by the hardware's annoying disarming
> > > behaviour; any non-arming register write will disarm an already armed
> > > update, only to be rearmed later by the arming register (CURBASE in
> > > case of cursors). If a disarming write happens just before the start
> > > of vblank, and the arming write happens after start of vblank we have
> > > effectively prevented the hardware from latching anything. And if we
> > > manage to straddle multiple sequential vblank starts in this manner we
> > > effectively prevent the hardware from latching any new registers for
> > > an arbitrary amount of time. This provides more time for the (potentially still in
> > use by the hardware) gtt/iommu mappings to be torn down.
> > >
> > > A partial solution, of course, is to use vblank evasion to avoid the
> > > register writes from spreading on both sides of the start of vblank.
> > >
> > > I've previously highlighted this problem as a general issue affecting
> > > mailbox updates. I even added some notes to the
> > > {i9xx,skl}_crtc_planes_update_arm() to remind us that the noarm and
> > > arm phases both need to pulled into the vblank evasion critical
> > > section if we actually decided to implement mailbox updates in
> > > general. But as I never impelemented the
> > > noarm+arm split for cursors we don't have to worry about that for the moment.
> > >
> > > We've been lucky enough so far that this hasn't really caused
> > > problems. One thing that does help is that Xorg generally sticks to
> > > the same cursor BO. But igt seems pretty good at hitting this on MTL
> > > now, so apparently we have to start thinking about this.
> > 
> > Was not aware that a disarming update will disarm an armed update and make
> > the vblank sync irrelevant. Thanks for a good writeup highlighting the issue, really
> > helps.
> > 
> > Yeah, this should help maintain consistency with cursor updates and ensure the
> > sync at vblank. Change looks Good to me.
> > Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> > 
> > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_cursor.c | 16 ++++++++++------
> > >  1 file changed, 10 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c
> > > b/drivers/gpu/drm/i915/display/intel_cursor.c
> > > index 926e2de00eb5..77531838001f 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> > > @@ -22,6 +22,7 @@
> > >  #include "intel_frontbuffer.h"
> > >  #include "intel_psr.h"
> > >  #include "intel_psr_regs.h"
> > > +#include "intel_vblank.h"
> > >  #include "skl_watermark.h"
> > >
> > >  #include "gem/i915_gem_object.h"
> > > @@ -647,12 +648,14 @@ intel_legacy_cursor_update(struct drm_plane
> > > *_plane, {
> > >  	struct intel_plane *plane = to_intel_plane(_plane);
> > >  	struct intel_crtc *crtc = to_intel_crtc(_crtc);
> > > +	struct drm_i915_private *i915 = to_i915(plane->base.dev);
> > >  	struct intel_plane_state *old_plane_state =
> > >  		to_intel_plane_state(plane->base.state);
> > >  	struct intel_plane_state *new_plane_state;
> > >  	struct intel_crtc_state *crtc_state =
> > >  		to_intel_crtc_state(crtc->base.state);
> > >  	struct intel_crtc_state *new_crtc_state;
> > > +	struct intel_vblank_evade_ctx evade;
> > >  	int ret;
> > >
> > >  	/*
> > > @@ -745,14 +748,15 @@ intel_legacy_cursor_update(struct drm_plane
> > *_plane,
> > >  	 */
> > >  	crtc_state->active_planes = new_crtc_state->active_planes;
> > >
> > > -	/*
> > > -	 * Technically we should do a vblank evasion here to make
> > > -	 * sure all the cursor registers update on the same frame.
> > > -	 * For now just make sure the register writes happen as
> > > -	 * quickly as possible to minimize the race window.
> > > -	 */
> > > +	intel_vblank_evade_init(crtc_state, crtc_state, &evade);
> 
> Missed to update: 
> Should the 2nd argument not be new_crtc_state ?

We'll discard 'new_crtc_state' at the end and we just update
'crtc_state' in place (only active_planes actually). So essentially
'crtc_state' here is the new state already. That should be perfectly
fine for the purposes of vblank evasion since that only cares about
the old state when modesets are involved (which is never the case here).

> 
> > >  	local_irq_disable();
> > >
> > > +	if (!drm_WARN_ON(&i915->drm, drm_crtc_vblank_get(&crtc->base))) {
> > > +		intel_vblank_evade(&evade);
> > > +		drm_crtc_vblank_put(&crtc->base);
> > > +	}
> > > +
> > >  	if (new_plane_state->uapi.visible) {
> > >  		intel_plane_update_noarm(plane, crtc_state, new_plane_state);
> > >  		intel_plane_update_arm(plane, crtc_state, new_plane_state);
> > > --
> > > 2.41.0
> 

-- 
Ville Syrjälä
Intel
