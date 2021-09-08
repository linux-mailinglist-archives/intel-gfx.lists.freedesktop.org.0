Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BDE54036D9
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 11:26:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D036989C53;
	Wed,  8 Sep 2021 09:26:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C64F89CA1
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 09:26:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="242729985"
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="242729985"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 02:26:33 -0700
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="538469860"
Received: from mdoerbec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.33.106])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 02:26:32 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@redhat.com>
In-Reply-To: <20210908044528.2976010-2-airlied@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210908044528.2976010-1-airlied@gmail.com>
 <20210908044528.2976010-2-airlied@gmail.com>
Date: Wed, 08 Sep 2021 12:26:28 +0300
Message-ID: <87tuiv770b.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/uncore: split the fw get
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

On Wed, 08 Sep 2021, Dave Airlie <airlied@gmail.com> wrote:
> From: Dave Airlie <airlied@redhat.com>
>
> constify it while here. drop the put function since it was never
> overloaded and always has done the same thing, no point in
> indirecting it for show.
>
> Signed-off-by: Dave Airlie <airlied@redhat.com>
> ---
>  drivers/gpu/drm/i915/intel_uncore.c | 62 +++++++++++++++--------------
>  drivers/gpu/drm/i915/intel_uncore.h |  7 ++--
>  2 files changed, 36 insertions(+), 33 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index 6b38bc2811c1..d0bbfc320604 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -396,7 +396,7 @@ intel_uncore_fw_release_timer(struct hrtimer *timer)
>  
>  	GEM_BUG_ON(!domain->wake_count);
>  	if (--domain->wake_count == 0)
> -		uncore->funcs.force_wake_put(uncore, domain->mask);
> +		fw_domains_put(uncore, domain->mask);
>  
>  	spin_unlock_irqrestore(&uncore->lock, irqflags);
>  
> @@ -454,7 +454,7 @@ intel_uncore_forcewake_reset(struct intel_uncore *uncore)
>  
>  	fw = uncore->fw_domains_active;
>  	if (fw)
> -		uncore->funcs.force_wake_put(uncore, fw);
> +		fw_domains_put(uncore, fw);

I kind of dislike the asymmetry of get remaining a vfunc and put being
called directly in code.

How about making fw_domains_get() a thin wrapper that calls the
appropriate vfunc? Something like this, incorporated into your series:

--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -248,7 +248,7 @@ fw_domain_put(const struct intel_uncore_forcewake_domain *d)
 }
 
 static void
-fw_domains_get(struct intel_uncore *uncore, enum forcewake_domains fw_domains)
+fw_domains_get_normal(struct intel_uncore *uncore, enum forcewake_domains fw_domains)
 {
 	struct intel_uncore_forcewake_domain *d;
 	unsigned int tmp;
@@ -266,6 +266,12 @@ fw_domains_get(struct intel_uncore *uncore, enum forcewake_domains fw_domains)
 	uncore->fw_domains_active |= fw_domains;
 }
 
+static void
+fw_domains_get(struct intel_uncore *uncore, enum forcewake_domains fw_domains)
+{
+	uncore->funcs.force_wake_get(uncore, fw_domains);
+}
+
 static void
 fw_domains_get_with_fallback(struct intel_uncore *uncore,
 			     enum forcewake_domains fw_domains)
