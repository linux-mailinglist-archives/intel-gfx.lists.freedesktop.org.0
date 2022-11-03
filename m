Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC230617BF4
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 12:53:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08FE510E5D9;
	Thu,  3 Nov 2022 11:53:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72CF110E5D9
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 11:53:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667476406; x=1699012406;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=VuMyEMxYUCnAcWP57iHGFUY9cUXDMdv4VfN4tDLpOcE=;
 b=NXHoG+LQVgp1lH5ldDqfpFVPgcahBfIaFo3P1iU42P5mxddmUdiGxoUM
 4cp/96m3QKa/yHhDGILEO0T+yUqsCc4ZTayuM8SWQz6WVszihpPkMRt0X
 kTtCIfAFxnrghA/tLURfULgDfhPOwfw5N4xh2wgOo2RqPFExoDN8zkLOU
 Nop6+y0I+a2gdXcCGN4DhCSmT+xORvPdJaIOx43afyVcCaYHNhLQno4cd
 e8QMA/co96GJG7819kI3rfumTbquOY+MHjJz89sSLIe69CISVxcTWNOdY
 xmdPZ4RrQu8BbghlQKvget5bvmJVaa2vmAfOPYRbjiKhELdRCAfjNerCZ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="310776490"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="310776490"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 04:53:25 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="634645690"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="634645690"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 04:53:24 -0700
Date: Thu, 3 Nov 2022 13:53:20 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y2OrsMuO8FzBo369@ideak-desk.fi.intel.com>
References: <20221102171530.3261282-1-imre.deak@intel.com>
 <20221102171530.3261282-2-imre.deak@intel.com>
 <878rktchgu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <878rktchgu.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915: Allocate power domain set
 wakerefs dynamically
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

