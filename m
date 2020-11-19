Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D432B937E
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 14:18:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2D386E519;
	Thu, 19 Nov 2020 13:18:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF0966E519
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 13:18:15 +0000 (UTC)
IronPort-SDR: FG7CQK50xkDkOP73y2K4ddwppyGfcT2yaFK3RtNq3d6jnDbibNbCpjxg8Z/xIUlpyJUeMZd1YI
 QOYow1JMNkfg==
X-IronPort-AV: E=McAfee;i="6000,8403,9809"; a="167775132"
X-IronPort-AV: E=Sophos;i="5.77,490,1596524400"; d="scan'208";a="167775132"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 05:18:15 -0800
IronPort-SDR: 8dumh4pjMp5tlQJEb66F+HOymg0w1xrg84uYW4VS0DIBHOS7Pp5tq/n9wjfmqyCCSmQabEagqV
 uSYKuWkGcUUg==
X-IronPort-AV: E=Sophos;i="5.77,490,1596524400"; d="scan'208";a="534773062"
Received: from staskuzm-mobl1.ger.corp.intel.com (HELO [10.249.92.37])
 ([10.249.92.37])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 05:18:13 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201119111831.1236-1-chris@chris-wilson.co.uk>
 <20201119122406.32255-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <cf169b86-94dc-0bf6-8502-7b6b98604517@linux.intel.com>
Date: Thu, 19 Nov 2020 13:18:10 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201119122406.32255-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: Update request status flags
 for debug pretty-printer
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


On 19/11/2020 12:24, Chris Wilson wrote:
> We plan to expand upon the number of available statuses for when we
> pretty-print the requests along the timelines, and so need a new set of
> flags. We have settled upon:
> 
> 	Unready [U]
> 	  - initial status after being submitted, the request is not
> 	    ready for execution as it is waiting for external fences
> 
> 	Ready [R]
> 	  - all fences the request was waiting on have been signaled,
>              and the request is now ready for execution and will be
> 	    in a backend queue
> 
> 	  - a ready request may still need to wait on semaphores
> 	    [internal fences]
> 
> 	Ready/virtual [V]
> 	  - same as ready, but queued over multiple backends
> 

You do not like my idea of R/Rv? I think it would be more intuitive, but 
anyway patch looks good.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

