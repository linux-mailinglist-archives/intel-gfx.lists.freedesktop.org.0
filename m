Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC724379E4
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 17:26:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63B546ED9E;
	Fri, 22 Oct 2021 15:26:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1BC56ED99
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Oct 2021 15:26:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10144"; a="216489581"
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="216489581"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 08:26:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="534962686"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 22 Oct 2021 08:26:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 22 Oct 2021 18:26:20 +0300
Date: Fri, 22 Oct 2021 18:26:20 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Message-ID: <YXLYHAp187kjjB2a@intel.com>
References: <20211022103304.24164-1-ville.syrjala@linux.intel.com>
 <20211022103304.24164-2-ville.syrjala@linux.intel.com>
 <6efccfdb568cd3fc85b844c2813da0de016de413.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6efccfdb568cd3fc85b844c2813da0de016de413.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 1/9] drm/i915/psr: Disable PSR before
 modesets turn off all planes
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

On Fri, Oct 22, 2021 at 02:29:01PM +0000, Hogander, Jouni wrote:
> On Fri, 2021-10-22 at 13:32 +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > PSR2 apparently requires some planes to be enabled for some
> > silly reason, and so we are now trying to turn PSR off before
> > planes go off. Except during a full modeset that is handled
> > less clearly through reorganization of the modeset sequence.
> > That is not great as it makes the code mode complex, and
> > prevents us from doing nice things such as just turning off
> > all the planes at the very start of the modeset. So let's
> > move the PSR pre_plane_update() thing to a spot where it
> > will handle both full modesets and everything else.
> 
> Reviewed-by: Jouni Högander <jouni.hogander@intel.com>

Thanks.

> One minor comment below in case you send a new version for some reason.
> 
> > 
> > Cc: José Roberto de Souza <jose.souza@intel.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c |  3 ++-
> >  drivers/gpu/drm/i915/display/intel_psr.c     | 25 +++++++-----------
> > --
> >  drivers/gpu/drm/i915/display/intel_psr.h     |  3 ++-
> >  3 files changed, 13 insertions(+), 18 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 2b97c8797177..5201d6cdd5db 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -1429,6 +1429,8 @@ static void intel_pre_plane_update(struct
> > intel_atomic_state *state,
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> >  	enum pipe pipe = crtc->pipe;
> >  
> > +	intel_psr_pre_plane_update(state, crtc);
> > +
> >  	if (hsw_pre_update_disable_ips(old_crtc_state, new_crtc_state))
> >  		hsw_disable_ips(old_crtc_state);
> >  
> > @@ -8668,7 +8670,6 @@ static void intel_atomic_commit_tail(struct
> > intel_atomic_state *state)
> >  		intel_encoders_update_prepare(state);
> >  
> >  	intel_dbuf_pre_plane_update(state);
> > -	intel_psr_pre_plane_update(state);
> >  
> >  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state,
> > i) {
> >  		if (new_crtc_state->uapi.async_flip)
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > b/drivers/gpu/drm/i915/display/intel_psr.c
> > index ccffe05784d3..b1e48c6be8d1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -1725,11 +1725,17 @@ int intel_psr2_sel_fetch_update(struct
> > intel_atomic_state *state,
> >  	return 0;
> >  }
> >  
> > -static void _intel_psr_pre_plane_update(const struct
> > intel_atomic_state *state,
> > -					const struct intel_crtc_state
> > *crtc_state)
> > +void intel_psr_pre_plane_update(struct intel_atomic_state *state,
> > +				struct intel_crtc *crtc)
> >  {
> > +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> > +	const struct intel_crtc_state *crtc_state =
> > +		intel_atomic_get_new_crtc_state(state, crtc);
> >  	struct intel_encoder *encoder;
> >  
> > +	if (!HAS_PSR(i915))
> > +		return;
> > +
> >  	for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
> >  					     crtc_state-
> > >uapi.encoder_mask) {
> >  		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> > @@ -1744,6 +1750,7 @@ static void _intel_psr_pre_plane_update(const
> > struct intel_atomic_state *state,
> >  		 * - All planes will go inactive
> >  		 * - Changing between PSR versions
> >  		 */
> 
> This comment is not reflecting the code anymore.

Well, we are going to turn off all the planes for a full modeset.
So not really untrue either. But not sure the comment has any real
value anyway if it just parrots what the code says anyway.

> 
> > +		needs_to_disable |=
> > intel_crtc_needs_modeset(crtc_state);
> >  		needs_to_disable |= !crtc_state->has_psr;
> >  		needs_to_disable |= !crtc_state->active_planes;
> >  		needs_to_disable |= crtc_state->has_psr2 != psr-
> > >psr2_enabled;
> > @@ -1755,20 +1762,6 @@ static void _intel_psr_pre_plane_update(const
> > struct intel_atomic_state *state,
> >  	}
> >  }
> >  
> > -void intel_psr_pre_plane_update(const struct intel_atomic_state
> > *state)
> > -{
> > -	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> > -	struct intel_crtc_state *crtc_state;
> > -	struct intel_crtc *crtc;
> > -	int i;
> > -
> > -	if (!HAS_PSR(dev_priv))
> > -		return;
> > -
> > -	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i)
> > -		_intel_psr_pre_plane_update(state, crtc_state);
> > -}
> > -
> >  static void _intel_psr_post_plane_update(const struct
> > intel_atomic_state *state,
> >  					 const struct intel_crtc_state
> > *crtc_state)
> >  {
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.h
> > b/drivers/gpu/drm/i915/display/intel_psr.h
> > index facffbacd357..3d9c0e13c329 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.h
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> > @@ -20,7 +20,8 @@ struct intel_plane;
> >  struct intel_encoder;
> >  
> >  void intel_psr_init_dpcd(struct intel_dp *intel_dp);
> > -void intel_psr_pre_plane_update(const struct intel_atomic_state
> > *state);
> > +void intel_psr_pre_plane_update(struct intel_atomic_state *state,
> > +				struct intel_crtc *crtc);
> >  void intel_psr_post_plane_update(const struct intel_atomic_state
> > *state);
> >  void intel_psr_disable(struct intel_dp *intel_dp,
> >  		       const struct intel_crtc_state *old_crtc_state);
> 

-- 
Ville Syrjälä
Intel
