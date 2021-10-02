Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2DC341FDDE
	for <lists+intel-gfx@lfdr.de>; Sat,  2 Oct 2021 21:27:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C9F16F411;
	Sat,  2 Oct 2021 19:27:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1548C6F411
 for <intel-gfx@lists.freedesktop.org>; Sat,  2 Oct 2021 19:27:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10125"; a="225387910"
X-IronPort-AV: E=Sophos;i="5.85,342,1624345200"; d="scan'208";a="225387910"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2021 12:27:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,342,1624345200"; d="scan'208";a="522083859"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 02 Oct 2021 12:27:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 02 Oct 2021 22:27:13 +0300
Date: Sat, 2 Oct 2021 22:27:13 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Dave Airlie <airlied@gmail.com>,
 Dave Airlie <airlied@redhat.com>,
 "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>
Message-ID: <YViykYGH9KG1B2f/@intel.com>
References: <cover.1632869550.git.jani.nikula@intel.com>
 <41c3e1896162fc08e22e40b00642791365a8c00e.1632869550.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <41c3e1896162fc08e22e40b00642791365a8c00e.1632869550.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 01/24] drm/i915/uncore: split the fw get
 function into separate vfunc
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

On Wed, Sep 29, 2021 at 01:57:45AM +0300, Jani Nikula wrote:
> From: Dave Airlie <airlied@redhat.com>
> 
> constify it while here. drop the put function since it was never
> overloaded and always has done the same thing, no point in
> indirecting it for show.
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Dave Airlie <airlied@redhat.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

This has totally broken snb and ivb machines. Total death
ensues somewhere in uncore init after some backtraces fly by.
Didn't get any logs out to disk unfortunately. Please revert.

Sadly CI is still afraid to report when machines disappear.
For the bat report you at least get a list of machines that
were awol, but the shard run seems to not even mention that
all snbs suddenly vanished.

I've said it before and I'll say it again. We really should
*not* be loading i915 when the machine boots. That way we'd
at least get the machine up and running and can report that
loading i915 is the thing that killed it...

