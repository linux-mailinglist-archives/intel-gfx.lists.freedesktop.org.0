Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE491D1D19
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 20:12:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3F816EA8F;
	Wed, 13 May 2020 18:11:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABE4E6EA8F
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 18:11:58 +0000 (UTC)
IronPort-SDR: 7xAXjjKNz3uL+/kQ7It68ehxpZAYFlZmbiTbOc8xzNNOhPcoh5a7o+x/DCX+7gg3jxXNZfDkWr
 hfJgStItuA1A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 11:11:58 -0700
IronPort-SDR: t+jmWV3xFFafp//NGrU1+wimydOuov+rB1RvWTjBU/80kC+J6J6+HGFt1FZbm3o2tHZmNWjrGR
 fGn1Q792CzpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,388,1583222400"; d="scan'208";a="251341423"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga007.jf.intel.com with ESMTP; 13 May 2020 11:11:56 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 6D91E5C1DF0; Wed, 13 May 2020 21:09:44 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200513165937.9508-2-chris@chris-wilson.co.uk>
References: <20200513165937.9508-1-chris@chris-wilson.co.uk>
 <20200513165937.9508-2-chris@chris-wilson.co.uk>
Date: Wed, 13 May 2020 21:09:44 +0300
Message-ID: <871rnnvh93.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915: Mark the addition of the
 initial-breadcrumb in the request
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> The initial-breadcrumb is used to mark the end of the awaiting and the
> beginning of the user payload. We verify that we do not start the user
> payload before all signaler are completed, checking our semaphore setup
> by looking for the initial breadcrumb being written too early. We also
> want to ensure that we do not add semaphore waits after we have already
> closed the semaphore section, an issue for later deferred waits.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c |  5 ++++-
>  drivers/gpu/drm/i915/i915_request.c |  7 ++++++-
>  drivers/gpu/drm/i915/i915_request.h | 27 ++++++++++++++++++++-------
>  3 files changed, 30 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 32feb2a27dfc..51470e96cdd4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1886,7 +1886,7 @@ static void defer_request(struct i915_request *rq, struct list_head * const pl)
>  				continue;
>  
>  			/* No waiter should start before its signaler */
> -			GEM_BUG_ON(w->context->timeline->has_initial_breadcrumb &&
> +			GEM_BUG_ON(i915_request_has_initial_breadcrumb(w) &&
>  				   i915_request_started(w) &&
>  				   !i915_request_completed(rq));
>  
> @@ -3493,6 +3493,7 @@ static int gen8_emit_init_breadcrumb(struct i915_request *rq)
>  {
>  	u32 *cs;
>  
> +	GEM_BUG_ON(i915_request_has_initial_breadcrumb(rq));
>  	if (!i915_request_timeline(rq)->has_initial_breadcrumb)
>  		return 0;
>  
> @@ -3519,6 +3520,8 @@ static int gen8_emit_init_breadcrumb(struct i915_request *rq)
>  	/* Record the updated position of the request's payload */
>  	rq->infix = intel_ring_offset(rq, cs);
>  
> +	__set_bit(I915_FENCE_FLAG_INITIAL_BREADCRUMB, &rq->fence.flags);
> +
>  	return 0;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 2d5b98549ddc..00b7c4eb3f32 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -951,6 +951,7 @@ __emit_semaphore_wait(struct i915_request *to,
>  	u32 *cs;
>  
>  	GEM_BUG_ON(INTEL_GEN(to->i915) < 8);
> +	GEM_BUG_ON(i915_request_has_initial_breadcrumb(to));
>  
>  	/* We need to pin the signaler's HWSP until we are finished reading. */
>  	err = intel_timeline_read_hwsp(from, to, &hwsp_offset);
> @@ -1000,6 +1001,9 @@ emit_semaphore_wait(struct i915_request *to,
>  	if (!intel_context_use_semaphores(to->context))
>  		goto await_fence;
>  
> +	if (i915_request_has_initial_breadcrumb(to))
> +		goto await_fence;
> +
>  	if (!rcu_access_pointer(from->hwsp_cacheline))
>  		goto await_fence;
>  
> @@ -1256,7 +1260,8 @@ __i915_request_await_execution(struct i915_request *to,
>  	 * immediate execution, and so we must wait until it reaches the
>  	 * active slot.
>  	 */
> -	if (intel_engine_has_semaphores(to->engine)) {
> +	if (intel_engine_has_semaphores(to->engine) &&
> +	    !i915_request_has_initial_breadcrumb(to)) {
>  		err = __emit_semaphore_wait(to, from, from->fence.seqno - 1);
>  		if (err < 0)
>  			return err;
> diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
> index d8ce908e1346..98ae2dc82371 100644
> --- a/drivers/gpu/drm/i915/i915_request.h
> +++ b/drivers/gpu/drm/i915/i915_request.h
> @@ -84,19 +84,26 @@ enum {
>  	I915_FENCE_FLAG_PQUEUE,
>  
>  	/*
> -	 * I915_FENCE_FLAG_SIGNAL - this request is currently on signal_list
> +	 * I915_FENCE_FLAG_HOLD - this request is currently on hold
>  	 *
> -	 * Internal bookkeeping used by the breadcrumb code to track when
> -	 * a request is on the various signal_list.
> +	 * This request has been suspended, pending an ongoing investigation.
>  	 */
> -	I915_FENCE_FLAG_SIGNAL,
> +	I915_FENCE_FLAG_HOLD,
>  
>  	/*
> -	 * I915_FENCE_FLAG_HOLD - this request is currently on hold
> +	 * I915_FENCE_FLAG_INITIAL_BREADCRUMB - this request has the initial
> +	 * breadcrumb that marks the end of semaphore waits and start of the
> +	 * user payload.
> +	 */
> +	I915_FENCE_FLAG_INITIAL_BREADCRUMB,
> +
> +	/*
> +	 * I915_FENCE_FLAG_SIGNAL - this request is currently on signal_list
>  	 *
> -	 * This request has been suspended, pending an ongoing investigation.
> +	 * Internal bookkeeping used by the breadcrumb code to track when
> +	 * a request is on the various signal_list.
>  	 */
> -	I915_FENCE_FLAG_HOLD,
> +	I915_FENCE_FLAG_SIGNAL,
>  
>  	/*
>  	 * I915_FENCE_FLAG_NOPREEMPT - this request should not be preempted
> @@ -390,6 +397,12 @@ static inline bool i915_request_in_priority_queue(const struct i915_request *rq)
>  	return test_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
>  }
>  
> +static inline bool
> +i915_request_has_initial_breadcrumb(const struct i915_request *rq)
> +{
> +	return test_bit(I915_FENCE_FLAG_INITIAL_BREADCRUMB, &rq->fence.flags);
> +}
> +
>  /**
>   * Returns true if seq1 is later than seq2.
>   */
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
