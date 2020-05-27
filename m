Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE541E4985
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 18:13:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 670B56E347;
	Wed, 27 May 2020 16:13:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 613EE6E348
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 16:13:55 +0000 (UTC)
IronPort-SDR: 7E1AD28rZ9oE1XkCEB5g06aWNEt6Tg+4XBiXR33xtSi3Vbt5gY9LwtTW2oTdFiZCB2dehS+nqB
 ZHgsAtB2Zsjg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 09:13:54 -0700
IronPort-SDR: Kbrfp+bNsT3GUdUsnds30OS8VGTuSfiZI2m5rDb5Q2as0RhieC6HUDq5iiihAgItV8v0pkFiFH
 GtP2NvQkzIwg==
X-IronPort-AV: E=Sophos;i="5.73,442,1583222400"; d="scan'208";a="291648034"
Received: from gkazakev-mobl1.ger.corp.intel.com (HELO [10.214.254.180])
 ([10.214.254.180])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 09:13:53 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200527130214.1239-1-chris@chris-wilson.co.uk>
 <20200527140719.10842-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <7da38982-32f3-d4fe-bdcc-58b5016448a1@linux.intel.com>
Date: Wed, 27 May 2020 17:13:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200527140719.10842-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Prevent timeslicing into
 unpreemptible requests
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