> ---
>  drivers/gpu/drm/i915/intel_uncore.c | 70 ++++++++++++++++-------------
>  drivers/gpu/drm/i915/intel_uncore.h |  7 +--
>  2 files changed, 43 insertions(+), 34 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index 678a99de07fe..aee572af8052 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -36,6 +36,12 @@
>  
>  #define __raw_posting_read(...) ((void)__raw_uncore_read32(__VA_ARGS__))
>  
> +static void
> +fw_domains_get(struct intel_uncore *uncore, enum forcewake_domains fw_domains)
> +{
> +	uncore->fw_get_funcs->force_wake_get(uncore, fw_domains);
> +}
> +
>  void
>  intel_uncore_mmio_debug_init_early(struct intel_uncore_mmio_debug *mmio_debug)
>  {
> @@ -248,7 +254,7 @@ fw_domain_put(const struct intel_uncore_forcewake_domain *d)
>  }
>  
>  static void
> -fw_domains_get(struct intel_uncore *uncore, enum forcewake_domains fw_domains)
> +fw_domains_get_normal(struct intel_uncore *uncore, enum forcewake_domains fw_domains)
>  {
>  	struct intel_uncore_forcewake_domain *d;
>  	unsigned int tmp;
> @@ -396,7 +402,7 @@ intel_uncore_fw_release_timer(struct hrtimer *timer)
>  
>  	GEM_BUG_ON(!domain->wake_count);
>  	if (--domain->wake_count == 0)
> -		uncore->funcs.force_wake_put(uncore, domain->mask);
> +		fw_domains_put(uncore, domain->mask);
>  
>  	spin_unlock_irqrestore(&uncore->lock, irqflags);
>  
> @@ -454,7 +460,7 @@ intel_uncore_forcewake_reset(struct intel_uncore *uncore)
>  
>  	fw = uncore->fw_domains_active;
>  	if (fw)
> -		uncore->funcs.force_wake_put(uncore, fw);
> +		fw_domains_put(uncore, fw);
>  
>  	fw_domains_reset(uncore, uncore->fw_domains);
>  	assert_forcewakes_inactive(uncore);
> @@ -562,7 +568,7 @@ static void forcewake_early_sanitize(struct intel_uncore *uncore,
>  	intel_uncore_forcewake_reset(uncore);
>  	if (restore_forcewake) {
>  		spin_lock_irq(&uncore->lock);
> -		uncore->funcs.force_wake_get(uncore, restore_forcewake);
> +		fw_domains_get(uncore, restore_forcewake);
>  
>  		if (intel_uncore_has_fifo(uncore))
>  			uncore->fifo_count = fifo_free_entries(uncore);
> @@ -623,7 +629,7 @@ static void __intel_uncore_forcewake_get(struct intel_uncore *uncore,
>  	}
>  
>  	if (fw_domains)
> -		uncore->funcs.force_wake_get(uncore, fw_domains);
> +		fw_domains_get(uncore, fw_domains);
>  }
>  
>  /**
> @@ -644,7 +650,7 @@ void intel_uncore_forcewake_get(struct intel_uncore *uncore,
>  {
>  	unsigned long irqflags;
>  
> -	if (!uncore->funcs.force_wake_get)
> +	if (!uncore->fw_get_funcs)
>  		return;
>  
>  	assert_rpm_wakelock_held(uncore->rpm);
> @@ -711,7 +717,7 @@ void intel_uncore_forcewake_get__locked(struct intel_uncore *uncore,
>  {
>  	lockdep_assert_held(&uncore->lock);
>  
> -	if (!uncore->funcs.force_wake_get)
> +	if (!uncore->fw_get_funcs)
>  		return;
>  
>  	__intel_uncore_forcewake_get(uncore, fw_domains);
> @@ -733,7 +739,7 @@ static void __intel_uncore_forcewake_put(struct intel_uncore *uncore,
>  			continue;
>  		}
>  
> -		uncore->funcs.force_wake_put(uncore, domain->mask);
> +		fw_domains_put(uncore, domain->mask);
>  	}
>  }
>  
> @@ -750,7 +756,7 @@ void intel_uncore_forcewake_put(struct intel_uncore *uncore,
>  {
>  	unsigned long irqflags;
>  
> -	if (!uncore->funcs.force_wake_put)
> +	if (!uncore->fw_get_funcs)
>  		return;
>  
>  	spin_lock_irqsave(&uncore->lock, irqflags);
> @@ -769,7 +775,7 @@ void intel_uncore_forcewake_flush(struct intel_uncore *uncore,
>  	struct intel_uncore_forcewake_domain *domain;
>  	unsigned int tmp;
>  
> -	if (!uncore->funcs.force_wake_put)
> +	if (!uncore->fw_get_funcs)
>  		return;
>  
>  	fw_domains &= uncore->fw_domains;
> @@ -793,7 +799,7 @@ void intel_uncore_forcewake_put__locked(struct intel_uncore *uncore,
>  {
>  	lockdep_assert_held(&uncore->lock);
>  
> -	if (!uncore->funcs.force_wake_put)
> +	if (!uncore->fw_get_funcs)
>  		return;
>  
>  	__intel_uncore_forcewake_put(uncore, fw_domains);
> @@ -801,7 +807,7 @@ void intel_uncore_forcewake_put__locked(struct intel_uncore *uncore,
>  
>  void assert_forcewakes_inactive(struct intel_uncore *uncore)
>  {
> -	if (!uncore->funcs.force_wake_get)
> +	if (!uncore->fw_get_funcs)
>  		return;
>  
>  	drm_WARN(&uncore->i915->drm, uncore->fw_domains_active,
> @@ -818,7 +824,7 @@ void assert_forcewakes_active(struct intel_uncore *uncore,
>  	if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM))
>  		return;
>  
> -	if (!uncore->funcs.force_wake_get)
> +	if (!uncore->fw_get_funcs)
>  		return;
>  
>  	spin_lock_irq(&uncore->lock);
> @@ -1587,7 +1593,7 @@ static noinline void ___force_wake_auto(struct intel_uncore *uncore,
>  	for_each_fw_domain_masked(domain, fw_domains, uncore, tmp)
>  		fw_domain_arm_timer(domain);
>  
> -	uncore->funcs.force_wake_get(uncore, fw_domains);
> +	fw_domains_get(uncore, fw_domains);
>  }
>  
>  static inline void __force_wake_auto(struct intel_uncore *uncore,
> @@ -1837,6 +1843,18 @@ static void intel_uncore_fw_domains_fini(struct intel_uncore *uncore)
>  		fw_domain_fini(uncore, d->id);
>  }
>  
> +static const struct intel_uncore_fw_get uncore_get_fallback = {
> +	.force_wake_get = fw_domains_get_with_fallback
> +};
> +
> +static const struct intel_uncore_fw_get uncore_get_normal = {
> +	.force_wake_get = fw_domains_get_normal,
> +};
> +
> +static const struct intel_uncore_fw_get uncore_get_thread_status = {
> +	.force_wake_get = fw_domains_get_with_thread_status
> +};
> +
>  static int intel_uncore_fw_domains_init(struct intel_uncore *uncore)
>  {
>  	struct drm_i915_private *i915 = uncore->i915;
> @@ -1852,8 +1870,7 @@ static int intel_uncore_fw_domains_init(struct intel_uncore *uncore)
>  		intel_engine_mask_t emask = INTEL_INFO(i915)->platform_engine_mask;
>  		int i;
>  
> -		uncore->funcs.force_wake_get = fw_domains_get_with_fallback;
> -		uncore->funcs.force_wake_put = fw_domains_put;
> +		uncore->fw_get_funcs = &uncore_get_fallback;
>  		fw_domain_init(uncore, FW_DOMAIN_ID_RENDER,
>  			       FORCEWAKE_RENDER_GEN9,
>  			       FORCEWAKE_ACK_RENDER_GEN9);
> @@ -1878,8 +1895,7 @@ static int intel_uncore_fw_domains_init(struct intel_uncore *uncore)
>  				       FORCEWAKE_ACK_MEDIA_VEBOX_GEN11(i));
>  		}
>  	} else if (IS_GRAPHICS_VER(i915, 9, 10)) {
> -		uncore->funcs.force_wake_get = fw_domains_get_with_fallback;
> -		uncore->funcs.force_wake_put = fw_domains_put;
> +		uncore->fw_get_funcs = &uncore_get_fallback;
>  		fw_domain_init(uncore, FW_DOMAIN_ID_RENDER,
>  			       FORCEWAKE_RENDER_GEN9,
>  			       FORCEWAKE_ACK_RENDER_GEN9);
> @@ -1889,16 +1905,13 @@ static int intel_uncore_fw_domains_init(struct intel_uncore *uncore)
>  		fw_domain_init(uncore, FW_DOMAIN_ID_MEDIA,
>  			       FORCEWAKE_MEDIA_GEN9, FORCEWAKE_ACK_MEDIA_GEN9);
>  	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
> -		uncore->funcs.force_wake_get = fw_domains_get;
> -		uncore->funcs.force_wake_put = fw_domains_put;
> +		uncore->fw_get_funcs = &uncore_get_normal;
>  		fw_domain_init(uncore, FW_DOMAIN_ID_RENDER,
>  			       FORCEWAKE_VLV, FORCEWAKE_ACK_VLV);
>  		fw_domain_init(uncore, FW_DOMAIN_ID_MEDIA,
>  			       FORCEWAKE_MEDIA_VLV, FORCEWAKE_ACK_MEDIA_VLV);
>  	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
> -		uncore->funcs.force_wake_get =
> -			fw_domains_get_with_thread_status;
> -		uncore->funcs.force_wake_put = fw_domains_put;
> +		uncore->fw_get_funcs = &uncore_get_thread_status;
>  		fw_domain_init(uncore, FW_DOMAIN_ID_RENDER,
>  			       FORCEWAKE_MT, FORCEWAKE_ACK_HSW);
>  	} else if (IS_IVYBRIDGE(i915)) {
> @@ -1913,9 +1926,7 @@ static int intel_uncore_fw_domains_init(struct intel_uncore *uncore)
>  		 * (correctly) interpreted by the test below as MT
>  		 * forcewake being disabled.
>  		 */
> -		uncore->funcs.force_wake_get =
> -			fw_domains_get_with_thread_status;
> -		uncore->funcs.force_wake_put = fw_domains_put;
> +		uncore->fw_get_funcs = &uncore_get_thread_status;
>  
>  		/* We need to init first for ECOBUS access and then
>  		 * determine later if we want to reinit, in case of MT access is
> @@ -1946,9 +1957,7 @@ static int intel_uncore_fw_domains_init(struct intel_uncore *uncore)
>  				       FORCEWAKE, FORCEWAKE_ACK);
>  		}
>  	} else if (GRAPHICS_VER(i915) == 6) {
> -		uncore->funcs.force_wake_get =
> -			fw_domains_get_with_thread_status;
> -		uncore->funcs.force_wake_put = fw_domains_put;
> +		uncore->fw_get_funcs = &uncore_get_thread_status;
>  		fw_domain_init(uncore, FW_DOMAIN_ID_RENDER,
>  			       FORCEWAKE, FORCEWAKE_ACK);
>  	}
> @@ -2165,8 +2174,7 @@ int intel_uncore_init_mmio(struct intel_uncore *uncore)
>  	}
>  
>  	/* make sure fw funcs are set if and only if we have fw*/
> -	GEM_BUG_ON(intel_uncore_has_forcewake(uncore) != !!uncore->funcs.force_wake_get);
> -	GEM_BUG_ON(intel_uncore_has_forcewake(uncore) != !!uncore->funcs.force_wake_put);
> +	GEM_BUG_ON(intel_uncore_has_forcewake(uncore) != !!uncore->fw_get_funcs);
>  	GEM_BUG_ON(intel_uncore_has_forcewake(uncore) != !!uncore->funcs.read_fw_domains);
>  	GEM_BUG_ON(intel_uncore_has_forcewake(uncore) != !!uncore->funcs.write_fw_domains);
>  
> diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
> index 2f31c50eeae2..3248e4e2c540 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.h
> +++ b/drivers/gpu/drm/i915/intel_uncore.h
> @@ -84,12 +84,12 @@ enum forcewake_domains {
>  	FORCEWAKE_ALL = BIT(FW_DOMAIN_ID_COUNT) - 1,
>  };
>  
> -struct intel_uncore_funcs {
> +struct intel_uncore_fw_get {
>  	void (*force_wake_get)(struct intel_uncore *uncore,
>  			       enum forcewake_domains domains);
> -	void (*force_wake_put)(struct intel_uncore *uncore,
> -			       enum forcewake_domains domains);
> +};
>  
> +struct intel_uncore_funcs {
>  	enum forcewake_domains (*read_fw_domains)(struct intel_uncore *uncore,
>  						  i915_reg_t r);
>  	enum forcewake_domains (*write_fw_domains)(struct intel_uncore *uncore,
> @@ -150,6 +150,7 @@ struct intel_uncore {
>  	unsigned int shadowed_reg_table_entries;
>  
>  	struct notifier_block pmic_bus_access_nb;
> +	const struct intel_uncore_fw_get *fw_get_funcs;
>  	struct intel_uncore_funcs funcs;
>  
>  	unsigned int fifo_count;
> -- 
> 2.30.2

-- 
Ville Syrj�l�
Intel
