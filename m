Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA1E2C3C37
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 10:34:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 156D36E888;
	Wed, 25 Nov 2020 09:34:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D15E789617
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 09:34:28 +0000 (UTC)
IronPort-SDR: 8chJfk5hDADN9uIbyiR8QkhYDg1eUoIPHpT8cuiMFUpYH9SjeQ3IrFIODcRb5rIG1rYWWR8e/m
 tm2BgDs74V7A==
X-IronPort-AV: E=McAfee;i="6000,8403,9815"; a="159867069"
X-IronPort-AV: E=Sophos;i="5.78,368,1599548400"; d="scan'208";a="159867069"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 01:34:28 -0800
IronPort-SDR: GS0yMdlETpShnHSlUtaQr1Aaaubk+jeZTerrL8mhwvS+67umVMZY9YA1Fx45+83PlVziVNGCFd
 bZ8ew+fJ9XRw==
X-IronPort-AV: E=Sophos;i="5.78,368,1599548400"; d="scan'208";a="547204158"
Received: from jhaitov-mobl.ger.corp.intel.com (HELO [10.214.246.84])
 ([10.214.246.84])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 01:34:26 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201124114219.29020-1-chris@chris-wilson.co.uk>
 <20201124114219.29020-9-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <e7cf94db-10f7-7705-d1d3-374e0f4f99fc@linux.intel.com>
Date: Wed, 25 Nov 2020 09:34:23 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201124114219.29020-9-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 09/16] drm/i915/gt: ce->inflight updates are
 now serialised
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


On 24/11/2020 11:42, Chris Wilson wrote:
> Since schedule-in and schedule-out are now both always under the tasklet
> bitlock, we can reduce the individual atomic operations to simple
> instructions and worry less.
> 
> This notably eliminates the race observed with intel_context_inflight in
> __engine_unpark().
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2583
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 52 ++++++++++++++---------------
>   1 file changed, 25 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 49a80f940e73..3a6a9539b54e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1358,11 +1358,11 @@ __execlists_schedule_in(struct i915_request *rq)
>   		ce->lrc.ccid = ce->tag;
>   	} else {
>   		/* We don't need a strict matching tag, just different values */
> -		unsigned int tag = ffs(READ_ONCE(engine->context_tag));
> +		unsigned int tag = __ffs(engine->context_tag);
>   
> -		GEM_BUG_ON(tag == 0 || tag >= BITS_PER_LONG);
> -		clear_bit(tag - 1, &engine->context_tag);
> -		ce->lrc.ccid = tag << (GEN11_SW_CTX_ID_SHIFT - 32);
> +		GEM_BUG_ON(tag >= BITS_PER_LONG);
> +		__clear_bit(tag, &engine->context_tag);
> +		ce->lrc.ccid = (1 + tag) << (GEN11_SW_CTX_ID_SHIFT - 32);
>   
>   		BUILD_BUG_ON(BITS_PER_LONG > GEN12_MAX_CONTEXT_HW_ID);
>   	}
> @@ -1375,6 +1375,8 @@ __execlists_schedule_in(struct i915_request *rq)
>   	execlists_context_status_change(rq, INTEL_CONTEXT_SCHEDULE_IN);
>   	intel_engine_context_in(engine);
>   
> +	CE_TRACE(ce, "schedule-in, ccid:%x\n", ce->lrc.ccid);
> +
>   	return engine;
>   }
>   
> @@ -1386,13 +1388,10 @@ static inline void execlists_schedule_in(struct i915_request *rq, int idx)
>   	GEM_BUG_ON(!intel_engine_pm_is_awake(rq->engine));
>   	trace_i915_request_in(rq, idx);
>   
> -	old = READ_ONCE(ce->inflight);
> -	do {
> -		if (!old) {
> -			WRITE_ONCE(ce->inflight, __execlists_schedule_in(rq));
> -			break;
> -		}
> -	} while (!try_cmpxchg(&ce->inflight, &old, ptr_inc(old)));
> +	old = ce->inflight;
> +	if (!old)
> +		old = __execlists_schedule_in(rq);
> +	WRITE_ONCE(ce->inflight, ptr_inc(old));
>   
>   	GEM_BUG_ON(intel_context_inflight(ce) != rq->engine);
>   }
> @@ -1406,12 +1405,11 @@ static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
>   		tasklet_hi_schedule(&ve->base.execlists.tasklet);
>   }
>   
> -static inline void
> -__execlists_schedule_out(struct i915_request *rq,
> -			 struct intel_engine_cs * const engine,
> -			 unsigned int ccid)
> +static inline void __execlists_schedule_out(struct i915_request *rq)
>   {
>   	struct intel_context * const ce = rq->context;
> +	struct intel_engine_cs * const engine = rq->engine;
> +	unsigned int ccid;
>   
>   	/*
>   	 * NB process_csb() is not under the engine->active.lock and hence
> @@ -1419,6 +1417,8 @@ __execlists_schedule_out(struct i915_request *rq,
>   	 * refrain from doing non-trivial work here.
>   	 */
>   
> +	CE_TRACE(ce, "schedule-out, ccid:%x\n", ce->lrc.ccid);
> +
>   	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
>   		execlists_check_context(ce, engine, "after");
>   
> @@ -1430,12 +1430,13 @@ __execlists_schedule_out(struct i915_request *rq,
>   	    i915_request_completed(rq))
>   		intel_engine_add_retire(engine, ce->timeline);
>   
> +	ccid = ce->lrc.ccid;
>   	ccid >>= GEN11_SW_CTX_ID_SHIFT - 32;
>   	ccid &= GEN12_MAX_CONTEXT_HW_ID;
>   	if (ccid < BITS_PER_LONG) {
>   		GEM_BUG_ON(ccid == 0);
>   		GEM_BUG_ON(test_bit(ccid - 1, &engine->context_tag));
> -		set_bit(ccid - 1, &engine->context_tag);
> +		__set_bit(ccid - 1, &engine->context_tag);
>   	}
>   
>   	intel_context_update_runtime(ce);
> @@ -1456,26 +1457,23 @@ __execlists_schedule_out(struct i915_request *rq,
>   	 */
>   	if (ce->engine != engine)
>   		kick_siblings(rq, ce);
> -
> -	intel_context_put(ce);
>   }
>   
>   static inline void
>   execlists_schedule_out(struct i915_request *rq)
>   {
>   	struct intel_context * const ce = rq->context;
> -	struct intel_engine_cs *cur, *old;
> -	u32 ccid;
>   
>   	trace_i915_request_out(rq);
>   
> -	ccid = rq->context->lrc.ccid;
> -	old = READ_ONCE(ce->inflight);
> -	do
> -		cur = ptr_unmask_bits(old, 2) ? ptr_dec(old) : NULL;
> -	while (!try_cmpxchg(&ce->inflight, &old, cur));
> -	if (!cur)
> -		__execlists_schedule_out(rq, old, ccid);
> +	GEM_BUG_ON(!ce->inflight);
> +	ce->inflight = ptr_dec(ce->inflight);
> +	if (!intel_context_inflight_count(ce)) {
> +		GEM_BUG_ON(ce->inflight != rq->engine);
> +		__execlists_schedule_out(rq);
> +		WRITE_ONCE(ce->inflight, NULL);
> +		intel_context_put(ce);
> +	}
>   
>   	i915_request_put(rq);
>   }
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
