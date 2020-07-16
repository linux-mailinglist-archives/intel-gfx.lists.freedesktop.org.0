Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D8B22253B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 16:24:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 288F96E05C;
	Thu, 16 Jul 2020 14:24:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 576796E05C
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 14:24:08 +0000 (UTC)
IronPort-SDR: zRq6wFqrlhIpnVtgcJaxaOsIs20wNcsMr5aUoZw9OacxEHMS5sht9CuHFqQp0i0xkUfsxCzdXe
 pX0QiGYcY1RQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9683"; a="210918905"
X-IronPort-AV: E=Sophos;i="5.75,359,1589266800"; d="scan'208";a="210918905"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 07:24:07 -0700
IronPort-SDR: WfmjJ+elTe5GQ4znTkntsw0mEk1eNrflWrrJn+TjZ0/TH9EflDn8oucCN3XJhWLlmjLh/iQyYz
 pETEB0SFmLAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,359,1589266800"; d="scan'208";a="430510655"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga004.jf.intel.com with ESMTP; 16 Jul 2020 07:24:06 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id C666B5C0D7C; Thu, 16 Jul 2020 17:23:43 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200715115147.11866-10-chris@chris-wilson.co.uk>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-10-chris@chris-wilson.co.uk>
Date: Thu, 16 Jul 2020 17:23:43 +0300
Message-ID: <87blkf35e8.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 10/66] drm/i915: Soften the tasklet flush
 frequency before waits
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

> We include a tasklet flush before waiting on a request as a precaution
> against the HW being lax in event signaling. We now have a precautionary
> flush in the engine's heartbeat and so do not need to be quite so
> zealous on every request wait. If we focus on the request, the only
> tasklet flush that matters is if there is a delay in submitting this
> request to HW, so if the request is not ready to be executed no
> advantage in reducing this wait can be gained by running the tasklet.
> And there is little point in doing busy work for no result.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_request.c | 20 ++++++++++++++++++--
>  1 file changed, 18 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 29b5e71307e3..f58beff5e859 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -1760,14 +1760,30 @@ long i915_request_wait(struct i915_request *rq,
>  	if (dma_fence_add_callback(&rq->fence, &wait.cb, request_wait_wake))
>  		goto out;
>  
> +	/*
> +	 * Flush the submission tasklet, but only if it may help this request.
> +	 *
> +	 * We sometimes experience some latency between the HW interrupts and
> +	 * tasklet execution (mostly due to ksoftirqd latency, but it can also
> +	 * be due to lazy CS events), so lets run the tasklet manually if there
> +	 * is a chance it may submit this request. If the request is not ready
> +	 * to run, as it is waiting for other fences to be signaled, flushing
> +	 * the tasklet is busy work without any advantage for this client.
> +	 *
> +	 * If the HW is being lazy, this is the last chance before we go to
> +	 * sleep to catch any pending events. We will check periodically in
> +	 * the heartbeat to flush the submission tasklets as a last resort
> +	 * for unhappy HW.
> +	 */
> +	if (i915_request_is_ready(rq))
> +		intel_engine_flush_submission(rq->engine);
> +
>  	for (;;) {
>  		set_current_state(state);
>  
>  		if (dma_fence_is_signaled(&rq->fence))
>  			break;
>  
> -		intel_engine_flush_submission(rq->engine);
> -
>  		if (signal_pending_state(state, current)) {
>  			timeout = -ERESTARTSYS;
>  			break;
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
