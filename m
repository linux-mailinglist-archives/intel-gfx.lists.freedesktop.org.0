Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A93151FBFC0
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 22:12:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A29B06E930;
	Tue, 16 Jun 2020 20:12:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BB686E930
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 20:12:35 +0000 (UTC)
IronPort-SDR: Jc5t01jXQA7SlAwRUQgHpMxKqH23ExRus+gKurD9UwrnGv878FETsLDfiPxc+1MJTd4w3Fj/LF
 fABaOGBpZAwg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 13:12:33 -0700
IronPort-SDR: BjKYfBWvppwN7Kubjwe5qbKZh9NwJ5qHUL7/fXBiRDjgopgqeKxXpZx14mZOGFMipcVEbAlrMS
 JTRm3BDUPoUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,519,1583222400"; d="scan'208";a="277039327"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga006.jf.intel.com with ESMTP; 16 Jun 2020 13:12:32 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 793725C2C1C; Tue, 16 Jun 2020 23:09:52 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200616092833.18498-1-chris@chris-wilson.co.uk>
References: <20200616092833.18498-1-chris@chris-wilson.co.uk>
Date: Tue, 16 Jun 2020 23:09:52 +0300
Message-ID: <87o8pi93hr.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Check preemption
 rollback of different ring queue depths
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

> Like live_unlite_ring, but instead of simply looking at the impact of
> intel_ring_direction(), check that preemption more generally works with
> different depths of queued requests in the ring.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>

