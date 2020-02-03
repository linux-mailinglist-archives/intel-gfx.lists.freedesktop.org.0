Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC121504B1
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 11:56:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5A266EBC3;
	Mon,  3 Feb 2020 10:55:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0EE56E2DD
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 10:55:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 02:55:56 -0800
X-IronPort-AV: E=Sophos;i="5.70,397,1574150400"; d="scan'208";a="223900608"
Received: from aabader-mobl1.ccr.corp.intel.com (HELO [10.252.21.249])
 ([10.252.21.249])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 03 Feb 2020 02:55:54 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200203094152.4150550-1-chris@chris-wilson.co.uk>
 <20200203094152.4150550-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <9ed6606c-650f-3a32-5c85-c0b244ac1ea7@linux.intel.com>
Date: Mon, 3 Feb 2020 10:55:52 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200203094152.4150550-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Initialise basic fence before
 acquiring seqno
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
Cc: matthew.auld@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 03/02/2020 09:41, Chris Wilson wrote:
> Inside the intel_timeline_get_seqno(), we currently track the retirement
> of the old cachelines by listening to the new request. This requires
> that the new request is ready to be used and so requires a minimum bit
> of initialisation prior to getting the new seqno.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_request.c | 21 ++++++++++++++-------
>   1 file changed, 14 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 78a5f5d3c070..f56b046a32de 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -595,6 +595,8 @@ static void __i915_request_ctor(void *arg)
>   	i915_sw_fence_init(&rq->submit, submit_notify);
>   	i915_sw_fence_init(&rq->semaphore, semaphore_notify);
>   
> +	dma_fence_init(&rq->fence, &i915_fence_ops, &rq->lock, 0, 0);
> +
>   	rq->file_priv = NULL;
>   	rq->capture_list = NULL;
>   
> @@ -653,25 +655,30 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
>   		}
>   	}
>   
> -	ret = intel_timeline_get_seqno(tl, rq, &seqno);
> -	if (ret)
> -		goto err_free;
> -
>   	rq->i915 = ce->engine->i915;
>   	rq->context = ce;
>   	rq->engine = ce->engine;
>   	rq->ring = ce->ring;
>   	rq->execution_mask = ce->engine->mask;
>   
> +	kref_init(&rq->fence.refcount);
> +	rq->fence.flags = 0;
> +	rq->fence.error = 0;
> +	INIT_LIST_HEAD(&rq->fence.cb_list);

One of these fields the previous user leaves in a non-empty state?

Regards,

Tvrtko

> +
> +	ret = intel_timeline_get_seqno(tl, rq, &seqno);
> +	if (ret)
> +		goto err_free;
> +
> +	rq->fence.context = tl->fence_context;
> +	rq->fence.seqno = seqno;
> +
>   	RCU_INIT_POINTER(rq->timeline, tl);
>   	RCU_INIT_POINTER(rq->hwsp_cacheline, tl->hwsp_cacheline);
>   	rq->hwsp_seqno = tl->hwsp_seqno;
>   
>   	rq->rcustate = get_state_synchronize_rcu(); /* acts as smp_mb() */
>   
> -	dma_fence_init(&rq->fence, &i915_fence_ops, &rq->lock,
> -		       tl->fence_context, seqno);
> -
>   	/* We bump the ref for the fence chain */
>   	i915_sw_fence_reinit(&i915_request_get(rq)->submit);
>   	i915_sw_fence_reinit(&i915_request_get(rq)->semaphore);
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