On Wed, Nov 02, 2022 at 08:57:21PM +0200, Jani Nikula wrote:
> On Wed, 02 Nov 2022, Imre Deak <imre.deak@intel.com> wrote:
> > Since the intel_display_power_domain_set struct, currently its current
> > size close 1kB, can be allocated on the stack, it's better to allocate
> > the per-domain wakeref pointer array - used for debugging - within the
> > struct dynamically, so do this.
> >
> > The memory freeing is guaranteed by the fact that the acquired domain
> > references tracked by struct can't be leaked either.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_power.c    | 61 ++++++++++++++++---
> >  .../drm/i915/display/intel_display_power.h    |  2 +-
> >  2 files changed, 53 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 4c1de91e56ff9..e2da91c2a9638 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -830,19 +830,58 @@ void intel_display_power_put_unchecked(struct drm_i915_private *dev_priv,
> >  }
> >  #endif
> >  
> > +#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> > +static intel_wakeref_t *
> > +get_debug_wakerefs(struct drm_i915_private *i915,
> > +		   struct intel_display_power_domain_set *power_domain_set)
> > +{
> > +	if (power_domain_set->wakerefs)
> > +		return power_domain_set->wakerefs;
> > +
> > +	power_domain_set->wakerefs = kcalloc(POWER_DOMAIN_NUM,
> > +					     sizeof(*power_domain_set->wakerefs),
> > +					     GFP_KERNEL);
> > +
> > +	drm_WARN_ON_ONCE(&i915->drm, !power_domain_set->wakerefs);
> 
> The rule of thumb is not to warn or log on allocation failures.

Ok, will drop this.

> 
> > +
> > +	return power_domain_set->wakerefs;
> > +}
> > +
> > +static void
> > +free_empty_debug_wakerefs(struct intel_display_power_domain_set *power_domain_set)
> > +{
> > +	if (power_domain_set->wakerefs &&
> > +	    bitmap_empty(power_domain_set->mask.bits, POWER_DOMAIN_NUM))
> > +		kfree(fetch_and_zero(&power_domain_set->wakerefs));
> 
> FWIW, I'm really not happy about fetch_and_zero() or its use anywhere. I
> kind of get the point, but the impression of any kind of atomicity the
> naming gives is totally misleading. And it's our own thing in
> i915_utils.h, and not a global thing like the name suggests.

Ok, here zeroing the pointer separately is clearer, will do that. For
intel_wakeref_t pointers fetch_and_zero() denotes that the ownership of
the reference is moved, which should never happen with a simple copy to
another pointer. Imo for that the use of it is justified.

> > +}
> > +#else
> > +static intel_wakeref_t *
> > +get_debug_wakerefs(struct drm_i915_private *i915,
> > +		   struct intel_display_power_domain_set *power_domain_set)
> > +{
> > +	return NULL;
> > +}
> > +
> > +static void
> > +free_empty_debug_wakerefs(struct intel_display_power_domain_set *power_domain_set)
> > +{
> > +}
> > +#endif
> 
> get/free is an odd pairing of names.
> 
> > +
> >  void
> >  intel_display_power_get_in_set(struct drm_i915_private *i915,
> >  			       struct intel_display_power_domain_set *power_domain_set,
> >  			       enum intel_display_power_domain domain)
> >  {
> >  	intel_wakeref_t __maybe_unused wf;
> > +	intel_wakeref_t *debug_wakerefs = get_debug_wakerefs(i915, power_domain_set);
> >  
> >  	drm_WARN_ON(&i915->drm, test_bit(domain, power_domain_set->mask.bits));
> >  
> >  	wf = intel_display_power_get(i915, domain);
> > -#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> > -	power_domain_set->wakerefs[domain] = wf;
> > -#endif
> > +	if (debug_wakerefs)
> > +		debug_wakerefs[domain] = wf;
> > +
> 
> If you abstracted setting the debug wakeref for a domain, it could
> handle the allocation internally without any of the local vars etc.
> here. And it would only be a single line in the entire function.

Things here could be simplified by abstracting adding both the domain
and the wakeref to power_domain_set, can do that (calling
add_domain_to_set() here and remove_domain_from_set() in the *_put()
functions).

> 
> >  	set_bit(domain, power_domain_set->mask.bits);
> >  }
> >  
> > @@ -852,6 +891,7 @@ intel_display_power_get_in_set_if_enabled(struct drm_i915_private *i915,
> >  					  enum intel_display_power_domain domain)
> >  {
> >  	intel_wakeref_t wf;
> > +	intel_wakeref_t *debug_wakerefs = get_debug_wakerefs(i915, power_domain_set);
> >  
> >  	drm_WARN_ON(&i915->drm, test_bit(domain, power_domain_set->mask.bits));
> >  
> > @@ -859,9 +899,9 @@ intel_display_power_get_in_set_if_enabled(struct drm_i915_private *i915,
> >  	if (!wf)
> >  		return false;
> >  
> > -#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> > -	power_domain_set->wakerefs[domain] = wf;
> > -#endif
> > +	if (debug_wakerefs)
> > +		debug_wakerefs[domain] = wf;
> > +
> >  	set_bit(domain, power_domain_set->mask.bits);
> >  
> >  	return true;
> > @@ -873,6 +913,7 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
> >  				    struct intel_power_domain_mask *mask)
> >  {
> >  	enum intel_display_power_domain domain;
> > +	intel_wakeref_t *debug_wakerefs = get_debug_wakerefs(i915, power_domain_set);
> >  
> >  	drm_WARN_ON(&i915->drm,
> >  		    !bitmap_subset(mask->bits, power_domain_set->mask.bits, POWER_DOMAIN_NUM));
> > @@ -880,12 +921,14 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
> >  	for_each_power_domain(domain, mask) {
> >  		intel_wakeref_t __maybe_unused wf = -1;
> >  
> > -#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> > -		wf = fetch_and_zero(&power_domain_set->wakerefs[domain]);
> > -#endif
> > +		if (debug_wakerefs)
> > +			wf = fetch_and_zero(&debug_wakerefs[domain]);
> > +
> >  		intel_display_power_put(i915, domain, wf);
> >  		clear_bit(domain, power_domain_set->mask.bits);
> >  	}
> > +
> > +	free_empty_debug_wakerefs(power_domain_set);
> >  }
> >  
> >  static int
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> > index 7136ea3f233e9..c847aab7b2f88 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> > @@ -146,7 +146,7 @@ struct i915_power_domains {
> >  struct intel_display_power_domain_set {
> >  	struct intel_power_domain_mask mask;
> >  #ifdef CONFIG_DRM_I915_DEBUG_RUNTIME_PM
> > -	intel_wakeref_t wakerefs[POWER_DOMAIN_NUM];
> > +	intel_wakeref_t *wakerefs;
> >  #endif
> >  };
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
