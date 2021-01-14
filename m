Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 088662F63CD
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 16:09:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 597C189944;
	Thu, 14 Jan 2021 15:09:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26E7E89944
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 15:09:57 +0000 (UTC)
IronPort-SDR: Jv2guATJwZxTM20ILjyuBjadjqDLf+ZwSPV63ICfV7AKEK4y8Nuju63dAVC1DChdh4YVu9Ybdj
 36eaM8eeJKwQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="175800996"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="175800996"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 07:09:56 -0800
IronPort-SDR: 1VCd4oChjrjLbdTuXWksw58uTB0b0hOAh1RwmIr65dSF39dk4ptb0LNBnFMKpOVxsUkuXNiD3w
 /h+a6Y7p9p/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="572346968"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga005.fm.intel.com with ESMTP; 14 Jan 2021 07:09:55 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 63E305C20E0; Thu, 14 Jan 2021 17:07:13 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210113151112.15212-1-chris@chris-wilson.co.uk>
References: <20210113151112.15212-1-chris@chris-wilson.co.uk>
Date: Thu, 14 Jan 2021 17:07:13 +0200
Message-ID: <877doflfq6.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Prune 'inline' from execlists
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Remove the extraneous inlines. The only split by the compiler that
> looked dubious was execlists_schedule_out, so push the code around
> slightly to move all the work into the out-of-line function.
>
> In a normal build, bloat-o-meter shows that only the
> execlists_schedule_out is contentious:
>
> add/remove: 1/0 grow/shrink: 0/2 up/down: 803/-1532 (-729)
> Function                                     old     new   delta
> __execlists_schedule_out                       -     803    +803
> execlists_submission_tasklet                6488    5766    -722
> execlists_reset_csb.constprop               1587     777    -810
> Total: Before=1605815, After=1605086, chg -0.05%
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  .../drm/i915/gt/intel_execlists_submission.c  | 63 +++++++++----------
>  1 file changed, 29 insertions(+), 34 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index d7d5a58990bb..33c7495b12b1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -230,8 +230,7 @@ active_request(const struct intel_timeline * const tl, struct i915_request *rq)
>  	return __active_request(tl, rq, 0);
>  }
>  
> -static inline void
> -ring_set_paused(const struct intel_engine_cs *engine, int state)
> +static void ring_set_paused(const struct intel_engine_cs *engine, int state)
>  {
>  	/*
>  	 * We inspect HWS_PREEMPT with a semaphore inside
> @@ -244,12 +243,12 @@ ring_set_paused(const struct intel_engine_cs *engine, int state)
>  		wmb();
>  }
>  
> -static inline struct i915_priolist *to_priolist(struct rb_node *rb)
> +static struct i915_priolist *to_priolist(struct rb_node *rb)
>  {
>  	return rb_entry(rb, struct i915_priolist, node);
>  }
>  
> -static inline int rq_prio(const struct i915_request *rq)
> +static int rq_prio(const struct i915_request *rq)
>  {
>  	return READ_ONCE(rq->sched.attr.priority);
>  }
> @@ -299,8 +298,8 @@ static int virtual_prio(const struct intel_engine_execlists *el)
>  	return rb ? rb_entry(rb, struct ve_node, rb)->prio : INT_MIN;
>  }
>  
> -static inline bool need_preempt(const struct intel_engine_cs *engine,
> -				const struct i915_request *rq)
> +static bool need_preempt(const struct intel_engine_cs *engine,
> +			 const struct i915_request *rq)
>  {
>  	int last_prio;
>  
> @@ -351,7 +350,7 @@ static inline bool need_preempt(const struct intel_engine_cs *engine,
>  		   queue_prio(&engine->execlists)) > last_prio;
>  }
>  
> -__maybe_unused static inline bool
> +__maybe_unused static bool
>  assert_priority_queue(const struct i915_request *prev,
>  		      const struct i915_request *next)
>  {
> @@ -418,7 +417,7 @@ execlists_unwind_incomplete_requests(struct intel_engine_execlists *execlists)
>  	return __unwind_incomplete_requests(engine);
>  }
>  
> -static inline void
> +static void
>  execlists_context_status_change(struct i915_request *rq, unsigned long status)
>  {
>  	/*
> @@ -503,7 +502,7 @@ static void reset_active(struct i915_request *rq,
>  	ce->lrc.lrca = lrc_update_regs(ce, engine, head);
>  }
>  
> -static inline struct intel_engine_cs *
> +static struct intel_engine_cs *
>  __execlists_schedule_in(struct i915_request *rq)
>  {
>  	struct intel_engine_cs * const engine = rq->engine;
> @@ -549,7 +548,7 @@ __execlists_schedule_in(struct i915_request *rq)
>  	return engine;
>  }
>  
> -static inline void execlists_schedule_in(struct i915_request *rq, int idx)
> +static void execlists_schedule_in(struct i915_request *rq, int idx)
>  {
>  	struct intel_context * const ce = rq->context;
>  	struct intel_engine_cs *old;
> @@ -608,9 +607,9 @@ static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
>  		tasklet_hi_schedule(&ve->base.execlists.tasklet);
>  }
>  
> -static inline void __execlists_schedule_out(struct i915_request *rq)
> +static void __execlists_schedule_out(struct i915_request * const rq,
> +				     struct intel_context * const ce)
>  {
> -	struct intel_context * const ce = rq->context;
>  	struct intel_engine_cs * const engine = rq->engine;
>  	unsigned int ccid;
>  
> @@ -621,6 +620,7 @@ static inline void __execlists_schedule_out(struct i915_request *rq)
>  	 */
>  
>  	CE_TRACE(ce, "schedule-out, ccid:%x\n", ce->lrc.ccid);
> +	GEM_BUG_ON(ce->inflight != engine);
>  
>  	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
>  		lrc_check_regs(ce, engine, "after");
> @@ -660,10 +660,12 @@ static inline void __execlists_schedule_out(struct i915_request *rq)
>  	 */
>  	if (ce->engine != engine)
>  		kick_siblings(rq, ce);
> +
> +	WRITE_ONCE(ce->inflight, NULL);
> +	intel_context_put(ce);
>  }
>  
> -static inline void
> -execlists_schedule_out(struct i915_request *rq)
> +static inline void execlists_schedule_out(struct i915_request *rq)
>  {
>  	struct intel_context * const ce = rq->context;
>  
> @@ -671,12 +673,8 @@ execlists_schedule_out(struct i915_request *rq)
>  
>  	GEM_BUG_ON(!ce->inflight);
>  	ce->inflight = ptr_dec(ce->inflight);
> -	if (!__intel_context_inflight_count(ce->inflight)) {
> -		GEM_BUG_ON(ce->inflight != rq->engine);
> -		__execlists_schedule_out(rq);
> -		WRITE_ONCE(ce->inflight, NULL);
> -		intel_context_put(ce);
> -	}
> +	if (!__intel_context_inflight_count(ce->inflight))
> +		__execlists_schedule_out(rq, ce);
>  
>  	i915_request_put(rq);
>  }
> @@ -728,7 +726,7 @@ static u64 execlists_update_context(struct i915_request *rq)
>  	return desc;
>  }
>  
> -static inline void write_desc(struct intel_engine_execlists *execlists, u64 desc, u32 port)
> +static void write_desc(struct intel_engine_execlists *execlists, u64 desc, u32 port)
>  {
>  	if (execlists->ctrl_reg) {
>  		writel(lower_32_bits(desc), execlists->submit_reg + port * 2);
> @@ -757,7 +755,7 @@ dump_port(char *buf, int buflen, const char *prefix, struct i915_request *rq)
>  	return buf;
>  }
>  
> -static __maybe_unused void
> +static __maybe_unused noinline void
>  trace_ports(const struct intel_engine_execlists *execlists,
>  	    const char *msg,
>  	    struct i915_request * const *ports)
> @@ -774,13 +772,13 @@ trace_ports(const struct intel_engine_execlists *execlists,
>  		     dump_port(p1, sizeof(p1), ", ", ports[1]));
>  }
>  
> -static inline bool
> +static bool
>  reset_in_progress(const struct intel_engine_execlists *execlists)
>  {
>  	return unlikely(!__tasklet_is_enabled(&execlists->tasklet));
>  }
>  
> -static __maybe_unused bool
> +static __maybe_unused noinline bool
>  assert_pending_valid(const struct intel_engine_execlists *execlists,
>  		     const char *msg)
>  {
> @@ -1621,12 +1619,12 @@ static void execlists_dequeue_irq(struct intel_engine_cs *engine)
>  	local_irq_enable(); /* flush irq_work (e.g. breadcrumb enabling) */
>  }
>  
> -static inline void clear_ports(struct i915_request **ports, int count)
> +static void clear_ports(struct i915_request **ports, int count)
>  {
>  	memset_p((void **)ports, NULL, count);
>  }
>  
> -static inline void
> +static void
>  copy_ports(struct i915_request **dst, struct i915_request **src, int count)
>  {
>  	/* A memcpy_p() would be very useful here! */
> @@ -1660,8 +1658,7 @@ cancel_port_requests(struct intel_engine_execlists * const execlists,
>  	return inactive;
>  }
>  
> -static inline void
> -invalidate_csb_entries(const u64 *first, const u64 *last)
> +static void invalidate_csb_entries(const u64 *first, const u64 *last)
>  {
>  	clflush((void *)first);
>  	clflush((void *)last);
> @@ -1693,7 +1690,7 @@ invalidate_csb_entries(const u64 *first, const u64 *last)
>   *     bits 47-57: sw context id of the lrc the GT switched away from
>   *     bits 58-63: sw counter of the lrc the GT switched away from
>   */
> -static inline bool gen12_csb_parse(const u64 csb)
> +static bool gen12_csb_parse(const u64 csb)
>  {
>  	bool ctx_away_valid = GEN12_CSB_CTX_VALID(upper_32_bits(csb));
>  	bool new_queue =
> @@ -1720,7 +1717,7 @@ static inline bool gen12_csb_parse(const u64 csb)
>  	return false;
>  }
>  
> -static inline bool gen8_csb_parse(const u64 csb)
> +static bool gen8_csb_parse(const u64 csb)
>  {
>  	return csb & (GEN8_CTX_STATUS_IDLE_ACTIVE | GEN8_CTX_STATUS_PREEMPTED);
>  }
> @@ -1759,8 +1756,7 @@ wa_csb_read(const struct intel_engine_cs *engine, u64 * const csb)
>  	return entry;
>  }
>  
> -static inline u64
> -csb_read(const struct intel_engine_cs *engine, u64 * const csb)
> +static u64 csb_read(const struct intel_engine_cs *engine, u64 * const csb)
>  {
>  	u64 entry = READ_ONCE(*csb);
>  
> @@ -3180,8 +3176,7 @@ logical_ring_default_vfuncs(struct intel_engine_cs *engine)
>  	}
>  }
>  
> -static inline void
> -logical_ring_default_irqs(struct intel_engine_cs *engine)
> +static void logical_ring_default_irqs(struct intel_engine_cs *engine)
>  {
>  	unsigned int shift = 0;
>  
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
