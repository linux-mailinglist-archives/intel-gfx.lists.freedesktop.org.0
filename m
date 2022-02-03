Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DBF24A8B99
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 19:25:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 832A410E898;
	Thu,  3 Feb 2022 18:25:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E036610E898
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 18:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643912755; x=1675448755;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=IuRMSIj7NjQFO7lcUjXA8zIJnzPeiyUgHnes0h1f2MA=;
 b=LGkyB1YbS1889+VIgUScfM95xPQcPyCQXNmy3L9fiqYG6t6NH0ZgCDsa
 ie2X1kJSg6barvk4WD0c8jAeAEWnKPd+BjS5sGfhRDSOG1tQ7bjGa5kwq
 WPLCurKmWndJCUz6LZFRAITKVY2Grk9yh9P+sdR4AQaKmKivbcB2IF5a5
 mfho3lExtY5DlFNW/k0LAr5m2Wpid2JQOBfvYXipG6Sd1LkLy2x+PvwYH
 J4k18KadBMk1tTp+CX8YffRac+KCgVQJ+Zau5FdHFtKTFeakEP1xYGPmE
 YGzvxYHuMoCtM0a/KKhmv75AmSGffmBUzbktCgMs1Mm4Mp1/sPaLVrh2S g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="231788745"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="231788745"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 10:22:36 -0800
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="524030427"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 10:22:34 -0800
Date: Thu, 3 Feb 2022 20:22:30 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20220203182230.GD2886729@ideak-desk.fi.intel.com>
References: <20220128114914.2339526-1-imre.deak@intel.com>
 <20220128114914.2339526-11-imre.deak@intel.com>
 <87czk6vnn1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87czk6vnn1.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 10/19] drm/i915: Convert the u64 power well
 domains mask to a bitmap
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

