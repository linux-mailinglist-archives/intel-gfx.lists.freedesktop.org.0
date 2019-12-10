Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2586118461
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 11:07:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40A816E880;
	Tue, 10 Dec 2019 10:07:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 426 seconds by postgrey-1.36 at gabe;
 Tue, 10 Dec 2019 10:07:44 UTC
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4B8B6E880
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 10:07:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 02:00:38 -0800
X-IronPort-AV: E=Sophos;i="5.69,299,1571727600"; d="scan'208";a="207228959"
Received: from cpreilly-mobl1.ger.corp.intel.com (HELO [10.251.80.64])
 ([10.251.80.64])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 10 Dec 2019 02:00:37 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191209020145.3495050-1-chris@chris-wilson.co.uk>
 <20191209023215.3519970-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <9d7a304b-4388-0dce-285d-9bdaf5bd469e@linux.intel.com>
Date: Tue, 10 Dec 2019 10:00:34 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191209023215.3519970-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Detect if we miss
 WaIdleLiteRestore
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


On 09/12/2019 02:32, Chris Wilson wrote:
> In order to avoid confusing the HW, we must never submit an empty ring
> during lite-restore, that is we should always advance the RING_TAIL
> before submitting to stay ahead of the RING_HEAD.
> 
> Normally this is prevented by keeping a couple of spare NOPs in the
> request->wa_tail so that on resubmission we can advance the tail. This
> relies on the request only being resubmitted once, which is the normal
> condition as it is seen once for ELSP[1] and then later in ELSP[0]. On
> preemption, the requests are unwound and the tail reset back to the
> normal end point (as we know the request is incomplete and therefore its
> RING_HEAD is even earlier).
> 
> However, if this w/a should fail we would try and resubmit the request
> with the RING_TAIL already set to the location of this request's wa_tail
> potentially causing a GPU hang. We can spot when we do try and
> incorrectly resubmit without advancing the RING_TAIL and spare any
> embarrassment by forcing the context restore.
> 
> In the case of preempt-to-busy, we leave the requests running on the HW
> while we unwind. As the ring is still live, we cannot rewind our
> rq->tail without forcing a reload so leave it set to rq->wa_tail and
> only force a reload if we resubmit after a lite-restore. (Normally, the
> forced reload will be a part of the preemption event.)
> 
> Fixes: 22b7a426bbe1 ("drm/i915/execlists: Preempt-to-busy")
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/673
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 46 +++++++++++++----------------
>   1 file changed, 21 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index c7ea8a055005..929f6bae4eba 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -845,12 +845,6 @@ static const u8 *reg_offsets(const struct intel_engine_cs *engine)
>   	}
>   }
>   
> -static void unwind_wa_tail(struct i915_request *rq)
> -{
> -	rq->tail = intel_ring_wrap(rq->ring, rq->wa_tail - WA_TAIL_BYTES);
> -	assert_ring_tail_valid(rq->ring, rq->tail);
> -}
> -
>   static struct i915_request *
>   __unwind_incomplete_requests(struct intel_engine_cs *engine)
>   {
> @@ -863,12 +857,10 @@ __unwind_incomplete_requests(struct intel_engine_cs *engine)
>   	list_for_each_entry_safe_reverse(rq, rn,
>   					 &engine->active.requests,
>   					 sched.link) {
> -
>   		if (i915_request_completed(rq))
>   			continue; /* XXX */
>   
>   		__i915_request_unsubmit(rq);
> -		unwind_wa_tail(rq);
>   
>   		/*
>   		 * Push the request back into the queue for later resubmission.
> @@ -1216,13 +1208,29 @@ execlists_schedule_out(struct i915_request *rq)
>   	i915_request_put(rq);
>   }
>   
> -static u64 execlists_update_context(const struct i915_request *rq)
> +static u64 execlists_update_context(struct i915_request *rq)
>   {
>   	struct intel_context *ce = rq->hw_context;
> -	u64 desc;
> +	u64 desc = ce->lrc_desc;
> +	u32 tail;
>   
> -	ce->lrc_reg_state[CTX_RING_TAIL] =
> -		intel_ring_set_tail(rq->ring, rq->tail);
> +	/*
> +	 * WaIdleLiteRestore:bdw,skl
> +	 *
> +	 * We should never submit the context with the same RING_TAIL twice
> +	 * just in case we submit an empty ring, which confuses the HW.
> +	 *
> +	 * We append a couple of NOOPs (gen8_emit_wa_tail) after the end of
> +	 * the normal request to be able to always advance the RING_TAIL on
> +	 * subsequent resubmissions (for lite restore). Should that fail us,
> +	 * and we try and submit the same tail again, force the context
> +	 * reload.
> +	 */
> +	tail = intel_ring_set_tail(rq->ring, rq->tail);
> +	if (unlikely(ce->lrc_reg_state[CTX_RING_TAIL] == tail))
> +		desc |= CTX_DESC_FORCE_RESTORE;
> +	ce->lrc_reg_state[CTX_RING_TAIL] = tail;
> +	rq->tail = rq->wa_tail;
>   
>   	/*
>   	 * Make sure the context image is complete before we submit it to HW.
> @@ -1236,13 +1244,11 @@ static u64 execlists_update_context(const struct i915_request *rq)
>   	 */
>   	wmb();
>   
> -	desc = ce->lrc_desc;
> -	ce->lrc_desc &= ~CTX_DESC_FORCE_RESTORE;
> -
>   	/* Wa_1607138340:tgl */
>   	if (IS_TGL_REVID(rq->i915, TGL_REVID_A0, TGL_REVID_A0))
>   		desc |= CTX_DESC_FORCE_RESTORE;
>   
> +	ce->lrc_desc &= ~CTX_DESC_FORCE_RESTORE;
>   	return desc;
>   }
>   
> @@ -1776,16 +1782,6 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>   
>   				return;
>   			}
> -
> -			/*
> -			 * WaIdleLiteRestore:bdw,skl
> -			 * Apply the wa NOOPs to prevent
> -			 * ring:HEAD == rq:TAIL as we resubmit the
> -			 * request. See gen8_emit_fini_breadcrumb() for
> -			 * where we prepare the padding after the
> -			 * end of the request.
> -			 */
> -			last->tail = last->wa_tail;
>   		}
>   	}
>   
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Is the shard failure in gem_ctx_persistence the unrelated fence status race?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
