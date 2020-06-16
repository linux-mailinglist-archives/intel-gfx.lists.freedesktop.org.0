Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1701D1FACCA
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 11:37:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56E846E888;
	Tue, 16 Jun 2020 09:37:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E324A6E887
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 09:37:41 +0000 (UTC)
IronPort-SDR: FjYXY9mmG7GIa5ZGCzl7iSfElQqVFnM674k4bQRiZqTJU8VAaIuVG02zOlm30/27D/0rY5G03/
 lsEZirmnfehA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 02:37:41 -0700
IronPort-SDR: cp+QANsUSKKRF9ARiSwqbubf0os8s1AI41FDNCx7AXTCVEI8fmlJ/0mvTvkbQZjOBUYMMY1iUm
 0Jd1fdu0O55w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; d="scan'208";a="273088329"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga003.jf.intel.com with ESMTP; 16 Jun 2020 02:37:39 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 0C61D5C2C1C; Tue, 16 Jun 2020 12:35:00 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200616084141.3722-4-chris@chris-wilson.co.uk>
References: <20200616084141.3722-1-chris@chris-wilson.co.uk>
 <20200616084141.3722-4-chris@chris-wilson.co.uk>
Date: Tue, 16 Jun 2020 12:35:00 +0300
Message-ID: <871rmf9wvv.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/9] drm/i915/execlists: Replace direct
 submit with direct call to tasklet
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

