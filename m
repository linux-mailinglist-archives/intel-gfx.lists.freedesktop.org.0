Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8792FE94F
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 12:50:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B519589F6B;
	Thu, 21 Jan 2021 11:50:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A641E6E419
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 11:50:32 +0000 (UTC)
IronPort-SDR: euv/IkiDzdezS2WtBTirZTyYneRvq/2GNXB2YI+LlCFnbtmsr9M7artmNTcdMMyhaY5t52dThs
 xhCVr0KqSLLQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9870"; a="243328731"
X-IronPort-AV: E=Sophos;i="5.79,363,1602572400"; d="scan'208";a="243328731"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 03:50:27 -0800
IronPort-SDR: pryr+EuWA276tTpCrwbM3Z0VIkQTRhIpGPgBb+pz62B63pSmpNsZOuiUTNPRzL/3+zYAoZ4C19
 ph69nbvHwwXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,363,1602572400"; d="scan'208";a="347889280"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga007.fm.intel.com with ESMTP; 21 Jan 2021 03:50:26 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 6206A5C20E9; Thu, 21 Jan 2021 13:47:39 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210120121718.26435-2-chris@chris-wilson.co.uk>
References: <20210120121718.26435-1-chris@chris-wilson.co.uk>
 <20210120121718.26435-2-chris@chris-wilson.co.uk>
Date: Thu, 21 Jan 2021 13:47:39 +0200
Message-ID: <87pn1yjyuc.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Skip over completed active
 execlists, again
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

> Now that we are careful to always force-restore contexts upon rewinding
> (where necessary), we can restore our optimisation to skip over
> completed active execlists when dequeuing.
>
> Referenecs: 35f3fd8182ba ("drm/i915/execlists: Workaround switching back to a completed context")
> References: 8ab3a3812aa9 ("drm/i915/gt: Incrementally check for rewinding")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  .../drm/i915/gt/intel_execlists_submission.c  | 34 +++++++++----------
>  1 file changed, 16 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 524c8b54d220..ac1be7a632d3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -1224,12 +1224,20 @@ static void set_preempt_timeout(struct intel_engine_cs *engine,
>  		     active_preempt_timeout(engine, rq));
>  }
>  
> +static bool completed(const struct i915_request *rq)
> +{
> +	if (i915_request_has_sentinel(rq))
> +		return false;
> +
> +	return __i915_request_is_complete(rq);
> +}
> +
>  static void execlists_dequeue(struct intel_engine_cs *engine)
>  {
>  	struct intel_engine_execlists * const execlists = &engine->execlists;
>  	struct i915_request **port = execlists->pending;
>  	struct i915_request ** const last_port = port + execlists->port_mask;
> -	struct i915_request *last = *execlists->active;
> +	struct i915_request *last, * const *active;
>  	struct virtual_engine *ve;
>  	struct rb_node *rb;
>  	bool submit = false;
> @@ -1266,21 +1274,13 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>  	 * i.e. we will retrigger preemption following the ack in case
>  	 * of trouble.
>  	 *
> -	 * In theory we can skip over completed contexts that have not
> -	 * yet been processed by events (as those events are in flight):
> -	 *
> -	 * while ((last = *active) && i915_request_completed(last))
> -	 *	active++;
> -	 *
> -	 * However, the GPU cannot handle this as it will ultimately
> -	 * find itself trying to jump back into a context it has just
> -	 * completed and barf.
>  	 */
> +	active = execlists->active;
> +	while ((last = *active) && completed(last))
> +		active++;
>  
>  	if (last) {
> -		if (__i915_request_is_complete(last)) {
> -			goto check_secondary;
> -		} else if (need_preempt(engine, last)) {
> +		if (need_preempt(engine, last)) {
>  			ENGINE_TRACE(engine,
>  				     "preempting last=%llx:%lld, prio=%d, hint=%d\n",
>  				     last->fence.context,
> @@ -1359,9 +1359,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>  			 * we hopefully coalesce several updates into a single
>  			 * submission.
>  			 */
> -check_secondary:
> -			if (!list_is_last(&last->sched.link,
> -					  &engine->active.requests)) {
> +			if (active[1]) {
>  				/*
>  				 * Even if ELSP[1] is occupied and not worthy
>  				 * of timeslices, our queue might be.
> @@ -1562,7 +1560,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>  	 * of ordered contexts.
>  	 */
>  	if (submit &&
> -	    memcmp(execlists->active,
> +	    memcmp(active,
>  		   execlists->pending,
>  		   (port - execlists->pending) * sizeof(*port))) {
>  		*port = NULL;
> @@ -1570,7 +1568,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>  			execlists_schedule_in(*port, port - execlists->pending);
>  
>  		WRITE_ONCE(execlists->yield, -1);
> -		set_preempt_timeout(engine, *execlists->active);
> +		set_preempt_timeout(engine, *active);
>  		execlists_submit_ports(engine);
>  	} else {
>  		ring_set_paused(engine, 0);
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
