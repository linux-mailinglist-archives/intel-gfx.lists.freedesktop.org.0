Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 363CF7A6A81
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 20:14:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91F5610E1D7;
	Tue, 19 Sep 2023 18:14:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CEBD10E143
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Sep 2023 18:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695147248; x=1726683248;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=vq4Ouz7LX6jxzA19hkeCWDfaL8FOaL7MARAUNpG3UY8=;
 b=VwxZbuh8Gmp+NSVtR2MTuxFh918WCLV6ppdj3jgf9X7amXBTMvFRjtIL
 XELKzE+h1F4eIl4aFoOrkoQ1pQE2dWwQLG9fjw6OuqBujZC6FG0VyS2Au
 h6VfGI3CMHDuJi0Wjl1nGg5JlDWlTgV8BaAwMnk902ILCYrl03A5JfCqk
 F+cdMS3skMNz64a2wWas8R5hkzQZtYogvU1pE2ZTuE8f7LkxvyvWhQwTW
 NxgvDMF4mqhXv1KzZJWlQu8XjZ7+1WONl/gM8eXvRUtEnmtw8tYRDoWTk
 TTGEpl0RGZQGvsaNKycSLXKZ8gjpaGta7hkjFw7QcSaNFvWbtuWaOr2A5 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="370333876"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="370333876"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 11:14:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="722965234"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="722965234"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 11:14:06 -0700
Date: Tue, 19 Sep 2023 21:14:27 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZQnlA/g4jzYxSPhU@ideak-desk.fi.intel.com>
References: <20230914192659.757475-1-imre.deak@intel.com>
 <20230914192659.757475-12-imre.deak@intel.com>
 <ZQnBwAPEimmZVziF@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZQnBwAPEimmZVziF@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 11/25] drm/i915/fdi: Recompute state for
 affected CRTCs on FDI links
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

On Tue, Sep 19, 2023 at 06:44:00PM +0300, Ville Syrj�l� wrote:
> On Thu, Sep 14, 2023 at 10:26:45PM +0300, Imre Deak wrote:
> > Recompute the state of all CRTCs on an FDI link during a modeset that
> > may be affected by the modeset of other CRTCs on the same link. This
> > ensures that each CRTC on the link maximizes its BW use (after another
> > CRTC is disabled).
> > 
> > In practice this means recomputing pipe B's config on IVB if pipe C gets
> > disabled.
> > 
> > v2:
> > - Add the change recomputing affected CRTC states in a separate patch.
> >   (Ville)
> > 
> > Cc: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c |  4 ++
> >  drivers/gpu/drm/i915/display/intel_fdi.c     | 53 ++++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_fdi.h     |  1 +
> >  3 files changed, 58 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index aad16dcceb788..31297a333f50e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -6210,6 +6210,10 @@ int intel_atomic_check_config(struct intel_atomic_state *state,
> >  	if (ret)
> >  		return ret;
> >  
> > +	ret = intel_fdi_add_affected_crtcs(state);
> > +	if (ret)
> > +		return ret;
> > +
> >  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> >  		if (!intel_crtc_needs_modeset(new_crtc_state)) {
> >  			if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
> > diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
> > index ad01915a4a39b..d723ae7e10d71 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> > @@ -120,6 +120,59 @@ void intel_fdi_link_train(struct intel_crtc *crtc,
> >  	dev_priv->display.funcs.fdi->fdi_link_train(crtc, crtc_state);
> >  }
> >  
> > +/**
> > + * intel_fdi_add_affected_crtcs - add CRTCs on FDI affected by other modeset CRTCs
> > + * @state: intel atomic state
> > + *
> > + * Add a CRTC using FDI to @state if changing another CRTC's FDI BW usage is
> > + * known to affect the available FDI BW for the former CRTC. In practice this
> > + * means adding CRTC B on IVYBRIDGE if its use of FDI lanes is limited (by
> > + * CRTC C) and CRTC C is getting disabled.
> > + *
> > + * Returns 0 in case of success, or a negative error code otherwise.
> > + */
> > +int intel_fdi_add_affected_crtcs(struct intel_atomic_state *state)
> > +{
> > +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> > +	struct intel_crtc_state *old_crtc_state;
> > +	struct intel_crtc_state *new_crtc_state;
> 
> Both look like they can be const.

Ok.

> > +	struct intel_crtc *crtc;
> > +
> > +	if (!IS_IVYBRIDGE(i915))
> 
> Should also check num_pipes==3 since pipe C can (at least in theory)
> be fused off.

Yes, but thought that pipe C's new_crtc_state would be NULL then.
Can make the check more explicit in any case.

> > +		return 0;
> > +
> > +	crtc = intel_crtc_for_pipe(i915, PIPE_C);
> > +	new_crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
> > +
> > +	if (!new_crtc_state)
> > +		return 0;
> > +
> > +	old_crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
> 
> old vs. new mixup

Err, yes thanks for catching it.

> > +
> > +	if (!old_crtc_state->fdi_lanes)
> > +		return 0;
> > +
> > +	if (!intel_crtc_needs_modeset(new_crtc_state))
> > +		return 0;
> > +
> > +	if (new_crtc_state->uapi.enable)
> > +		return 0;
> 
> We could be switching pipe C from driving a PCH port to driving
> the CPU eDP port. So this check seems a bit wrong.

Yes, didn't think of that case. I'll change it to:

	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
	if (new_crtc_state->uapi.enable && encoder->port != PORT_A)
		return 0;

> > +
> > +	crtc = intel_crtc_for_pipe(i915, PIPE_B);
> > +	new_crtc_state = intel_atomic_get_crtc_state(&state->base, crtc);
> > +
> > +	if (IS_ERR(new_crtc_state))
> > +		return PTR_ERR(old_crtc_state);
> > +
> > +	old_crtc_state = intel_atomic_get_old_crtc_state(state, crtc);
> > +	if (!old_crtc_state->fdi_lanes)
> > +		return 0;
> > +
> > +	return intel_modeset_pipes_in_mask_early(state,
> > +						 "FDI link BW decrease on pipe C",
> > +						 BIT(PIPE_B));
> > +}
> > +
> >  /* units of 100MHz */
> >  static int pipe_required_fdi_lanes(struct intel_crtc_state *crtc_state)
> >  {
> > diff --git a/drivers/gpu/drm/i915/display/intel_fdi.h b/drivers/gpu/drm/i915/display/intel_fdi.h
> > index 129444c580f27..eb02b967bb440 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fdi.h
> > +++ b/drivers/gpu/drm/i915/display/intel_fdi.h
> > @@ -14,6 +14,7 @@ struct intel_crtc_state;
> >  struct intel_encoder;
> >  struct intel_link_bw_limits;
> >  
> > +int intel_fdi_add_affected_crtcs(struct intel_atomic_state *state);
> >  int intel_fdi_link_freq(struct drm_i915_private *i915,
> >  			const struct intel_crtc_state *pipe_config);
> >  int ilk_fdi_compute_config(struct intel_crtc *intel_crtc,
> > -- 
> > 2.37.2
> 
> -- 
> Ville Syrj�l�
> Intel
