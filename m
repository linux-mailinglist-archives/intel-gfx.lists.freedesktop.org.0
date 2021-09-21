Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 351DA41338A
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 14:49:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42DB76E97B;
	Tue, 21 Sep 2021 12:49:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E69F6E97D
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Sep 2021 12:49:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="287020084"
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="287020084"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2021 05:49:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="549470592"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 21 Sep 2021 05:49:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Sep 2021 15:49:24 +0300
Date: Tue, 21 Sep 2021 15:49:24 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YUnU1AK4qKEZeV3v@intel.com>
References: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
 <20210913144440.23008-3-ville.syrjala@linux.intel.com>
 <20210920075210.GA439@labuser-Z97X-UD5H>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210920075210.GA439@labuser-Z97X-UD5H>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 02/16] drm/i915: Disable all planes before
 modesetting any pipes
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

On Mon, Sep 20, 2021 at 12:52:15AM -0700, Navare, Manasi wrote:
> On Mon, Sep 13, 2021 at 05:44:26PM +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Let's disable planes on all pipes affected by the modeset before
> > we start doing the actual modeset. This means we have less
> > random planes enabled during the modeset, and it also mirrors
> > what we already do when enabling pipes on skl+ since we enable
> > planes on all pipes as the very last step. As a bonus we also
> > nuke a bunch og bigjoiner special casing.
> > 
> > I've occasionally pondered about going even furher here and
> > doing the pre_plane_update() stuff for all pipes first, then
> > actually disabling the planes, and finally running the rest
> > of the modeset sequence. This would potentially allow
> > parallelizing all the extra vblank waits across multiple pipes,
> > and would make the plane disable even more atomic. But let's
> > go one step a time here.
> 
> So you are moving the plane disables all together in the commit_disables()?
> But dont we need to pass old_crtc_state->bigjoiner_linked_crtc) crtc in case of bigjoiner?
> How is that handled?

Whether bigjoiner is used or not is irrelevant when disabling the
planes.

> 
> Regards
> Manasi
> 
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 28 +++++++++-----------
> >  1 file changed, 13 insertions(+), 15 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index cd150512d275..afa26911c236 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -9785,18 +9785,13 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
> >  
> >  	drm_WARN_ON(&dev_priv->drm, old_crtc_state->bigjoiner_slave);
> >  
> > -	intel_crtc_disable_planes(state, crtc);
> > -
> >  	/*
> >  	 * We still need special handling for disabling bigjoiner master
> >  	 * and slaves since for slave we do not have encoder or plls
> >  	 * so we dont need to disable those.
> >  	 */
> > -	if (old_crtc_state->bigjoiner) {
> > -		intel_crtc_disable_planes(state,
> > -					  old_crtc_state->bigjoiner_linked_crtc);
> > +	if (old_crtc_state->bigjoiner)
> >  		old_crtc_state->bigjoiner_linked_crtc->active = false;
> > -	}
> >  
> >  	/*
> >  	 * We need to disable pipe CRC before disabling the pipe,
> > @@ -9823,6 +9818,18 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
> >  	u32 handled = 0;
> >  	int i;
> >  
> > +	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> > +					    new_crtc_state, i) {
> > +		if (!intel_crtc_needs_modeset(new_crtc_state))
> > +			continue;
> > +
> > +		if (!old_crtc_state->hw.active)
> > +			continue;
> > +
> > +		intel_pre_plane_update(state, crtc);
> > +		intel_crtc_disable_planes(state, crtc);
> > +	}
> > +
> >  	/* Only disable port sync and MST slaves */
> >  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> >  					    new_crtc_state, i) {
> > @@ -9841,7 +9848,6 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
> >  		    !intel_dp_mst_is_slave_trans(old_crtc_state))
> >  			continue;
> >  
> > -		intel_pre_plane_update(state, crtc);
> >  		intel_old_crtc_state_disables(state, old_crtc_state,
> >  					      new_crtc_state, crtc);
> >  		handled |= BIT(crtc->pipe);
> > @@ -9855,14 +9861,6 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
> >  		    old_crtc_state->bigjoiner_slave)
> >  			continue;
> >  
> > -		intel_pre_plane_update(state, crtc);
> > -		if (old_crtc_state->bigjoiner) {
> > -			struct intel_crtc *slave =
> > -				old_crtc_state->bigjoiner_linked_crtc;
> > -
> > -			intel_pre_plane_update(state, slave);
> > -		}
> > -
> >  		if (old_crtc_state->hw.active)
> >  			intel_old_crtc_state_disables(state, old_crtc_state,
> >  						      new_crtc_state, crtc);
> > -- 
> > 2.32.0
> > 

-- 
Ville Syrjälä
Intel
