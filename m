Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A929E1E5B21
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 10:47:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BEAE89996;
	Thu, 28 May 2020 08:47:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5D7489996
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2020 08:47:02 +0000 (UTC)
IronPort-SDR: bzmAZYCSaLzvYjX4FCjpBn36bJcQ78zA4FupwbTCxNgdc/N168fCCbLmHFHmtBxrjkdEpkb6hB
 CpVgJt9hPoyg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 01:47:02 -0700
IronPort-SDR: 3efgwws8R4GjX82WLRSgf2o3pSzXVpmSo6xgnye6pb9ehzzVVTBbWHofj3bMBtwu96elm30KUb
 +H6d+TUTGtfw==
X-IronPort-AV: E=Sophos;i="5.73,444,1583222400"; d="scan'208";a="414533933"
Received: from nshani-mobl.ger.corp.intel.com (HELO [10.214.219.87])
 ([10.214.219.87])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 01:47:01 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200527130214.1239-1-chris@chris-wilson.co.uk>
 <20200527162418.24755-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <f9ebe027-3a34-4d96-ac9a-018af86829bf@linux.intel.com>
Date: Thu, 28 May 2020 09:46:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200527162418.24755-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: Prevent timeslicing into
 unpreemptable requests
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


On 27/05/2020 17:24, Chris Wilson wrote:
> We have a I915_REQUEST_NOPREEMPT flag that we set when we must prevent
> the HW from preempting during the course of this request. We need to
> honour this flag and protect the HW even if we have a heartbeat request,
> or other maximum priority barrier, pending. As such, restrict the
> timeslicing check to avoid preempting into the topmost priority band,
> leaving the unpreemptable requests in blissful peace running
> uninterrupted on the HW.
> 
> v2: Set the I915_PRIORITY_BARRIER to be less than
> I915_PRIORITY_UNPREEMPTABLE so that we never submit a request
> (heartbeat or barrier) that can legitimately preempt the current
> non-premptable request.
> 
> Fixes: 2a98f4e65bba ("drm/i915: add infrastructure to hold off preemption on a request")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c        |   1 +
>   drivers/gpu/drm/i915/gt/selftest_lrc.c     | 118 ++++++++++++++++++++-
>   drivers/gpu/drm/i915/i915_priolist_types.h |   2 +-
>   3 files changed, 119 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 3214a4ecc31a..197efd9ea1e9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1928,6 +1928,7 @@ need_timeslice(const struct intel_engine_cs *engine,
>   	if (!list_is_last(&rq->sched.link, &engine->active.requests))
>   		hint = max(hint, rq_prio(list_next_entry(rq, sched.link)));
>   
> +	GEM_BUG_ON(hint == I915_PRIORITY_UNPREEMPTABLE);
>   	return hint >= effective_prio(rq);
>   }
>   
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index 66f710b1b61e..3e35a45d6218 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -823,7 +823,7 @@ slice_semaphore_queue(struct intel_engine_cs *outer,
>   		}
>   	}
>   
> -	err = release_queue(outer, vma, n, INT_MAX);
> +	err = release_queue(outer, vma, n, I915_PRIORITY_BARRIER);
>   	if (err)
>   		goto out;
>   
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
> diff --git a/drivers/gpu/drm/i915/i915_priolist_types.h b/drivers/gpu/drm/i915/i915_priolist_types.h
> index 5003a71113cb..8aa7866ec6b6 100644
> --- a/drivers/gpu/drm/i915/i915_priolist_types.h
> +++ b/drivers/gpu/drm/i915/i915_priolist_types.h
> @@ -42,7 +42,7 @@ enum {
>    * active request.
>    */
>   #define I915_PRIORITY_UNPREEMPTABLE INT_MAX
> -#define I915_PRIORITY_BARRIER INT_MAX
> +#define I915_PRIORITY_BARRIER (I915_PRIORITY_UNPREEMPTABLE - 1)
>   
>   struct i915_priolist {
>   	struct list_head requests[I915_PRIORITY_COUNT];
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
