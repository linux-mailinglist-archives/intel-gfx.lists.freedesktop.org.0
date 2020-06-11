Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 768151F66EB
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 13:38:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CC446E02E;
	Thu, 11 Jun 2020 11:38:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AE076E02E
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2020 11:38:26 +0000 (UTC)
IronPort-SDR: 7qF3HhhQANAydRY3Czzy5BCfWWAbACQUA5wdY7wvF+PB7nabURpNfJxtenZ1BCAyoD3T/nCray
 d9aieviZx3zw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2020 04:38:26 -0700
IronPort-SDR: iKEJRTsVSD0rqX6/3UN3KBcmep50LW09+rH16TStwD4Fhwu2kFpDRriWk2j8ouAg3R1yj9uace
 W1+1HisUoiLQ==
X-IronPort-AV: E=Sophos;i="5.73,499,1583222400"; d="scan'208";a="419075734"
Received: from osides-mobl1.ger.corp.intel.com (HELO [10.214.204.82])
 ([10.214.204.82])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2020 04:38:24 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200607222108.14401-1-chris@chris-wilson.co.uk>
 <20200607222108.14401-4-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <716a37f5-544e-c871-ec31-21b7288337b7@linux.intel.com>
Date: Thu, 11 Jun 2020 12:38:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200607222108.14401-4-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 04/28] drm/i915/selftests: Remove
 live_suppress_wait_preempt
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


On 07/06/2020 23:20, Chris Wilson wrote:
> With the removal of the internal wait-priority boosting, we can also
> remove the selftest to ensure that those waits were being suppressed
> from causing preemptions.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