Pondering about the sizes of try but I can't make up anything
better.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/selftest_lrc.c | 163 +++++++++++++++++++++++++
>  1 file changed, 163 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index 3d088116a055..530718797848 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -2756,6 +2756,168 @@ static int create_gang(struct intel_engine_cs *engine,
>  	return err;
>  }
>  
> +static int __live_preempt_ring(struct intel_engine_cs *engine,
> +			       struct igt_spinner *spin,
> +			       int sz)
> +{
> +	struct intel_context *ce[2] = {};
> +	struct i915_request *rq;
> +	struct igt_live_test t;
> +	int err = 0;
> +	int n;
> +
> +	if (igt_live_test_begin(&t, engine->i915, __func__, engine->name))
> +		return -EIO;
> +
> +	for (n = 0; n < ARRAY_SIZE(ce); n++) {
> +		struct intel_context *tmp;
> +
> +		tmp = intel_context_create(engine);
> +		if (IS_ERR(tmp)) {
> +			err = PTR_ERR(tmp);
> +			goto err_ce;
> +		}
> +
> +		err = intel_context_pin(tmp);
> +		if (err) {
> +			intel_context_put(tmp);
> +			goto err_ce;
> +		}
> +
> +		memset32(tmp->ring->vaddr,
> +			 0xdeadbeef, /* trigger a hang if executed */
> +			 tmp->ring->vma->size / sizeof(u32));
> +
> +		ce[n] = tmp;
> +	}
> +
> +	rq = igt_spinner_create_request(spin, ce[0], MI_ARB_CHECK);
> +	if (IS_ERR(rq)) {
> +		err = PTR_ERR(rq);
> +		goto err_ce;
> +	}
> +
> +	i915_request_get(rq);
> +	rq->sched.attr.priority = I915_PRIORITY_BARRIER;
> +	i915_request_add(rq);
> +
> +	if (!igt_wait_for_spinner(spin, rq)) {
> +		intel_gt_set_wedged(engine->gt);
> +		i915_request_put(rq);
> +		err = -ETIME;
> +		goto err_ce;
> +	}
> +
> +	/* Fill the ring, until we will cause a wrap */
> +	n = 0;
> +	while (ce[0]->ring->tail - rq->wa_tail <= sz) {
> +		struct i915_request *tmp;
> +
> +		tmp = intel_context_create_request(ce[0]);
> +		if (IS_ERR(tmp)) {
> +			err = PTR_ERR(tmp);
> +			i915_request_put(rq);
> +			goto err_ce;
> +		}
> +
> +		i915_request_add(tmp);
> +		intel_engine_flush_submission(engine);
> +		n++;
> +	}
> +	intel_engine_flush_submission(engine);
> +	pr_debug("%s: Filled %d with %d nop tails {size:%x, tail:%x, emit:%x, rq.tail:%x}\n",
> +		 engine->name, sz, n,
> +		 ce[0]->ring->size,
> +		 ce[0]->ring->tail,
> +		 ce[0]->ring->emit,
> +		 rq->tail);
> +	GEM_BUG_ON(intel_ring_direction(ce[0]->ring,
> +					rq->tail,
> +					ce[0]->ring->tail) <= 0);
> +	i915_request_put(rq);
> +
> +	/* Create a second request to preempt the first ring */
> +	rq = intel_context_create_request(ce[1]);
> +	if (IS_ERR(rq)) {
> +		err = PTR_ERR(rq);
> +		goto err_ce;
> +	}
> +
> +	rq->sched.attr.priority = I915_PRIORITY_BARRIER;
> +	i915_request_get(rq);
> +	i915_request_add(rq);
> +
> +	err = wait_for_submit(engine, rq, HZ / 2);
> +	i915_request_put(rq);
> +	if (err) {
> +		pr_err("%s: preemption request was not submited\n",
> +		       engine->name);
> +		err = -ETIME;
> +	}
> +
> +	pr_debug("%s: ring[0]:{ tail:%x, emit:%x }, ring[1]:{ tail:%x, emit:%x }\n",
> +		 engine->name,
> +		 ce[0]->ring->tail, ce[0]->ring->emit,
> +		 ce[1]->ring->tail, ce[1]->ring->emit);
> +
> +err_ce:
> +	intel_engine_flush_submission(engine);
> +	igt_spinner_end(spin);
> +	for (n = 0; n < ARRAY_SIZE(ce); n++) {
> +		if (IS_ERR_OR_NULL(ce[n]))
> +			break;
> +
> +		intel_context_unpin(ce[n]);
> +		intel_context_put(ce[n]);
> +	}
> +	if (igt_live_test_end(&t))
> +		err = -EIO;
> +	return err;
> +}
> +
> +static int live_preempt_ring(void *arg)
> +{
> +	struct intel_gt *gt = arg;
> +	struct intel_engine_cs *engine;
> +	struct igt_spinner spin;
> +	enum intel_engine_id id;
> +	int err = 0;
> +
> +	/*
> +	 * Check that we rollback large chunks of a ring in order to do a
> +	 * preemption event. Similar to live_unlite_ring, but looking at
> +	 * ring size rather than the impact of intel_ring_direction().
> +	 */
> +
> +	if (igt_spinner_init(&spin, gt))
> +		return -ENOMEM;
> +
> +	for_each_engine(engine, gt, id) {
> +		int n;
> +
> +		if (!intel_engine_has_preemption(engine))
> +			continue;
> +
> +		if (!intel_engine_can_store_dword(engine))
> +			continue;
> +
> +		engine_heartbeat_disable(engine);
> +
> +		for (n = 0; n <= 3; n++) {
> +			err = __live_preempt_ring(engine, &spin, n * SZ_4K / 4);
> +			if (err)
> +				break;
> +		}
> +
> +		engine_heartbeat_enable(engine);
> +		if (err)
> +			break;
> +	}
> +
> +	igt_spinner_fini(&spin);
> +	return err;
> +}
> +
>  static int live_preempt_gang(void *arg)
>  {
>  	struct intel_gt *gt = arg;
> @@ -4538,6 +4700,7 @@ int intel_execlists_live_selftests(struct drm_i915_private *i915)
>  		SUBTEST(live_preempt_cancel),
>  		SUBTEST(live_suppress_self_preempt),
>  		SUBTEST(live_chain_preempt),
> +		SUBTEST(live_preempt_ring),
>  		SUBTEST(live_preempt_gang),
>  		SUBTEST(live_preempt_timeout),
>  		SUBTEST(live_preempt_user),
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