> 	Executing [E]
> 	  - the request has been transferred from the backend queue and
> 	    submitted for execution on HW
> 
> 	  - a completed request may still be regarded as executing, its
> 	    status may not be updated until it is retired and removed
> 	    from the lists
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine_cs.c |  6 +-
>   drivers/gpu/drm/i915/gt/intel_lrc.c       | 15 ++--
>   drivers/gpu/drm/i915/gt/intel_lrc.h       |  3 +-
>   drivers/gpu/drm/i915/i915_request.c       | 85 +++++++++++++++++++----
>   drivers/gpu/drm/i915/i915_request.h       |  3 +-
>   5 files changed, 88 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index c3bb2e9546e6..d4e988b2816a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1491,7 +1491,7 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
>   					intel_context_is_banned(rq->context) ? "*" : "");
>   			len += print_ring(hdr + len, sizeof(hdr) - len, rq);
>   			scnprintf(hdr + len, sizeof(hdr) - len, "rq: ");
> -			i915_request_show(m, rq, hdr);
> +			i915_request_show(m, rq, hdr, 0);
>   		}
>   		for (port = execlists->pending; (rq = *port); port++) {
>   			char hdr[160];
> @@ -1505,7 +1505,7 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
>   					intel_context_is_banned(rq->context) ? "*" : "");
>   			len += print_ring(hdr + len, sizeof(hdr) - len, rq);
>   			scnprintf(hdr + len, sizeof(hdr) - len, "rq: ");
> -			i915_request_show(m, rq, hdr);
> +			i915_request_show(m, rq, hdr, 0);
>   		}
>   		rcu_read_unlock();
>   		execlists_active_unlock_bh(execlists);
> @@ -1649,7 +1649,7 @@ void intel_engine_dump(struct intel_engine_cs *engine,
>   	if (rq) {
>   		struct intel_timeline *tl = get_timeline(rq);
>   
> -		i915_request_show(m, rq, "\t\tactive ");
> +		i915_request_show(m, rq, "\t\tactive ", 0);
>   
>   		drm_printf(m, "\t\tring->start:  0x%08x\n",
>   			   i915_ggtt_offset(rq->ring->vma));
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index b6ab1161942a..5257f3c71366 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -5982,7 +5982,8 @@ void intel_execlists_show_requests(struct intel_engine_cs *engine,
>   				   struct drm_printer *m,
>   				   void (*show_request)(struct drm_printer *m,
>   							const struct i915_request *rq,
> -							const char *prefix),
> +							const char *prefix,
> +							int indent),
>   				   unsigned int max)
>   {
>   	const struct intel_engine_execlists *execlists = &engine->execlists;
> @@ -5997,7 +5998,7 @@ void intel_execlists_show_requests(struct intel_engine_cs *engine,
>   	count = 0;
>   	list_for_each_entry(rq, &engine->active.requests, sched.link) {
>   		if (count++ < max - 1)
> -			show_request(m, rq, "\t\tE ");
> +			show_request(m, rq, "\t\t", 0);
>   		else
>   			last = rq;
>   	}
> @@ -6007,7 +6008,7 @@ void intel_execlists_show_requests(struct intel_engine_cs *engine,
>   				   "\t\t...skipping %d executing requests...\n",
>   				   count - max);
>   		}
> -		show_request(m, last, "\t\tE ");
> +		show_request(m, last, "\t\t", 0);
>   	}
>   
>   	if (execlists->switch_priority_hint != INT_MIN)
> @@ -6025,7 +6026,7 @@ void intel_execlists_show_requests(struct intel_engine_cs *engine,
>   
>   		priolist_for_each_request(rq, p, i) {
>   			if (count++ < max - 1)
> -				show_request(m, rq, "\t\tQ ");
> +				show_request(m, rq, "\t\t", 0);
>   			else
>   				last = rq;
>   		}
> @@ -6036,7 +6037,7 @@ void intel_execlists_show_requests(struct intel_engine_cs *engine,
>   				   "\t\t...skipping %d queued requests...\n",
>   				   count - max);
>   		}
> -		show_request(m, last, "\t\tQ ");
> +		show_request(m, last, "\t\t", 0);
>   	}
>   
>   	last = NULL;
> @@ -6048,7 +6049,7 @@ void intel_execlists_show_requests(struct intel_engine_cs *engine,
>   
>   		if (rq) {
>   			if (count++ < max - 1)
> -				show_request(m, rq, "\t\tV ");
> +				show_request(m, rq, "\t\t", 0);
>   			else
>   				last = rq;
>   		}
> @@ -6059,7 +6060,7 @@ void intel_execlists_show_requests(struct intel_engine_cs *engine,
>   				   "\t\t...skipping %d virtual requests...\n",
>   				   count - max);
>   		}
> -		show_request(m, last, "\t\tV ");
> +		show_request(m, last, "\t\t", 0);
>   	}
>   
>   	spin_unlock_irqrestore(&engine->active.lock, flags);
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.h b/drivers/gpu/drm/i915/gt/intel_lrc.h
> index 32e6e204f544..802585a308e9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.h
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.h
> @@ -107,7 +107,8 @@ void intel_execlists_show_requests(struct intel_engine_cs *engine,
>   				   struct drm_printer *m,
>   				   void (*show_request)(struct drm_printer *m,
>   							const struct i915_request *rq,
> -							const char *prefix),
> +							const char *prefix,
> +							int indent),
>   				   unsigned int max);
>   
>   struct intel_context *
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 673991718ae6..24d01e8a9210 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -1867,28 +1867,89 @@ static int print_sched_attr(const struct i915_sched_attr *attr,
>   	return x;
>   }
>   
> +static char queue_status(const struct i915_request *rq)
> +{
> +	if (i915_request_is_active(rq))
> +		return 'E';
> +
> +	if (i915_request_is_ready(rq))
> +		return intel_engine_is_virtual(rq->engine) ? 'V' : 'R';
> +
> +	return 'U';
> +}
> +
> +static const char *run_status(const struct i915_request *rq)
> +{
> +	if (i915_request_completed(rq))
> +		return "!";
> +
> +	if (i915_request_started(rq))
> +		return "*";
> +
> +	if (!i915_sw_fence_signaled(&rq->semaphore))
> +		return "&";
> +
> +	return "";
> +}
> +
> +static const char *fence_status(const struct i915_request *rq)
> +{
> +	if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &rq->fence.flags))
> +		return "+";
> +
> +	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &rq->fence.flags))
> +		return "-";
> +
> +	return "";
> +}
> +
>   void i915_request_show(struct drm_printer *m,
>   		       const struct i915_request *rq,
> -		       const char *prefix)
> +		       const char *prefix,
> +		       int indent)
>   {
>   	const char *name = rq->fence.ops->get_timeline_name((struct dma_fence *)&rq->fence);
>   	char buf[80] = "";
>   	int x = 0;
>   
> +	/*
> +	 * The prefix is used to show the queue status, for which we use
> +	 * the following flags:
> +	 *
> +	 *  Unready [U]
> +	 *    - initial status upon being submitted by the user
> +	 *
> +	 *    - the request is not ready for execution as it is waiting
> +	 *      for external fences
> +	 *
> +	 *  Ready [R]
> +	 *    - all fences the request was waiting on have been signaled,
> +	 *      and the request is now ready for execution and will be
> +	 *      in a backend queue
> +	 *
> +	 *    - a ready request may still need to wait on semaphores
> +	 *      [internal fences]
> +	 *
> +	 *  Ready/virtual [V]
> +	 *    - same as ready, but queued over multiple backends
> +	 *
> +	 *  Executing [E]
> +	 *    - the request has been transferred from the backend queue and
> +	 *      submitted for execution on HW
> +	 *
> +	 *    - a completed request may still be regarded as executing, its
> +	 *      status may not be updated until it is retired and removed
> +	 *      from the lists
> +	 */
> +
>   	x = print_sched_attr(&rq->sched.attr, buf, x, sizeof(buf));
>   
> -	drm_printf(m, "%s %llx:%lld%s%s %s @ %dms: %s\n",
> -		   prefix,
> +	drm_printf(m, "%s%.*s%c %llx:%lld%s%s %s @ %dms: %s\n",
> +		   prefix, indent, "                ",
> +		   queue_status(rq),
>   		   rq->fence.context, rq->fence.seqno,
> -		   i915_request_completed(rq) ? "!" :
> -		   i915_request_started(rq) ? "*" :
> -		   !i915_sw_fence_signaled(&rq->semaphore) ? "&" :
> -		   "",
> -		   test_bit(DMA_FENCE_FLAG_SIGNALED_BIT,
> -			    &rq->fence.flags) ? "+" :
> -		   test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT,
> -			    &rq->fence.flags) ? "-" :
> -		   "",
> +		   run_status(rq),
> +		   fence_status(rq),
>   		   buf,
>   		   jiffies_to_msecs(jiffies - rq->emitted_jiffies),
>   		   name);
> diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
> index 09609071b725..8f6173b1c3df 100644
> --- a/drivers/gpu/drm/i915/i915_request.h
> +++ b/drivers/gpu/drm/i915/i915_request.h
> @@ -372,7 +372,8 @@ long i915_request_wait(struct i915_request *rq,
>   
>   void i915_request_show(struct drm_printer *m,
>   		       const struct i915_request *rq,
> -		       const char *prefix);
> +		       const char *prefix,
> +		       int indent);
>   
>   static inline bool i915_request_signaled(const struct i915_request *rq)
>   {
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
