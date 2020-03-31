Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B70B31998DB
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 16:46:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9B5E89CC4;
	Tue, 31 Mar 2020 14:46:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8973689CC4
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 14:46:12 +0000 (UTC)
IronPort-SDR: 1ZOcYipXIbYN8gRioj+e0Xe0/rLbwt0VX168MD3asLrc49+odyQGU5B/DZaSwCQ3WsKrAgIebZ
 G6U1B2/o1SSw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 07:46:09 -0700
IronPort-SDR: YMs3FS5WwYHaPwMRRrGaDio+07+SLU0c5pLO6aHFalGw+EL10jdOcfVJ3WV9FcxXYYQ28lmphy
 3vWDzy0p90EQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,328,1580803200"; d="scan'208";a="328104622"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga001.jf.intel.com with ESMTP; 31 Mar 2020 07:46:07 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id D97C45C0D7B; Tue, 31 Mar 2020 17:44:29 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200331094239.23145-1-chris@chris-wilson.co.uk>
References: <20200331094239.23145-1-chris@chris-wilson.co.uk>
Date: Tue, 31 Mar 2020 17:44:29 +0300
Message-ID: <87d08spos2.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Include the execlists CCID of
 each port in the engine dump
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Since we print out EXECLISTS_STATUS in the dump, also print out the CCID
> of each context so we can cross check between the two.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c | 105 ++++++++++++----------
>  1 file changed, 56 insertions(+), 49 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index dff0bbe9e1a6..b01af08eaaf7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1221,6 +1221,49 @@ static void print_request(struct drm_printer *m,
>  		   name);
>  }
>  
> +static struct intel_timeline *get_timeline(struct i915_request *rq)
> +{
> +	struct intel_timeline *tl;
> +
> +	/*
> +	 * Even though we are holding the engine->active.lock here, there
> +	 * is no control over the submission queue per-se and we are
> +	 * inspecting the active state at a random point in time, with an
> +	 * unknown queue. Play safe and make sure the timeline remains valid.
> +	 * (Only being used for pretty printing, one extra kref shouldn't
> +	 * cause a camel stampede!)
> +	 */
> +	rcu_read_lock();
> +	tl = rcu_dereference(rq->timeline);
> +	if (!kref_get_unless_zero(&tl->kref))
> +		tl = NULL;
> +	rcu_read_unlock();
> +
> +	return tl;
> +}
> +
> +static int print_ring(char *buf, int sz, struct i915_request *rq)
> +{
> +	int len = 0;
> +
> +	if (!i915_request_signaled(rq)) {
> +		struct intel_timeline *tl = get_timeline(rq);
> +
> +		len = scnprintf(buf, sz,
> +				"ring:{start:%08x, hwsp:%08x, seqno:%08x, runtime:%llums}, ",
> +				i915_ggtt_offset(rq->ring->vma),
> +				tl ? tl->hwsp_offset : 0,
> +				hwsp_seqno(rq),
> +				DIV_ROUND_CLOSEST_ULL(intel_context_get_total_runtime_ns(rq->context),
> +						      1000 * 1000));
> +
> +		if (tl)
> +			intel_timeline_put(tl);
> +	}
> +
> +	return len;
> +}
> +
>  static void hexdump(struct drm_printer *m, const void *buf, size_t len)
>  {
>  	const size_t rowsize = 8 * sizeof(u32);
> @@ -1250,27 +1293,6 @@ static void hexdump(struct drm_printer *m, const void *buf, size_t len)
>  	}
>  }
>  
> -static struct intel_timeline *get_timeline(struct i915_request *rq)
> -{
> -	struct intel_timeline *tl;
> -
> -	/*
> -	 * Even though we are holding the engine->active.lock here, there
> -	 * is no control over the submission queue per-se and we are
> -	 * inspecting the active state at a random point in time, with an
> -	 * unknown queue. Play safe and make sure the timeline remains valid.
> -	 * (Only being used for pretty printing, one extra kref shouldn't
> -	 * cause a camel stampede!)
> -	 */
> -	rcu_read_lock();
> -	tl = rcu_dereference(rq->timeline);
> -	if (!kref_get_unless_zero(&tl->kref))
> -		tl = NULL;
> -	rcu_read_unlock();
> -
> -	return tl;
> -}
> -
>  static const char *repr_timer(const struct timer_list *t)
>  {
>  	if (!READ_ONCE(t->expires))
> @@ -1383,39 +1405,24 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
>  			int len;
>  
>  			len = scnprintf(hdr, sizeof(hdr),
> -					"\t\tActive[%d]: ",
> -					(int)(port - execlists->active));
> -			if (!i915_request_signaled(rq)) {
> -				struct intel_timeline *tl = get_timeline(rq);
> -
> -				len += scnprintf(hdr + len, sizeof(hdr) - len,
> -						 "ring:{start:%08x, hwsp:%08x, seqno:%08x, runtime:%llums}, ",
> -						 i915_ggtt_offset(rq->ring->vma),
> -						 tl ? tl->hwsp_offset : 0,
> -						 hwsp_seqno(rq),
> -						 DIV_ROUND_CLOSEST_ULL(intel_context_get_total_runtime_ns(rq->context),
> -								       1000 * 1000));
> -
> -				if (tl)
> -					intel_timeline_put(tl);
> -			}
> +					"\t\tActive[%d]: ccid:%08x, ",
> +					(int)(port - execlists->active),
> +					upper_32_bits(rq->context->lrc_desc));
> +			len += print_ring(hdr + len, sizeof(hdr) - len, rq);
>  			scnprintf(hdr + len, sizeof(hdr) - len, "rq: ");
>  			print_request(m, rq, hdr);
>  		}
>  		for (port = execlists->pending; (rq = *port); port++) {
> -			struct intel_timeline *tl = get_timeline(rq);
> -			char hdr[80];
> -
> -			snprintf(hdr, sizeof(hdr),
> -				 "\t\tPending[%d] ring:{start:%08x, hwsp:%08x, seqno:%08x}, rq: ",
> -				 (int)(port - execlists->pending),
> -				 i915_ggtt_offset(rq->ring->vma),
> -				 tl ? tl->hwsp_offset : 0,
> -				 hwsp_seqno(rq));
> -			print_request(m, rq, hdr);
> +			char hdr[160];
> +			int len;
>  
> -			if (tl)
> -				intel_timeline_put(tl);
> +			len = scnprintf(hdr, sizeof(hdr),
> +					"\t\tPending[%d]: ccid:%08x, ",
> +					(int)(port - execlists->pending),
> +					upper_32_bits(rq->context->lrc_desc));
> +			len += print_ring(hdr + len, sizeof(hdr) - len, rq);
> +			scnprintf(hdr + len, sizeof(hdr) - len, "rq: ");
> +			print_request(m, rq, hdr);
>  		}
>  		rcu_read_unlock();
>  		execlists_active_unlock_bh(execlists);
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
