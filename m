Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFBF6672372
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 17:35:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D4FF10E79C;
	Wed, 18 Jan 2023 16:35:28 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8350310E78F;
 Wed, 18 Jan 2023 16:35:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674059725; x=1705595725;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=p2wQkbtDZ3uexU8bpYHRFearpsXNIp9BjHLouSDQ5WM=;
 b=YGyXIki6QZ+bHeuDMKYOCLzCOLeFmZF0/Jq3EtQZv96yiatYoDbsH0hy
 U8AEuh0vVqqvXeODOsMwrRoz0OhD2yVrfb++d66hAzxL+kvOonVpX6bPd
 2cuYwsVkh6aHiSCT3wOrJpzNzXyN7+C1tWqu/XFQ9rYir/WWt3P59/0HT
 Ye2Y31XKauRgLGX0vbjCu2Id/Upmho4b2ngL4uq95Pb4gozgtdksahd6n
 EByAHJCSmvUKt7s6hk6GJSsxsJmKLL0r3eMH/5u+Bov1pV3YXkO9rwu7j
 bo8iG+OREW3Q7PMaVztG7UR56wz7i0/365C4gOKBu+NYevhNsVqOnwINa Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="327099165"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="327099165"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 08:34:28 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="728267215"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="728267215"
Received: from llvincen-mobl.ger.corp.intel.com (HELO [10.213.215.37])
 ([10.213.215.37])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 08:34:27 -0800
