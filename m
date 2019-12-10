Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ADDE118C44
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 16:15:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F7796E0FC;
	Tue, 10 Dec 2019 15:15:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07B766E0FC
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 15:15:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 07:15:52 -0800
X-IronPort-AV: E=Sophos;i="5.69,300,1571727600"; d="scan'208";a="207308251"
Received: from jmcrann-mobl1.ger.corp.intel.com (HELO [10.252.9.248])
 ([10.252.9.248])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 10 Dec 2019 07:15:51 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191204211703.4073569-1-chris@chris-wilson.co.uk>
 <20191210151332.3902215-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <483ec7a4-ee5b-99e2-7e40-6e357adcac88@linux.intel.com>
Date: Tue, 10 Dec 2019 15:15:49 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191210151332.3902215-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915: Copy across scheduler
 behaviour flags across submit fences
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


On 10/12/2019 15:13, Chris Wilson wrote:
> We want the bonded request to have the same scheduler properties as its
> master so that it is placed at the same depth in the queue. For example,
> consider we have requests A, B and B', where B & B' are a bonded pair to
> run in parallel on two engines.
> 
> 	A -> B
>       	     \- B'
> 
> B will run after A and so may be scheduled on an idle engine and wait on
> A using a semaphore. B' sees B being executed and so enters the queue on
> the same engine as A. As B' did not inherit the semaphore-chain from B,
> it may have higher precedence than A and so preempts execution. However,
> B' then sits on a semaphore waiting for B, who is waiting for A, who is
> blocked by B.
> 
> Ergo B' needs to inherit the scheduler properties from B (i.e. the
> semaphore chain) so that it is scheduled with the same priority as B and
> will not be executed ahead of Bs dependencies.
> 
> Furthermore, to prevent the priorities changing via the expose fence on
> B', we need to couple in the dependencies for PI. This requires us to
> relax our sanity-checks that dependencies are strictly in order.
> 
> v2: Synchronise (B, B') execution on all platforms, regardless of using
> a scheduler, any no-op syncs should be elided.
> 
> Fixes: ee1136908e9b ("drm/i915/execlists: Virtual engine bonding")
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/464
> Testcase: igt/gem_exec_balancer/bonded-chain
> Testcase: igt/gem_exec_balancer/bonded-semaphore
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_request.c   | 114 ++++++++++++++++++++------
>   drivers/gpu/drm/i915/i915_scheduler.c |   1 -
>   2 files changed, 89 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index ddc6c311349c..a6238c626a16 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -300,11 +300,11 @@ void i915_request_retire_upto(struct i915_request *rq)
>   }
>   
>   static int
> -__i915_request_await_execution(struct i915_request *rq,
> -			       struct i915_request *signal,
> -			       void (*hook)(struct i915_request *rq,
> -					    struct dma_fence *signal),
> -			       gfp_t gfp)
> +__await_execution(struct i915_request *rq,
> +		  struct i915_request *signal,
> +		  void (*hook)(struct i915_request *rq,
> +			       struct dma_fence *signal),
> +		  gfp_t gfp)
>   {
>   	struct execute_cb *cb;
>   
> @@ -341,6 +341,8 @@ __i915_request_await_execution(struct i915_request *rq,
>   	}
>   	spin_unlock_irq(&signal->lock);
>   
> +	/* Copy across semaphore status as we need the same behaviour */
> +	rq->sched.flags |= signal->sched.flags;
>   	return 0;
>   }
>   
> @@ -824,31 +826,21 @@ already_busywaiting(struct i915_request *rq)
>   }
>   
>   static int
> -emit_semaphore_wait(struct i915_request *to,
> -		    struct i915_request *from,
> -		    gfp_t gfp)
> +__emit_semaphore_wait(struct i915_request *to,
> +		      struct i915_request *from,
> +		      u32 seqno)
>   {
>   	const int has_token = INTEL_GEN(to->i915) >= 12;
>   	u32 hwsp_offset;
> -	int len;
> +	int len, err;
>   	u32 *cs;
>   
>   	GEM_BUG_ON(INTEL_GEN(to->i915) < 8);
>   
> -	/* Just emit the first semaphore we see as request space is limited. */
> -	if (already_busywaiting(to) & from->engine->mask)
> -		goto await_fence;
> -
> -	if (i915_request_await_start(to, from) < 0)
> -		goto await_fence;
> -
> -	/* Only submit our spinner after the signaler is running! */
> -	if (__i915_request_await_execution(to, from, NULL, gfp))
> -		goto await_fence;
> -
>   	/* We need to pin the signaler's HWSP until we are finished reading. */
> -	if (intel_timeline_read_hwsp(from, to, &hwsp_offset))
> -		goto await_fence;
> +	err = intel_timeline_read_hwsp(from, to, &hwsp_offset);
> +	if (err)
> +		return err;
>   
>   	len = 4;
>   	if (has_token)
> @@ -871,7 +863,7 @@ emit_semaphore_wait(struct i915_request *to,
>   		 MI_SEMAPHORE_POLL |
>   		 MI_SEMAPHORE_SAD_GTE_SDD) +
>   		has_token;
> -	*cs++ = from->fence.seqno;
> +	*cs++ = seqno;
>   	*cs++ = hwsp_offset;
>   	*cs++ = 0;
>   	if (has_token) {
> @@ -880,6 +872,28 @@ emit_semaphore_wait(struct i915_request *to,
>   	}
>   
>   	intel_ring_advance(to, cs);
> +	return 0;
> +}
> +
> +static int
> +emit_semaphore_wait(struct i915_request *to,
> +		    struct i915_request *from,
> +		    gfp_t gfp)
> +{
> +	/* Just emit the first semaphore we see as request space is limited. */
> +	if (already_busywaiting(to) & from->engine->mask)
> +		goto await_fence;
> +
> +	if (i915_request_await_start(to, from) < 0)
> +		goto await_fence;
> +
> +	/* Only submit our spinner after the signaler is running! */
> +	if (__await_execution(to, from, NULL, gfp))
> +		goto await_fence;
> +
> +	if (__emit_semaphore_wait(to, from, from->fence.seqno))
> +		goto await_fence;
> +
>   	to->sched.semaphores |= from->engine->mask;
>   	to->sched.flags |= I915_SCHED_HAS_SEMAPHORE_CHAIN;
>   	return 0;
> @@ -995,6 +1009,57 @@ i915_request_await_dma_fence(struct i915_request *rq, struct dma_fence *fence)
>   	return 0;
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
> +static int
> +__i915_request_await_execution(struct i915_request *to,
> +			       struct i915_request *from,
> +			       void (*hook)(struct i915_request *rq,
> +					    struct dma_fence *signal))
> +{
> +	int err;
> +
> +	/* Submit both requests at the same time */
> +	err = __await_execution(to, from, hook, I915_FENCE_GFP);
> +	if (err)
> +		return err;
> +
> +	/* Squash repeated depenendices to the same timelines */
> +	if (intel_timeline_sync_has_start(i915_request_timeline(to),
> +					  &from->fence))
> +		return 0;
> +
> +	/* Ensure both start together [after all semaphores in signal] */
> +	if (intel_engine_has_semaphores(to->engine))
> +		err = __emit_semaphore_wait(to, from, from->fence.seqno - 1);
> +	else
> +		err = i915_request_await_start(to, from);
> +	if (err < 0)
> +		return err;
> +
> +	/* Couple the dependency tree for PI on this exposed to->fence */
> +	if (to->engine->schedule) {
> +		err = i915_sched_node_add_dependency(&to->sched, &from->sched);
> +		if (err < 0)
> +			return err;
> +	}
> +
> +	return intel_timeline_sync_set_start(i915_request_timeline(to),
> +					     &from->fence);
> +}
> +
>   int
>   i915_request_await_execution(struct i915_request *rq,
>   			     struct dma_fence *fence,
> @@ -1030,8 +1095,7 @@ i915_request_await_execution(struct i915_request *rq,
>   		if (dma_fence_is_i915(fence))
>   			ret = __i915_request_await_execution(rq,
>   							     to_request(fence),
> -							     hook,
> -							     I915_FENCE_GFP);
> +							     hook);
>   		else
>   			ret = i915_sw_fence_await_dma_fence(&rq->submit, fence,
>   							    I915_FENCE_TIMEOUT,
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
> index 1937a26d412f..2bc2aa46a1b9 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.c
> +++ b/drivers/gpu/drm/i915/i915_scheduler.c
> @@ -484,7 +484,6 @@ void i915_sched_node_fini(struct i915_sched_node *node)
>   	 * so we may be called out-of-order.
>   	 */
>   	list_for_each_entry_safe(dep, tmp, &node->signalers_list, signal_link) {
> -		GEM_BUG_ON(!node_signaled(dep->signaler));
>   		GEM_BUG_ON(!list_empty(&dep->dfs_link));
>   
>   		list_del(&dep->wait_link);
> 


Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