On Tue, Feb 01, 2022 at 01:20:50PM +0200, Jani Nikula wrote:
> On Fri, 28 Jan 2022, Imre Deak <imre.deak@intel.com> wrote:
> > To remove the aliasing of the power domain enum values in a follow-up
> > patch in this patchset (requiring a bigger mask) and allow for defining
> > additional power domains in the future (at least some upcoming TypeC
> > changes requires this) convert the u64 i915_power_well_desc::domains
> > mask to a bitmap.
> >
> > For simplicity I changed the for_each_power_domain_well() macros to
> > accept one domain only instead of a mask, as there isn't any current
> > user passing multiple domains.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  |  65 ++++-----
> >  .../drm/i915/display/intel_display_power.c    | 123 +++++++++++-------
> >  .../drm/i915/display/intel_display_power.h    |  16 ++-
> >  .../display/intel_display_power_internal.h    |   2 +-
> >  .../i915/display/intel_display_power_map.c    |   4 +-
> >  5 files changed, 119 insertions(+), 91 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 3094cfc668c81..d0b9618383ce3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -2372,66 +2372,71 @@ intel_legacy_aux_to_power_domain(enum aux_ch aux_ch)
> >  	}
> >  }
> >  
> > -static u64 get_crtc_power_domains(struct intel_crtc_state *crtc_state)
> > +static void get_crtc_power_domains(struct intel_crtc_state *crtc_state,
> > +				   intel_power_domain_mask_t *mask)
> >  {
> >  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> >  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> >  	struct drm_encoder *encoder;
> >  	enum pipe pipe = crtc->pipe;
> > -	u64 mask;
> > +
> > +	bitmap_zero(mask->bits, POWER_DOMAIN_NUM);
> >  
> >  	if (!crtc_state->hw.active)
> > -		return 0;
> > +		return;
> >  
> > -	mask = BIT_ULL(POWER_DOMAIN_PIPE(pipe));
> > -	mask |= BIT_ULL(POWER_DOMAIN_TRANSCODER(cpu_transcoder));
> > +	set_bit(POWER_DOMAIN_PIPE(pipe), mask->bits);
> > +	set_bit(POWER_DOMAIN_TRANSCODER(cpu_transcoder), mask->bits);
> >  	if (crtc_state->pch_pfit.enabled ||
> >  	    crtc_state->pch_pfit.force_thru)
> > -		mask |= BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER(pipe));
> > +		set_bit(POWER_DOMAIN_PIPE_PANEL_FITTER(pipe), mask->bits);
> >  
> >  	drm_for_each_encoder_mask(encoder, &dev_priv->drm,
> >  				  crtc_state->uapi.encoder_mask) {
> >  		struct intel_encoder *intel_encoder = to_intel_encoder(encoder);
> >  
> > -		mask |= BIT_ULL(intel_encoder->power_domain);
> > +		set_bit(intel_encoder->power_domain, mask->bits);
> >  	}
> >  
> >  	if (HAS_DDI(dev_priv) && crtc_state->has_audio)
> > -		mask |= BIT_ULL(POWER_DOMAIN_AUDIO_MMIO);
> > +		set_bit(POWER_DOMAIN_AUDIO_MMIO, mask->bits);
> >  
> >  	if (crtc_state->shared_dpll)
> > -		mask |= BIT_ULL(POWER_DOMAIN_DISPLAY_CORE);
> > +		set_bit(POWER_DOMAIN_DISPLAY_CORE, mask->bits);
> >  
> >  	if (crtc_state->dsc.compression_enable)
> > -		mask |= BIT_ULL(intel_dsc_power_domain(crtc, cpu_transcoder));
> > -
> > -	return mask;
> > +		set_bit(intel_dsc_power_domain(crtc, cpu_transcoder), mask->bits);
> >  }
> >  
> > -static u64
> > -modeset_get_crtc_power_domains(struct intel_crtc_state *crtc_state)
> > +static void
> > +modeset_get_crtc_power_domains(struct intel_crtc_state *crtc_state,
> > +			       intel_power_domain_mask_t *old_domains)
> >  {
> >  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> >  	enum intel_display_power_domain domain;
> > -	u64 domains, new_domains, old_domains;
> > +	intel_power_domain_mask_t domains, new_domains;
> >  
> > -	domains = get_crtc_power_domains(crtc_state);
> > +	get_crtc_power_domains(crtc_state, &domains);
> >  
> > -	new_domains = domains & ~crtc->enabled_power_domains.mask;
> > -	old_domains = crtc->enabled_power_domains.mask & ~domains;
> > +	bitmap_andnot(new_domains.bits,
> > +		      domains.bits,
> > +		      crtc->enabled_power_domains.mask.bits,
> > +		      POWER_DOMAIN_NUM);
> > +	bitmap_andnot(old_domains->bits,
> > +		      crtc->enabled_power_domains.mask.bits,
> > +		      domains.bits,
> > +		      POWER_DOMAIN_NUM);
> >  
> > -	for_each_power_domain(domain, new_domains)
> > +	for_each_power_domain(domain, &new_domains)
> >  		intel_display_power_get_in_set(dev_priv,
> >  					       &crtc->enabled_power_domains,
> >  					       domain);
> > -
> > -	return old_domains;
> >  }
> >  
> >  static void modeset_put_crtc_power_domains(struct intel_crtc *crtc,
> > -					   u64 domains)
> > +					   intel_power_domain_mask_t *domains)
> >  {
> >  	intel_display_power_put_mask_in_set(to_i915(crtc->base.dev),
> >  					    &crtc->enabled_power_domains,
> > @@ -8628,7 +8633,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
> >  	struct drm_i915_private *dev_priv = to_i915(dev);
> >  	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
> >  	struct intel_crtc *crtc;
> > -	u64 put_domains[I915_MAX_PIPES] = {};
> > +	intel_power_domain_mask_t put_domains[I915_MAX_PIPES] = {};
> >  	intel_wakeref_t wakeref = 0;
> >  	int i;
> >  
> > @@ -8645,9 +8650,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
> >  					    new_crtc_state, i) {
> >  		if (intel_crtc_needs_modeset(new_crtc_state) ||
> >  		    new_crtc_state->update_pipe) {
> > -
> > -			put_domains[crtc->pipe] =
> > -				modeset_get_crtc_power_domains(new_crtc_state);
> > +			modeset_get_crtc_power_domains(new_crtc_state, &put_domains[crtc->pipe]);
> >  		}
> >  	}
> >  
> > @@ -8746,7 +8749,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
> >  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
> >  		intel_post_plane_update(state, crtc);
> >  
> > -		modeset_put_crtc_power_domains(crtc, put_domains[crtc->pipe]);
> > +		modeset_put_crtc_power_domains(crtc, &put_domains[crtc->pipe]);
> >  
> >  		intel_modeset_verify_crtc(crtc, state, old_crtc_state, new_crtc_state);
> >  
> > @@ -10702,11 +10705,11 @@ intel_modeset_setup_hw_state(struct drm_device *dev,
> >  	for_each_intel_crtc(dev, crtc) {
> >  		struct intel_crtc_state *crtc_state =
> >  			to_intel_crtc_state(crtc->base.state);
> > -		u64 put_domains;
> > +		intel_power_domain_mask_t put_domains;
> >  
> > -		put_domains = modeset_get_crtc_power_domains(crtc_state);
> > -		if (drm_WARN_ON(dev, put_domains))
> > -			modeset_put_crtc_power_domains(crtc, put_domains);
> > +		modeset_get_crtc_power_domains(crtc_state, &put_domains);
> > +		if (drm_WARN_ON(dev, !bitmap_empty(put_domains.bits, POWER_DOMAIN_NUM)))
> > +			modeset_put_crtc_power_domains(crtc, &put_domains);
> >  	}
> >  
> >  	intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, wakeref);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index a370ef8376410..cf014d79682ca 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -38,13 +38,13 @@
> >  	     (__power_well) - (__dev_priv)->power_domains.power_wells >= 0;	\
> >  	     (__power_well)--)
> >  
> > -#define for_each_power_domain_well(__dev_priv, __power_well, __domain_mask)	\
> > +#define for_each_power_domain_well(__dev_priv, __power_well, __domain)	\
> >  	for_each_power_well(__dev_priv, __power_well)				\
> > -		for_each_if((__power_well)->domains & (__domain_mask))
> > +		for_each_if(test_bit((__domain), (__power_well)->domains.bits))
> >  
> > -#define for_each_power_domain_well_reverse(__dev_priv, __power_well, __domain_mask) \
> > +#define for_each_power_domain_well_reverse(__dev_priv, __power_well, __domain) \
> >  	for_each_power_well_reverse(__dev_priv, __power_well)		        \
> > -		for_each_if((__power_well)->domains & (__domain_mask))
> > +		for_each_if(test_bit((__domain), (__power_well)->domains.bits))
> >  
> >  struct i915_power_well_regs {
> >  	i915_reg_t bios;
> > @@ -141,7 +141,7 @@ bool __intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
> >  
> >  	is_enabled = true;
> >  
> > -	for_each_power_domain_well_reverse(dev_priv, power_well, BIT_ULL(domain)) {
> > +	for_each_power_domain_well_reverse(dev_priv, power_well, domain) {
> >  		if (power_well->desc->always_on)
> >  			continue;
> >  
> > @@ -460,13 +460,18 @@ icl_combo_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
> >  
> >  #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> >  
> > -static u64 async_put_domains_mask(struct i915_power_domains *power_domains);
> > +static void async_put_domains_mask(struct i915_power_domains *power_domains,
> > +				   intel_power_domain_mask_t *mask);
> >  
> >  static int power_well_async_ref_count(struct drm_i915_private *dev_priv,
> >  				      struct i915_power_well *power_well)
> >  {
> > -	int refs = hweight64(power_well->domains &
> > -			     async_put_domains_mask(&dev_priv->power_domains));
> > +	intel_power_domain_mask_t domain_mask;
> > +	int refs;
> > +
> > +	async_put_domains_mask(&dev_priv->power_domains, &domain_mask);
> > +	bitmap_and(domain_mask.bits, domain_mask.bits, power_well->domains.bits, POWER_DOMAIN_NUM);
> > +	refs = bitmap_weight(domain_mask.bits, POWER_DOMAIN_NUM);
> >  
> >  	drm_WARN_ON(&dev_priv->drm, refs > power_well->count);
> >  
> > @@ -1869,10 +1874,13 @@ static void chv_pipe_power_well_disable(struct drm_i915_private *dev_priv,
> >  	chv_set_pipe_power_well(dev_priv, power_well, false);
> >  }
> >  
> > -static u64 __async_put_domains_mask(struct i915_power_domains *power_domains)
> > +static void __async_put_domains_mask(struct i915_power_domains *power_domains,
> > +				     intel_power_domain_mask_t *mask)
> >  {
> > -	return power_domains->async_put_domains[0] |
> > -	       power_domains->async_put_domains[1];
> > +	bitmap_or(mask->bits,
> > +		  power_domains->async_put_domains[0].bits,
> > +		  power_domains->async_put_domains[1].bits,
> > +		  POWER_DOMAIN_NUM);
> >  }
> >  
> >  #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> > @@ -1883,8 +1891,11 @@ assert_async_put_domain_masks_disjoint(struct i915_power_domains *power_domains)
> >  	struct drm_i915_private *i915 = container_of(power_domains,
> >  						     struct drm_i915_private,
> >  						     power_domains);
> > -	return !drm_WARN_ON(&i915->drm, power_domains->async_put_domains[0] &
> > -			    power_domains->async_put_domains[1]);
> > +
> > +	return !drm_WARN_ON(&i915->drm,
> > +			    bitmap_intersects(power_domains->async_put_domains[0].bits,
> > +					      power_domains->async_put_domains[1].bits,
> > +					      POWER_DOMAIN_NUM));
> >  }
> >  
> >  static bool
> > @@ -1893,14 +1904,17 @@ __async_put_domains_state_ok(struct i915_power_domains *power_domains)
> >  	struct drm_i915_private *i915 = container_of(power_domains,
> >  						     struct drm_i915_private,
> >  						     power_domains);
> > +	intel_power_domain_mask_t async_put_mask;
> >  	enum intel_display_power_domain domain;
> >  	bool err = false;
> >  
> >  	err |= !assert_async_put_domain_masks_disjoint(power_domains);
> > -	err |= drm_WARN_ON(&i915->drm, !!power_domains->async_put_wakeref !=
> > -			   !!__async_put_domains_mask(power_domains));
> > +	__async_put_domains_mask(power_domains, &async_put_mask);
> > +	err |= drm_WARN_ON(&i915->drm,
> > +			   !!power_domains->async_put_wakeref !=
> > +			   !bitmap_empty(async_put_mask.bits, POWER_DOMAIN_NUM));
> >  
> > -	for_each_power_domain(domain, __async_put_domains_mask(power_domains))
> > +	for_each_power_domain(domain, &async_put_mask)
> >  		err |= drm_WARN_ON(&i915->drm,
> >  				   power_domains->domain_use_count[domain] != 1);
> >  
> > @@ -1908,14 +1922,14 @@ __async_put_domains_state_ok(struct i915_power_domains *power_domains)
> >  }
> >  
> >  static void print_power_domains(struct i915_power_domains *power_domains,
> > -				const char *prefix, u64 mask)
> > +				const char *prefix, intel_power_domain_mask_t *mask)
> >  {
> >  	struct drm_i915_private *i915 = container_of(power_domains,
> >  						     struct drm_i915_private,
> >  						     power_domains);
> >  	enum intel_display_power_domain domain;
> >  
> > -	drm_dbg(&i915->drm, "%s (%lu):\n", prefix, hweight64(mask));
> > +	drm_dbg(&i915->drm, "%s (%d):\n", prefix, bitmap_weight(mask->bits, POWER_DOMAIN_NUM));
> >  	for_each_power_domain(domain, mask)
> >  		drm_dbg(&i915->drm, "%s use_count %d\n",
> >  			intel_display_power_domain_str(domain),
> > @@ -1933,9 +1947,9 @@ print_async_put_domains_state(struct i915_power_domains *power_domains)
> >  		power_domains->async_put_wakeref);
> >  
> >  	print_power_domains(power_domains, "async_put_domains[0]",
> > -			    power_domains->async_put_domains[0]);
> > +			    &power_domains->async_put_domains[0]);
> >  	print_power_domains(power_domains, "async_put_domains[1]",
> > -			    power_domains->async_put_domains[1]);
> > +			    &power_domains->async_put_domains[1]);
> >  }
> >  
> >  static void
> > @@ -1959,11 +1973,13 @@ verify_async_put_domains_state(struct i915_power_domains *power_domains)
> >  
> >  #endif /* CONFIG_DRM_I915_DEBUG_RUNTIME_PM */
> >  
> > -static u64 async_put_domains_mask(struct i915_power_domains *power_domains)
> > +static void async_put_domains_mask(struct i915_power_domains *power_domains,
> > +				   intel_power_domain_mask_t *mask)
> > +
> >  {
> >  	assert_async_put_domain_masks_disjoint(power_domains);
> >  
> > -	return __async_put_domains_mask(power_domains);
> > +	__async_put_domains_mask(power_domains, mask);
> >  }
> >  
> >  static void
> > @@ -1972,8 +1988,8 @@ async_put_domains_clear_domain(struct i915_power_domains *power_domains,
> >  {
> >  	assert_async_put_domain_masks_disjoint(power_domains);
> >  
> > -	power_domains->async_put_domains[0] &= ~BIT_ULL(domain);
> > -	power_domains->async_put_domains[1] &= ~BIT_ULL(domain);
> > +	clear_bit(domain, power_domains->async_put_domains[0].bits);
> > +	clear_bit(domain, power_domains->async_put_domains[1].bits);
> >  }
> >  
> >  static bool
> > @@ -1981,16 +1997,19 @@ intel_display_power_grab_async_put_ref(struct drm_i915_private *dev_priv,
> >  				       enum intel_display_power_domain domain)
> >  {
> >  	struct i915_power_domains *power_domains = &dev_priv->power_domains;
> > +	intel_power_domain_mask_t async_put_mask;
> >  	bool ret = false;
> >  
> > -	if (!(async_put_domains_mask(power_domains) & BIT_ULL(domain)))
> > +	async_put_domains_mask(power_domains, &async_put_mask);
> > +	if (!test_bit(domain, async_put_mask.bits))
> >  		goto out_verify;
> >  
> >  	async_put_domains_clear_domain(power_domains, domain);
> >  
> >  	ret = true;
> >  
> > -	if (async_put_domains_mask(power_domains))
> > +	async_put_domains_mask(power_domains, &async_put_mask);
> > +	if (!bitmap_empty(async_put_mask.bits, POWER_DOMAIN_NUM))
> >  		goto out_verify;
> >  
> >  	cancel_delayed_work(&power_domains->async_put_work);
> > @@ -2012,7 +2031,7 @@ __intel_display_power_get_domain(struct drm_i915_private *dev_priv,
> >  	if (intel_display_power_grab_async_put_ref(dev_priv, domain))
> >  		return;
> >  
> > -	for_each_power_domain_well(dev_priv, power_well, BIT_ULL(domain))
> > +	for_each_power_domain_well(dev_priv, power_well, domain)
> >  		intel_power_well_get(dev_priv, power_well);
> >  
> >  	power_domains->domain_use_count[domain]++;
> > @@ -2093,20 +2112,22 @@ __intel_display_power_put_domain(struct drm_i915_private *dev_priv,
> >  	struct i915_power_domains *power_domains;
> >  	struct i915_power_well *power_well;
> >  	const char *name = intel_display_power_domain_str(domain);
> > +	intel_power_domain_mask_t async_put_mask;
> >  
> >  	power_domains = &dev_priv->power_domains;
> >  
> >  	drm_WARN(&dev_priv->drm, !power_domains->domain_use_count[domain],
> >  		 "Use count on domain %s is already zero\n",
> >  		 name);
> > +	async_put_domains_mask(power_domains, &async_put_mask);
> >  	drm_WARN(&dev_priv->drm,
> > -		 async_put_domains_mask(power_domains) & BIT_ULL(domain),
> > +		 test_bit(domain, async_put_mask.bits),
> >  		 "Async disabling of domain %s is pending\n",
> >  		 name);
> >  
> >  	power_domains->domain_use_count[domain]--;
> >  
> > -	for_each_power_domain_well_reverse(dev_priv, power_well, BIT_ULL(domain))
> > +	for_each_power_domain_well_reverse(dev_priv, power_well, domain)
> >  		intel_power_well_put(dev_priv, power_well);
> >  }
> >  
> > @@ -2135,7 +2156,7 @@ queue_async_put_domains_work(struct i915_power_domains *power_domains,
> >  }
> >  
> >  static void
> > -release_async_put_domains(struct i915_power_domains *power_domains, u64 mask)
> > +release_async_put_domains(struct i915_power_domains *power_domains, intel_power_domain_mask_t *mask)
> >  {
> >  	struct drm_i915_private *dev_priv =
> >  		container_of(power_domains, struct drm_i915_private,
> > @@ -2183,12 +2204,15 @@ intel_display_power_put_async_work(struct work_struct *work)
> >  		goto out_verify;
> >  
> >  	release_async_put_domains(power_domains,
> > -				  power_domains->async_put_domains[0]);
> > +				  &power_domains->async_put_domains[0]);
> >  
> >  	/* Requeue the work if more domains were async put meanwhile. */
> > -	if (power_domains->async_put_domains[1]) {
> > -		power_domains->async_put_domains[0] =
> > -			fetch_and_zero(&power_domains->async_put_domains[1]);
> > +	if (!bitmap_empty(power_domains->async_put_domains[1].bits, POWER_DOMAIN_NUM)) {
> > +		bitmap_copy(power_domains->async_put_domains[0].bits,
> > +			    power_domains->async_put_domains[1].bits,
> > +			    POWER_DOMAIN_NUM);
> > +		bitmap_zero(power_domains->async_put_domains[1].bits,
> > +			    POWER_DOMAIN_NUM);
> >  		queue_async_put_domains_work(power_domains,
> >  					     fetch_and_zero(&new_work_wakeref));
> >  	} else {
> > @@ -2240,9 +2264,9 @@ void __intel_display_power_put_async(struct drm_i915_private *i915,
> >  
> >  	/* Let a pending work requeue itself or queue a new one. */
> >  	if (power_domains->async_put_wakeref) {
> > -		power_domains->async_put_domains[1] |= BIT_ULL(domain);
> > +		set_bit(domain, power_domains->async_put_domains[1].bits);
> >  	} else {
> > -		power_domains->async_put_domains[0] |= BIT_ULL(domain);
> > +		set_bit(domain, power_domains->async_put_domains[0].bits);
> >  		queue_async_put_domains_work(power_domains,
> >  					     fetch_and_zero(&work_wakeref));
> >  	}
> > @@ -2273,6 +2297,7 @@ void __intel_display_power_put_async(struct drm_i915_private *i915,
> >  void intel_display_power_flush_work(struct drm_i915_private *i915)
> >  {
> >  	struct i915_power_domains *power_domains = &i915->power_domains;
> > +	intel_power_domain_mask_t async_put_mask;
> >  	intel_wakeref_t work_wakeref;
> >  
> >  	mutex_lock(&power_domains->lock);
> > @@ -2281,8 +2306,8 @@ void intel_display_power_flush_work(struct drm_i915_private *i915)
> >  	if (!work_wakeref)
> >  		goto out_verify;
> >  
> > -	release_async_put_domains(power_domains,
> > -				  async_put_domains_mask(power_domains));
> > +	async_put_domains_mask(power_domains, &async_put_mask);
> > +	release_async_put_domains(power_domains, &async_put_mask);
> >  	cancel_delayed_work(&power_domains->async_put_work);
> >  
> >  out_verify:
> > @@ -2361,13 +2386,13 @@ intel_display_power_get_in_set(struct drm_i915_private *i915,
> >  {
> >  	intel_wakeref_t __maybe_unused wf;
> >  
> > -	drm_WARN_ON(&i915->drm, power_domain_set->mask & BIT_ULL(domain));
> > +	drm_WARN_ON(&i915->drm, test_bit(domain, power_domain_set->mask.bits));
> >  
> >  	wf = intel_display_power_get(i915, domain);
> >  #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> >  	power_domain_set->wakerefs[domain] = wf;
> >  #endif
> > -	power_domain_set->mask |= BIT_ULL(domain);
> > +	set_bit(domain, power_domain_set->mask.bits);
> >  }
> >  
> >  bool
> > @@ -2377,7 +2402,7 @@ intel_display_power_get_in_set_if_enabled(struct drm_i915_private *i915,
> >  {
> >  	intel_wakeref_t wf;
> >  
> > -	drm_WARN_ON(&i915->drm, power_domain_set->mask & BIT_ULL(domain));
> > +	drm_WARN_ON(&i915->drm, test_bit(domain, power_domain_set->mask.bits));
> >  
> >  	wf = intel_display_power_get_if_enabled(i915, domain);
> >  	if (!wf)
> > @@ -2386,7 +2411,7 @@ intel_display_power_get_in_set_if_enabled(struct drm_i915_private *i915,
> >  #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> >  	power_domain_set->wakerefs[domain] = wf;
> >  #endif
> > -	power_domain_set->mask |= BIT_ULL(domain);
> > +	set_bit(domain, power_domain_set->mask.bits);
> >  
> >  	return true;
> >  }
> > @@ -2394,11 +2419,11 @@ intel_display_power_get_in_set_if_enabled(struct drm_i915_private *i915,
> >  void
> >  intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
> >  				    struct intel_display_power_domain_set *power_domain_set,
> > -				    u64 mask)
> > +				    intel_power_domain_mask_t *mask)
> >  {
> >  	enum intel_display_power_domain domain;
> >  
> > -	drm_WARN_ON(&i915->drm, mask & ~power_domain_set->mask);
> > +	drm_WARN_ON(&i915->drm, !bitmap_subset(mask->bits, power_domain_set->mask.bits, POWER_DOMAIN_NUM));
> >  
> >  	for_each_power_domain(domain, mask) {
> >  		intel_wakeref_t __maybe_unused wf = -1;
> > @@ -2407,7 +2432,7 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
> >  		wf = fetch_and_zero(&power_domain_set->wakerefs[domain]);
> >  #endif
> >  		intel_display_power_put(i915, domain, wf);
> > -		power_domain_set->mask &= ~BIT_ULL(domain);
> > +		clear_bit(domain, power_domain_set->mask.bits);
> >  	}
> >  }
> >  
> > @@ -2711,8 +2736,6 @@ int intel_power_domains_init(struct drm_i915_private *dev_priv)
> >  	dev_priv->dmc.target_dc_state =
> >  		sanitize_target_dc_state(dev_priv, DC_STATE_EN_UPTO_DC6);
> >  
> > -	BUILD_BUG_ON(POWER_DOMAIN_NUM > 64);
> > -
> >  	mutex_init(&power_domains->lock);
> >  
> >  	INIT_DELAYED_WORK(&power_domains->async_put_work,
> > @@ -3805,7 +3828,7 @@ static void intel_power_domains_dump_info(struct drm_i915_private *i915)
> >  		drm_dbg(&i915->drm, "%-25s %d\n",
> >  			power_well->desc->name, power_well->count);
> >  
> > -		for_each_power_domain(domain, power_well->domains)
> > +		for_each_power_domain(domain, &power_well->domains)
> >  			drm_dbg(&i915->drm, "  %-23s %d\n",
> >  				intel_display_power_domain_str(domain),
> >  				power_domains->domain_use_count[domain]);
> > @@ -3847,7 +3870,7 @@ static void intel_power_domains_verify_state(struct drm_i915_private *i915)
> >  				power_well->count, enabled);
> >  
> >  		domains_count = 0;
> > -		for_each_power_domain(domain, power_well->domains)
> > +		for_each_power_domain(domain, &power_well->domains)
> >  			domains_count += power_domains->domain_use_count[domain];
> >  
> >  		if (power_well->count != domains_count) {
> > @@ -3962,7 +3985,7 @@ void intel_display_power_debug(struct drm_i915_private *i915, struct seq_file *m
> >  		seq_printf(m, "%-25s %d\n", power_well->desc->name,
> >  			   power_well->count);
> >  
> > -		for_each_power_domain(power_domain, power_well->domains)
> > +		for_each_power_domain(power_domain, &power_well->domains)
> >  			seq_printf(m, "  %-23s %d\n",
> >  				   intel_display_power_domain_str(power_domain),
> >  				   power_domains->domain_use_count[power_domain]);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> > index c3232809b95f9..c7155801f9bc6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> > @@ -164,6 +164,8 @@ enum i915_power_well_id {
> >  	((tran) == TRANSCODER_EDP ? POWER_DOMAIN_TRANSCODER_EDP : \
> >  	 (tran) + POWER_DOMAIN_TRANSCODER_A)
> >  
> > +typedef struct { DECLARE_BITMAP(bits, POWER_DOMAIN_NUM); } intel_power_domain_mask_t;
> 
> I think the typedef is overkill here, and they should only be used for
> totally opaque objects anyway per coding style.
> 
> I guess having the struct makes it easier to manage it in parameters and
> declarations, so it would be:
> 
> struct intel_power_domain_mask {
> 	DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);
> };

Ok. Btw, I found having a struct useful after forgetting to convert

if (domains) ...

to

if (!bitmap_empty(domains)) ...

--Imre

> 
> 
> BR,
> Jani.
> 
> > +
> >  struct i915_power_domains {
> >  	/*
> >  	 * Power wells needed for initialization at driver init and suspend
> > @@ -181,21 +183,21 @@ struct i915_power_domains {
> >  
> >  	struct delayed_work async_put_work;
> >  	intel_wakeref_t async_put_wakeref;
> > -	u64 async_put_domains[2];
> > +	intel_power_domain_mask_t async_put_domains[2];
> >  
> >  	struct i915_power_well *power_wells;
> >  };
> >  
> >  struct intel_display_power_domain_set {
> > -	u64 mask;
> > +	intel_power_domain_mask_t mask;
> >  #ifdef CONFIG_DRM_I915_DEBUG_RUNTIME_PM
> >  	intel_wakeref_t wakerefs[POWER_DOMAIN_NUM];
> >  #endif
> >  };
> >  
> > -#define for_each_power_domain(domain, mask)				\
> > -	for ((domain) = 0; (domain) < POWER_DOMAIN_NUM; (domain)++)	\
> > -		for_each_if(BIT_ULL(domain) & (mask))
> > +#define for_each_power_domain(__domain, __mask)				\
> > +	for ((__domain) = 0; (__domain) < POWER_DOMAIN_NUM; (__domain)++)	\
> > +		for_each_if(test_bit((__domain), (__mask)->bits))
> >  
> >  /* intel_display_power.c */
> >  int intel_power_domains_init(struct drm_i915_private *dev_priv);
> > @@ -278,13 +280,13 @@ intel_display_power_get_in_set_if_enabled(struct drm_i915_private *i915,
> >  void
> >  intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
> >  				    struct intel_display_power_domain_set *power_domain_set,
> > -				    u64 mask);
> > +				    intel_power_domain_mask_t *mask);
> >  
> >  static inline void
> >  intel_display_power_put_all_in_set(struct drm_i915_private *i915,
> >  				   struct intel_display_power_domain_set *power_domain_set)
> >  {
> > -	intel_display_power_put_mask_in_set(i915, power_domain_set, power_domain_set->mask);
> > +	intel_display_power_put_mask_in_set(i915, power_domain_set, &power_domain_set->mask);
> >  }
> >  
> >  void intel_display_power_debug(struct drm_i915_private *i915, struct seq_file *m);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_internal.h b/drivers/gpu/drm/i915/display/intel_display_power_internal.h
> > index 49f6155e62c47..c4167ac2f21f8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_internal.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_internal.h
> > @@ -68,7 +68,7 @@ struct i915_power_well_desc {
> >  
> >  struct i915_power_well {
> >  	const struct i915_power_well_desc *desc;
> > -	u64 domains;
> > +	intel_power_domain_mask_t domains;
> >  	/* power well enable/disable usage count */
> >  	int count;
> >  	/* cached hw enabled state */
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > index 42f5541c5ecc8..7ec4cafec6ba5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > @@ -2220,13 +2220,13 @@ static void init_power_well_domains(const struct i915_power_well_desc *desc,
> >  		return;
> >  
> >  	if (desc->domain_list->count == 0) {
> > -		power_well->domains = GENMASK_ULL(POWER_DOMAIN_NUM - 1, 0);
> > +		bitmap_fill(power_well->domains.bits, POWER_DOMAIN_NUM);
> >  
> >  		return;
> >  	}
> >  
> >  	for (j = 0; j < desc->domain_list->count; j++)
> > -		power_well->domains |= BIT_ULL(desc->domain_list->list[j]);
> > +		set_bit(desc->domain_list->list[j], power_well->domains.bits);
> >  }
> >  
> >  static int
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
