Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78CE9195A7E
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 16:59:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9DFD6EA56;
	Fri, 27 Mar 2020 15:59:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D35E6EA56
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 15:59:49 +0000 (UTC)
IronPort-SDR: H4SfG59x7LZL4fa4aSYerP5cyh70GAan/47pgYIGAuSkyJdB7n6rVoj0B/7ShegMUI88ZqFQNq
 GbMANySitWzQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2020 08:59:48 -0700
IronPort-SDR: ycUDa3dqxgQppo9H34swcJbqAum6mzXC2M3CatmAZJ9pcVGeAAID0ct0us6Vk6k9W00cLlFI1S
 4CyrX9O39FSg==
X-IronPort-AV: E=Sophos;i="5.72,313,1580803200"; d="scan'208";a="421144345"
Received: from kandasna-mobl.ger.corp.intel.com (HELO [10.249.36.47])
 ([10.249.36.47])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2020 08:59:47 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200327112653.14362-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ec78b3ed-fe6a-de4b-2850-0d4851a7da89@linux.intel.com>
Date: Fri, 27 Mar 2020 15:59:45 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200327112653.14362-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [CI] drm/i915/execlists: Prevent GPU death on
 ELSP[1] promotion to idle context
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


On 27/03/2020 11:26, Chris Wilson wrote:
> In what seems remarkably similar to the w/a required to not reload an
> idle context with HEAD==TAIL, it appears we must prevent the HW from
> switching to an idle context in ELSP[1], while simultaneously trying to
> preempt the HW to run another context and a continuation of the idle
> context (which is no longer idle).
> 
>    process_csb: vecs0: cs-irq head=0, tail=1
>    process_csb: vecs0: csb[1]: status=0x00000882:0x00000020
>    trace_ports: vecs0: preempted { 8c0:30!, 0:0 }
>    trace_ports: vecs0: promote { 8b2:32!, 8c0:30 }
>    trace_ports: vecs0: submit { 8b8:32, 8c0:32 }
>    process_csb: vecs0: cs-irq head=1, tail=2
>    process_csb: vecs0: csb[2]: status=0x00000814:0x00000040
>    trace_ports: vecs0: completed { 8b2:32!, 8c0:30 }
>    process_csb: vecs0: cs-irq head=2, tail=5
>    process_csb: vecs0: csb[3]: status=0x00000812:0x00000020
>    trace_ports: vecs0: preempted { 8c0:30!, 0:0 }
>    trace_ports: vecs0: promote { 8b8:32!, 8c0:32 }
>    process_csb: vecs0: csb[4]: status=0x00000814:0x00000060
>    trace_ports: vecs0: completed { 8b8:32!, 8c0:32 }
>    process_csb: vecs0: csb[5]: status=0x00000818:0x00000020
>    trace_ports: vecs0: completed { 8c0:32, 0:0 }
>    process_csb: vecs0: ring:{start:0x00021000, head:03f8, tail:03f8, ctl:00000000, mode:00000200}
>    process_csb: vecs0: rq:{start:00021000, head:03c0, tail:0400, seqno:8c0:32, hwsp:30},
>    process_csb: vecs0: ctx:{start:00021000, head:03f8, tail:03f8},
>    process_csb: GEM_BUG_ON("context completed before request")
> 
> Fortunately, we just so happen to have a semaphore in place to prevent
> the ring HEAD from proceeding past the end of a request that we can use
> to fix the HEAD in position as we reprogram ELSP.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/1501
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_gt_irq.c |  2 +
>   drivers/gpu/drm/i915/gt/intel_lrc.c    | 72 +++++++++++++-------------
>   2 files changed, 38 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> index f0e7fd95165a..be3817d99908 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> @@ -24,6 +24,8 @@ cs_irq_handler(struct intel_engine_cs *engine, u32 iir)
>   {
>   	bool tasklet = false;
>   
> +	ENGINE_TRACE(engine, "iir: %04x\n", iir);
> +
>   	if (unlikely(iir & GT_CS_MASTER_ERROR_INTERRUPT)) {
>   		u32 eir;
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index b12355048501..53650b452bc9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1854,7 +1854,7 @@ static inline void clear_ports(struct i915_request **ports, int count)
>   	memset_p((void **)ports, NULL, count);
>   }
>   
> -static void execlists_dequeue(struct intel_engine_cs *engine)
> +static bool execlists_dequeue(struct intel_engine_cs *engine)
>   {
>   	struct intel_engine_execlists * const execlists = &engine->execlists;
>   	struct i915_request **port = execlists->pending;
> @@ -1928,13 +1928,6 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>   				     execlists->queue_priority_hint);
>   			record_preemption(execlists);
>   
> -			/*
> -			 * Don't let the RING_HEAD advance past the breadcrumb
> -			 * as we unwind (and until we resubmit) so that we do
> -			 * not accidentally tell it to go backwards.
> -			 */
> -			ring_set_paused(engine, 1);
> -
>   			/*
>   			 * Note that we have not stopped the GPU at this point,
>   			 * so we are unwinding the incomplete requests as they
> @@ -1954,7 +1947,6 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>   				     last->sched.attr.priority,
>   				     execlists->queue_priority_hint);
>   
> -			ring_set_paused(engine, 1);
>   			defer_active(engine);
>   
>   			/*
> @@ -1988,7 +1980,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>   				 * of timeslices, our queue might be.
>   				 */
>   				start_timeslice(engine);
> -				return;
> +				return false;
>   			}
>   		}
>   	}
> @@ -2021,9 +2013,10 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>   			}
>   
>   			if (last && !can_merge_rq(last, rq)) {
> +				/* leave this for another sibling */
>   				spin_unlock(&ve->base.active.lock);
>   				start_timeslice(engine);
> -				return; /* leave this for another sibling */
> +				return false;
>   			}
>   
>   			ENGINE_TRACE(engine,
> @@ -2193,32 +2186,31 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>   	 * interrupt for secondary ports).
>   	 */
>   	execlists->queue_priority_hint = queue_prio(execlists);
> +	if (!submit)
> +		return false;
>   
> -	if (submit) {
> -		*port = execlists_schedule_in(last, port - execlists->pending);
> -		execlists->switch_priority_hint =
> -			switch_prio(engine, *execlists->pending);
> +	*port = execlists_schedule_in(last, port - execlists->pending);
> +	execlists->switch_priority_hint =
> +		switch_prio(engine, *execlists->pending);
>   
> -		/*
> -		 * Skip if we ended up with exactly the same set of requests,
> -		 * e.g. trying to timeslice a pair of ordered contexts
> -		 */
> -		if (!memcmp(active, execlists->pending,
> -			    (port - execlists->pending + 1) * sizeof(*port))) {
> -			do
> -				execlists_schedule_out(fetch_and_zero(port));
> -			while (port-- != execlists->pending);
> -
> -			goto skip_submit;
> -		}
> -		clear_ports(port + 1, last_port - port);
> +	/*
> +	 * Skip if we ended up with exactly the same set of requests,
> +	 * e.g. trying to timeslice a pair of ordered contexts
> +	 */
> +	if (!memcmp(active, execlists->pending,
> +		    (port - execlists->pending + 1) * sizeof(*port))) {
> +		do
> +			execlists_schedule_out(fetch_and_zero(port));
> +		while (port-- != execlists->pending);
>   
> -		execlists_submit_ports(engine);
> -		set_preempt_timeout(engine, *active);
> -	} else {
> -skip_submit:
> -		ring_set_paused(engine, 0);
> +		return false;
>   	}
> +	clear_ports(port + 1, last_port - port);
> +
> +	execlists_submit_ports(engine);
> +	set_preempt_timeout(engine, *active);
> +	tasklet_hi_schedule(&execlists->tasklet); /* lost interrupt */
> +	return true;
>   }
>   
>   static void
> @@ -2478,7 +2470,16 @@ static void __execlists_submission_tasklet(struct intel_engine_cs *const engine)
>   	lockdep_assert_held(&engine->active.lock);
>   	if (!READ_ONCE(engine->execlists.pending[0])) {
>   		rcu_read_lock(); /* protect peeking at execlists->active */
> -		execlists_dequeue(engine);
> +
> +		/*
> +		 * Don't let the RING_HEAD advance past the breadcrumb
> +		 * as we unwind (and until we resubmit) so that we do
> +		 * not accidentally tell it to go backwards.
> +		 */
> +		ring_set_paused(engine, 1);
> +		if (!execlists_dequeue(engine))
> +			ring_set_paused(engine, 0);
> +
>   		rcu_read_unlock();
>   	}
>   }
> @@ -2816,8 +2817,7 @@ static void execlists_reset(struct intel_engine_cs *engine, const char *msg)
>   	ring_set_paused(engine, 1); /* Freeze the current request in place */
>   	if (execlists_capture(engine))
>   		intel_engine_reset(engine, msg);
> -	else
> -		ring_set_paused(engine, 0);
> +	ring_set_paused(engine, 0);
>   
>   	tasklet_enable(&engine->execlists.tasklet);
>   	clear_and_wake_up_bit(bit, lock);
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
