Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A34F2616D3C
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 19:57:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 311A710E570;
	Wed,  2 Nov 2022 18:57:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC80010E570
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 18:57:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667415445; x=1698951445;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=/m37h5WW/1iCo0jPSeISIO5hZzEFWSNCGe7xKGVuKZs=;
 b=SvH2Hz72hsIXjTh2mU/0VDX91I0K6ZqW6jd7oZb97SFy3Hk9D8d0s78V
 Z0UEDsXFl9meAmpdni5NwxdJp7XsjiJvJiwfd0jue1VfRWRhMRQxHzLaC
 I9pjMDv3PV6a+TkRIrsCvhEhpBldQBrwIMfWIb1se87SZglowdzwetdWq
 Dj+v12RadjQYrCM6ioQzSxYjFPDQ7niuMY4zMSYkJ3QifH0b+ZSG+n6hR
 rTLQh2e85199Wnu95cRLX635QOTfdYvWgMTcq4NuMrDhB2gcE4vyQpNbk
 o/ud3qUIWCUqk9nuF/stgwpJAAMMrAAwGMTCJTNZqkSaMwGwz0b+yhXId g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="296945823"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="296945823"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 11:57:25 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="739875374"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="739875374"
Received: from cjokeeff-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.15.91])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 11:57:23 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20221102171530.3261282-2-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221102171530.3261282-1-imre.deak@intel.com>
 <20221102171530.3261282-2-imre.deak@intel.com>
Date: Wed, 02 Nov 2022 20:57:21 +0200
Message-ID: <878rktchgu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 02 Nov 2022, Imre Deak <imre.deak@intel.com> wrote:
> Since the intel_display_power_domain_set struct, currently its current
> size close 1kB, can be allocated on the stack, it's better to allocate
> the per-domain wakeref pointer array - used for debugging - within the
> struct dynamically, so do this.
>
> The memory freeing is guaranteed by the fact that the acquired domain
> references tracked by struct can't be leaked either.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../drm/i915/display/intel_display_power.c    | 61 ++++++++++++++++---
>  .../drm/i915/display/intel_display_power.h    |  2 +-
>  2 files changed, 53 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 4c1de91e56ff9..e2da91c2a9638 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -830,19 +830,58 @@ void intel_display_power_put_unchecked(struct drm_i915_private *dev_priv,
>  }
>  #endif
>  
> +#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> +static intel_wakeref_t *
> +get_debug_wakerefs(struct drm_i915_private *i915,
> +		   struct intel_display_power_domain_set *power_domain_set)
> +{
> +	if (power_domain_set->wakerefs)
> +		return power_domain_set->wakerefs;
> +
> +	power_domain_set->wakerefs = kcalloc(POWER_DOMAIN_NUM,
> +					     sizeof(*power_domain_set->wakerefs),
> +					     GFP_KERNEL);
> +
> +	drm_WARN_ON_ONCE(&i915->drm, !power_domain_set->wakerefs);

The rule of thumb is not to warn or log on allocation failures.

> +
> +	return power_domain_set->wakerefs;
> +}
> +
> +static void
> +free_empty_debug_wakerefs(struct intel_display_power_domain_set *power_domain_set)
> +{
> +	if (power_domain_set->wakerefs &&
> +	    bitmap_empty(power_domain_set->mask.bits, POWER_DOMAIN_NUM))
> +		kfree(fetch_and_zero(&power_domain_set->wakerefs));

FWIW, I'm really not happy about fetch_and_zero() or its use anywhere. I
kind of get the point, but the impression of any kind of atomicity the
naming gives is totally misleading. And it's our own thing in
i915_utils.h, and not a global thing like the name suggests.

> +}
> +#else
> +static intel_wakeref_t *
> +get_debug_wakerefs(struct drm_i915_private *i915,
> +		   struct intel_display_power_domain_set *power_domain_set)
> +{
> +	return NULL;
> +}
> +
> +static void
> +free_empty_debug_wakerefs(struct intel_display_power_domain_set *power_domain_set)
> +{
> +}
> +#endif

get/free is an odd pairing of names.

> +
>  void
>  intel_display_power_get_in_set(struct drm_i915_private *i915,
>  			       struct intel_display_power_domain_set *power_domain_set,
>  			       enum intel_display_power_domain domain)
>  {
>  	intel_wakeref_t __maybe_unused wf;
> +	intel_wakeref_t *debug_wakerefs = get_debug_wakerefs(i915, power_domain_set);
>  
>  	drm_WARN_ON(&i915->drm, test_bit(domain, power_domain_set->mask.bits));
>  
>  	wf = intel_display_power_get(i915, domain);
> -#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> -	power_domain_set->wakerefs[domain] = wf;
> -#endif
> +	if (debug_wakerefs)
> +		debug_wakerefs[domain] = wf;
> +

If you abstracted setting the debug wakeref for a domain, it could
handle the allocation internally without any of the local vars etc.
here. And it would only be a single line in the entire function.

>  	set_bit(domain, power_domain_set->mask.bits);
>  }
>  
> @@ -852,6 +891,7 @@ intel_display_power_get_in_set_if_enabled(struct drm_i915_private *i915,
>  					  enum intel_display_power_domain domain)
>  {
>  	intel_wakeref_t wf;
> +	intel_wakeref_t *debug_wakerefs = get_debug_wakerefs(i915, power_domain_set);
>  
>  	drm_WARN_ON(&i915->drm, test_bit(domain, power_domain_set->mask.bits));
>  
> @@ -859,9 +899,9 @@ intel_display_power_get_in_set_if_enabled(struct drm_i915_private *i915,
>  	if (!wf)
>  		return false;
>  
> -#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> -	power_domain_set->wakerefs[domain] = wf;
> -#endif
> +	if (debug_wakerefs)
> +		debug_wakerefs[domain] = wf;
> +
>  	set_bit(domain, power_domain_set->mask.bits);
>  
>  	return true;
> @@ -873,6 +913,7 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
>  				    struct intel_power_domain_mask *mask)
>  {
>  	enum intel_display_power_domain domain;
> +	intel_wakeref_t *debug_wakerefs = get_debug_wakerefs(i915, power_domain_set);
>  
>  	drm_WARN_ON(&i915->drm,
>  		    !bitmap_subset(mask->bits, power_domain_set->mask.bits, POWER_DOMAIN_NUM));
> @@ -880,12 +921,14 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
>  	for_each_power_domain(domain, mask) {
>  		intel_wakeref_t __maybe_unused wf = -1;
>  
> -#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> -		wf = fetch_and_zero(&power_domain_set->wakerefs[domain]);
> -#endif
> +		if (debug_wakerefs)
> +			wf = fetch_and_zero(&debug_wakerefs[domain]);
> +
>  		intel_display_power_put(i915, domain, wf);
>  		clear_bit(domain, power_domain_set->mask.bits);
>  	}
> +
> +	free_empty_debug_wakerefs(power_domain_set);
>  }
>  
>  static int
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> index 7136ea3f233e9..c847aab7b2f88 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -146,7 +146,7 @@ struct i915_power_domains {
>  struct intel_display_power_domain_set {
>  	struct intel_power_domain_mask mask;
>  #ifdef CONFIG_DRM_I915_DEBUG_RUNTIME_PM
> -	intel_wakeref_t wakerefs[POWER_DOMAIN_NUM];
> +	intel_wakeref_t *wakerefs;
>  #endif
>  };

-- 
Jani Nikula, Intel Open Source Graphics Center
