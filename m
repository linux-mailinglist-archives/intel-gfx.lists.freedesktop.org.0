Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4BC1D7550
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 12:36:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBCB36E409;
	Mon, 18 May 2020 10:36:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A68796E409
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 10:36:19 +0000 (UTC)
IronPort-SDR: gxqpv+Qxb/9jNyNrdQ3FxXdyyEDmN8pzWN0985s3HvR5DyrBXCVUrmHrTuUllMQrnWOM3W4ACf
 EomYJ1jeidVg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 03:36:18 -0700
IronPort-SDR: vj/mG1d+2LOZNmTU9wyDjEUhppTkYA60qVavu7eKAdgHFZAmjRaERdMpNLkC/mL0cy2SKRp11A
 RS+nDiQXyVzg==
X-IronPort-AV: E=Sophos;i="5.73,406,1583222400"; d="scan'208";a="439167514"
Received: from coheno1-mobl.ger.corp.intel.com (HELO [10.214.214.153])
 ([10.214.214.153])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 03:36:18 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200518081440.17948-1-chris@chris-wilson.co.uk>
 <20200518081440.17948-5-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <86ec181e-b8fe-5ce1-3c9c-e4a733f8bf65@linux.intel.com>
Date: Mon, 18 May 2020 11:36:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200518081440.17948-5-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 5/8] drm/i915/gt: Incorporate the virtual
 engine into timeslicing
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


On 18/05/2020 09:14, Chris Wilson wrote:
> It was quite the oversight to only factor in the normal queue to decide
> the timeslicing switch priority. By leaving out the next virtual request
> from the priority decision, we would not timeslice the current engine if
> there was an available virtual request.
> 
> Testcase: igt/gem_exec_balancer/sliced
> Fixes: 3df2deed411e ("drm/i915/execlists: Enable timeslice on partial virtual engine dequeue")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 32 ++++++++++++++++++++++-------
>   1 file changed, 25 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 05486e801a63..120efb3eaf96 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1895,7 +1895,8 @@ static void defer_active(struct intel_engine_cs *engine)
>   
>   static bool
>   need_timeslice(const struct intel_engine_cs *engine,
> -	       const struct i915_request *rq)
> +	       const struct i915_request *rq,
> +	       const struct rb_node *rb)
>   {
>   	int hint;
>   
> @@ -1903,6 +1904,24 @@ need_timeslice(const struct intel_engine_cs *engine,
>   		return false;
>   
>   	hint = engine->execlists.queue_priority_hint;
> +
> +	if (rb) {
> +		const struct virtual_engine *ve =
> +			rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
> +		const struct intel_engine_cs *inflight =
> +			intel_context_inflight(&ve->context);
> +
> +		if (!inflight || inflight == engine) {
> +			struct i915_request *next;
> +
> +			rcu_read_lock();
> +			next = READ_ONCE(ve->request);
> +			if (next)
> +				hint = max(hint, rq_prio(next));
> +			rcu_read_unlock();
> +		}
> +	}
> +
>   	if (!list_is_last(&rq->sched.link, &engine->active.requests))
>   		hint = max(hint, rq_prio(list_next_entry(rq, sched.link)));
>   
> @@ -1977,10 +1996,9 @@ static void set_timeslice(struct intel_engine_cs *engine)
>   	set_timer_ms(&engine->execlists.timer, duration);
>   }
>   
> -static void start_timeslice(struct intel_engine_cs *engine)
> +static void start_timeslice(struct intel_engine_cs *engine, int prio)
>   {
>   	struct intel_engine_execlists *execlists = &engine->execlists;
> -	const int prio = queue_prio(execlists);
>   	unsigned long duration;
>   
>   	if (!intel_engine_has_timeslices(engine))
> @@ -2140,7 +2158,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>   			__unwind_incomplete_requests(engine);
>   
>   			last = NULL;
> -		} else if (need_timeslice(engine, last) &&
> +		} else if (need_timeslice(engine, last, rb) &&
>   			   timeslice_expired(execlists, last)) {
>   			if (i915_request_completed(last)) {
>   				tasklet_hi_schedule(&execlists->tasklet);
> @@ -2188,7 +2206,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>   				 * Even if ELSP[1] is occupied and not worthy
>   				 * of timeslices, our queue might be.
>   				 */
> -				start_timeslice(engine);
> +				start_timeslice(engine, queue_prio(execlists));
>   				return;
>   			}
>   		}
> @@ -2223,7 +2241,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>   
>   			if (last && !can_merge_rq(last, rq)) {
>   				spin_unlock(&ve->base.active.lock);
> -				start_timeslice(engine);
> +				start_timeslice(engine, rq_prio(rq));
>   				return; /* leave this for another sibling */
>   			}
>   
> @@ -5519,7 +5537,7 @@ static void virtual_submission_tasklet(unsigned long data)
>   submit_engine:
>   		GEM_BUG_ON(RB_EMPTY_NODE(&node->rb));
>   		node->prio = prio;
> -		if (first && prio > sibling->execlists.queue_priority_hint)
> +		if (first && prio >= sibling->execlists.queue_priority_hint)

I got the rest but not why this is needed?

Regards,

Tvrtko

>   			tasklet_hi_schedule(&sibling->execlists.tasklet);
>   
>   		spin_unlock(&sibling->active.lock);
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
