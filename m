Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB964620B93
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 09:54:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A03D10E24A;
	Tue,  8 Nov 2022 08:54:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CE1E10E25E
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 08:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667897666; x=1699433666;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=3NTwSxaCpMR30+RcS3YjvXuDm+FaGI59944Fogm/Lo8=;
 b=DyiGDh+pH5XjcirqZDbtOVAXBXkbsa/eXmkJ3OEa9XKrLYQAEfDUQ6cm
 rT/YbiUOHDMkMXr+Aa94FCHsbofM+T4qBYJa20JjeVKq3CJKw+yatnjt7
 PQmrtJ+eshXtk3um3TkljnWmQBScn5Am1xonwY0rYC9CZQMhFCx9WUkmn
 dmOR/ll/hz0DacCPkxiWKZQH+Gdur4/65QscvK18CknL6Uiz7Zx+JOhi/
 Gr5gQs20Md+jnZLcflCvxxeVwVz52NL0RFpNAH/wt5kboIgXYtxm1cPly
 9M49Ax1ASr/iBY4nrtsXZJqgbT2YiKveiv9UUEDWkbwNPTqQH35fTU9E7 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="309353899"
X-IronPort-AV: E=Sophos;i="5.96,147,1665471600"; d="scan'208";a="309353899"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 00:54:25 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="636262778"
X-IronPort-AV: E=Sophos;i="5.96,147,1665471600"; d="scan'208";a="636262778"
Received: from smoriord-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.16.110])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 00:54:24 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20221107170917.3566758-2-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221107170917.3566758-1-imre.deak@intel.com>
 <20221107170917.3566758-2-imre.deak@intel.com>
Date: Tue, 08 Nov 2022 10:54:21 +0200
Message-ID: <87mt91aksi.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 1/9] drm/i915: Allocate power domain set
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

On Mon, 07 Nov 2022, Imre Deak <imre.deak@intel.com> wrote:
> Since the intel_display_power_domain_set struct, currently its current
> size close 1kB, can be allocated on the stack, it's better to allocate
> the per-domain wakeref pointer array - used for debugging - within the
> struct dynamically, so do this.
>
> The memory freeing is guaranteed by the fact that the acquired domain
> references tracked by struct can't be leaked either.
>
> v2:
> - Don't use fetch_and_zero() when freeing the wakerefs array. (Jani)
> - Simplify intel_display_power_get/put_in_set(). (Jani)
> - Check in intel_crtc_destroy() that the wakerefs array has been freed.
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c     |  4 +
>  .../drm/i915/display/intel_display_power.c    | 95 +++++++++++++++----
>  .../drm/i915/display/intel_display_power.h    |  2 +-
>  3 files changed, 79 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index 037fc140b585c..2c8d564e73182 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -205,6 +205,10 @@ static void intel_crtc_destroy(struct drm_crtc *_crtc)
>  	cpu_latency_qos_remove_request(&crtc->vblank_pm_qos);
>  
>  	drm_crtc_cleanup(&crtc->base);
> +
> +#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> +	drm_WARN_ON(crtc->base.dev, crtc->enabled_power_domains.wakerefs);
> +#endif

Can we please not add this kind of asserts without abstractions? The
#ifdef is ugly, looking at crtc->enabled_power_domains.wakerefs directly
is ugly.

Maybe add an assert_something_or_other(crtc) that does the right thing?
Similar to the other assert_*() functions we have?

Does it even need to depend on the config? If it's worth having, maybe
worth having unconditionally?

BR,
Jani.

