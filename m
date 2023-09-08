Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 690587990D8
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 22:08:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBF5110E0FB;
	Fri,  8 Sep 2023 20:08:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8D4C10E0FB
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Sep 2023 20:08:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694203726; x=1725739726;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=1tqi+qmuHQvDvdCX6U2AJn7+fsJUdkZUoOCQTiOdyJI=;
 b=J0Grvz9rQbJMWG7QdGE8iyYm+OH5U288BanQFWLr9tL0ZjvFoKbDWVw2
 5zIDllLVB+quXLoNXVAMbxMsPmrGwgthQrzMELZJ8z6t/FDcoGtGaZGOe
 lOtrib4s8fQt/TtrWqW4eGktP/zt+I3VRTjf93MXmH8AyJKz3gINNhtv2
 GPW+pYbKYOegr37VvfCJ0BliEXbEDRxM3TkybbT/G/Cr9XvVeJfXfZ15W
 Lg2F2dhY0gNnFK1o2Y/l31DpoRJHRxUYJaYT1u7908Jvb0xpdzxToeWlt
 +ePu8uxSWivN4y5TzKBEvWbLjQrdPqpmxxFlPWXttALDyrBz06gK/0Wov g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="358037988"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="358037988"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 13:08:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="777706319"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="777706319"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 13:07:59 -0700
Date: Fri, 8 Sep 2023 23:08:17 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZPt/MfxLUfej8SZN@ideak-desk.fi.intel.com>
References: <20230824080517.693621-1-imre.deak@intel.com>
 <20230824080517.693621-7-imre.deak@intel.com>
 <ZPt1RzMEg0s-m91b@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZPt1RzMEg0s-m91b@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 06/22] drm/i915: Add helper to modeset a
 set of pipes
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 08, 2023 at 10:25:59PM +0300, Ville Syrjälä wrote:
> On Thu, Aug 24, 2023 at 11:05:01AM +0300, Imre Deak wrote:
> > Add intel_modeset_pipes_in_mask() to modeset a provided set of pipes,
> > used in a follow-up patch.
> > 
> > While at it add DocBook descriptions for the exported functions.
> > 
> > v2:
> > - Add a flag controlling if active planes are force updated as well.
> > - Add DockBook descriptions.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 43 ++++++++++++++++++--
> >  drivers/gpu/drm/i915/display/intel_display.h |  3 ++
> >  2 files changed, 42 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index db3c26e013e3b..a1956b89fd75d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -5420,8 +5420,24 @@ intel_verify_planes(struct intel_atomic_state *state)
> >  			     plane_state->uapi.visible);
> >  }
> >  
> > -int intel_modeset_all_pipes(struct intel_atomic_state *state,
> > -			    const char *reason)
> > +/**
> > + * intel_modeset_pipes_in_mask - force a full modeset on a set of pipes
> > + * @state: intel atomic state
> > + * @reason: the reason for the full modeset
> > + * @mask: mask of pipes to modeset
> > + * @update_active_planes: force updating all active planes
> > + *
> > + * Force a full modeset on CRTCs in @mask due to the description in @reason.
> > + * Also force updating all active planes in each modeset CRTC if
> > + * @update_active_planes is %true. This flag must be set to %true if the
> > + * function is called after new plane states are computed already and
> > + * set to %false otherwise.
> > + *
> > + * Returns 0 in case of success, negative error code otherwise.
> > + */
> > +int intel_modeset_pipes_in_mask(struct intel_atomic_state *state,
> > +				const char *reason, u8 mask,
> > +				bool update_active_planes)
> 
> Not really a fan of this parametrized behaviour. Also pretty sure we
> have several other places that trigger modesets early in the atomic
> check and all those just hand roll currently. So if we want a helper
> then it might make more sense to try to combine all those early cases
> into a new function. We could rename the current thing _late() or
> something to make it clearer when it should be used.

Ok, so the exported functions would be
intel_modeset_pipes_in_mask_early() / intel_modeset_all_pipes_late().

Yes, noticed the other early users as well, I suppose it's ok to
refactor those as a follow-up (iiuc I have even some patches for that).

> 
> >  {
> >  	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> >  	struct intel_crtc *crtc;
> > @@ -5430,7 +5446,7 @@ int intel_modeset_all_pipes(struct intel_atomic_state *state,
> >  	 * Add all pipes to the state, and force
> >  	 * a modeset on all the active ones.
> >  	 */
> > -	for_each_intel_crtc(&dev_priv->drm, crtc) {
> > +	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, mask) {
> >  		struct intel_crtc_state *crtc_state;
> >  		int ret;
> >  
> > @@ -5461,7 +5477,9 @@ int intel_modeset_all_pipes(struct intel_atomic_state *state,
> >  		if (ret)
> >  			return ret;
> >  
> > -		crtc_state->update_planes |= crtc_state->active_planes;
> > +		if (update_active_planes)
> > +			crtc_state->update_planes |= crtc_state->active_planes;
> > +
> >  		crtc_state->async_flip_planes = 0;
> >  		crtc_state->do_async_flip = false;
> >  	}
> > @@ -5469,6 +5487,23 @@ int intel_modeset_all_pipes(struct intel_atomic_state *state,
> >  	return 0;
> >  }
> >  
> > +/**
> > + * intel_modeset_all_pipes - force a full modeset on all pipes
> > + * @state: intel atomic state
> > + * @reason: the reason for the full modeset
> > + *
> > + * Force a full modeset on all CRTCs due to the description in @reason.
> > + * This function can be called only after new plane states are computed
> > + * already.
> > + *
> > + * Returns 0 in case of success, negative error code otherwise.
> > + */
> > +int intel_modeset_all_pipes(struct intel_atomic_state *state,
> > +			    const char *reason)
> > +{
> > +	return intel_modeset_pipes_in_mask(state, reason, -1, true);
> > +}
> > +
> >  /*
> >   * This implements the workaround described in the "notes" section of the mode
> >   * set sequence documentation. When going from no pipes or single pipe to
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> > index 49ac8473b988b..d9a54610d9d5e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> > @@ -515,6 +515,9 @@ void intel_update_watermarks(struct drm_i915_private *i915);
> >  /* modesetting */
> >  int intel_modeset_all_pipes(struct intel_atomic_state *state,
> >  			    const char *reason);
> > +int intel_modeset_pipes_in_mask(struct intel_atomic_state *state,
> > +				const char *reason, u8 pipe_mask,
> > +				bool update_active_planes);
> >  void intel_modeset_get_crtc_power_domains(struct intel_crtc_state *crtc_state,
> >  					  struct intel_power_domain_mask *old_domains);
> >  void intel_modeset_put_crtc_power_domains(struct intel_crtc *crtc,
> > -- 
> > 2.37.2
> 
> -- 
> Ville Syrjälä
> Intel
