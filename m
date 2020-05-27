Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A04D1E3ABA
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 09:39:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2C886E291;
	Wed, 27 May 2020 07:39:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AC546E291
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 07:39:12 +0000 (UTC)
IronPort-SDR: F/VbzANI9Ov5mHaHMJ4jjnqM9RqFidXIsDx1blsPMWPZ0s/9qvjL9/pyPbpgKvLdNuVduF/MDZ
 9bsaGwpgslPA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 00:39:11 -0700
IronPort-SDR: knEjnosA2a+rD1Gy/Xy0gWAu0eF/Z2K4JPpw1krwJPyCpedXWFQET3L7e1cb4qYPaPIuldwadj
 zBgdYG1X6t3w==
X-IronPort-AV: E=Sophos;i="5.73,440,1583222400"; d="scan'208";a="291507848"
Received: from gkazakev-mobl1.ger.corp.intel.com (HELO [10.214.254.180])
 ([10.214.254.180])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 00:39:06 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200526090753.11329-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <8a09f482-723f-5f24-28e0-54c2efd641ab@linux.intel.com>
Date: Wed, 27 May 2020 08:39:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200526090753.11329-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Reorder await_execution
 before await_request
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


On 26/05/2020 10:07, Chris Wilson wrote:
> Reorder the code so that we can reuse the await_execution from a special
> case in await_request in the next patch.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/i915_request.c | 264 ++++++++++++++--------------
>   1 file changed, 132 insertions(+), 132 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index c282719ad3ac..33bbad623e02 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -1053,37 +1053,91 @@ emit_semaphore_wait(struct i915_request *to,
>   					     I915_FENCE_GFP);
>   }
>   
> +static bool intel_timeline_sync_has_start(struct intel_timeline *tl,
> +					  struct dma_fence *fence)
> +{
> +	return __intel_timeline_sync_is_later(tl,
> +					      fence->context,
> +					      fence->seqno - 1);
> +}
> +
> +static int intel_timeline_sync_set_start(struct intel_timeline *tl,
> +					 const struct dma_fence *fence)
> +{
> +	return __intel_timeline_sync_set(tl, fence->context, fence->seqno - 1);
> +}
> +
>   static int
> -i915_request_await_request(struct i915_request *to, struct i915_request *from)
> +__i915_request_await_execution(struct i915_request *to,
> +			       struct i915_request *from,
> +			       void (*hook)(struct i915_request *rq,
> +					    struct dma_fence *signal))
>   {
> -	int ret;
> +	int err;
>   
> -	GEM_BUG_ON(to == from);
> -	GEM_BUG_ON(to->timeline == from->timeline);
> +	GEM_BUG_ON(intel_context_is_barrier(from->context));
>   
> -	if (i915_request_completed(from)) {
> -		i915_sw_fence_set_error_once(&to->submit, from->fence.error);
> +	/* Submit both requests at the same time */
> +	err = __await_execution(to, from, hook, I915_FENCE_GFP);
> +	if (err)
> +		return err;
> +
> +	/* Squash repeated depenendices to the same timelines */
> +	if (intel_timeline_sync_has_start(i915_request_timeline(to),
> +					  &from->fence))
>   		return 0;
> +
> +	/*
> +	 * Wait until the start of this request.
> +	 *
> +	 * The execution cb fires when we submit the request to HW. But in
> +	 * many cases this may be long before the request itself is ready to
> +	 * run (consider that we submit 2 requests for the same context, where
> +	 * the request of interest is behind an indefinite spinner). So we hook
> +	 * up to both to reduce our queues and keep the execution lag minimised
> +	 * in the worst case, though we hope that the await_start is elided.
> +	 */
> +	err = i915_request_await_start(to, from);
> +	if (err < 0)
> +		return err;
> +
> +	/*
> +	 * Ensure both start together [after all semaphores in signal]
> +	 *
> +	 * Now that we are queued to the HW at roughly the same time (thanks
> +	 * to the execute cb) and are ready to run at roughly the same time
> +	 * (thanks to the await start), our signaler may still be indefinitely
> +	 * delayed by waiting on a semaphore from a remote engine. If our
> +	 * signaler depends on a semaphore, so indirectly do we, and we do not
> +	 * want to start our payload until our signaler also starts theirs.
> +	 * So we wait.
> +	 *
> +	 * However, there is also a second condition for which we need to wait
> +	 * for the precise start of the signaler. Consider that the signaler
> +	 * was submitted in a chain of requests following another context
> +	 * (with just an ordinary intra-engine fence dependency between the
> +	 * two). In this case the signaler is queued to HW, but not for
> +	 * immediate execution, and so we must wait until it reaches the
> +	 * active slot.
> +	 */
> +	if (intel_engine_has_semaphores(to->engine) &&
> +	    !i915_request_has_initial_breadcrumb(to)) {
> +		err = __emit_semaphore_wait(to, from, from->fence.seqno - 1);
> +		if (err < 0)
> +			return err;
>   	}
>   
> +	/* Couple the dependency tree for PI on this exposed to->fence */
>   	if (to->engine->schedule) {
> -		ret = i915_sched_node_add_dependency(&to->sched,
> +		err = i915_sched_node_add_dependency(&to->sched,
>   						     &from->sched,
> -						     I915_DEPENDENCY_EXTERNAL);
> -		if (ret < 0)
> -			return ret;
> +						     I915_DEPENDENCY_WEAK);
> +		if (err < 0)
> +			return err;
>   	}
>   
> -	if (to->engine == from->engine)
> -		ret = i915_sw_fence_await_sw_fence_gfp(&to->submit,
> -						       &from->submit,
> -						       I915_FENCE_GFP);
> -	else
> -		ret = emit_semaphore_wait(to, from, I915_FENCE_GFP);
> -	if (ret < 0)
> -		return ret;
> -
> -	return 0;
> +	return intel_timeline_sync_set_start(i915_request_timeline(to),
> +					     &from->fence);
>   }
>   
>   static void mark_external(struct i915_request *rq)
> @@ -1136,23 +1190,20 @@ i915_request_await_external(struct i915_request *rq, struct dma_fence *fence)
>   }
>   
>   int
> -i915_request_await_dma_fence(struct i915_request *rq, struct dma_fence *fence)
> +i915_request_await_execution(struct i915_request *rq,
> +			     struct dma_fence *fence,
> +			     void (*hook)(struct i915_request *rq,
> +					  struct dma_fence *signal))
>   {
>   	struct dma_fence **child = &fence;
>   	unsigned int nchild = 1;
>   	int ret;
>   
> -	/*
> -	 * Note that if the fence-array was created in signal-on-any mode,
> -	 * we should *not* decompose it into its individual fences. However,
> -	 * we don't currently store which mode the fence-array is operating
> -	 * in. Fortunately, the only user of signal-on-any is private to
> -	 * amdgpu and we should not see any incoming fence-array from
> -	 * sync-file being in signal-on-any mode.
> -	 */
>   	if (dma_fence_is_array(fence)) {
>   		struct dma_fence_array *array = to_dma_fence_array(fence);
>   
> +		/* XXX Error for signal-on-any fence arrays */
> +
>   		child = array->fences;
>   		nchild = array->num_fences;
>   		GEM_BUG_ON(!nchild);
> @@ -1165,138 +1216,78 @@ i915_request_await_dma_fence(struct i915_request *rq, struct dma_fence *fence)
>   			continue;
>   		}
>   
> -		/*
> -		 * Requests on the same timeline are explicitly ordered, along
> -		 * with their dependencies, by i915_request_add() which ensures
> -		 * that requests are submitted in-order through each ring.
> -		 */
>   		if (fence->context == rq->fence.context)
>   			continue;
>   
> -		/* Squash repeated waits to the same timelines */
> -		if (fence->context &&
> -		    intel_timeline_sync_is_later(i915_request_timeline(rq),
> -						 fence))
> -			continue;
> +		/*
> +		 * We don't squash repeated fence dependencies here as we
> +		 * want to run our callback in all cases.
> +		 */
>   
>   		if (dma_fence_is_i915(fence))
> -			ret = i915_request_await_request(rq, to_request(fence));
> +			ret = __i915_request_await_execution(rq,
> +							     to_request(fence),
> +							     hook);
>   		else
>   			ret = i915_request_await_external(rq, fence);
>   		if (ret < 0)
>   			return ret;
> -
> -		/* Record the latest fence used against each timeline */
> -		if (fence->context)
> -			intel_timeline_sync_set(i915_request_timeline(rq),
> -						fence);
>   	} while (--nchild);
>   
>   	return 0;
>   }
>   
> -static bool intel_timeline_sync_has_start(struct intel_timeline *tl,
> -					  struct dma_fence *fence)
> -{
> -	return __intel_timeline_sync_is_later(tl,
> -					      fence->context,
> -					      fence->seqno - 1);
> -}
> -
> -static int intel_timeline_sync_set_start(struct intel_timeline *tl,
> -					 const struct dma_fence *fence)
> -{
> -	return __intel_timeline_sync_set(tl, fence->context, fence->seqno - 1);
> -}
> -
>   static int
> -__i915_request_await_execution(struct i915_request *to,
> -			       struct i915_request *from,
> -			       void (*hook)(struct i915_request *rq,
> -					    struct dma_fence *signal))
> +i915_request_await_request(struct i915_request *to, struct i915_request *from)
>   {
> -	int err;
> -
> -	GEM_BUG_ON(intel_context_is_barrier(from->context));
> +	int ret;
>   
> -	/* Submit both requests at the same time */
> -	err = __await_execution(to, from, hook, I915_FENCE_GFP);
> -	if (err)
> -		return err;
> +	GEM_BUG_ON(to == from);
> +	GEM_BUG_ON(to->timeline == from->timeline);
>   
> -	/* Squash repeated depenendices to the same timelines */
> -	if (intel_timeline_sync_has_start(i915_request_timeline(to),
> -					  &from->fence))
> +	if (i915_request_completed(from)) {
> +		i915_sw_fence_set_error_once(&to->submit, from->fence.error);
>   		return 0;
> -
> -	/*
> -	 * Wait until the start of this request.
> -	 *
> -	 * The execution cb fires when we submit the request to HW. But in
> -	 * many cases this may be long before the request itself is ready to
> -	 * run (consider that we submit 2 requests for the same context, where
> -	 * the request of interest is behind an indefinite spinner). So we hook
> -	 * up to both to reduce our queues and keep the execution lag minimised
> -	 * in the worst case, though we hope that the await_start is elided.
> -	 */
> -	err = i915_request_await_start(to, from);
> -	if (err < 0)
> -		return err;
> -
> -	/*
> -	 * Ensure both start together [after all semaphores in signal]
> -	 *
> -	 * Now that we are queued to the HW at roughly the same time (thanks
> -	 * to the execute cb) and are ready to run at roughly the same time
> -	 * (thanks to the await start), our signaler may still be indefinitely
> -	 * delayed by waiting on a semaphore from a remote engine. If our
> -	 * signaler depends on a semaphore, so indirectly do we, and we do not
> -	 * want to start our payload until our signaler also starts theirs.
> -	 * So we wait.
> -	 *
> -	 * However, there is also a second condition for which we need to wait
> -	 * for the precise start of the signaler. Consider that the signaler
> -	 * was submitted in a chain of requests following another context
> -	 * (with just an ordinary intra-engine fence dependency between the
> -	 * two). In this case the signaler is queued to HW, but not for
> -	 * immediate execution, and so we must wait until it reaches the
> -	 * active slot.
> -	 */
> -	if (intel_engine_has_semaphores(to->engine) &&
> -	    !i915_request_has_initial_breadcrumb(to)) {
> -		err = __emit_semaphore_wait(to, from, from->fence.seqno - 1);
> -		if (err < 0)
> -			return err;
>   	}
>   
> -	/* Couple the dependency tree for PI on this exposed to->fence */
>   	if (to->engine->schedule) {
> -		err = i915_sched_node_add_dependency(&to->sched,
> +		ret = i915_sched_node_add_dependency(&to->sched,
>   						     &from->sched,
> -						     I915_DEPENDENCY_WEAK);
> -		if (err < 0)
> -			return err;
> +						     I915_DEPENDENCY_EXTERNAL);
> +		if (ret < 0)
> +			return ret;
>   	}
>   
> -	return intel_timeline_sync_set_start(i915_request_timeline(to),
> -					     &from->fence);
> +	if (to->engine == READ_ONCE(from->engine))
> +		ret = i915_sw_fence_await_sw_fence_gfp(&to->submit,
> +						       &from->submit,
> +						       I915_FENCE_GFP);
> +	else
> +		ret = emit_semaphore_wait(to, from, I915_FENCE_GFP);
> +	if (ret < 0)
> +		return ret;
> +
> +	return 0;
>   }
>   
>   int
> -i915_request_await_execution(struct i915_request *rq,
> -			     struct dma_fence *fence,
> -			     void (*hook)(struct i915_request *rq,
> -					  struct dma_fence *signal))
> +i915_request_await_dma_fence(struct i915_request *rq, struct dma_fence *fence)
>   {
>   	struct dma_fence **child = &fence;
>   	unsigned int nchild = 1;
>   	int ret;
>   
> +	/*
> +	 * Note that if the fence-array was created in signal-on-any mode,
> +	 * we should *not* decompose it into its individual fences. However,
> +	 * we don't currently store which mode the fence-array is operating
> +	 * in. Fortunately, the only user of signal-on-any is private to
> +	 * amdgpu and we should not see any incoming fence-array from
> +	 * sync-file being in signal-on-any mode.
> +	 */
>   	if (dma_fence_is_array(fence)) {
>   		struct dma_fence_array *array = to_dma_fence_array(fence);
>   
> -		/* XXX Error for signal-on-any fence arrays */
> -
>   		child = array->fences;
>   		nchild = array->num_fences;
>   		GEM_BUG_ON(!nchild);
> @@ -1309,22 +1300,31 @@ i915_request_await_execution(struct i915_request *rq,
>   			continue;
>   		}
>   
> +		/*
> +		 * Requests on the same timeline are explicitly ordered, along
> +		 * with their dependencies, by i915_request_add() which ensures
> +		 * that requests are submitted in-order through each ring.
> +		 */
>   		if (fence->context == rq->fence.context)
>   			continue;
>   
> -		/*
> -		 * We don't squash repeated fence dependencies here as we
> -		 * want to run our callback in all cases.
> -		 */
> +		/* Squash repeated waits to the same timelines */
> +		if (fence->context &&
> +		    intel_timeline_sync_is_later(i915_request_timeline(rq),
> +						 fence))
> +			continue;
>   
>   		if (dma_fence_is_i915(fence))
> -			ret = __i915_request_await_execution(rq,
> -							     to_request(fence),
> -							     hook);
> +			ret = i915_request_await_request(rq, to_request(fence));
>   		else
>   			ret = i915_request_await_external(rq, fence);
>   		if (ret < 0)
>   			return ret;
> +
> +		/* Record the latest fence used against each timeline */
> +		if (fence->context)
> +			intel_timeline_sync_set(i915_request_timeline(rq),
> +						fence);
>   	} while (--nchild);
>   
>   	return 0;
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