>  	kfree(crtc);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 4c1de91e56ff9..db235b79c9629 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -830,20 +830,85 @@ void intel_display_power_put_unchecked(struct drm_i915_private *dev_priv,
>  }
>  #endif
>  
> +#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> +static void
> +add_domain_to_set(struct drm_i915_private *i915,
> +		  struct intel_display_power_domain_set *power_domain_set,
> +		  enum intel_display_power_domain domain,
> +		  intel_wakeref_t wf)
> +{
> +	drm_WARN_ON(&i915->drm, test_bit(domain, power_domain_set->mask.bits));
> +
> +	if (!power_domain_set->wakerefs)
> +		power_domain_set->wakerefs = kcalloc(POWER_DOMAIN_NUM,
> +						     sizeof(*power_domain_set->wakerefs),
> +						     GFP_KERNEL);
> +
> +	if (power_domain_set->wakerefs)
> +		power_domain_set->wakerefs[domain] = wf;
> +
> +	set_bit(domain, power_domain_set->mask.bits);
> +}
> +
> +static intel_wakeref_t
> +remove_domain_from_set(struct drm_i915_private *i915,
> +		       struct intel_display_power_domain_set *power_domain_set,
> +		       enum intel_display_power_domain domain)
> +{
> +	intel_wakeref_t wf;
> +
> +	drm_WARN_ON(&i915->drm, !test_bit(domain, power_domain_set->mask.bits));
> +
> +	clear_bit(domain, power_domain_set->mask.bits);
> +
> +	if (!power_domain_set->wakerefs)
> +		return -1;
> +
> +	wf = fetch_and_zero(&power_domain_set->wakerefs[domain]);
> +
> +	if (bitmap_empty(power_domain_set->mask.bits, POWER_DOMAIN_NUM)) {
> +		kfree(power_domain_set->wakerefs);
> +		power_domain_set->wakerefs = NULL;
> +	}
> +
> +	return wf;
> +
> +}
> +#else
> +static void
> +add_domain_to_set(struct drm_i915_private *i915,
> +		  struct intel_display_power_domain_set *power_domain_set,
> +		  enum intel_display_power_domain domain,
> +		  intel_wakeref_t wf)
> +{
> +	drm_WARN_ON(&i915->drm, test_bit(domain, power_domain_set->mask.bits));
> +
> +	set_bit(domain, power_domain_set->mask.bits);
> +}
> +
> +static intel_wakeref_t
> +remove_domain_from_set(struct drm_i915_private *i915,
> +		       struct intel_display_power_domain_set *power_domain_set,
> +		       enum intel_display_power_domain domain)
> +{
> +	drm_WARN_ON(&i915->drm, !test_bit(domain, power_domain_set->mask.bits));
> +
> +	clear_bit(domain, power_domain_set->mask.bits);
> +
> +	return -1;
> +}
> +#endif
> +
>  void
>  intel_display_power_get_in_set(struct drm_i915_private *i915,
>  			       struct intel_display_power_domain_set *power_domain_set,
>  			       enum intel_display_power_domain domain)
>  {
> -	intel_wakeref_t __maybe_unused wf;
> -
> -	drm_WARN_ON(&i915->drm, test_bit(domain, power_domain_set->mask.bits));
> +	intel_wakeref_t wf;
>  
>  	wf = intel_display_power_get(i915, domain);
> -#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> -	power_domain_set->wakerefs[domain] = wf;
> -#endif
> -	set_bit(domain, power_domain_set->mask.bits);
> +
> +	add_domain_to_set(i915, power_domain_set, domain, wf);
>  }
>  
>  bool
> @@ -853,16 +918,11 @@ intel_display_power_get_in_set_if_enabled(struct drm_i915_private *i915,
>  {
>  	intel_wakeref_t wf;
>  
> -	drm_WARN_ON(&i915->drm, test_bit(domain, power_domain_set->mask.bits));
> -
>  	wf = intel_display_power_get_if_enabled(i915, domain);
>  	if (!wf)
>  		return false;
>  
> -#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> -	power_domain_set->wakerefs[domain] = wf;
> -#endif
> -	set_bit(domain, power_domain_set->mask.bits);
> +	add_domain_to_set(i915, power_domain_set, domain, wf);
>  
>  	return true;
>  }
> @@ -874,17 +934,10 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
>  {
>  	enum intel_display_power_domain domain;
>  
> -	drm_WARN_ON(&i915->drm,
> -		    !bitmap_subset(mask->bits, power_domain_set->mask.bits, POWER_DOMAIN_NUM));
> -
>  	for_each_power_domain(domain, mask) {
> -		intel_wakeref_t __maybe_unused wf = -1;
> +		intel_wakeref_t wf = remove_domain_from_set(i915, power_domain_set, domain);
>  
> -#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> -		wf = fetch_and_zero(&power_domain_set->wakerefs[domain]);
> -#endif
>  		intel_display_power_put(i915, domain, wf);
> -		clear_bit(domain, power_domain_set->mask.bits);
>  	}
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> index 1e77e52c87fec..662123d260a7a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -147,7 +147,7 @@ struct i915_power_domains {
>  struct intel_display_power_domain_set {
>  	struct intel_power_domain_mask mask;
>  #ifdef CONFIG_DRM_I915_DEBUG_RUNTIME_PM
> -	intel_wakeref_t wakerefs[POWER_DOMAIN_NUM];
> +	intel_wakeref_t *wakerefs;
>  #endif
>  };

-- 
Jani Nikula, Intel Open Source Graphics Center
