Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9FA193B94
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 10:14:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 019D06E897;
	Thu, 26 Mar 2020 09:14:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 113646E897
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 09:14:37 +0000 (UTC)
IronPort-SDR: 1ZPMCklqZ6CjODAx4nXkl7JwJvrdq5w7iBlSmkfckWzhyEO0Xzc7Sub5m/UA0OlCALi34AyBa2
 1R4RxGzbq5ew==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 02:14:36 -0700
IronPort-SDR: uY6Szx0v3PKZtK0Nz7DxmMYl9bzL0KKqYXbQuGGGtp5hr5WtnHOrBpgSvK//zTN4hl08EgM2QD
 fi64P1Yebb5w==
X-IronPort-AV: E=Sophos;i="5.72,307,1580803200"; d="scan'208";a="247486112"
Received: from rozenblx-mobl.ger.corp.intel.com (HELO [10.214.213.143])
 ([10.214.213.143])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 02:14:35 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200325234803.6175-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <a0697f59-d67b-a3c2-1717-eb72e3fbb255@linux.intel.com>
Date: Thu, 26 Mar 2020 09:14:32 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200325234803.6175-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Drop final few uses of
 drm_i915_private.engine
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 25/03/2020 23:48, Chris Wilson wrote:
> We've migrated all the heavy users over to the intel_gt, and can finally
> drop the last few users and with that the mirror in dev_priv->engine[].
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Andi Shyti <andi.shyti@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_overlay.c       |  2 +-
>   .../gpu/drm/i915/gem/selftests/i915_gem_context.c  |  2 +-
>   drivers/gpu/drm/i915/gt/intel_engine_cs.c          |  4 ----
>   drivers/gpu/drm/i915/i915_drv.h                    |  1 -
>   drivers/gpu/drm/i915/i915_irq.c                    |  8 ++++----
>   drivers/gpu/drm/i915/selftests/i915_request.c      | 14 ++++++++++----
>   drivers/gpu/drm/i915/selftests/mock_gem_device.c   |  6 +++---
>   7 files changed, 19 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
> index 481187223101..6e1d66323223 100644
> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> @@ -1342,7 +1342,7 @@ void intel_overlay_setup(struct drm_i915_private *dev_priv)
>   	if (!HAS_OVERLAY(dev_priv))
>   		return;
>   
> -	engine = dev_priv->engine[RCS0];
> +	engine = dev_priv->gt.engine[RCS0];
>   	if (!engine || !engine->kernel_context)
>   		return;
>   
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> index 54b86cf7f5d2..f4f933240b39 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> @@ -1925,7 +1925,7 @@ static int mock_context_barrier(void *arg)
>   		goto out;
>   	}
>   
> -	rq = igt_request_alloc(ctx, i915->engine[RCS0]);
> +	rq = igt_request_alloc(ctx, i915->gt.engine[RCS0]);
>   	if (IS_ERR(rq)) {
>   		pr_err("Request allocation failed!\n");
>   		goto out;
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 3aa8a652c16d..dff0bbe9e1a6 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -347,8 +347,6 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
>   	gt->engine_class[info->class][info->instance] = engine;
>   	gt->engine[id] = engine;
>   
> -	i915->engine[id] = engine;
> -
>   	return 0;
>   }
>   
> @@ -425,8 +423,6 @@ void intel_engines_release(struct intel_gt *gt)
>   		engine->release = NULL;
>   
>   		memset(&engine->reset, 0, sizeof(engine->reset));
> -
> -		gt->i915->engine[id] = NULL;
>   	}
>   }
>   
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 9bcea97c39de..b09a1c929c94 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -884,7 +884,6 @@ struct drm_i915_private {
>   
>   	struct pci_dev *bridge_dev;
>   
> -	struct intel_engine_cs *engine[I915_NUM_ENGINES];
>   	struct rb_root uabi_engines;
>   
>   	struct resource mch_res;
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 9f0653cf0510..1502ab44f1a5 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -3658,7 +3658,7 @@ static irqreturn_t i8xx_irq_handler(int irq, void *arg)
>   		intel_uncore_write16(&dev_priv->uncore, GEN2_IIR, iir);
>   
>   		if (iir & I915_USER_INTERRUPT)
> -			intel_engine_signal_breadcrumbs(dev_priv->engine[RCS0]);
> +			intel_engine_signal_breadcrumbs(dev_priv->gt.engine[RCS0]);
>   
>   		if (iir & I915_MASTER_ERROR_INTERRUPT)
>   			i8xx_error_irq_handler(dev_priv, eir, eir_stuck);
> @@ -3763,7 +3763,7 @@ static irqreturn_t i915_irq_handler(int irq, void *arg)
>   		I915_WRITE(GEN2_IIR, iir);
>   
>   		if (iir & I915_USER_INTERRUPT)
> -			intel_engine_signal_breadcrumbs(dev_priv->engine[RCS0]);
> +			intel_engine_signal_breadcrumbs(dev_priv->gt.engine[RCS0]);
>   
>   		if (iir & I915_MASTER_ERROR_INTERRUPT)
>   			i9xx_error_irq_handler(dev_priv, eir, eir_stuck);
> @@ -3905,10 +3905,10 @@ static irqreturn_t i965_irq_handler(int irq, void *arg)
>   		I915_WRITE(GEN2_IIR, iir);
>   
>   		if (iir & I915_USER_INTERRUPT)
> -			intel_engine_signal_breadcrumbs(dev_priv->engine[RCS0]);
> +			intel_engine_signal_breadcrumbs(dev_priv->gt.engine[RCS0]);
>   
>   		if (iir & I915_BSD_USER_INTERRUPT)
> -			intel_engine_signal_breadcrumbs(dev_priv->engine[VCS0]);
> +			intel_engine_signal_breadcrumbs(dev_priv->gt.engine[VCS0]);
>   
>   		if (iir & I915_MASTER_ERROR_INTERRUPT)
>   			i9xx_error_irq_handler(dev_priv, eir, eir_stuck);
> diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
> index 7ac9616de9d8..1dab0360f76a 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_request.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_request.c
> @@ -28,6 +28,7 @@
>   #include "gem/selftests/mock_context.h"
>   
>   #include "gt/intel_engine_pm.h"
> +#include "gt/intel_engine_user.h"
>   #include "gt/intel_gt.h"
>   
>   #include "i915_random.h"
> @@ -51,6 +52,11 @@ static unsigned int num_uabi_engines(struct drm_i915_private *i915)
>   	return count;
>   }
>   
> +static struct intel_engine_cs *rcs0(struct drm_i915_private *i915)
> +{
> +	return intel_engine_lookup_user(i915, I915_ENGINE_CLASS_RENDER, 0);
> +}
> +
>   static int igt_add_request(void *arg)
>   {
>   	struct drm_i915_private *i915 = arg;
> @@ -58,7 +64,7 @@ static int igt_add_request(void *arg)
>   
>   	/* Basic preliminary test to create a request and let it loose! */
>   
> -	request = mock_request(i915->engine[RCS0]->kernel_context, HZ / 10);
> +	request = mock_request(rcs0(i915)->kernel_context, HZ / 10);
>   	if (!request)
>   		return -ENOMEM;
>   
> @@ -76,7 +82,7 @@ static int igt_wait_request(void *arg)
>   
>   	/* Submit a request, then wait upon it */
>   
> -	request = mock_request(i915->engine[RCS0]->kernel_context, T);
> +	request = mock_request(rcs0(i915)->kernel_context, T);
>   	if (!request)
>   		return -ENOMEM;
>   
> @@ -145,7 +151,7 @@ static int igt_fence_wait(void *arg)
>   
>   	/* Submit a request, treat it as a fence and wait upon it */
>   
> -	request = mock_request(i915->engine[RCS0]->kernel_context, T);
> +	request = mock_request(rcs0(i915)->kernel_context, T);
>   	if (!request)
>   		return -ENOMEM;
>   
> @@ -420,7 +426,7 @@ static int mock_breadcrumbs_smoketest(void *arg)
>   {
>   	struct drm_i915_private *i915 = arg;
>   	struct smoketest t = {
> -		.engine = i915->engine[RCS0],
> +		.engine = rcs0(i915),
>   		.ncontexts = 1024,
>   		.max_batch = 1024,
>   		.request_alloc = __mock_request_alloc
> diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> index 754d0eb6beaa..47fde54150f4 100644
> --- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> +++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> @@ -178,11 +178,11 @@ struct drm_i915_private *mock_gem_device(void)
>   
>   	mkwrite_device_info(i915)->engine_mask = BIT(0);
>   
> -	i915->engine[RCS0] = mock_engine(i915, "mock", RCS0);
> -	if (!i915->engine[RCS0])
> +	i915->gt.engine[RCS0] = mock_engine(i915, "mock", RCS0);
> +	if (!i915->gt.engine[RCS0])
>   		goto err_unlock;
>   
> -	if (mock_engine_init(i915->engine[RCS0]))
> +	if (mock_engine_init(i915->gt.engine[RCS0]))
>   		goto err_context;
>   
>   	__clear_bit(I915_WEDGED, &i915->gt.reset.flags);
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
