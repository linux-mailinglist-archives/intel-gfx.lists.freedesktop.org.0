Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D63014A78E
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 16:52:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A1D989FA9;
	Mon, 27 Jan 2020 15:52:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62C8189FA9
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 15:52:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 07:52:55 -0800
X-IronPort-AV: E=Sophos;i="5.70,370,1574150400"; d="scan'208";a="221770827"
Received: from lodierna-mobl.ger.corp.intel.com (HELO [10.252.22.225])
 ([10.252.22.225])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 27 Jan 2020 07:52:53 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200126102346.1877661-1-chris@chris-wilson.co.uk>
 <20200126102346.1877661-5-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <a7f7de04-8dee-69a8-b88c-a90f21a89347@linux.intel.com>
Date: Mon, 27 Jan 2020 15:52:51 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200126102346.1877661-5-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/gt: Yield the timeslice if
 caught waiting on a user semaphore
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


On 26/01/2020 10:23, Chris Wilson wrote:
> If we find ourselves waiting on a MI_SEMAPHORE_WAIT, either within the
> user batch or in our own preamble, the engine raises a
> GT_WAIT_ON_SEMAPHORE interrupt. We can unmask that interrupt and so
> respond to a semaphore wait by yielding the timeslice, if we have
> another context to yield to!
> 
> The only real complication is that the interrupt is only generated for
> the start of the semaphore wait, and is asynchronous to our
> process_csb() -- that is, we may not have registered the timeslice before
> we see the interrupt. To ensure we don't miss a potential semaphore
> blocking forward progress (e.g. selftests/live_timeslice_preempt) we mark
> the interrupt and apply it to the next timeslice regardless of whether it
> was active at the time.
> 
> v2: We use semaphores in preempt-to-busy, within the timeslicing
> implementation itself! Ergo, when we do insert a preemption due to an
> expired timeslice, the new context may start with the missed semaphore
> flagged by the retired context and be yielded, ad infinitum. To avoid
> this, read the context id at the time of the semaphore interrupt and
> only yield if that context is still active.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine_types.h |  9 ++++++
>   drivers/gpu/drm/i915/gt/intel_gt_irq.c       | 32 +++++++++++---------
>   drivers/gpu/drm/i915/gt/intel_lrc.c          | 31 ++++++++++++++++---
>   drivers/gpu/drm/i915/i915_reg.h              |  5 +++
>   4 files changed, 59 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index 92be41a6903c..58725024ffa4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -156,6 +156,15 @@ struct intel_engine_execlists {
>   	 */
>   	struct i915_priolist default_priolist;
>   
> +	/**
> +	 * @yield: CCID at the time of the last semaphore-wait interrupt.
> +	 *
> +	 * Instead of leaving a semaphore busy-spinning on an engine, we would
> +	 * like to switch to another ready context, i.e. yielding the semaphore
> +	 * timeslice.
> +	 */
> +	u32 yield;
> +
>   	/**
>   	 * @no_priolist: priority lists disabled
>   	 */
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> index f796bdf1ed30..6ae64a224b02 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> @@ -24,6 +24,13 @@ cs_irq_handler(struct intel_engine_cs *engine, u32 iir)
>   {
>   	bool tasklet = false;
>   
> +	if (iir & GT_WAIT_SEMAPHORE_INTERRUPT) {
> +		WRITE_ONCE(engine->execlists.yield,
> +			   ENGINE_READ_FW(engine, EXECLIST_CCID));
> +		if (del_timer(&engine->execlists.timer))
> +			tasklet = true;

What if it fires before timeslice timer has been set up and when we miss 
to yield?

> +	}
> +
>   	if (iir & GT_CONTEXT_SWITCH_INTERRUPT)
>   		tasklet = true;
>   
> @@ -210,7 +217,10 @@ void gen11_gt_irq_reset(struct intel_gt *gt)
>   
>   void gen11_gt_irq_postinstall(struct intel_gt *gt)
>   {
> -	const u32 irqs = GT_RENDER_USER_INTERRUPT | GT_CONTEXT_SWITCH_INTERRUPT;
> +	const u32 irqs =
> +		GT_RENDER_USER_INTERRUPT |
> +		GT_CONTEXT_SWITCH_INTERRUPT |
> +		GT_WAIT_SEMAPHORE_INTERRUPT;
>   	struct intel_uncore *uncore = gt->uncore;
>   	const u32 dmask = irqs << 16 | irqs;
>   	const u32 smask = irqs << 16;
> @@ -357,21 +367,15 @@ void gen8_gt_irq_postinstall(struct intel_gt *gt)
>   	struct intel_uncore *uncore = gt->uncore;
>   
>   	/* These are interrupts we'll toggle with the ring mask register */
> +	const u32 irqs =
> +		GT_RENDER_USER_INTERRUPT |
> +		GT_CONTEXT_SWITCH_INTERRUPT |
> +		GT_WAIT_SEMAPHORE_INTERRUPT;
>   	u32 gt_interrupts[] = {
> -		(GT_RENDER_USER_INTERRUPT << GEN8_RCS_IRQ_SHIFT |
> -		 GT_CONTEXT_SWITCH_INTERRUPT << GEN8_RCS_IRQ_SHIFT |
> -		 GT_RENDER_USER_INTERRUPT << GEN8_BCS_IRQ_SHIFT |
> -		 GT_CONTEXT_SWITCH_INTERRUPT << GEN8_BCS_IRQ_SHIFT),
> -
> -		(GT_RENDER_USER_INTERRUPT << GEN8_VCS0_IRQ_SHIFT |
> -		 GT_CONTEXT_SWITCH_INTERRUPT << GEN8_VCS0_IRQ_SHIFT |
> -		 GT_RENDER_USER_INTERRUPT << GEN8_VCS1_IRQ_SHIFT |
> -		 GT_CONTEXT_SWITCH_INTERRUPT << GEN8_VCS1_IRQ_SHIFT),
> -
> +		irqs << GEN8_RCS_IRQ_SHIFT | irqs << GEN8_BCS_IRQ_SHIFT,
> +		irqs << GEN8_VCS0_IRQ_SHIFT | irqs << GEN8_VCS1_IRQ_SHIFT,
>   		0,
> -
> -		(GT_RENDER_USER_INTERRUPT << GEN8_VECS_IRQ_SHIFT |
> -		 GT_CONTEXT_SWITCH_INTERRUPT << GEN8_VECS_IRQ_SHIFT)
> +		irqs << GEN8_VECS_IRQ_SHIFT,
>   	};
>   
>   	gt->pm_ier = 0x0;
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index a13a8c4b65ab..6ba5a634c6e3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1661,7 +1661,8 @@ static void defer_active(struct intel_engine_cs *engine)
>   }
>   
>   static bool
> -need_timeslice(struct intel_engine_cs *engine, const struct i915_request *rq)
> +need_timeslice(const struct intel_engine_cs *engine,
> +	       const struct i915_request *rq)

Naughty.

>   {
>   	int hint;
>   
> @@ -1677,6 +1678,27 @@ need_timeslice(struct intel_engine_cs *engine, const struct i915_request *rq)
>   	return hint >= effective_prio(rq);
>   }
>   
> +static bool
> +timeslice_expired(const struct intel_engine_cs *engine,
> +		  const struct i915_request *rq)
> +{
> +	const struct intel_engine_execlists *el = &engine->execlists;
> +
> +	return (timer_expired(&el->timer) ||
> +		/*
> +		 * Once bitten, forever smitten!
> +		 *
> +		 * If the active context ever busy-waited on a semaphore,
> +		 * it will be treated as a hog until the end of its timeslice.
> +		 * The HW only sends an interrupt on the first miss, and we

One interrupt per elsp submission? Then on re-submission it can repeat? 
I hope so because we recycle lrc_desc aggressively so I am wondering 
about that.

> +		 * do know if that semaphore has been signaled, or even if it
> +		 * is now stuck on another semaphore. Play safe, yield if it
> +		 * might be stuck -- it will be given a fresh timeslice in
> +		 * the near future.
> +		 */
> +		upper_32_bits(rq->context->lrc_desc) == READ_ONCE(el->yield));
> +}
> +
>   static int
>   switch_prio(struct intel_engine_cs *engine, const struct i915_request *rq)
>   {
> @@ -1692,8 +1714,7 @@ timeslice(const struct intel_engine_cs *engine)
>   	return READ_ONCE(engine->props.timeslice_duration_ms);
>   }
>   
> -static unsigned long
> -active_timeslice(const struct intel_engine_cs *engine)
> +static unsigned long active_timeslice(const struct intel_engine_cs *engine)
>   {
>   	const struct i915_request *rq = *engine->execlists.active;
>   
> @@ -1844,7 +1865,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>   			last->context->lrc_desc |= CTX_DESC_FORCE_RESTORE;
>   			last = NULL;
>   		} else if (need_timeslice(engine, last) &&
> -			   timer_expired(&engine->execlists.timer)) {
> +			   timeslice_expired(engine, last)) {
>   			ENGINE_TRACE(engine,
>   				     "expired last=%llx:%lld, prio=%d, hint=%d\n",

Could be useful to move tracing msg into timeslice_expired and 
distinguish between the two cases.

>   				     last->fence.context,
> @@ -2110,6 +2131,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>   		}
>   		clear_ports(port + 1, last_port - port);
>   
> +		WRITE_ONCE(execlists->yield, -1);
>   		execlists_submit_ports(engine);
>   		set_preempt_timeout(engine);
>   	} else {
> @@ -4290,6 +4312,7 @@ logical_ring_default_irqs(struct intel_engine_cs *engine)
>   
>   	engine->irq_enable_mask = GT_RENDER_USER_INTERRUPT << shift;
>   	engine->irq_keep_mask = GT_CONTEXT_SWITCH_INTERRUPT << shift;
> +	engine->irq_keep_mask |= GT_WAIT_SEMAPHORE_INTERRUPT << shift;
>   }
>   
>   static void rcs_submission_override(struct intel_engine_cs *engine)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index b93c4c18f05c..535ce7e0dc94 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3085,6 +3085,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>   #define GT_BSD_CS_ERROR_INTERRUPT		(1 << 15)
>   #define GT_BSD_USER_INTERRUPT			(1 << 12)
>   #define GT_RENDER_L3_PARITY_ERROR_INTERRUPT_S1	(1 << 11) /* hsw+; rsvd on snb, ivb, vlv */
> +#define GT_WAIT_SEMAPHORE_INTERRUPT		REG_BIT(11) /* bdw+ */
>   #define GT_CONTEXT_SWITCH_INTERRUPT		(1 <<  8)
>   #define GT_RENDER_L3_PARITY_ERROR_INTERRUPT	(1 <<  5) /* !snb */
>   #define GT_RENDER_PIPECTL_NOTIFY_INTERRUPT	(1 <<  4)
> @@ -4036,6 +4037,10 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>   #define   CCID_EN			BIT(0)
>   #define   CCID_EXTENDED_STATE_RESTORE	BIT(2)
>   #define   CCID_EXTENDED_STATE_SAVE	BIT(3)
> +
> +#define EXECLIST_STATUS(base)	_MMIO((base) + 0x234)

This one is unused.

> +#define EXECLIST_CCID(base)	_MMIO((base) + 0x238)
> +
>   /*
>    * Notes on SNB/IVB/VLV context size:
>    * - Power context is saved elsewhere (LLC or stolen)
> 

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
