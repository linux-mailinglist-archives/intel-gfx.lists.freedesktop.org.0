Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BBD7178F6E
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 12:17:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D68206EB21;
	Wed,  4 Mar 2020 11:16:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49D996EB35
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 11:16:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 03:16:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,514,1574150400"; d="scan'208";a="439098070"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga005.fm.intel.com with ESMTP; 04 Mar 2020 03:16:55 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 21C475C1DD2; Wed,  4 Mar 2020 13:15:39 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200304012059.2371206-1-chris@chris-wilson.co.uk>
References: <20200304012059.2371206-1-chris@chris-wilson.co.uk>
Date: Wed, 04 Mar 2020 13:15:39 +0200
Message-ID: <878skg5q1w.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Apply i915_request_skip() on
 submission
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Trying to use i915_request_skip() prior to i915_request_add() causes us
> to try and fill the ring upto request->postfix, which has not yet been
> set, and so may cause us to memset() past the end of the ring.
>
> Instead of skipping the request immediately, just flag the error on the
> request (only accepting the first fatal error we see) and then clear the
> request upon submission.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>

I am now convinced that if skip happens in a wrong spot,
we really might end up filling up zeros in ring when
we shouldn't

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>


> ---
>  .../gpu/drm/i915/gem/i915_gem_client_blt.c    |  2 +-
>  .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  6 +-
>  .../gpu/drm/i915/gem/i915_gem_object_blt.c    |  4 +-
>  .../drm/i915/gem/selftests/i915_gem_context.c |  6 +-
>  .../drm/i915/gem/selftests/igt_gem_utils.c    |  2 +-
>  drivers/gpu/drm/i915/gt/intel_lrc.c           |  4 +-
>  drivers/gpu/drm/i915/gt/intel_reset.c         | 13 ++--
>  .../gpu/drm/i915/gt/intel_ring_submission.c   |  4 +-
>  drivers/gpu/drm/i915/gt/mock_engine.c         |  4 +-
>  drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |  2 +-
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  4 +-
>  drivers/gpu/drm/i915/i915_request.c           | 67 +++++++++++++------
>  drivers/gpu/drm/i915/i915_request.h           |  5 +-
>  drivers/gpu/drm/i915/selftests/igt_spinner.c  |  2 +-
>  14 files changed, 75 insertions(+), 50 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
> index 81366aa4812b..0598e5382a1d 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_client_blt.c
> @@ -217,7 +217,7 @@ static void clear_pages_worker(struct work_struct *work)
>  					   0);
>  out_request:
>  	if (unlikely(err)) {
> -		i915_request_skip(rq, err);
> +		i915_request_set_error_once(rq, err);
>  		err = 0;
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index a1636c168e1f..bb27813ad5bf 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -1169,7 +1169,7 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
>  	goto out_pool;
>  
>  skip_request:
> -	i915_request_skip(rq, err);
> +	i915_request_set_error_once(rq, err);
>  err_request:
>  	i915_request_add(rq);
>  err_unpin:
> @@ -1850,7 +1850,7 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
>  	return 0;
>  
>  err_skip:
> -	i915_request_skip(eb->request, err);
> +	i915_request_set_error_once(eb->request, err);
>  	return err;
>  }
>  
> @@ -2579,7 +2579,7 @@ static void eb_request_add(struct i915_execbuffer *eb)
>  			attr.priority |= I915_PRIORITY_WAIT;
>  	} else {
>  		/* Serialise with context_close via the add_to_timeline */
> -		i915_request_skip(rq, -ENOENT);
> +		i915_request_set_error_once(rq, -ENOENT);
>  	}
>  
>  	local_bh_disable();
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
> index 70809d8897cd..39b8a055d80a 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
> @@ -186,7 +186,7 @@ int i915_gem_object_fill_blt(struct drm_i915_gem_object *obj,
>  					0);
>  out_request:
>  	if (unlikely(err))
> -		i915_request_skip(rq, err);
> +		i915_request_set_error_once(rq, err);
>  
>  	i915_request_add(rq);
>  out_batch:
> @@ -385,7 +385,7 @@ int i915_gem_object_copy_blt(struct drm_i915_gem_object *src,
>  	drm_gem_unlock_reservations(objs, ARRAY_SIZE(objs), &acquire);
>  out_request:
>  	if (unlikely(err))
> -		i915_request_skip(rq, err);
> +		i915_request_set_error_once(rq, err);
>  
>  	i915_request_add(rq);
>  out_batch:
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> index 375d864736f3..77c7e65de7c3 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> @@ -1004,7 +1004,7 @@ emit_rpcs_query(struct drm_i915_gem_object *obj,
>  	return 0;
>  
>  skip_request:
> -	i915_request_skip(rq, err);
> +	i915_request_set_error_once(rq, err);
>  err_request:
>  	i915_request_add(rq);
>  err_batch:
> @@ -1559,7 +1559,7 @@ static int write_to_scratch(struct i915_gem_context *ctx,
>  
>  	goto out_vm;
>  skip_request:
> -	i915_request_skip(rq, err);
> +	i915_request_set_error_once(rq, err);
>  err_request:
>  	i915_request_add(rq);
>  err_unpin:
> @@ -1708,7 +1708,7 @@ static int read_from_scratch(struct i915_gem_context *ctx,
>  
>  	goto out_vm;
>  skip_request:
> -	i915_request_skip(rq, err);
> +	i915_request_set_error_once(rq, err);
>  err_request:
>  	i915_request_add(rq);
>  err_unpin:
> diff --git a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
> index 6718da20f35d..772d8cba7da9 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/igt_gem_utils.c
> @@ -159,7 +159,7 @@ int igt_gpu_fill_dw(struct intel_context *ce,
>  	return 0;
>  
>  skip_request:
> -	i915_request_skip(rq, err);
> +	i915_request_set_error_once(rq, err);
>  err_request:
>  	i915_request_add(rq);
>  err_batch:
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index b9b3f78f1324..d123dd7fe98b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -245,7 +245,7 @@ static void mark_eio(struct i915_request *rq)
>  
>  	GEM_BUG_ON(i915_request_signaled(rq));
>  
> -	dma_fence_set_error(&rq->fence, -EIO);
> +	i915_request_set_error_once(rq, -EIO);
>  	i915_request_mark_complete(rq);
>  }
>  
> @@ -4903,7 +4903,7 @@ static intel_engine_mask_t virtual_submission_mask(struct virtual_engine *ve)
>  	mask = rq->execution_mask;
>  	if (unlikely(!mask)) {
>  		/* Invalid selection, submit to a random engine in error */
> -		i915_request_skip(rq, -ENODEV);
> +		i915_request_set_error_once(rq, -ENODEV);
>  		mask = ve->siblings[0]->mask;
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index aef6ab58d7d9..10ad816b32e2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -48,8 +48,10 @@ static void engine_skip_context(struct i915_request *rq)
>  
>  	lockdep_assert_held(&engine->active.lock);
>  	list_for_each_entry_continue(rq, &engine->active.requests, sched.link)
> -		if (rq->context == hung_ctx)
> -			i915_request_skip(rq, -EIO);
> +		if (rq->context == hung_ctx) {
> +			i915_request_set_error_once(rq, -EIO);
> +			__i915_request_skip(rq);
> +		}
>  }
>  
>  static void client_mark_guilty(struct i915_gem_context *ctx, bool banned)
> @@ -154,11 +156,12 @@ void __i915_request_reset(struct i915_request *rq, bool guilty)
>  
>  	rcu_read_lock(); /* protect the GEM context */
>  	if (guilty) {
> -		i915_request_skip(rq, -EIO);
> +		i915_request_set_error_once(rq, -EIO);
> +		__i915_request_skip(rq);
>  		if (mark_guilty(rq))
>  			engine_skip_context(rq);
>  	} else {
> -		dma_fence_set_error(&rq->fence, -EAGAIN);
> +		i915_request_set_error_once(rq, -EAGAIN);
>  		mark_innocent(rq);
>  	}
>  	rcu_read_unlock();
> @@ -785,7 +788,7 @@ static void nop_submit_request(struct i915_request *request)
>  	unsigned long flags;
>  
>  	RQ_TRACE(request, "-EIO\n");
> -	dma_fence_set_error(&request->fence, -EIO);
> +	i915_request_set_error_once(request, -EIO);
>  
>  	spin_lock_irqsave(&engine->active.lock, flags);
>  	__i915_request_submit(request);
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> index fee743626060..ee241b7eaa3b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -895,9 +895,7 @@ static void reset_cancel(struct intel_engine_cs *engine)
>  
>  	/* Mark all submitted requests as skipped. */
>  	list_for_each_entry(request, &engine->active.requests, sched.link) {
> -		if (!i915_request_signaled(request))
> -			dma_fence_set_error(&request->fence, -EIO);
> -
> +		i915_request_set_error_once(request, -EIO);
>  		i915_request_mark_complete(request);
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
> index 5633515c12e9..4a53ded7c2dd 100644
> --- a/drivers/gpu/drm/i915/gt/mock_engine.c
> +++ b/drivers/gpu/drm/i915/gt/mock_engine.c
> @@ -244,9 +244,7 @@ static void mock_reset_cancel(struct intel_engine_cs *engine)
>  
>  	/* Mark all submitted requests as skipped. */
>  	list_for_each_entry(request, &engine->active.requests, sched.link) {
> -		if (!i915_request_signaled(request))
> -			dma_fence_set_error(&request->fence, -EIO);
> -
> +		i915_request_set_error_once(request, -EIO);
>  		i915_request_mark_complete(request);
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> index c3514ec7b8db..2b2efff6e19d 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> @@ -268,7 +268,7 @@ hang_create_request(struct hang *h, struct intel_engine_cs *engine)
>  
>  cancel_rq:
>  	if (err) {
> -		i915_request_skip(rq, err);
> +		i915_request_set_error_once(rq, err);
>  		i915_request_add(rq);
>  	}
>  unpin_hws:
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 1beaa77f9bb6..fe7778c28d2d 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -456,9 +456,7 @@ static void guc_reset_cancel(struct intel_engine_cs *engine)
>  
>  	/* Mark all executing requests as skipped. */
>  	list_for_each_entry(rq, &engine->active.requests, sched.link) {
> -		if (!i915_request_signaled(rq))
> -			dma_fence_set_error(&rq->fence, -EIO);
> -
> +		i915_request_set_error_once(rq, -EIO);
>  		i915_request_mark_complete(rq);
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index d837c1380015..e88b027f80c1 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -363,6 +363,48 @@ __await_execution(struct i915_request *rq,
>  	return 0;
>  }
>  
> +void __i915_request_skip(struct i915_request *rq)
> +{
> +	if (rq->infix == rq->postfix)
> +		return;
> +
> +	/*
> +	 * As this request likely depends on state from the lost
> +	 * context, clear out all the user operations leaving the
> +	 * breadcrumb at the end (so we get the fence notifications).
> +	 */
> +	__i915_request_fill(rq, 0);
> +	rq->infix = rq->postfix;
> +}
> +
> +static bool fatal_error(int error)
> +{
> +	switch (error) {
> +	case 0: /* not an error! */
> +	case -EAGAIN: /* innocent victim of a GT reset (__i915_request_reset) */
> +	case -ETIMEDOUT: /* waiting for a Godot (timer_i915_sw_fence_wake) */
> +		return false;
> +	default:
> +		return true;
> +	}
> +}
> +
> +void i915_request_set_error_once(struct i915_request *rq, int error)
> +{
> +	int old;
> +
> +	GEM_BUG_ON(!IS_ERR_VALUE((long)error));
> +
> +	if (i915_request_signaled(rq))
> +		return;
> +
> +	old = READ_ONCE(rq->fence.error);
> +	do {
> +		if (fatal_error(old))
> +			return;
> +	} while (!try_cmpxchg(&rq->fence.error, &old, error));
> +}
> +
>  bool __i915_request_submit(struct i915_request *request)
>  {
>  	struct intel_engine_cs *engine = request->engine;
> @@ -392,8 +434,10 @@ bool __i915_request_submit(struct i915_request *request)
>  	if (i915_request_completed(request))
>  		goto xfer;
>  
> -	if (intel_context_is_banned(request->context))
> -		i915_request_skip(request, -EIO);
> +	if (unlikely(intel_context_is_banned(request->context)))
> +		i915_request_set_error_once(request, -EIO);
> +	if (unlikely(fatal_error(request->fence.error)))
> +		__i915_request_skip(request);
>  
>  	/*
>  	 * Are we using semaphores when the gpu is already saturated?
> @@ -519,7 +563,7 @@ submit_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
>  		trace_i915_request_submit(request);
>  
>  		if (unlikely(fence->error))
> -			i915_request_skip(request, fence->error);
> +			i915_request_set_error_once(request, fence->error);
>  
>  		/*
>  		 * We need to serialize use of the submit_request() callback
> @@ -1209,23 +1253,6 @@ i915_request_await_object(struct i915_request *to,
>  	return ret;
>  }
>  
> -void i915_request_skip(struct i915_request *rq, int error)
> -{
> -	GEM_BUG_ON(!IS_ERR_VALUE((long)error));
> -	dma_fence_set_error(&rq->fence, error);
> -
> -	if (rq->infix == rq->postfix)
> -		return;
> -
> -	/*
> -	 * As this request likely depends on state from the lost
> -	 * context, clear out all the user operations leaving the
> -	 * breadcrumb at the end (so we get the fence notifications).
> -	 */
> -	__i915_request_fill(rq, 0);
> -	rq->infix = rq->postfix;
> -}
> -
>  static struct i915_request *
>  __i915_request_add_to_timeline(struct i915_request *rq)
>  {
> diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
> index da8420f03232..d4bae16b4785 100644
> --- a/drivers/gpu/drm/i915/i915_request.h
> +++ b/drivers/gpu/drm/i915/i915_request.h
> @@ -303,6 +303,9 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp);
>  struct i915_request * __must_check
>  i915_request_create(struct intel_context *ce);
>  
> +void i915_request_set_error_once(struct i915_request *rq, int error);
> +void __i915_request_skip(struct i915_request *rq);
> +
>  struct i915_request *__i915_request_commit(struct i915_request *request);
>  void __i915_request_queue(struct i915_request *rq,
>  			  const struct i915_sched_attr *attr);
> @@ -352,8 +355,6 @@ void i915_request_add(struct i915_request *rq);
>  bool __i915_request_submit(struct i915_request *request);
>  void i915_request_submit(struct i915_request *request);
>  
> -void i915_request_skip(struct i915_request *request, int error);
> -
>  void __i915_request_unsubmit(struct i915_request *request);
>  void i915_request_unsubmit(struct i915_request *request);
>  
> diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> index e8a58fe49c39..9ad4ab088466 100644
> --- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
> +++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> @@ -183,7 +183,7 @@ igt_spinner_create_request(struct igt_spinner *spin,
>  
>  cancel_rq:
>  	if (err) {
> -		i915_request_skip(rq, err);
> +		i915_request_set_error_once(rq, err);
>  		i915_request_add(rq);
>  	}
>  unpin_hws:
> -- 
> 2.25.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
