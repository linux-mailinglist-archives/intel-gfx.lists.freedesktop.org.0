Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7217319CAEA
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 22:18:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56B0C6E059;
	Thu,  2 Apr 2020 20:18:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA1E26E059
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 20:18:33 +0000 (UTC)
IronPort-SDR: WhmcZNB2pcMnlG+KqDnjmYfj+wEa+jnzAS0zr+iPsoIXvQWutez5Qk03RlgpFT8OftDKxucgw8
 +iQVlWkJmHdA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 13:18:33 -0700
IronPort-SDR: CGy6gW2Cpx5lt5tWtmJGcZD3/Pd01+xnQksKgPES8fFXMqERdu8ylnszRBLcTTI5/8so0eIjxe
 28AUK4nIh9cA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,336,1580803200"; d="scan'208";a="253131393"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga006.jf.intel.com with ESMTP; 02 Apr 2020 13:18:31 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 63F955C1EF4; Thu,  2 Apr 2020 23:16:52 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200401110435.30389-1-chris@chris-wilson.co.uk>
References: <20200401110435.30389-1-chris@chris-wilson.co.uk>
Date: Thu, 02 Apr 2020 23:16:52 +0300
Message-ID: <87369lprrf.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/execlists: Peek at the next
 submission for error interrupts
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

> If we receive the error interrupt before the CS interrupt, we may find
> ourselves without an active request to reset, skipping the GPU reset.
> All because the attempt to reset was too early.
>

With the tracing, we will see the the out of sync situations
so

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>


> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 41 ++++++++++++++++++++++++++++-
>  1 file changed, 40 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 3479cda37fdc..f028114714cd 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2804,6 +2804,45 @@ static struct execlists_capture *capture_regs(struct intel_engine_cs *engine)
>  	return NULL;
>  }
>  
> +static struct i915_request *
> +active_context(struct intel_engine_cs *engine, u32 ccid)
> +{
> +	const struct intel_engine_execlists * const el = &engine->execlists;
> +	struct i915_request * const *port, *rq;
> +
> +	/*
> +	 * Use the most recent result from process_csb(), but just in case
> +	 * we trigger an error (via interrupt) before the first CS event has
> +	 * been written, peek at the next submission.
> +	 */
> +
> +	for (port = el->active; (rq = *port); port++) {
> +		if (upper_32_bits(rq->context->lrc_desc) == ccid) {
> +			ENGINE_TRACE(engine,
> +				     "ccid found at active:%zd\n",
> +				     port - el->active);
> +			return rq;
> +		}
> +	}
> +
> +	for (port = el->pending; (rq = *port); port++) {
> +		if (upper_32_bits(rq->context->lrc_desc) == ccid) {
> +			ENGINE_TRACE(engine,
> +				     "ccid found at pending:%zd\n",
> +				     port - el->pending);
> +			return rq;
> +		}
> +	}
> +
> +	ENGINE_TRACE(engine, "ccid:%x not found\n", ccid);
> +	return NULL;
> +}
> +
> +static u32 active_ccid(struct intel_engine_cs *engine)
> +{
> +	return ENGINE_READ_FW(engine, RING_EXECLIST_STATUS_HI);
> +}
> +
>  static bool execlists_capture(struct intel_engine_cs *engine)
>  {
>  	struct execlists_capture *cap;
> @@ -2821,7 +2860,7 @@ static bool execlists_capture(struct intel_engine_cs *engine)
>  		return true;
>  
>  	spin_lock_irq(&engine->active.lock);
> -	cap->rq = execlists_active(&engine->execlists);
> +	cap->rq = active_context(engine, active_ccid(engine));
>  	if (cap->rq) {
>  		cap->rq = active_request(cap->rq->context->timeline, cap->rq);
>  		cap->rq = i915_request_get_rcu(cap->rq);
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
