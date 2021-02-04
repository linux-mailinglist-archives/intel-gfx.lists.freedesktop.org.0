Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F73A30F4A4
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 15:13:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EA436ED82;
	Thu,  4 Feb 2021 14:13:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9AE76ED82
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 14:13:21 +0000 (UTC)
IronPort-SDR: xJ7x30o6nogsWSr7rwXQuoGCYtchlkk+k6ZO8U4SGVZRwIbsBDyJLgM3EdrSSbqq61wh8J6Faa
 43PtcKSiAppQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9884"; a="177739797"
X-IronPort-AV: E=Sophos;i="5.79,401,1602572400"; d="scan'208";a="177739797"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 06:13:21 -0800
IronPort-SDR: bwSiklqulTj5YS1piPkCB+oh1kWJG6wk8AXEJYUyZY9yBN+cYXs45TwcRvRg3tvqTuPBD4XQP0
 tlXzex5gr22g==
X-IronPort-AV: E=Sophos;i="5.79,401,1602572400"; d="scan'208";a="393182113"
Received: from acanalx-mobl.ger.corp.intel.com (HELO [10.249.32.114])
 ([10.249.32.114])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 06:13:19 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
 <20210201085715.27435-25-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d2c832f2-7891-4cc8-750d-dd50794e977c@linux.intel.com>
Date: Thu, 4 Feb 2021 14:13:17 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210201085715.27435-25-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 25/57] drm/i915: Move submit_request to
 i915_sched_engine
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