Message-ID: <548703fc-ebb4-b991-6b64-a4a378feb507@linux.intel.com>
Date: Wed, 18 Jan 2023 16:34:25 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: John.C.Harrison@Intel.com, Intel-GFX@Lists.FreeDesktop.Org
References: <20230117213630.2897570-1-John.C.Harrison@Intel.com>
 <20230117213630.2897570-3-John.C.Harrison@Intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230117213630.2897570-3-John.C.Harrison@Intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 2/5] drm/i915: Allow error capture
 without a request
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 17/01/2023 21:36, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
> 
> There was a report of error captures occurring without any hung
> context being indicated despite the capture being initiated by a 'hung
> context notification' from GuC. The problem was not reproducible.
> However, it is possible to happen if the context in question has no
> active requests. For example, if the hang was in the context switch
> itself then the breadcrumb write would have occurred and the KMD would
> see an idle context.
> 
> In the interests of attempting to provide as much information as
> possible about a hang, it seems wise to include the engine info
> regardless of whether a request was found or not. As opposed to just
> prentending there was no hang at all.
> 
> So update the error capture code to always record engine information
> if an engine is given. Which means updating record_context() to take a
> context instead of a request (which it only ever used to find the
> context anyway). And split the request agnostic parts of
> intel_engine_coredump_add_request() out into a seaprate function.
> 
> v2: Remove a duplicate 'if' statement (Umesh) and fix a put of a null
> pointer.
> v3: Tidy up request locking code flow (Tvrtko)
> 
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_gpu_error.c | 69 ++++++++++++++++++---------
>   1 file changed, 46 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 4107a0dfcca7d..461489d599a7e 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -1370,14 +1370,14 @@ static void engine_record_execlists(struct intel_engine_coredump *ee)
>   }
>   
>   static bool record_context(struct i915_gem_context_coredump *e,
> -			   const struct i915_request *rq)
> +			   struct intel_context *ce)
>   {
>   	struct i915_gem_context *ctx;
>   	struct task_struct *task;
>   	bool simulated;
>   
>   	rcu_read_lock();
> -	ctx = rcu_dereference(rq->context->gem_context);
> +	ctx = rcu_dereference(ce->gem_context);
>   	if (ctx && !kref_get_unless_zero(&ctx->ref))
>   		ctx = NULL;
>   	rcu_read_unlock();
> @@ -1396,8 +1396,8 @@ static bool record_context(struct i915_gem_context_coredump *e,
>   	e->guilty = atomic_read(&ctx->guilty_count);
>   	e->active = atomic_read(&ctx->active_count);
>   
> -	e->total_runtime = intel_context_get_total_runtime_ns(rq->context);
> -	e->avg_runtime = intel_context_get_avg_runtime_ns(rq->context);
> +	e->total_runtime = intel_context_get_total_runtime_ns(ce);
> +	e->avg_runtime = intel_context_get_avg_runtime_ns(ce);
>   
>   	simulated = i915_gem_context_no_error_capture(ctx);
>   
> @@ -1532,15 +1532,37 @@ intel_engine_coredump_alloc(struct intel_engine_cs *engine, gfp_t gfp, u32 dump_
>   	return ee;
>   }
>   
> +static struct intel_engine_capture_vma *
> +engine_coredump_add_context(struct intel_engine_coredump *ee,
> +			    struct intel_context *ce,
> +			    gfp_t gfp)
> +{
> +	struct intel_engine_capture_vma *vma = NULL;
> +
> +	ee->simulated |= record_context(&ee->context, ce);
> +	if (ee->simulated)
> +		return NULL;
> +
> +	/*
> +	 * We need to copy these to an anonymous buffer
> +	 * as the simplest method to avoid being overwritten
> +	 * by userspace.
> +	 */
> +	vma = capture_vma(vma, ce->ring->vma, "ring", gfp);
> +	vma = capture_vma(vma, ce->state, "HW context", gfp);
> +
> +	return vma;
> +}
> +
>   struct intel_engine_capture_vma *
>   intel_engine_coredump_add_request(struct intel_engine_coredump *ee,
>   				  struct i915_request *rq,
>   				  gfp_t gfp)
>   {
> -	struct intel_engine_capture_vma *vma = NULL;
> +	struct intel_engine_capture_vma *vma;
>   
> -	ee->simulated |= record_context(&ee->context, rq);
> -	if (ee->simulated)
> +	vma = engine_coredump_add_context(ee, rq->context, gfp);
> +	if (!vma)
>   		return NULL;
>   
>   	/*
> @@ -1550,8 +1572,6 @@ intel_engine_coredump_add_request(struct intel_engine_coredump *ee,
>   	 */
>   	vma = capture_vma_snapshot(vma, rq->batch_res, gfp, "batch");
>   	vma = capture_user(vma, rq, gfp);
> -	vma = capture_vma(vma, rq->ring->vma, "ring", gfp);
> -	vma = capture_vma(vma, rq->context->state, "HW context", gfp);
>   
>   	ee->rq_head = rq->head;
>   	ee->rq_post = rq->postfix;
> @@ -1609,8 +1629,12 @@ capture_engine(struct intel_engine_cs *engine,
>   		intel_engine_clear_hung_context(engine);
>   		/* This will reference count the request (if found) */
>   		rq = intel_context_find_active_request(ce);
> -		if (!rq || !i915_request_started(rq))
> -			goto no_request_capture;
> +		if (rq && !i915_request_started(rq)) {
> +			drm_info(&engine->gt->i915->drm, "Got hung context on %s with no active request!\n",
> +				 engine->name);
> +			i915_request_put(rq);
> +			rq = NULL;
> +		}
>   	} else {
>   		/*
>   		 * Getting here with GuC enabled means it is a forced error capture
> @@ -1624,25 +1648,24 @@ capture_engine(struct intel_engine_cs *engine,
>   					       flags);
>   		}
>   	}
> -	if (!rq)
> -		goto no_request_capture;
> -
> -	capture = intel_engine_coredump_add_request(ee, rq, ATOMIC_MAYFAIL);
> -	if (!capture) {
> +	if (rq) {
> +		capture = intel_engine_coredump_add_request(ee, rq, ATOMIC_MAYFAIL);
>   		i915_request_put(rq);
> -		goto no_request_capture;
> +	} else if (ce) {
> +		capture = engine_coredump_add_context(ee, ce, ATOMIC_MAYFAIL);
>   	}
> +
>   	if (dump_flags & CORE_DUMP_FLAG_IS_GUC_CAPTURE)
>   		intel_guc_capture_get_matching_node(engine->gt, ee, ce);
>   
> -	intel_engine_coredump_add_vma(ee, capture, compress);
> -	i915_request_put(rq);
> +	if (capture) {
> +		intel_engine_coredump_add_vma(ee, capture, compress);
> +	} else {
> +		kfree(ee);
> +		ee = NULL;
> +	}
>   
>   	return ee;
> -
> -no_request_capture:
> -	kfree(ee);
> -	return NULL;
>   }
>   
>   static void

LGTM - regardless of how i915_request_get_rcu flow ends up:

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
