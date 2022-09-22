Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 619825E680F
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 18:06:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBE9010EC90;
	Thu, 22 Sep 2022 16:06:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DD4910EC8C
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 16:06:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663862802; x=1695398802;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=1jIB6P67uxZpHSBnwGzzfktz6KtDBw2QNGReUZwdruU=;
 b=Z0ITZTOIn5sKanjlzfuevkduR7nPJi1iOh2aeaCdgVyozBpAhYNadFkM
 Jz84v8rfKnsJneCWRVxaWZVFeZX6jr7VKIBYHFm2b1k9GhIX6pJA65IZK
 etmernHSzgIOJ0PA+dOz+hzIUNznvHnZN9zV2qZ0OAO6Ub9mCQLU4uuOm
 igk5e2UCOumQ7jVyTU7ZOUwAym2kaHbCYDHi2JAvDCEnq8nZBDG0aORPI
 KDEh7wGDMLeg+WSZZL96oDPE1HTEcNBCFbPeMZ8rm/m7l26QEDMm0i9m8
 J3WEXcJVv0MrVr07tpMw7/kbUjF3Li2XAKXE+BAoC8jqEDp0tWMYGe0yv w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="280062620"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="280062620"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 09:06:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="597491935"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 22 Sep 2022 09:06:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 22 Sep 2022 19:06:37 +0300
Date: Thu, 22 Sep 2022 19:06:37 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YyyIDenoFfHjPXnK@intel.com>
References: <20220921122343.13061-1-ville.syrjala@linux.intel.com>
 <20220921122343.13061-5-ville.syrjala@linux.intel.com>
 <875yhf5rpi.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <875yhf5rpi.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Decouple I915_NUM_PLLS from
 PLL IDs
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

On Thu, Sep 22, 2022 at 06:55:37PM +0300, Jani Nikula wrote:
> On Wed, 21 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Stop assuming the size of PLL ID based bitmask is restricted
> > to I915_NUM_PLLS bits. This is the last thing coupling the
> > two things together and thus artificially limiting PLL IDs.
> >
> > We could just pass any arbitrary (large enough) size to
> > for_each_set_bit() and be done with it, but the WARN
> > requiring the caller to not pass in a bogus bitmask seems
> > potentially useful to keep around. So let's just calculate
> > the full bitmask on the spot.
> >
> > And while at it let's assert that the PLL IDs will fit
> > into the bitmask we use for them.
> >
> > TODO: could also get rid of I915_NUM_PLLS entirely and just
> > dynamically allocate i915->shared_dplls[] and state->shared_dpll[].
> > But that would involve error handling in the modeset init path. Uff.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 24 +++++++++++++++++--
> >  1 file changed, 22 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > index fb09029cc4aa..ee04b63d2696 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -315,6 +315,21 @@ void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
> >  	mutex_unlock(&dev_priv->display.dpll.lock);
> >  }
> >  
> > +static unsigned long
> > +intel_dpll_mask_all(struct drm_i915_private *i915)
> > +{
> > +	unsigned long dpll_mask = 0;
> > +	int i;
> > +
> > +	for (i = 0; i < i915->display.dpll.num_shared_dpll; i++) {
> > +		struct intel_shared_dpll *pll = &i915->display.dpll.shared_dplls[i];
> > +
> > +		dpll_mask |= BIT(pll->info->id);
> > +	}
> > +
> > +	return dpll_mask;
> > +}
> > +
> >  static struct intel_shared_dpll *
> >  intel_find_shared_dpll(struct intel_atomic_state *state,
> >  		       const struct intel_crtc *crtc,
> > @@ -322,15 +337,16 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
> >  		       unsigned long dpll_mask)
> >  {
> >  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> > +	unsigned long dpll_mask_all = intel_dpll_mask_all(dev_priv);
> >  	struct intel_shared_dpll_state *shared_dpll;
> >  	struct intel_shared_dpll *unused_pll = NULL;
> >  	enum intel_dpll_id id;
> >  
> >  	shared_dpll = intel_atomic_get_shared_dpll_state(&state->base);
> >  
> > -	drm_WARN_ON(&dev_priv->drm, dpll_mask & ~(BIT(I915_NUM_PLLS) - 1));
> > +	drm_WARN_ON(&dev_priv->drm, dpll_mask & ~dpll_mask_all);
> >  
> > -	for_each_set_bit(id, &dpll_mask, I915_NUM_PLLS) {
> > +	for_each_set_bit(id, &dpll_mask, fls(dpll_mask_all)) {
> >  		struct intel_shared_dpll *pll;
> >  		int i;
> >  
> > @@ -4234,6 +4250,10 @@ void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
> >  				i >= ARRAY_SIZE(dev_priv->display.dpll.shared_dplls)))
> >  			break;
> 
> Would be nice to add
> 
> 	unsigned long dpll_mask;
> 
>         drm_WARN_ON(&dev_priv->drm, dpll_mask & BIT(pll->info->id));
> 
> 	dpll_mask |= BIT(pll->info->id);
> 
> to check for collisions.

Yeah, I guess we can do that. Doing it only at init time might be
nicer but then I'd have to duplicate some code... What a conundrum.

> 
> >  
> > +		/* must fit into unsigned long bitmask on 32bit */
> > +		if (drm_WARN_ON(&dev_priv->drm, dpll_info[i].id >= 32))
> 
> BITS_PER_TYPE(dpll_mask) instead of 32? Of course would only hit this
> when actually running a 32-bit build.

I'd prefer to catch it in 64bit builds too. This is the reason
I hate 'long'.

> 
> Regardless,
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
> > +			break;
> > +
> >  		dev_priv->display.dpll.shared_dplls[i].info = &dpll_info[i];
> >  	}
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
