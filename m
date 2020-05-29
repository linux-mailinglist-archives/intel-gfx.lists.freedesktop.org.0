Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 845491E82D4
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 18:02:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4E936E93D;
	Fri, 29 May 2020 16:02:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 435946E93D
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2020 16:02:03 +0000 (UTC)
IronPort-SDR: zZx/dE3VyLtXkiZxjm8K9uoafvGZ/4HF7+xoLvP6bLD/kEpN0js0Q3f3dnHzSJmWGBeN4xopIX
 RwClg+8WEqAw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2020 09:02:00 -0700
IronPort-SDR: SQ2uzvvEHTkohGLUzz79l8AiNxmErEITp6tfhnhIm/FW1LeHBT5qEhPbYuw7N4eTRH7ia12ZfU
 570steZJgoRg==
X-IronPort-AV: E=Sophos;i="5.73,449,1583222400"; d="scan'208";a="443439612"
Received: from esperlin-mobl.ger.corp.intel.com (HELO [10.214.231.68])
 ([10.214.231.68])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2020 09:01:58 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200529122851.8540-1-chris@chris-wilson.co.uk>
 <20200529143926.3245-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <1ecf4b4c-49fa-5356-7329-0a29a33322df@linux.intel.com>
Date: Fri, 29 May 2020 17:01:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200529143926.3245-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Check for awaits on still
 currently executing requests
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


On 29/05/2020 15:39, Chris Wilson wrote:
> With the advent of preempt-to-busy, a request may still be on the GPU as
> we unwind. And in the case of a unpreemptible [due to HW] request, that
> request will remain indefinitely on the GPU even though we have
> returned it back to our submission queue, and cleared the active bit.
> 
> We only run the execution callbacks on transferring the request from our
> submission queue to the execution queue, but if this is a bonded request
> that the HW is waiting for, we will not submit it (as we wait for a
> fresh execution) even though it is still being executed.
> 
> As we know that there are always preemption points between requests, we
> know that only the currently executing request may be still active even
> though we have cleared the flag. However, we do not precisely know which
> request is in ELSP[0] due to a delay in processing events, and
> furthermore we only store the last request in a context in our state
> tracker.
> 
> Fixes: 22b7a426bbe1 ("drm/i915/execlists: Preempt-to-busy")
> Testcase: igt/gem_exec_balancer/bonded-dual
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_request.c | 49 ++++++++++++++++++++++++++++-
>   1 file changed, 48 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index e5aba6824e26..c5d7220de529 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -363,6 +363,53 @@ static void __llist_add(struct llist_node *node, struct llist_head *head)
>   	head->first = node;
>   }
>   
> +static struct i915_request * const *
> +__engine_active(struct intel_engine_cs *engine)
> +{
> +	return READ_ONCE(engine->execlists.active);
> +}
> +
> +static bool __request_in_flight(const struct i915_request *signal)
> +{
> +	struct i915_request * const *port, *rq;
> +	bool inflight = false;
> +
> +	if (!i915_request_is_ready(signal))
> +		return false;
> +
> +	/*
> +	 * Even if we have unwound the request, it may still be on
> +	 * the GPU (preempt-to-busy). If that request is inside an
> +	 * unpreemptible critical section, it will not be removed. Some
> +	 * GPU functions may even be stuck waiting for the paired request
> +	 * (__await_execution) to be submitted and cannot be preempted
> +	 * until the bond is executing.
> +	 *
> +	 * As we know that there are always preemption points between
> +	 * requests, we know that only the currently executing request
> +	 * may be still active even though we have cleared the flag.
> +	 * However, we can't rely on our tracking of ELSP[0] to known
> +	 * which request is currently active and so maybe stuck, as
> +	 * the tracking maybe an event behind. Instead assume that
> +	 * if the context is still inflight, then it is still active
> +	 * even if the active flag has been cleared.
> +	 */
> +	if (!intel_context_inflight(signal->context))
> +		return false;
> +
> +	rcu_read_lock();
> +	for (port = __engine_active(signal->engine); (rq = *port); port++) {
> +		if (rq->context == signal->context) {
> +			inflight = i915_seqno_passed(rq->fence.seqno,
> +						     signal->fence.seqno);
> +			break;
> +		}
> +	}
> +	rcu_read_unlock();
> +
> +	return inflight;
> +}
> +
>   static int
>   __await_execution(struct i915_request *rq,
>   		  struct i915_request *signal,
> @@ -393,7 +440,7 @@ __await_execution(struct i915_request *rq,
>   	}
>   
>   	spin_lock_irq(&signal->lock);
> -	if (i915_request_is_active(signal)) {
> +	if (i915_request_is_active(signal) || __request_in_flight(signal)) {
>   		if (hook) {
>   			hook(rq, &signal->fence);
>   			i915_request_put(signal);
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
