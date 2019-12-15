Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CBDB120885
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 15:23:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 804B36E5B2;
	Mon, 16 Dec 2019 14:23:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 581 seconds by postgrey-1.36 at gabe;
 Sun, 15 Dec 2019 16:52:12 UTC
Received: from mail.klausen.dk (mail.klausen.dk [IPv6:2001:470:1f0b:1730::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7D9789FE8
 for <intel-gfx@lists.freedesktop.org>; Sun, 15 Dec 2019 16:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=klausen.dk; s=dkim;
 t=1576428147;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8mMPEy9N/qcdyoZbAyvHBPRwmcgXO5Eg3DtC9IDLE8I=;
 b=n+wiXGmE6NLiHwrSJGnQgvwTVhZ7ANuwXmAXYHxjZsSEyy7DWuwjkOV8gtkJ7G1JSBsLIn
 XqPeKWePly6EuNdts1zyPJf74kqnjy181Zfa03KbCQuZWa/IlMSodYZeTWRVBwXASm/bjL
 JY208W7OpUoY36rqqD7B0g01uZDroYs=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191209023215.3519970-1-chris@chris-wilson.co.uk>
From: Kristian Klausen <kristian@klausen.dk>
Message-ID: <79b8320f-1be2-0452-4bbb-074d6c28e33d@klausen.dk>
Date: Sun, 15 Dec 2019 17:42:25 +0100
MIME-Version: 1.0
In-Reply-To: <20191209023215.3519970-1-chris@chris-wilson.co.uk>
Content-Language: en-US
X-Mailman-Approved-At: Mon, 16 Dec 2019 14:23:12 +0000
Subject: Re: [Intel-gfx] drm/i915/gt: Detect if we miss WaIdleLiteRestore
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

On 09.12.2019 03.32, Chris Wilson wrote:
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
Is there any plans to backport this to the stable kernels?
> Fixes: 22b7a426bbe1 ("drm/i915/execlists: Preempt-to-busy")
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/673
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
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

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
