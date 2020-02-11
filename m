Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6743B159244
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 15:51:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6C186EA89;
	Tue, 11 Feb 2020 14:51:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 310556EA89
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 14:51:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 06:51:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="347292094"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga001.fm.intel.com with ESMTP; 11 Feb 2020 06:51:07 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 2D65F5C0D8C; Tue, 11 Feb 2020 16:50:08 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200210205722.794180-2-chris@chris-wilson.co.uk>
References: <20200210205722.794180-1-chris@chris-wilson.co.uk>
 <20200210205722.794180-2-chris@chris-wilson.co.uk>
Date: Tue, 11 Feb 2020 16:50:08 +0200
Message-ID: <87d0al9o0v.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/selftests: Exercise timeslice
 rewinding
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Originally, I did not expect having to rewind a context upon
> timeslicing: the point was to replace the executing context with an idle

I think you said 'non executing' and it would fit better.

> one! However, given a second context that depends on requests from the
> first, we may have to split the requests along the first context to
> execute the second, causing us to replay the first context and have to
> rewind the RING_TAIL.
>
> References: 5ba32c7be81e ("drm/i915/execlists: Always force a context reload when rewinding RING_TAIL")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_lrc.c | 202 ++++++++++++++++++++++++-
>  1 file changed, 201 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index 82fa0712808e..8b7383f6d9b3 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -76,8 +76,11 @@ static int wait_for_submit(struct intel_engine_cs *engine,
>  	do {
>  		cond_resched();
>  		intel_engine_flush_submission(engine);
> -		if (i915_request_is_active(rq))
> +		if (i915_request_is_active(rq) &&
> +		    !READ_ONCE(engine->execlists.pending[0])) {
> +			tasklet_unlock_wait(&engine->execlists.tasklet);
>  			return 0;
> +		}
>  	} while (time_before(jiffies, timeout));
>  
>  	return -ETIME;
> @@ -772,6 +775,202 @@ static int live_timeslice_preempt(void *arg)
>  	return err;
>  }
>  
> +static struct i915_request *
> +create_rewinder(struct intel_context *ce,
> +		struct i915_request *wait,
> +		int slot)
> +{
> +	struct i915_request *rq;
> +	u32 offset = i915_ggtt_offset(ce->engine->status_page.vma) + 4000;
> +	u32 *cs;
> +	int err;
> +
> +	rq = intel_context_create_request(ce);
> +	if (IS_ERR(rq))
> +		return rq;
> +
> +	if (wait) {
> +		err = i915_request_await_dma_fence(rq, &wait->fence);
> +		if (err)
> +			goto err;
> +	}
> +
> +	cs = intel_ring_begin(rq, 10);
> +	if (IS_ERR(cs)) {
> +		err = PTR_ERR(cs);
> +		goto err;
> +	}
> +
> +	*cs++ = MI_ARB_ON_OFF | MI_ARB_ENABLE;
> +	*cs++ = MI_NOOP;
> +
> +	*cs++ = MI_SEMAPHORE_WAIT |
> +		MI_SEMAPHORE_GLOBAL_GTT |
> +		MI_SEMAPHORE_POLL |
> +		MI_SEMAPHORE_SAD_NEQ_SDD;
> +	*cs++ = 0;
> +	*cs++ = offset;
> +	*cs++ = 0;
> +
> +	*cs++ = MI_STORE_REGISTER_MEM_GEN8 | MI_USE_GGTT;
> +	*cs++ = i915_mmio_reg_offset(RING_TIMESTAMP(rq->engine->mmio_base));
> +	*cs++ = offset + slot * sizeof(u32);
> +	*cs++ = 0;
> +
> +	intel_ring_advance(rq, cs);
> +
> +	rq->sched.attr.priority = I915_PRIORITY_MASK;
> +	err = 0;
> +err:
> +	i915_request_get(rq);
> +	i915_request_add(rq);
> +	if (err) {
> +		i915_request_put(rq);
> +		return ERR_PTR(err);
> +	}
> +
> +	return rq;
> +}
> +
> +static int live_timeslice_rewind(void *arg)
> +{
> +	struct intel_gt *gt = arg;
> +	struct intel_engine_cs *engine;
> +	enum intel_engine_id id;
> +
> +	/*
> +	 * The usual presumption on timeslice expiration is that we replace
> +	 * the active context with another. However, given a chain of
> +	 * dependencies we may end up with replacing the context with itself,
> +	 * but only a few of those requests, forcing us to rewind the
> +	 * RING_TAIL of the original request.
> +	 */
> +	if (!IS_ACTIVE(CONFIG_DRM_I915_TIMESLICE_DURATION))
> +		return 0;

Looks like you could remove this check...
> +
> +	for_each_engine(engine, gt, id) {
> +		struct i915_request *rq[3] = {};
> +		struct intel_context *ce;
> +		unsigned long heartbeat;
> +		unsigned long timeslice;
> +		int i, err = 0;
> +		u32 *slot;
> +
> +		if (!intel_engine_has_timeslices(engine))
> +			continue;

and let this handle everything...shrug.

> +
> +		/*
> +		 * A:rq1 -- semaphore wait, timestamp X
> +		 * A:rq2 -- write timestamp Y
> +		 *
> +		 * B:rq1 [await A:rq1] -- write timestamp Z
> +		 *
> +		 * Force timeslice, release sempahore.

s/sempahore/semaphore.


The comment is very very helpful to dissect the test.
I would have liked the to have two context, named A and B
for even increased readability but on the other hand,
it makes then the error handling messier :P

> +		 *
> +		 * Expect evaluation order XZY
> +		 */


> +
> +		engine_heartbeat_disable(engine, &heartbeat);
> +		timeslice = xchg(&engine->props.timeslice_duration_ms, 1);
> +
> +		slot = memset(engine->status_page.addr + 1000,
> +			      0, 4 * sizeof(u32));
> +

The offset to hwsp could be defined but not insisting.

> +		ce = intel_context_create(engine);
> +		if (IS_ERR(ce)) {
> +			err = PTR_ERR(ce);
> +			goto err;
> +		}
> +
> +		rq[0] = create_rewinder(ce, NULL, 1);
> +		if (IS_ERR(rq[0])) {
> +			intel_context_put(ce);
> +			goto err;
> +		}
> +
> +		rq[1] = create_rewinder(ce, NULL, 2);
> +		intel_context_put(ce);
> +		if (IS_ERR(rq[1]))
> +			goto err;
> +
> +		err = wait_for_submit(engine, rq[1], HZ / 2);
> +		if (err) {
> +			pr_err("%s: failed to submit first context\n",
> +			       engine->name);
> +			goto err;
> +		}
> +
> +		ce = intel_context_create(engine);
> +		if (IS_ERR(ce)) {
> +			err = PTR_ERR(ce);
> +			goto err;
> +		}
> +
> +		rq[2] = create_rewinder(ce, rq[0], 3);
> +		intel_context_put(ce);
> +		if (IS_ERR(rq[2]))
> +			goto err;
> +
> +		err = wait_for_submit(engine, rq[2], HZ / 2);
> +		if (err) {
> +			pr_err("%s: failed to submit second context\n",
> +			       engine->name);
> +			goto err;
> +		}
> +		GEM_BUG_ON(!timer_pending(&engine->execlists.timer));
> +
> +		/* Wait for the timeslice to kick in */
> +		del_timer(&engine->execlists.timer);
> +		tasklet_hi_schedule(&engine->execlists.tasklet);
> +		intel_engine_flush_submission(engine);
> +
> +		/* Release the hounds! */
> +		slot[0] = 1;
> +		wmb();
> +
> +		for (i = 1; i <= 3; i++) {
> +			unsigned long timeout = jiffies + HZ / 2;
> +
> +			while (!READ_ONCE(slot[i]) &&
> +			       time_before(jiffies, timeout))

you pushed with wmb so you could expect with rmb() and cpu_relax();
I guess it works fine without :O.

> +				;
> +
> +			if (!time_before(jiffies, timeout)) {
> +				pr_err("%s: rq[%d] timed out\n",
> +				       engine->name, i - 1);
> +				err = -ETIME;
> +				goto err;
> +			}
> +
> +			pr_debug("%s: slot[%d]:%x\n", engine->name, i, slot[i]);
> +		}
> +
> +		/* XZY: XZ < XY */
> +		if (slot[3] - slot[1] >= slot[2] - slot[1]) {
> +			pr_err("%s: timeslicing did not run context B [%u] before A [%u]!\n",
> +			       engine->name,
> +			       slot[3] - slot[1],
> +			       slot[2] - slot[1]);
> +			err = -EINVAL;
> +		}
> +
> +err:
> +		memset(slot, 0xff, 4 * sizeof(u32));

was expecting slot[0] = 

Only minor nitpicks/suggestions/typo.

In general the commenting pattern was enjoyable and helped.
First one describes what we try to achieve, then how and
then the 3 one liners points to the key switches/stages on it.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> +		wmb();
> +
> +		engine->props.timeslice_duration_ms = timeslice;
> +		engine_heartbeat_enable(engine, heartbeat);
> +		for (i = 0; i < 3; i++)
> +			i915_request_put(rq[i]);
> +		if (igt_flush_test(gt->i915))
> +			err = -EIO;
> +		if (err)
> +			return err;
> +	}
> +
> +	return 0;
> +}
> +
>  static struct i915_request *nop_request(struct intel_engine_cs *engine)
>  {
>  	struct i915_request *rq;
> @@ -3619,6 +3818,7 @@ int intel_execlists_live_selftests(struct drm_i915_private *i915)
>  		SUBTEST(live_hold_reset),
>  		SUBTEST(live_error_interrupt),
>  		SUBTEST(live_timeslice_preempt),
> +		SUBTEST(live_timeslice_rewind),
>  		SUBTEST(live_timeslice_queue),
>  		SUBTEST(live_busywait_preempt),
>  		SUBTEST(live_preempt),
> -- 
> 2.25.0
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
