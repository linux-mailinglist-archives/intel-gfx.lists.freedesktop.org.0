Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED03A21DB4B
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2020 18:10:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70EBB6E29D;
	Mon, 13 Jul 2020 16:10:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 903086E29D
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jul 2020 16:10:35 +0000 (UTC)
IronPort-SDR: wYoWUrsESB7euHYh0f4DsAXoVC7LhtNxNOtA9t2Nna66MYAWGf5GdhWvDO5VbVATD3wRpS97el
 cA1JH8G8WRSw==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="210185883"
X-IronPort-AV: E=Sophos;i="5.75,348,1589266800"; d="scan'208";a="210185883"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2020 09:10:34 -0700
IronPort-SDR: QzRMezyN2IH29/fNpjCxZGeubexc2nfe8R0X3VjWP/uyJ3MinW6G+Yw8jA26knJYQfBxp45hhw
 eUwj/riYutQg==
X-IronPort-AV: E=Sophos;i="5.75,348,1589266800"; d="scan'208";a="459348739"
Received: from thoebenx-mobl.ger.corp.intel.com (HELO [10.255.194.109])
 ([10.255.194.109])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2020 09:10:33 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200713131617.21175-1-chris@chris-wilson.co.uk>
 <20200713141636.29326-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <517f6b0c-b85b-40d2-c1b2-db77c1049195@linux.intel.com>
Date: Mon, 13 Jul 2020 17:10:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200713141636.29326-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Skip signaling a signaled
 request
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
Cc: "Nayana, Venkata Ramana" <venkata.ramana.nayana@intel.com>,
 stable@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 13/07/2020 15:16, Chris Wilson wrote:
> Preempt-to-busy introduces various fascinating complications in that the
> requests may complete as we are unsubmitting them from HW. As they may
> then signal after unsubmission, we may find ourselves having to cleanup
> the signaling request from within the signaling callback. This causes us
> to recurse onto the same i915_request.lock.
> 
> However, if the request is already signaled (as it will be before we
> enter the signal callbacks), we know we can skip the signaling of that
> request during submission, neatly evading the spinlock recursion.
> 
> unsubmit(ve.rq0) # timeslice expiration or other preemption
>   -> virtual_submit_request(ve.rq0)
> dma_fence_signal(ve.rq0) # request completed before preemption ack
>   -> submit_notify(ve.rq1)
>     -> virtual_submit_request(ve.rq1) # sees that we have completed ve.rq0
>        -> __i915_request_submit(ve.rq0)
> 
> [  264.210142] BUG: spinlock recursion on CPU#2, sample_multi_tr/2093
> [  264.210150]  lock: 0xffff9efd6ac55080, .magic: dead4ead, .owner: sample_multi_tr/2093, .owner_cpu: 2
> [  264.210155] CPU: 2 PID: 2093 Comm: sample_multi_tr Tainted: G     U
> [  264.210158] Hardware name: Intel Corporation CoffeeLake Client Platform/CoffeeLake S UDIMM RVP, BIOS CNLSFWR1.R00.X212.B01.1909060036 09/06/2019
> [  264.210160] Call Trace:
> [  264.210167]  dump_stack+0x98/0xda
> [  264.210174]  spin_dump.cold+0x24/0x3c
> [  264.210178]  do_raw_spin_lock+0x9a/0xd0
> [  264.210184]  _raw_spin_lock_nested+0x6a/0x70
> [  264.210314]  __i915_request_submit+0x10a/0x3c0 [i915]
> [  264.210415]  virtual_submit_request+0x9b/0x380 [i915]
> [  264.210516]  submit_notify+0xaf/0x14c [i915]
> [  264.210602]  __i915_sw_fence_complete+0x8a/0x230 [i915]
> [  264.210692]  i915_sw_fence_complete+0x2d/0x40 [i915]
> [  264.210762]  __dma_i915_sw_fence_wake+0x19/0x30 [i915]
> [  264.210767]  dma_fence_signal_locked+0xb1/0x1c0
> [  264.210772]  dma_fence_signal+0x29/0x50
> [  264.210871]  i915_request_wait+0x5cb/0x830 [i915]
> [  264.210876]  ? dma_resv_get_fences_rcu+0x294/0x5d0
> [  264.210974]  i915_gem_object_wait_fence+0x2f/0x40 [i915]
> [  264.211084]  i915_gem_object_wait+0xce/0x400 [i915]
> [  264.211178]  i915_gem_wait_ioctl+0xff/0x290 [i915]
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Fixes: 22b7a426bbe1 ("drm/i915/execlists: Preempt-to-busy")
> References: 6d06779e8672 ("drm/i915: Load balancing across a virtual engine")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: "Nayana, Venkata Ramana" <venkata.ramana.nayana@intel.com>
> Cc: <stable@vger.kernel.org> # v5.4+
> ---
>   drivers/gpu/drm/i915/gt/intel_breadcrumbs.c |  7 ++++++-
>   drivers/gpu/drm/i915/i915_request.c         | 23 ++++++++++++---------
>   2 files changed, 19 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> index d907d538176e..91786310c114 100644
> --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> @@ -314,13 +314,18 @@ bool i915_request_enable_breadcrumb(struct i915_request *rq)
>   {
>   	lockdep_assert_held(&rq->lock);
>   
> +	if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &rq->fence.flags))
> +		return true;
> +
>   	if (test_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags)) {
>   		struct intel_breadcrumbs *b = &rq->engine->breadcrumbs;
>   		struct intel_context *ce = rq->context;
>   		struct list_head *pos;
>   
>   		spin_lock(&b->irq_lock);
> -		GEM_BUG_ON(test_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags));
> +
> +		if (test_bit(I915_FENCE_FLAG_SIGNAL, &rq->fence.flags))
> +			goto unlock;
>   
>   		if (!__intel_breadcrumbs_arm_irq(b))
>   			goto unlock;
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 3bb7320249ae..0b2fe55e6194 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -560,22 +560,25 @@ bool __i915_request_submit(struct i915_request *request)
>   	engine->serial++;
>   	result = true;
>   
> -xfer:	/* We may be recursing from the signal callback of another i915 fence */
> -	spin_lock_nested(&request->lock, SINGLE_DEPTH_NESTING);
> -
> +xfer:
>   	if (!test_and_set_bit(I915_FENCE_FLAG_ACTIVE, &request->fence.flags)) {
>   		list_move_tail(&request->sched.link, &engine->active.requests);
>   		clear_bit(I915_FENCE_FLAG_PQUEUE, &request->fence.flags);
> -		__notify_execute_cb(request);
>   	}
> -	GEM_BUG_ON(!llist_empty(&request->execute_cb));
>   
> -	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &request->fence.flags) &&
> -	    !test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &request->fence.flags) &&
> -	    !i915_request_enable_breadcrumb(request))
> -		intel_engine_signal_breadcrumbs(engine);
> +	/* We may be recursing from the signal callback of another i915 fence */
> +	if (!i915_request_signaled(request)) {
> +		spin_lock_nested(&request->lock, SINGLE_DEPTH_NESTING);
> +
> +		__notify_execute_cb(request);
> +		if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT,
> +			     &request->fence.flags) &&
> +		    !i915_request_enable_breadcrumb(request))
> +			intel_engine_signal_breadcrumbs(engine);
>   
> -	spin_unlock(&request->lock);
> +		spin_unlock(&request->lock);
> +		GEM_BUG_ON(!llist_empty(&request->execute_cb));
> +	}
>   
>   	return result;
>   }
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