> Rather than having special case code for opportunistically calling
> process_csb() and performing a direct submit while holding the engine
> spinlock for submitting the request, simply call the tasklet directly.
> This allows us to retain the direct submission path, including the CS
> draining to allow fast/immediate submissions, without requiring any
> duplicated code paths.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine.h        |  1 +
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 27 +++----
>  drivers/gpu/drm/i915/gt/intel_lrc.c           | 78 +++++++------------
>  drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |  1 +
>  drivers/gpu/drm/i915/selftests/i915_request.c |  6 +-
>  5 files changed, 46 insertions(+), 67 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
> index 791897f8d847..c77b3c0d2b3b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> @@ -210,6 +210,7 @@ int intel_engine_resume(struct intel_engine_cs *engine);
>  
>  int intel_ring_submission_setup(struct intel_engine_cs *engine);
>  
> +void __intel_engine_stop_cs(struct intel_engine_cs *engine);
>  int intel_engine_stop_cs(struct intel_engine_cs *engine);
>  void intel_engine_cancel_stop_cs(struct intel_engine_cs *engine);
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 045179c65c44..fbb8ac659b82 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -903,33 +903,34 @@ static unsigned long stop_timeout(const struct intel_engine_cs *engine)
>  	return READ_ONCE(engine->props.stop_timeout_ms);
>  }
>  
> -int intel_engine_stop_cs(struct intel_engine_cs *engine)
> +void __intel_engine_stop_cs(struct intel_engine_cs *engine)
>  {
>  	struct intel_uncore *uncore = engine->uncore;
> -	const u32 base = engine->mmio_base;
> -	const i915_reg_t mode = RING_MI_MODE(base);
> -	int err;
> +	const i915_reg_t mode = RING_MI_MODE(engine->mmio_base);
>  
> +	intel_uncore_write_fw(uncore, mode, _MASKED_BIT_ENABLE(STOP_RING));
> +	intel_uncore_posting_read_fw(uncore, mode);
> +}
> +
> +int intel_engine_stop_cs(struct intel_engine_cs *engine)
> +{
>  	if (INTEL_GEN(engine->i915) < 3)
>  		return -ENODEV;
>  
>  	ENGINE_TRACE(engine, "\n");
>  
> -	intel_uncore_write_fw(uncore, mode, _MASKED_BIT_ENABLE(STOP_RING));
> +	__intel_engine_stop_cs(engine);
>  
> -	err = 0;
> -	if (__intel_wait_for_register_fw(uncore,
> -					 mode, MODE_IDLE, MODE_IDLE,
> +	if (__intel_wait_for_register_fw(engine->uncore,
> +					 RING_MI_MODE(engine->mmio_base),
> +					 MODE_IDLE, MODE_IDLE,
>  					 1000, stop_timeout(engine),
>  					 NULL)) {
>  		ENGINE_TRACE(engine, "timed out on STOP_RING -> IDLE\n");
> -		err = -ETIMEDOUT;
> +		return -ETIMEDOUT;
>  	}
>  
> -	/* A final mmio read to let GPU writes be hopefully flushed to memory */
> -	intel_uncore_posting_read_fw(uncore, mode);
> -
> -	return err;
> +	return 0;
>  }
>  
>  void intel_engine_cancel_stop_cs(struct intel_engine_cs *engine)
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index e866b8d721ed..40c5085765da 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2703,16 +2703,6 @@ static void process_csb(struct intel_engine_cs *engine)
>  	invalidate_csb_entries(&buf[0], &buf[num_entries - 1]);
>  }
>  
> -static void __execlists_submission_tasklet(struct intel_engine_cs *const engine)
> -{
> -	lockdep_assert_held(&engine->active.lock);
> -	if (!READ_ONCE(engine->execlists.pending[0])) {
> -		rcu_read_lock(); /* protect peeking at execlists->active */
> -		execlists_dequeue(engine);
> -		rcu_read_unlock();
> -	}
> -}
> -
>  static void __execlists_hold(struct i915_request *rq)
>  {
>  	LIST_HEAD(list);
> @@ -3102,7 +3092,7 @@ static bool preempt_timeout(const struct intel_engine_cs *const engine)
>  	if (!timer_expired(t))
>  		return false;
>  
> -	return READ_ONCE(engine->execlists.pending[0]);
> +	return engine->execlists.pending[0];

Sometimes I yearn for intel_execlists_request_pending() but it would
be wonky and the port0 is quite core to the lrc...

Overall this patch makes things more straightfoward.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

>  }
>  
>  /*
> @@ -3112,7 +3102,6 @@ static bool preempt_timeout(const struct intel_engine_cs *const engine)
>  static void execlists_submission_tasklet(unsigned long data)
>  {
>  	struct intel_engine_cs * const engine = (struct intel_engine_cs *)data;
> -	bool timeout = preempt_timeout(engine);
>  
>  	process_csb(engine);
>  
> @@ -3122,16 +3111,17 @@ static void execlists_submission_tasklet(unsigned long data)
>  			execlists_reset(engine, "CS error");
>  	}
>  
> -	if (!READ_ONCE(engine->execlists.pending[0]) || timeout) {
> +	if (unlikely(preempt_timeout(engine)))
> +		execlists_reset(engine, "preemption time out");
> +
> +	if (!engine->execlists.pending[0]) {
>  		unsigned long flags;
>  
> +		rcu_read_lock(); /* protect peeking at execlists->active */
>  		spin_lock_irqsave(&engine->active.lock, flags);
> -		__execlists_submission_tasklet(engine);
> +		execlists_dequeue(engine);
>  		spin_unlock_irqrestore(&engine->active.lock, flags);
> -
> -		/* Recheck after serialising with direct-submission */
> -		if (unlikely(timeout && preempt_timeout(engine)))
> -			execlists_reset(engine, "preemption time out");
> +		rcu_read_unlock();
>  	}
>  }
>  
> @@ -3163,26 +3153,16 @@ static void queue_request(struct intel_engine_cs *engine,
>  	set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
>  }
>  
> -static void __submit_queue_imm(struct intel_engine_cs *engine)
> -{
> -	struct intel_engine_execlists * const execlists = &engine->execlists;
> -
> -	if (reset_in_progress(execlists))
> -		return; /* defer until we restart the engine following reset */
> -
> -	__execlists_submission_tasklet(engine);
> -}
> -
> -static void submit_queue(struct intel_engine_cs *engine,
> +static bool submit_queue(struct intel_engine_cs *engine,
>  			 const struct i915_request *rq)
>  {
>  	struct intel_engine_execlists *execlists = &engine->execlists;
>  
>  	if (rq_prio(rq) <= execlists->queue_priority_hint)
> -		return;
> +		return false;
>  
>  	execlists->queue_priority_hint = rq_prio(rq);
> -	__submit_queue_imm(engine);
> +	return true;
>  }
>  
>  static bool ancestor_on_hold(const struct intel_engine_cs *engine,
> @@ -3196,20 +3176,22 @@ static void flush_csb(struct intel_engine_cs *engine)
>  {
>  	struct intel_engine_execlists *el = &engine->execlists;
>  
> -	if (READ_ONCE(el->pending[0]) && tasklet_trylock(&el->tasklet)) {
> -		if (!reset_in_progress(el))
> -			process_csb(engine);
> -		tasklet_unlock(&el->tasklet);
> +	if (!tasklet_trylock(&el->tasklet)) {
> +		tasklet_hi_schedule(&el->tasklet);
> +		return;
>  	}
> +
> +	if (!reset_in_progress(el))
> +		execlists_submission_tasklet((unsigned long)engine);
> +
> +	tasklet_unlock(&el->tasklet);
>  }
>  
>  static void execlists_submit_request(struct i915_request *request)
>  {
>  	struct intel_engine_cs *engine = request->engine;
>  	unsigned long flags;
> -
> -	/* Hopefully we clear execlists->pending[] to let us through */
> -	flush_csb(engine);
> +	bool submit = false;
>  
>  	/* Will be called from irq-context when using foreign fences. */
>  	spin_lock_irqsave(&engine->active.lock, flags);
> @@ -3224,10 +3206,13 @@ static void execlists_submit_request(struct i915_request *request)
>  		GEM_BUG_ON(RB_EMPTY_ROOT(&engine->execlists.queue.rb_root));
>  		GEM_BUG_ON(list_empty(&request->sched.link));
>  
> -		submit_queue(engine, request);
> +		submit = submit_queue(engine, request);
>  	}
>  
>  	spin_unlock_irqrestore(&engine->active.lock, flags);
> +
> +	if (submit)
> +		flush_csb(engine);
>  }
>  
>  static void __execlists_context_fini(struct intel_context *ce)
> @@ -4113,7 +4098,6 @@ static int execlists_resume(struct intel_engine_cs *engine)
>  static void execlists_reset_prepare(struct intel_engine_cs *engine)
>  {
>  	struct intel_engine_execlists * const execlists = &engine->execlists;
> -	unsigned long flags;
>  
>  	ENGINE_TRACE(engine, "depth<-%d\n",
>  		     atomic_read(&execlists->tasklet.count));
> @@ -4130,10 +4114,6 @@ static void execlists_reset_prepare(struct intel_engine_cs *engine)
>  	__tasklet_disable_sync_once(&execlists->tasklet);
>  	GEM_BUG_ON(!reset_in_progress(execlists));
>  
> -	/* And flush any current direct submission. */
> -	spin_lock_irqsave(&engine->active.lock, flags);
> -	spin_unlock_irqrestore(&engine->active.lock, flags);
> -
>  	/*
>  	 * We stop engines, otherwise we might get failed reset and a
>  	 * dead gpu (on elk). Also as modern gpu as kbl can suffer
> @@ -4147,7 +4127,7 @@ static void execlists_reset_prepare(struct intel_engine_cs *engine)
>  	 * FIXME: Wa for more modern gens needs to be validated
>  	 */
>  	ring_set_paused(engine, 1);
> -	intel_engine_stop_cs(engine);
> +	__intel_engine_stop_cs(engine);
>  
>  	engine->execlists.reset_ccid = active_ccid(engine);
>  }
> @@ -4377,12 +4357,12 @@ static void execlists_reset_finish(struct intel_engine_cs *engine)
>  	 * to sleep before we restart and reload a context.
>  	 */
>  	GEM_BUG_ON(!reset_in_progress(execlists));
> -	if (!RB_EMPTY_ROOT(&execlists->queue.rb_root))
> -		execlists->tasklet.func(execlists->tasklet.data);
> +	GEM_BUG_ON(engine->execlists.pending[0]);
>  
> +	/* And kick in case we missed a new request submission. */
>  	if (__tasklet_enable(&execlists->tasklet))
> -		/* And kick in case we missed a new request submission. */
> -		tasklet_hi_schedule(&execlists->tasklet);
> +		flush_csb(engine);
> +
>  	ENGINE_TRACE(engine, "depth->%d\n",
>  		     atomic_read(&execlists->tasklet.count));
>  }
> diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> index 7461936d549d..355ee8562bc1 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> @@ -1597,6 +1597,7 @@ static int __igt_atomic_reset_engine(struct intel_engine_cs *engine,
>  
>  	p->critical_section_end();
>  	tasklet_enable(t);
> +	tasklet_hi_schedule(t);
>  
>  	if (err)
>  		pr_err("i915_reset_engine(%s:%s) failed under %s\n",
> diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
> index 92c628f18c60..4f1b82c7eeaf 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_request.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_request.c
> @@ -1925,9 +1925,7 @@ static int measure_inter_request(struct intel_context *ce)
>  		intel_ring_advance(rq, cs);
>  		i915_request_add(rq);
>  	}
> -	local_bh_disable();
>  	i915_sw_fence_commit(submit);
> -	local_bh_enable();
>  	intel_engine_flush_submission(ce->engine);
>  	heap_fence_put(submit);
>  
> @@ -2213,11 +2211,9 @@ static int measure_completion(struct intel_context *ce)
>  		intel_ring_advance(rq, cs);
>  
>  		dma_fence_add_callback(&rq->fence, &cb.base, signal_cb);
> -
> -		local_bh_disable();
>  		i915_request_add(rq);
> -		local_bh_enable();
>  
> +		intel_engine_flush_submission(ce->engine);
>  		if (wait_for(READ_ONCE(sema[i]) == -1, 50)) {
>  			err = -EIO;
>  			goto err;
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