> ---
>   drivers/gpu/drm/i915/gt/selftest_lrc.c | 178 -------------------------
>   1 file changed, 178 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index 67d74e6432a8..e838e38a262c 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -2379,183 +2379,6 @@ static int live_suppress_self_preempt(void *arg)
>   	goto err_client_b;
>   }
>   
> -static int __i915_sw_fence_call
> -dummy_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
> -{
> -	return NOTIFY_DONE;
> -}
> -
> -static struct i915_request *dummy_request(struct intel_engine_cs *engine)
> -{
> -	struct i915_request *rq;
> -
> -	rq = kzalloc(sizeof(*rq), GFP_KERNEL);
> -	if (!rq)
> -		return NULL;
> -
> -	rq->engine = engine;
> -
> -	spin_lock_init(&rq->lock);
> -	INIT_LIST_HEAD(&rq->fence.cb_list);
> -	rq->fence.lock = &rq->lock;
> -	rq->fence.ops = &i915_fence_ops;
> -
> -	i915_sched_node_init(&rq->sched);
> -
> -	/* mark this request as permanently incomplete */
> -	rq->fence.seqno = 1;
> -	BUILD_BUG_ON(sizeof(rq->fence.seqno) != 8); /* upper 32b == 0 */
> -	rq->hwsp_seqno = (u32 *)&rq->fence.seqno + 1;
> -	GEM_BUG_ON(i915_request_completed(rq));
> -
> -	i915_sw_fence_init(&rq->submit, dummy_notify);
> -	set_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags);
> -
> -	spin_lock_init(&rq->lock);
> -	rq->fence.lock = &rq->lock;
> -	INIT_LIST_HEAD(&rq->fence.cb_list);
> -
> -	return rq;
> -}
> -
> -static void dummy_request_free(struct i915_request *dummy)
> -{
> -	/* We have to fake the CS interrupt to kick the next request */
> -	i915_sw_fence_commit(&dummy->submit);
> -
> -	i915_request_mark_complete(dummy);
> -	dma_fence_signal(&dummy->fence);
> -
> -	i915_sched_node_fini(&dummy->sched);
> -	i915_sw_fence_fini(&dummy->submit);
> -
> -	dma_fence_free(&dummy->fence);
> -}
> -
> -static int live_suppress_wait_preempt(void *arg)
> -{
> -	struct intel_gt *gt = arg;
> -	struct preempt_client client[4];
> -	struct i915_request *rq[ARRAY_SIZE(client)] = {};
> -	struct intel_engine_cs *engine;
> -	enum intel_engine_id id;
> -	int err = -ENOMEM;
> -	int i;
> -
> -	/*
> -	 * Waiters are given a little priority nudge, but not enough
> -	 * to actually cause any preemption. Double check that we do
> -	 * not needlessly generate preempt-to-idle cycles.
> -	 */
> -
> -	if (!HAS_LOGICAL_RING_PREEMPTION(gt->i915))
> -		return 0;
> -
> -	if (preempt_client_init(gt, &client[0])) /* ELSP[0] */
> -		return -ENOMEM;
> -	if (preempt_client_init(gt, &client[1])) /* ELSP[1] */
> -		goto err_client_0;
> -	if (preempt_client_init(gt, &client[2])) /* head of queue */
> -		goto err_client_1;
> -	if (preempt_client_init(gt, &client[3])) /* bystander */
> -		goto err_client_2;
> -
> -	for_each_engine(engine, gt, id) {
> -		int depth;
> -
> -		if (!intel_engine_has_preemption(engine))
> -			continue;
> -
> -		if (!engine->emit_init_breadcrumb)
> -			continue;
> -
> -		for (depth = 0; depth < ARRAY_SIZE(client); depth++) {
> -			struct i915_request *dummy;
> -
> -			engine->execlists.preempt_hang.count = 0;
> -
> -			dummy = dummy_request(engine);
> -			if (!dummy)
> -				goto err_client_3;
> -
> -			for (i = 0; i < ARRAY_SIZE(client); i++) {
> -				struct i915_request *this;
> -
> -				this = spinner_create_request(&client[i].spin,
> -							      client[i].ctx, engine,
> -							      MI_NOOP);
> -				if (IS_ERR(this)) {
> -					err = PTR_ERR(this);
> -					goto err_wedged;
> -				}
> -
> -				/* Disable NEWCLIENT promotion */
> -				__i915_active_fence_set(&i915_request_timeline(this)->last_request,
> -							&dummy->fence);
> -
> -				rq[i] = i915_request_get(this);
> -				i915_request_add(this);
> -			}
> -
> -			dummy_request_free(dummy);
> -
> -			GEM_BUG_ON(i915_request_completed(rq[0]));
> -			if (!igt_wait_for_spinner(&client[0].spin, rq[0])) {
> -				pr_err("%s: First client failed to start\n",
> -				       engine->name);
> -				goto err_wedged;
> -			}
> -			GEM_BUG_ON(!i915_request_started(rq[0]));
> -
> -			if (i915_request_wait(rq[depth],
> -					      I915_WAIT_PRIORITY,
> -					      1) != -ETIME) {
> -				pr_err("%s: Waiter depth:%d completed!\n",
> -				       engine->name, depth);
> -				goto err_wedged;
> -			}
> -
> -			for (i = 0; i < ARRAY_SIZE(client); i++) {
> -				igt_spinner_end(&client[i].spin);
> -				i915_request_put(rq[i]);
> -				rq[i] = NULL;
> -			}
> -
> -			if (igt_flush_test(gt->i915))
> -				goto err_wedged;
> -
> -			if (engine->execlists.preempt_hang.count) {
> -				pr_err("%s: Preemption recorded x%d, depth %d; should have been suppressed!\n",
> -				       engine->name,
> -				       engine->execlists.preempt_hang.count,
> -				       depth);
> -				err = -EINVAL;
> -				goto err_client_3;
> -			}
> -		}
> -	}
> -
> -	err = 0;
> -err_client_3:
> -	preempt_client_fini(&client[3]);
> -err_client_2:
> -	preempt_client_fini(&client[2]);
> -err_client_1:
> -	preempt_client_fini(&client[1]);
> -err_client_0:
> -	preempt_client_fini(&client[0]);
> -	return err;
> -
> -err_wedged:
> -	for (i = 0; i < ARRAY_SIZE(client); i++) {
> -		igt_spinner_end(&client[i].spin);
> -		i915_request_put(rq[i]);
> -	}
> -	intel_gt_set_wedged(gt);
> -	err = -EIO;
> -	goto err_client_3;
> -}
> -
>   static int live_chain_preempt(void *arg)
>   {
>   	struct intel_gt *gt = arg;
> @@ -4592,7 +4415,6 @@ int intel_execlists_live_selftests(struct drm_i915_private *i915)
>   		SUBTEST(live_nopreempt),
>   		SUBTEST(live_preempt_cancel),
>   		SUBTEST(live_suppress_self_preempt),
> -		SUBTEST(live_suppress_wait_preempt),
>   		SUBTEST(live_chain_preempt),
>   		SUBTEST(live_preempt_gang),
>   		SUBTEST(live_preempt_timeout),
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