On 27/05/2020 15:07, Chris Wilson wrote:
> We have a I915_REQUEST_NOPREEMPT flag that we set when we must prevent
> the HW from preempting during the course of this request. We need to
> honour this flag and protect the HW even if we have a heartbeat request,
> or other maximum priority barrier, pending. As such, restrict the
> timeslicing check to avoid preempting into the topmost priority band,
> leaving the unpreemptable requests in blissful peace running
> uninterrupted on the HW.
> 
> Fixes: 2a98f4e65bba ("drm/i915: add infrastructure to hold off preemption on a request")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c    |  11 +++
>   drivers/gpu/drm/i915/gt/selftest_lrc.c | 116 +++++++++++++++++++++++++
>   2 files changed, 127 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 3214a4ecc31a..012afb9e0324 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1896,6 +1896,15 @@ static void defer_active(struct intel_engine_cs *engine)
>   	defer_request(rq, i915_sched_lookup_priolist(engine, rq_prio(rq)));
>   }
>   
> +static inline int never_timeslice(int prio)
> +{
> +	/* Don't allow timeslicing of the 'unpreemptible' requests */
> +	if (prio == I915_PRIORITY_UNPREEMPTABLE)
> +		prio--;
> +
> +	return prio;
> +}
> +
>   static bool
>   need_timeslice(const struct intel_engine_cs *engine,
>   	       const struct i915_request *rq,
> @@ -1927,6 +1936,7 @@ need_timeslice(const struct intel_engine_cs *engine,
>   
>   	if (!list_is_last(&rq->sched.link, &engine->active.requests))
>   		hint = max(hint, rq_prio(list_next_entry(rq, sched.link)));
> +	hint = never_timeslice(hint);
>   
>   	return hint >= effective_prio(rq);

Can INT_MAX ever end up in the queue? I am thinking if we limit it to 
effective_prio it may be more obvious what's happening. Or is it 
heartbeats? Should they be INT_MAX - 1 then?

Regards,

Tvrtko

>   }
> @@ -2007,6 +2017,7 @@ static void start_timeslice(struct intel_engine_cs *engine, int prio)
>   	if (!intel_engine_has_timeslices(engine))
>   		return;
>   
> +	prio = never_timeslice(prio);
>   	WRITE_ONCE(execlists->switch_priority_hint, prio);
>   	if (prio == INT_MIN)
>   		return;
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index 66f710b1b61e..0c32afbdb644 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -1289,6 +1289,121 @@ static int live_timeslice_queue(void *arg)
>   	return err;
>   }
>   
> +static int live_timeslice_nopreempt(void *arg)
> +{
> +	struct intel_gt *gt = arg;
> +	struct intel_engine_cs *engine;
> +	enum intel_engine_id id;
> +	struct igt_spinner spin;
> +	int err = 0;
> +
> +	/*
> +	 * We should not timeslice into a request that is marked with
> +	 * I915_REQUEST_NOPREEMPT.
> +	 */
> +	if (!IS_ACTIVE(CONFIG_DRM_I915_TIMESLICE_DURATION))
> +		return 0;
> +
> +	if (igt_spinner_init(&spin, gt))
> +		return -ENOMEM;
> +
> +	for_each_engine(engine, gt, id) {
> +		struct intel_context *ce;
> +		struct i915_request *rq;
> +		unsigned long timeslice;
> +
> +		if (!intel_engine_has_preemption(engine))
> +			continue;
> +
> +		ce = intel_context_create(engine);
> +		if (IS_ERR(ce)) {
> +			err = PTR_ERR(ce);
> +			break;
> +		}
> +
> +		engine_heartbeat_disable(engine);
> +		timeslice = xchg(&engine->props.timeslice_duration_ms, 1);
> +
> +		/* Create an unpreemptible spinner */
> +
> +		rq = igt_spinner_create_request(&spin, ce, MI_ARB_CHECK);
> +		intel_context_put(ce);
> +		if (IS_ERR(rq)) {
> +			err = PTR_ERR(rq);
> +			goto out_heartbeat;
> +		}
> +
> +		i915_request_get(rq);
> +		i915_request_add(rq);
> +
> +		if (!igt_wait_for_spinner(&spin, rq)) {
> +			i915_request_put(rq);
> +			err = -ETIME;
> +			goto out_spin;
> +		}
> +
> +		set_bit(I915_FENCE_FLAG_NOPREEMPT, &rq->fence.flags);
> +		i915_request_put(rq);
> +
> +		/* Followed by a maximum priority barrier (heartbeat) */
> +
> +		ce = intel_context_create(engine);
> +		if (IS_ERR(ce)) {
> +			err = PTR_ERR(rq);
> +			goto out_spin;
> +		}
> +
> +		rq = intel_context_create_request(ce);
> +		intel_context_put(ce);
> +		if (IS_ERR(rq)) {
> +			err = PTR_ERR(rq);
> +			goto out_spin;
> +		}
> +
> +		rq->sched.attr.priority = I915_PRIORITY_BARRIER;
> +		i915_request_get(rq);
> +		i915_request_add(rq);
> +
> +		/*
> +		 * Wait until the barrier is in ELSP, and we know timeslicing
> +		 * will have been activated.
> +		 */
> +		if (wait_for_submit(engine, rq, HZ / 2)) {
> +			i915_request_put(rq);
> +			err = -ETIME;
> +			goto out_spin;
> +		}
> +
> +		/*
> +		 * Since the ELSP[0] request is unpreemptible, it should not
> +		 * allow the maximum priority barrier through. Wait long
> +		 * enough to see if it is timesliced in by mistake.
> +		 */
> +		if (i915_request_wait(rq, 0, timeslice_threshold(engine)) >= 0) {
> +			pr_err("%s: I915_PRIORITY_BARRIER request completed, bypassing no-preempt request\n",
> +			       engine->name);
> +			err = -EINVAL;
> +		}
> +		i915_request_put(rq);
> +
> +out_spin:
> +		igt_spinner_end(&spin);
> +out_heartbeat:
> +		xchg(&engine->props.timeslice_duration_ms, timeslice);
> +		engine_heartbeat_enable(engine);
> +		if (err)
> +			break;
> +
> +		if (igt_flush_test(gt->i915)) {
> +			err = -EIO;
> +			break;
> +		}
> +	}
> +
> +	igt_spinner_fini(&spin);
> +	return err;
> +}
> +
>   static int live_busywait_preempt(void *arg)
>   {
>   	struct intel_gt *gt = arg;
> @@ -4475,6 +4590,7 @@ int intel_execlists_live_selftests(struct drm_i915_private *i915)
>   		SUBTEST(live_timeslice_preempt),
>   		SUBTEST(live_timeslice_rewind),
>   		SUBTEST(live_timeslice_queue),
> +		SUBTEST(live_timeslice_nopreempt),
>   		SUBTEST(live_busywait_preempt),
>   		SUBTEST(live_preempt),
>   		SUBTEST(live_late_preempt),
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
