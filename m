Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4FC2773E5
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 16:27:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 883926E442;
	Thu, 24 Sep 2020 14:27:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACDFD6E442
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 14:27:12 +0000 (UTC)
IronPort-SDR: 1719rww0uiBbB4uwzEcgSEekwa8gyY42DusKImBJaRIfxNtBqnaVUsbYEIorfXLpj/toCaz+Bw
 N0uWyOeS7QTQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9753"; a="160503852"
X-IronPort-AV: E=Sophos;i="5.77,298,1596524400"; d="scan'208";a="160503852"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2020 07:27:00 -0700
IronPort-SDR: HA/gdiVbyru/Ci/jiRbz8roSCHZSMXk6tYBl3rSUwxA+JqThCmOPg8ivgj2m/TrYYvNjKzFbhB
 3fBEKP7VfZQw==
X-IronPort-AV: E=Sophos;i="5.77,298,1596524400"; d="scan'208";a="486918890"
Received: from dsmahang-mobl2.ger.corp.intel.com (HELO [10.252.48.167])
 ([10.252.48.167])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2020 07:26:59 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200916094219.3878-1-chris@chris-wilson.co.uk>
 <20200916094219.3878-4-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <e665fc1d-1b9d-a6ee-1798-df32d1296118@linux.intel.com>
Date: Thu, 24 Sep 2020 15:26:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200916094219.3878-4-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/gem: Always test execution
 status on closing the context
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
Cc: stable@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 16/09/2020 10:42, Chris Wilson wrote:
> Verify that if a context is active at the time it is closed, that it is
> either persistent and preemptible (with hangcheck running) or it shall
> be removed from execution.
> 
> Fixes: 9a40bddd47ca ("drm/i915/gt: Expose heartbeat interval via sysfs")
> Testcase: igt/gem_ctx_persistence/heartbeat-close
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: <stable@vger.kernel.org> # v5.7+
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c | 48 +++++----------------
>   1 file changed, 10 insertions(+), 38 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index a548626fa8bc..4fd38101bb56 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -390,24 +390,6 @@ __context_engines_static(const struct i915_gem_context *ctx)
>   	return rcu_dereference_protected(ctx->engines, true);
>   }
>   
> -static bool __reset_engine(struct intel_engine_cs *engine)
> -{
> -	struct intel_gt *gt = engine->gt;
> -	bool success = false;
> -
> -	if (!intel_has_reset_engine(gt))
> -		return false;
> -
> -	if (!test_and_set_bit(I915_RESET_ENGINE + engine->id,
> -			      &gt->reset.flags)) {
> -		success = intel_engine_reset(engine, NULL) == 0;
> -		clear_and_wake_up_bit(I915_RESET_ENGINE + engine->id,
> -				      &gt->reset.flags);
> -	}
> -
> -	return success;
> -}
> -
>   static void __reset_context(struct i915_gem_context *ctx,
>   			    struct intel_engine_cs *engine)
>   {
> @@ -431,12 +413,7 @@ static bool __cancel_engine(struct intel_engine_cs *engine)
>   	 * kill the banned context, we fallback to doing a local reset
>   	 * instead.
>   	 */
> -	if (IS_ACTIVE(CONFIG_DRM_I915_PREEMPT_TIMEOUT) &&
> -	    !intel_engine_pulse(engine))
> -		return true;
> -
> -	/* If we are unable to send a pulse, try resetting this engine. */
> -	return __reset_engine(engine);
> +	return intel_engine_pulse(engine) == 0;

Where is the path now which actually resets the currently running 
workload (engine) of a non-persistent context? Pulse will be sent and 
then rely on hangcheck but otherwise let it run?

Regards,

Tvrtko

>   }
>   
>   static bool
> @@ -506,7 +483,7 @@ static struct intel_engine_cs *active_engine(struct intel_context *ce)
>   	return engine;
>   }
>   
> -static void kill_engines(struct i915_gem_engines *engines)
> +static void kill_engines(struct i915_gem_engines *engines, bool ban)
>   {
>   	struct i915_gem_engines_iter it;
>   	struct intel_context *ce;
> @@ -521,7 +498,7 @@ static void kill_engines(struct i915_gem_engines *engines)
>   	for_each_gem_engine(ce, engines, it) {
>   		struct intel_engine_cs *engine;
>   
> -		if (intel_context_set_banned(ce))
> +		if (ban && intel_context_set_banned(ce))
>   			continue;
>   
>   		/*
> @@ -534,7 +511,7 @@ static void kill_engines(struct i915_gem_engines *engines)
>   		engine = active_engine(ce);
>   
>   		/* First attempt to gracefully cancel the context */
> -		if (engine && !__cancel_engine(engine))
> +		if (engine && !__cancel_engine(engine) && ban)
>   			/*
>   			 * If we are unable to send a preemptive pulse to bump
>   			 * the context from the GPU, we have to resort to a full
> @@ -544,8 +521,10 @@ static void kill_engines(struct i915_gem_engines *engines)
>   	}
>   }
>   
> -static void kill_stale_engines(struct i915_gem_context *ctx)
> +static void kill_context(struct i915_gem_context *ctx)
>   {
> +	bool ban = (!i915_gem_context_is_persistent(ctx) ||
> +		    !ctx->i915->params.enable_hangcheck);
>   	struct i915_gem_engines *pos, *next;
>   
>   	spin_lock_irq(&ctx->stale.lock);
> @@ -558,7 +537,7 @@ static void kill_stale_engines(struct i915_gem_context *ctx)
>   
>   		spin_unlock_irq(&ctx->stale.lock);
>   
> -		kill_engines(pos);
> +		kill_engines(pos, ban);
>   
>   		spin_lock_irq(&ctx->stale.lock);
>   		GEM_BUG_ON(i915_sw_fence_signaled(&pos->fence));
> @@ -570,11 +549,6 @@ static void kill_stale_engines(struct i915_gem_context *ctx)
>   	spin_unlock_irq(&ctx->stale.lock);
>   }
>   
> -static void kill_context(struct i915_gem_context *ctx)
> -{
> -	kill_stale_engines(ctx);
> -}
> -
>   static void engines_idle_release(struct i915_gem_context *ctx,
>   				 struct i915_gem_engines *engines)
>   {
> @@ -609,7 +583,7 @@ static void engines_idle_release(struct i915_gem_context *ctx,
>   
>   kill:
>   	if (list_empty(&engines->link)) /* raced, already closed */
> -		kill_engines(engines);
> +		kill_engines(engines, true);
>   
>   	i915_sw_fence_commit(&engines->fence);
>   }
> @@ -667,9 +641,7 @@ static void context_close(struct i915_gem_context *ctx)
>   	 * case we opt to forcibly kill off all remaining requests on
>   	 * context close.
>   	 */
> -	if (!i915_gem_context_is_persistent(ctx) ||
> -	    !ctx->i915->params.enable_hangcheck)
> -		kill_context(ctx);
> +	kill_context(ctx);
>   
>   	i915_gem_context_put(ctx);
>   }
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
