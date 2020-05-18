Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1CC61D7468
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 11:53:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3204689C08;
	Mon, 18 May 2020 09:53:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98F4B89C08
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 09:53:27 +0000 (UTC)
IronPort-SDR: Il1QMitwYhXQPbsT4hoN1dIvk3Z+ahxT26NyhxLkGHu+JCjYSAmRdRBw9HHbLYxGgJjE/OKGMv
 0Hy2248QJm8Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 02:53:27 -0700
IronPort-SDR: 4HgAPXE4850EfAgYuAHaFhlUObq9UgrF/NBaMJdyCEAEHo66+BFch5+pH1LMzw9j9HUDqr5GT3
 FVJk94Qmyuhw==
X-IronPort-AV: E=Sophos;i="5.73,406,1583222400"; d="scan'208";a="439154266"
Received: from coheno1-mobl.ger.corp.intel.com (HELO [10.214.214.153])
 ([10.214.214.153])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 02:53:25 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200518081440.17948-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c3e6ecd0-a256-2dec-ff18-9cfe26359843@linux.intel.com>
Date: Mon, 18 May 2020 10:53:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200518081440.17948-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915: Move saturated workload
 detection back to the context
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


On 18/05/2020 09:14, Chris Wilson wrote:
> When we introduced the saturated workload detection to tell us to back
> off from semaphore usage [semaphores have a noticeable impact on
> contended bus cycles with the CPU for some heavy workloads], we first
> introduced it as a per-context tracker. This allows individual contexts
> to try and optimise their own usage, but we found that with the local
> tracking and the no-semaphore boosting, the first context to disable
> semaphores got a massive priority boost and so would starve the rest and
> all new contexts (as they started with semaphores enabled and lower
> priority). Hence we moved the saturated workload detection to the
> engine, and a consequence had to disable semaphores on virtual engines.
> 
> Now that we do not have semaphore priority boosting, we can move the
> tracking back to the context and virtual engines can now utilise the
> faster inter-engine synchronisation.
> 
> References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

We'd need to dig out the bug report which the above commit fixed and see 
what tests need to be ran to check for no regressions. Sounds tricky to 
find without a tag. I certainly don't remember it from a year ago. :(

Regards,

Tvrtko

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_context.c       |  1 +
>   drivers/gpu/drm/i915/gt/intel_context_types.h |  2 ++
>   drivers/gpu/drm/i915/gt/intel_engine_pm.c     |  2 --
>   drivers/gpu/drm/i915/gt/intel_engine_types.h  |  2 --
>   drivers/gpu/drm/i915/gt/intel_lrc.c           | 15 ---------------
>   drivers/gpu/drm/i915/i915_request.c           |  4 ++--
>   6 files changed, 5 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
> index e4aece20bc80..762a251d553b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context.c
> +++ b/drivers/gpu/drm/i915/gt/intel_context.c
> @@ -268,6 +268,7 @@ static int __intel_context_active(struct i915_active *active)
>   	if (err)
>   		goto err_timeline;
>   
> +	ce->saturated = 0;
>   	return 0;
>   
>   err_timeline:
> diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
> index 4954b0df4864..aed26d93c2ca 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
> @@ -78,6 +78,8 @@ struct intel_context {
>   	} lrc;
>   	u32 tag; /* cookie passed to HW to track this context on submission */
>   
> +	intel_engine_mask_t saturated; /* submitting semaphores too late? */
> +
>   	/* Time on GPU as tracked by the hw. */
>   	struct {
>   		struct ewma_runtime avg;
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> index d0a1078ef632..6d7fdba5adef 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> @@ -229,8 +229,6 @@ static int __engine_park(struct intel_wakeref *wf)
>   	struct intel_engine_cs *engine =
>   		container_of(wf, typeof(*engine), wakeref);
>   
> -	engine->saturated = 0;
> -
>   	/*
>   	 * If one and only one request is completed between pm events,
>   	 * we know that we are inside the kernel context and it is
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index 2b6cdf47d428..c443b6bb884b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -332,8 +332,6 @@ struct intel_engine_cs {
>   
>   	struct intel_context *kernel_context; /* pinned */
>   
> -	intel_engine_mask_t saturated; /* submitting semaphores too late? */
> -
>   	struct {
>   		struct delayed_work work;
>   		struct i915_request *systole;
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 87e6c5bdd2dc..e597325d04f1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -5630,21 +5630,6 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
>   	ve->base.instance = I915_ENGINE_CLASS_INVALID_VIRTUAL;
>   	ve->base.uabi_instance = I915_ENGINE_CLASS_INVALID_VIRTUAL;
>   
> -	/*
> -	 * The decision on whether to submit a request using semaphores
> -	 * depends on the saturated state of the engine. We only compute
> -	 * this during HW submission of the request, and we need for this
> -	 * state to be globally applied to all requests being submitted
> -	 * to this engine. Virtual engines encompass more than one physical
> -	 * engine and so we cannot accurately tell in advance if one of those
> -	 * engines is already saturated and so cannot afford to use a semaphore
> -	 * and be pessimized in priority for doing so -- if we are the only
> -	 * context using semaphores after all other clients have stopped, we
> -	 * will be starved on the saturated system. Such a global switch for
> -	 * semaphores is less than ideal, but alas is the current compromise.
> -	 */
> -	ve->base.saturated = ALL_ENGINES;
> -
>   	snprintf(ve->base.name, sizeof(ve->base.name), "virtual");
>   
>   	intel_engine_init_active(&ve->base, ENGINE_VIRTUAL);
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 526c1e9acbd5..31ef683d27b4 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -467,7 +467,7 @@ bool __i915_request_submit(struct i915_request *request)
>   	 */
>   	if (request->sched.semaphores &&
>   	    i915_sw_fence_signaled(&request->semaphore))
> -		engine->saturated |= request->sched.semaphores;
> +		request->context->saturated |= request->sched.semaphores;
>   
>   	engine->emit_fini_breadcrumb(request,
>   				     request->ring->vaddr + request->postfix);
> @@ -919,7 +919,7 @@ already_busywaiting(struct i915_request *rq)
>   	 *
>   	 * See the are-we-too-late? check in __i915_request_submit().
>   	 */
> -	return rq->sched.semaphores | READ_ONCE(rq->engine->saturated);
> +	return rq->sched.semaphores | READ_ONCE(rq->context->saturated);
>   }
>   
>   static int
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