On 01/02/2021 08:56, Chris Wilson wrote:
> Claim the submit_request vfunc as the entry point into the scheduler
> backend for ready requests.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine_types.h         |  8 --------
>   drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 11 ++++++-----
>   drivers/gpu/drm/i915/gt/intel_reset.c                |  2 +-
>   drivers/gpu/drm/i915/gt/intel_ring_submission.c      |  4 ++--
>   drivers/gpu/drm/i915/gt/mock_engine.c                |  4 +++-
>   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c    |  2 +-
>   drivers/gpu/drm/i915/i915_request.c                  |  2 +-
>   drivers/gpu/drm/i915/i915_scheduler.c                |  2 ++
>   drivers/gpu/drm/i915/i915_scheduler_types.h          |  9 +++++++++
>   drivers/gpu/drm/i915/selftests/i915_request.c        |  3 +--
>   10 files changed, 26 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index 97fe5e395a85..6b0bde292916 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -416,14 +416,6 @@ struct intel_engine_cs {
>   						 u32 *cs);
>   	unsigned int	emit_fini_breadcrumb_dw;
>   
> -	/* Pass the request to the hardware queue (e.g. directly into
> -	 * the legacy ringbuffer or to the end of an execlist).
> -	 *
> -	 * This is called from an atomic context with irqs disabled; must
> -	 * be irq safe.
> -	 */
> -	void		(*submit_request)(struct i915_request *rq);
> -
>   	/*
>   	 * Called on signaling of a SUBMIT_FENCE, passing along the signaling
>   	 * request down to the bonded pairs.
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index be79a352e512..33c1a833df20 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -483,7 +483,7 @@ resubmit_virtual_request(struct i915_request *rq, struct virtual_engine *ve)
>   
>   	clear_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
>   	WRITE_ONCE(rq->engine, &ve->base);
> -	ve->base.submit_request(rq);
> +	ve->base.sched.submit_request(rq);
>   
>   	spin_unlock_irq(&se->lock);
>   }
> @@ -2766,7 +2766,7 @@ static bool can_preempt(struct intel_engine_cs *engine)
>   
>   static void execlists_set_default_submission(struct intel_engine_cs *engine)
>   {
> -	engine->submit_request = i915_request_enqueue;
> +	engine->sched.submit_request = i915_request_enqueue;
>   	engine->sched.tasklet.callback = execlists_submission_tasklet;
>   }
>   
> @@ -3227,7 +3227,7 @@ static void virtual_submit_request(struct i915_request *rq)
>   		     rq->fence.context,
>   		     rq->fence.seqno);
>   
> -	GEM_BUG_ON(ve->base.submit_request != virtual_submit_request);
> +	GEM_BUG_ON(ve->base.sched.submit_request != virtual_submit_request);
>   
>   	spin_lock_irqsave(&se->lock, flags);
>   
> @@ -3341,12 +3341,10 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
>   	ve->base.cops = &virtual_context_ops;
>   	ve->base.request_alloc = execlists_request_alloc;
>   
> -	ve->base.submit_request = virtual_submit_request;
>   	ve->base.bond_execute = virtual_bond_execute;
>   
>   	INIT_LIST_HEAD(virtual_queue(ve));
>   	ve->base.execlists.queue_priority_hint = INT_MIN;
> -	tasklet_setup(&ve->base.sched.tasklet, virtual_submission_tasklet);
>   
>   	intel_context_init(&ve->context, &ve->base);
>   
> @@ -3427,6 +3425,9 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
>   			ve->base.mask,
>   			ENGINE_VIRTUAL);
>   
> +	ve->base.sched.submit_request = virtual_submit_request;
> +	tasklet_setup(&ve->base.sched.tasklet, virtual_submission_tasklet);
> +
>   	virtual_engine_initial_hint(ve);
>   	return &ve->context;
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index 4a8f982a1a4f..e5cb92c7d0f8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -820,7 +820,7 @@ static void __intel_gt_set_wedged(struct intel_gt *gt)
>   		__intel_gt_reset(gt, ALL_ENGINES);
>   
>   	for_each_engine(engine, gt, id)
> -		engine->submit_request = nop_submit_request;
> +		engine->sched.submit_request = nop_submit_request;
>   
>   	/*
>   	 * Make sure no request can slip through without getting completed by
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> index 8af1bc77e15e..a7d49ea71900 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -970,12 +970,12 @@ static void gen6_bsd_submit_request(struct i915_request *request)
>   
>   static void i9xx_set_default_submission(struct intel_engine_cs *engine)
>   {
> -	engine->submit_request = i9xx_submit_request;
> +	engine->sched.submit_request = i9xx_submit_request;
>   }
>   
>   static void gen6_bsd_set_default_submission(struct intel_engine_cs *engine)
>   {
> -	engine->submit_request = gen6_bsd_submit_request;
> +	engine->sched.submit_request = gen6_bsd_submit_request;
>   }
>   
>   static void ring_release(struct intel_engine_cs *engine)
> diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
> index 8b1c2727d25c..cae736e34bda 100644
> --- a/drivers/gpu/drm/i915/gt/mock_engine.c
> +++ b/drivers/gpu/drm/i915/gt/mock_engine.c
> @@ -302,7 +302,8 @@ struct intel_engine_cs *mock_engine(struct drm_i915_private *i915,
>   	engine->base.request_alloc = mock_request_alloc;
>   	engine->base.emit_flush = mock_emit_flush;
>   	engine->base.emit_fini_breadcrumb = mock_emit_breadcrumb;
> -	engine->base.submit_request = mock_submit_request;
> +
> +	engine->base.sched.submit_request = mock_submit_request;
>   
>   	engine->base.reset.prepare = mock_reset_prepare;
>   	engine->base.reset.rewind = mock_reset_rewind;
> @@ -333,6 +334,7 @@ int mock_engine_init(struct intel_engine_cs *engine)
>   			engine->name,
>   			engine->mask,
>   			ENGINE_MOCK);
> +	engine->sched.submit_request = mock_submit_request;
>   
>   	intel_engine_init_execlists(engine);
>   	intel_engine_init__pm(engine);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 15e4ec5ae73a..db6ac5a12834 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -572,7 +572,7 @@ static int guc_resume(struct intel_engine_cs *engine)
>   
>   static void guc_set_default_submission(struct intel_engine_cs *engine)
>   {
> -	engine->submit_request = i915_request_enqueue;
> +	engine->sched.submit_request = i915_request_enqueue;
>   }
>   
>   static void guc_release(struct intel_engine_cs *engine)
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 1b52dcaa023d..c03d3cedf497 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -700,7 +700,7 @@ submit_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
>   		 * proceeding.
>   		 */
>   		rcu_read_lock();
> -		request->engine->submit_request(request);
> +		i915_request_get_scheduler(request)->submit_request(request);
>   		rcu_read_unlock();
>   		break;
>   
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
> index 697127981249..620db6430a10 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.c
> +++ b/drivers/gpu/drm/i915/i915_scheduler.c
> @@ -111,6 +111,8 @@ void i915_sched_init(struct i915_sched *se,
>   
>   	i915_sched_init_ipi(&se->ipi);
>   
> +	se->submit_request = i915_request_enqueue;
> +
>   	/*
>   	 * Due to an interesting quirk in lockdep's internal debug tracking,
>   	 * after setting a subclass we must ensure the lock is used. Otherwise,
> diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
> index 9b09749358ad..effd035dcb78 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler_types.h
> +++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
> @@ -28,6 +28,15 @@ struct i915_sched {
>   
>   	unsigned long mask; /* available scheduling channels */
>   
> +	/*
> +	 * Pass the request to the hardware queue (e.g. directly into

s/hardware queue/submission backend/ ?

> +	 * the legacy ringbuffer or to the end of an execlist).
> +	 *
> +	 * This is called from an atomic context with irqs disabled; must
> +	 * be irq safe.
> +	 */
> +	void		(*submit_request)(struct i915_request *rq);
> +
>   	struct list_head requests; /* active request, on HW */
>   	struct list_head hold; /* ready requests, but on hold */
>   	/**
> diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
> index 39c619bccb74..8035ea7565ed 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_request.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_request.c
> @@ -242,10 +242,9 @@ static int igt_request_rewind(void *arg)
>   	i915_request_get(vip);
>   	i915_request_add(vip);
>   	rcu_read_lock();
> -	request->engine->submit_request(request);
> +	i915_request_get_scheduler(request)->submit_request(request);
>   	rcu_read_unlock();
>   
> -
>   	if (i915_request_wait(vip, 0, HZ) == -ETIME) {
>   		pr_err("timed out waiting for high priority request\n");
>   		goto err;
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