@@ -340,7 +346,7 @@ static void __gen6_gt_wait_for_thread_c0(struct intel_uncore *uncore)
 static void fw_domains_get_with_thread_status(struct intel_uncore *uncore,
 					      enum forcewake_domains fw_domains)
 {
-	fw_domains_get(uncore, fw_domains);
+	fw_domains_get_normal(uncore, fw_domains);
 
 	/* WaRsForcewakeWaitTC0:snb,ivb,hsw,bdw,vlv */
 	__gen6_gt_wait_for_thread_c0(uncore);
@@ -1893,7 +1899,7 @@ static int intel_uncore_fw_domains_init(struct intel_uncore *uncore)
 		fw_domain_init(uncore, FW_DOMAIN_ID_MEDIA,
 			       FORCEWAKE_MEDIA_GEN9, FORCEWAKE_ACK_MEDIA_GEN9);
 	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
-		uncore->funcs.force_wake_get = fw_domains_get;
+		uncore->funcs.force_wake_get = fw_domains_get_normal;
 		uncore->funcs.force_wake_put = fw_domains_put;
 		fw_domain_init(uncore, FW_DOMAIN_ID_RENDER,
 			       FORCEWAKE_VLV, FORCEWAKE_ACK_VLV);

The call sites will look nice and symmetrical, and the compiler will
inline the call away.

Other than that, and the fact that this fails to apply and thus doesn't
give us CI results,


Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>  
>  	fw_domains_reset(uncore, uncore->fw_domains);
>  	assert_forcewakes_inactive(uncore);
> @@ -562,7 +562,7 @@ static void forcewake_early_sanitize(struct intel_uncore *uncore,
>  	intel_uncore_forcewake_reset(uncore);
>  	if (restore_forcewake) {
>  		spin_lock_irq(&uncore->lock);
> -		uncore->funcs.force_wake_get(uncore, restore_forcewake);
> +		uncore->fw_get_funcs->force_wake_get(uncore, restore_forcewake);
>  
>  		if (intel_uncore_has_fifo(uncore))
>  			uncore->fifo_count = fifo_free_entries(uncore);
> @@ -623,7 +623,7 @@ static void __intel_uncore_forcewake_get(struct intel_uncore *uncore,
>  	}
>  
>  	if (fw_domains)
> -		uncore->funcs.force_wake_get(uncore, fw_domains);
> +		uncore->fw_get_funcs->force_wake_get(uncore, fw_domains);
>  }
>  
>  /**
> @@ -644,7 +644,7 @@ void intel_uncore_forcewake_get(struct intel_uncore *uncore,
>  {
>  	unsigned long irqflags;
>  
> -	if (!uncore->funcs.force_wake_get)
> +	if (!uncore->fw_get_funcs)
>  		return;
>  
>  	assert_rpm_wakelock_held(uncore->rpm);
> @@ -711,7 +711,7 @@ void intel_uncore_forcewake_get__locked(struct intel_uncore *uncore,
>  {
>  	lockdep_assert_held(&uncore->lock);
>  
> -	if (!uncore->funcs.force_wake_get)
> +	if (!uncore->fw_get_funcs)
>  		return;
>  
>  	__intel_uncore_forcewake_get(uncore, fw_domains);
> @@ -733,7 +733,7 @@ static void __intel_uncore_forcewake_put(struct intel_uncore *uncore,
>  			continue;
>  		}
>  
> -		uncore->funcs.force_wake_put(uncore, domain->mask);
> +		fw_domains_put(uncore, domain->mask);
>  	}
>  }
>  
> @@ -750,7 +750,7 @@ void intel_uncore_forcewake_put(struct intel_uncore *uncore,
>  {
>  	unsigned long irqflags;
>  
> -	if (!uncore->funcs.force_wake_put)
> +	if (!uncore->fw_get_funcs)
>  		return;
>  
>  	spin_lock_irqsave(&uncore->lock, irqflags);
> @@ -769,7 +769,7 @@ void intel_uncore_forcewake_flush(struct intel_uncore *uncore,
>  	struct intel_uncore_forcewake_domain *domain;
>  	unsigned int tmp;
>  
> -	if (!uncore->funcs.force_wake_put)
> +	if (!uncore->fw_get_funcs)
>  		return;
>  
>  	fw_domains &= uncore->fw_domains;
> @@ -793,7 +793,7 @@ void intel_uncore_forcewake_put__locked(struct intel_uncore *uncore,
>  {
>  	lockdep_assert_held(&uncore->lock);
>  
> -	if (!uncore->funcs.force_wake_put)
> +	if (!uncore->fw_get_funcs)
>  		return;
>  
>  	__intel_uncore_forcewake_put(uncore, fw_domains);
> @@ -801,7 +801,7 @@ void intel_uncore_forcewake_put__locked(struct intel_uncore *uncore,
>  
>  void assert_forcewakes_inactive(struct intel_uncore *uncore)
>  {
> -	if (!uncore->funcs.force_wake_get)
> +	if (!uncore->fw_get_funcs)
>  		return;
>  
>  	drm_WARN(&uncore->i915->drm, uncore->fw_domains_active,
> @@ -818,7 +818,7 @@ void assert_forcewakes_active(struct intel_uncore *uncore,
>  	if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM))
>  		return;
>  
> -	if (!uncore->funcs.force_wake_get)
> +	if (!uncore->fw_get_funcs)
>  		return;
>  
>  	spin_lock_irq(&uncore->lock);
> @@ -1605,7 +1605,7 @@ static noinline void ___force_wake_auto(struct intel_uncore *uncore,
>  	for_each_fw_domain_masked(domain, fw_domains, uncore, tmp)
>  		fw_domain_arm_timer(domain);
>  
> -	uncore->funcs.force_wake_get(uncore, fw_domains);
> +	uncore->fw_get_funcs->force_wake_get(uncore, fw_domains);
>  }
>  
>  static inline void __force_wake_auto(struct intel_uncore *uncore,
> @@ -1866,6 +1866,18 @@ static void intel_uncore_fw_domains_fini(struct intel_uncore *uncore)
>  		fw_domain_fini(uncore, d->id);
>  }
>  
> +static const struct intel_uncore_fw_get uncore_get_fallback = {
> +	.force_wake_get = fw_domains_get_with_fallback
> +};
> +
> +static const struct intel_uncore_fw_get uncore_get_normal = {
> +	.force_wake_get = fw_domains_get
> +};
> +
> +static const struct intel_uncore_fw_get uncore_get_thread_status = {
> +	.force_wake_get = fw_domains_get_with_thread_status
> +};
> +
>  static int intel_uncore_fw_domains_init(struct intel_uncore *uncore)
>  {
>  	struct drm_i915_private *i915 = uncore->i915;
> @@ -1881,8 +1893,7 @@ static int intel_uncore_fw_domains_init(struct intel_uncore *uncore)
>  		intel_engine_mask_t emask = INTEL_INFO(i915)->platform_engine_mask;
>  		int i;
>  
> -		uncore->funcs.force_wake_get = fw_domains_get_with_fallback;
> -		uncore->funcs.force_wake_put = fw_domains_put;
> +		uncore->fw_get_funcs = &uncore_get_fallback;
>  		fw_domain_init(uncore, FW_DOMAIN_ID_RENDER,
>  			       FORCEWAKE_RENDER_GEN9,
>  			       FORCEWAKE_ACK_RENDER_GEN9);
> @@ -1907,8 +1918,7 @@ static int intel_uncore_fw_domains_init(struct intel_uncore *uncore)
>  				       FORCEWAKE_ACK_MEDIA_VEBOX_GEN11(i));
>  		}
>  	} else if (IS_GRAPHICS_VER(i915, 9, 10)) {
> -		uncore->funcs.force_wake_get = fw_domains_get_with_fallback;
> -		uncore->funcs.force_wake_put = fw_domains_put;
> +		uncore->fw_get_funcs = &uncore_get_fallback;
>  		fw_domain_init(uncore, FW_DOMAIN_ID_RENDER,
>  			       FORCEWAKE_RENDER_GEN9,
>  			       FORCEWAKE_ACK_RENDER_GEN9);
> @@ -1918,16 +1928,13 @@ static int intel_uncore_fw_domains_init(struct intel_uncore *uncore)
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
> @@ -1942,9 +1949,7 @@ static int intel_uncore_fw_domains_init(struct intel_uncore *uncore)
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
> @@ -1975,9 +1980,7 @@ static int intel_uncore_fw_domains_init(struct intel_uncore *uncore)
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
> @@ -2186,8 +2189,7 @@ int intel_uncore_init_mmio(struct intel_uncore *uncore)
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
> index 3c0b0a8b5250..1a7448f5f16f 100644
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
> @@ -137,6 +137,7 @@ struct intel_uncore {
>  	unsigned int fw_domains_table_entries;
>  
>  	struct notifier_block pmic_bus_access_nb;
> +	const struct intel_uncore_fw_get *fw_get_funcs;
>  	struct intel_uncore_funcs funcs;
>  
>  	unsigned int fifo_count;

-- 
Jani Nikula, Intel Open Source Graphics Center
