Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4432E7C8E
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Dec 2020 22:10:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6739489070;
	Wed, 30 Dec 2020 21:10:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8263788FDA
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Dec 2020 21:10:17 +0000 (UTC)
IronPort-SDR: MyWkPxJ3S4Qe+cjuFTUp63fONM01RU/V9owkBXhBK+pgN21LUe+zTXhWlU7NojX+gqfn/m9duV
 82UZDeGHMc9Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9850"; a="175864481"
X-IronPort-AV: E=Sophos;i="5.78,462,1599548400"; d="scan'208";a="175864481"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2020 13:10:15 -0800
IronPort-SDR: E660mVzVL9quHIw8ZU2CZxT04tzSH0+N2yHlQsdIDoFO+H1M7NkPulFOSQXTI3Rb98Tu3OExPv
 cRC6tOiMBn2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,462,1599548400"; d="scan'208";a="400693546"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by FMSMGA003.fm.intel.com with ESMTP; 30 Dec 2020 13:10:14 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 0A3E35C20E0; Wed, 30 Dec 2020 23:07:43 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201229120145.26045-3-chris@chris-wilson.co.uk>
References: <20201229120145.26045-1-chris@chris-wilson.co.uk>
 <20201229120145.26045-3-chris@chris-wilson.co.uk>
Date: Wed, 30 Dec 2020 23:07:43 +0200
Message-ID: <87sg7nknog.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 03/56] drm/i915/gt: Cancel submitted
 requests upon context reset
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

> Since we process schedule-in of a context after submitting the request,
> if we decide to reset the context at that time, we also have to cancel
> the requets we have marked for submission.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  .../drm/i915/gt/intel_execlists_submission.c  | 22 ++++++++++++++-----
>  drivers/gpu/drm/i915/i915_request.c           |  2 ++
>  2 files changed, 18 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index b79365b5159a..18b23a332835 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -215,22 +215,32 @@ static void mark_eio(struct i915_request *rq)
>  }
>  
>  static struct i915_request *
> -active_request(const struct intel_timeline * const tl, struct i915_request *rq)
> +__active_request(const struct intel_timeline * const tl,
> +		 struct i915_request *rq,
> +		 int error)
>  {
>  	struct i915_request *active = rq;
>  
> -	rcu_read_lock();
> -	list_for_each_entry_continue_reverse(rq, &tl->requests, link) {
> +	list_for_each_entry_from_reverse(rq, &tl->requests, link) {
>  		if (__i915_request_is_complete(rq))
>  			break;
>  
> +		if (error) {
> +			i915_request_set_error_once(rq, error);
> +			__i915_request_skip(rq);
> +		}
>  		active = rq;
>  	}
> -	rcu_read_unlock();
>  
>  	return active;
>  }
>  
> +static struct i915_request *
> +active_request(const struct intel_timeline * const tl, struct i915_request *rq)
> +{
> +	return __active_request(tl, rq, 0);
> +}
> +
>  static inline void
>  ring_set_paused(const struct intel_engine_cs *engine, int state)
>  {
> @@ -487,14 +497,14 @@ static void reset_active(struct i915_request *rq,
>  	 * remain correctly ordered. And we defer to __i915_request_submit()
>  	 * so that all asynchronous waits are correctly handled.
>  	 */
> -	ENGINE_TRACE(engine, "{ rq=%llx:%lld }\n",
> +	ENGINE_TRACE(engine, "{ reset rq=%llx:%lld }\n",
>  		     rq->fence.context, rq->fence.seqno);
>  
>  	/* On resubmission of the active request, payload will be scrubbed */
>  	if (__i915_request_is_complete(rq))
>  		head = rq->tail;
>  	else
> -		head = active_request(ce->timeline, rq)->head;
> +		head = __active_request(ce->timeline, rq, -EIO)->head;
>  	head = intel_ring_wrap(ce->ring, head);
>  
>  	/* Scrub the context image to prevent replaying the previous batch */
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index de434697dccd..03ac6eead4db 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -490,6 +490,8 @@ void __i915_request_skip(struct i915_request *rq)
>  	if (rq->infix == rq->postfix)
>  		return;
>  
> +	RQ_TRACE(rq, "error: %d\n", rq->fence.error);
> +
>  	/*
>  	 * As this request likely depends on state from the lost
>  	 * context, clear out all the user operations leaving the
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
