Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17121440346
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Oct 2021 21:33:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11CDF6EA83;
	Fri, 29 Oct 2021 19:33:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE1936EA80
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Oct 2021 19:33:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10152"; a="291571846"
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="291571846"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 12:33:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="495825515"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 29 Oct 2021 12:33:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Oct 2021 22:33:50 +0300
Date: Fri, 29 Oct 2021 22:33:50 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Cc: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>,
 "B S, Karthik" <karthik.b.s@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Message-ID: <YXxMnvxMAF32RIzr@intel.com>
References: <20211028203418.69680-1-jose.souza@intel.com>
 <YXuToZWS85LP7ftd@intel.com>
 <ef277430243319664ea65ffe5126392ed658055c.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ef277430243319664ea65ffe5126392ed658055c.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Check async flip state of
 every crtc and plane once
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

On Fri, Oct 29, 2021 at 05:47:22PM +0000, Souza, Jose wrote:
> On Fri, 2021-10-29 at 09:24 +0300, Ville Syrjälä wrote:
> > On Thu, Oct 28, 2021 at 01:34:18PM -0700, José Roberto de Souza wrote:
> > > For every crtc in state, intel_atomic_check_async() was checking all
> > > the crtc and plane states again.
> > > 
> > > Cc: Karthik B S <karthik.b.s@intel.com>
> > > Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 38 ++++++++++----------
> > >  1 file changed, 20 insertions(+), 18 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 79cd158503b37..3b5a8e971343f 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -7707,35 +7707,37 @@ static void kill_bigjoiner_slave(struct intel_atomic_state *state,
> > >   * correspond to the last vblank and have no relation to the actual time when
> > >   * the flip done event was sent.
> > >   */
> > > -static int intel_atomic_check_async(struct intel_atomic_state *state)
> > > +static int intel_atomic_check_async(struct intel_atomic_state *state, struct intel_crtc *crtc)
> > >  {
> > >  	struct drm_i915_private *i915 = to_i915(state->base.dev);
> > >  	const struct intel_crtc_state *old_crtc_state, *new_crtc_state;
> > >  	const struct intel_plane_state *new_plane_state, *old_plane_state;
> > > -	struct intel_crtc *crtc;
> > >  	struct intel_plane *plane;
> > >  	int i;
> > >  
> > > -	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> > > -					    new_crtc_state, i) {
> > > -		if (intel_crtc_needs_modeset(new_crtc_state)) {
> > > -			drm_dbg_kms(&i915->drm, "Modeset Required. Async flip not supported\n");
> > > -			return -EINVAL;
> > > -		}
> > > +	old_crtc_state = intel_atomic_get_old_crtc_state(state, crtc);
> > > +	new_crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
> > >  
> > > -		if (!new_crtc_state->hw.active) {
> > > -			drm_dbg_kms(&i915->drm, "CRTC inactive\n");
> > > -			return -EINVAL;
> > > -		}
> > > -		if (old_crtc_state->active_planes != new_crtc_state->active_planes) {
> > > -			drm_dbg_kms(&i915->drm,
> > > -				    "Active planes cannot be changed during async flip\n");
> > > -			return -EINVAL;
> > > -		}
> > > +	if (intel_crtc_needs_modeset(new_crtc_state)) {
> > > +		drm_dbg_kms(&i915->drm, "Modeset Required. Async flip not supported\n");
> > > +		return -EINVAL;
> > > +	}
> > > +
> > > +	if (!new_crtc_state->hw.active) {
> > > +		drm_dbg_kms(&i915->drm, "CRTC inactive\n");
> > > +		return -EINVAL;
> > > +	}
> > > +	if (old_crtc_state->active_planes != new_crtc_state->active_planes) {
> > > +		drm_dbg_kms(&i915->drm,
> > > +			    "Active planes cannot be changed during async flip\n");
> > > +		return -EINVAL;
> > >  	}
> > >  
> > >  	for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state,
> > >  					     new_plane_state, i) {
> > > +		if (plane->base.crtc != &crtc->base)
> > > +			continue;
> > 
> > Not the pointer you want to be looking at.
> 
> new_plane_state->hw.crtc?

That looks like it should work here. The trouble with that pointer in
general is that when the plane is getting disabled the pointer is already
NULL while some bits of code will still want to consider planes that are
just about to get disabled. So sometimes you'll have to look at both the
old and new plane states, or just take a shortcut and check ->pipe since
we don't support moving planes between pipes anyway.

It's also a bit scary that intel_atomic_check_async() doesn't check
whether the plane is actually enabled or not currently. But I guess
we're saved by the fact that the async flip uapi is too limited to
allow that to happen.

> 
> > 
> > > +
> > >  		/*
> > >  		 * TODO: Async flip is only supported through the page flip IOCTL
> > >  		 * as of now. So support currently added for primary plane only.
> > > @@ -8054,7 +8056,7 @@ static int intel_atomic_check(struct drm_device *dev,
> > >  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> > >  					    new_crtc_state, i) {
> > >  		if (new_crtc_state->uapi.async_flip) {
> > > -			ret = intel_atomic_check_async(state);
> > > +			ret = intel_atomic_check_async(state, crtc);
> > >  			if (ret)
> > >  				goto fail;
> > >  		}
> > > -- 
> > > 2.33.1
> > 
> 

-- 
Ville Syrjälä
Intel
