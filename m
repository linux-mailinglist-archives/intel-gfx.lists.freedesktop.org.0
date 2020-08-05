Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B75A23CBA0
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Aug 2020 17:05:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B6718902B;
	Wed,  5 Aug 2020 15:05:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92F196E7EC
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Aug 2020 15:05:36 +0000 (UTC)
IronPort-SDR: pDFvvHREVchLJCCKhAgW11GmOKiA4sC5EXfk3IPynG85Z2FdGJABiipPCnum9LEi3tZJzOuNLn
 JoIOQY3Bw4Ug==
X-IronPort-AV: E=McAfee;i="6000,8403,9703"; a="140453772"
X-IronPort-AV: E=Sophos;i="5.75,438,1589266800"; d="scan'208";a="140453772"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2020 08:05:32 -0700
IronPort-SDR: /0fvqCCw2zWAW2ZZYPKcBmmXuUDnbU6bQu2dYwx3IIx812nBJtqixeN9dACBkKBGfM3BpVyVBW
 ohbKSLQNIxGA==
X-IronPort-AV: E=Sophos;i="5.75,438,1589266800"; d="scan'208";a="467495699"
Received: from tlevis-mobl1.ger.corp.intel.com (HELO [10.251.167.151])
 ([10.251.167.151])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2020 08:05:31 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200805122231.23313-1-chris@chris-wilson.co.uk>
 <20200805122231.23313-4-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <9d313c82-2ee4-6edf-d734-79aac95a7697@linux.intel.com>
Date: Wed, 5 Aug 2020 16:05:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200805122231.23313-4-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 03/37] drm/i915/gt: Free stale request on
 destroying the virtual engine
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


On 05/08/2020 13:21, Chris Wilson wrote:
> Since preempt-to-busy, we may unsubmit a request while it is still on
> the HW and completes asynchronously. That means it may be retired and in
> the process destroy the virtual engine (as the user has closed their
> context), but that engine may still be holding onto the unsubmitted
> compelted request. Therefore we need to potentially cleanup the old
> request on destroying the virtual engine. We also have to keep the
> virtual_engine alive until after the sibling's execlists_dequeue() have
> finished peeking into the virtual engines, for which we serialise with
> RCU.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 22 +++++++++++++++++++---
>   1 file changed, 19 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 417f6b0c6c61..cb04bc5474be 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -180,6 +180,7 @@
>   #define EXECLISTS_REQUEST_SIZE 64 /* bytes */
>   
>   struct virtual_engine {
> +	struct rcu_head rcu;
>   	struct intel_engine_cs base;
>   	struct intel_context context;
>   
> @@ -5393,10 +5394,25 @@ static void virtual_context_destroy(struct kref *kref)
>   		container_of(kref, typeof(*ve), context.ref);
>   	unsigned int n;
>   
> -	GEM_BUG_ON(!list_empty(virtual_queue(ve)));
> -	GEM_BUG_ON(ve->request);
>   	GEM_BUG_ON(ve->context.inflight);
>   
> +	if (unlikely(ve->request)) {
> +		struct i915_request *old;
> +		unsigned long flags;
> +
> +		spin_lock_irqsave(&ve->base.active.lock, flags);
> +
> +		old = fetch_and_zero(&ve->request);
> +		if (old) {
> +			GEM_BUG_ON(!i915_request_completed(old));
> +			__i915_request_submit(old);
> +			i915_request_put(old);
> +		}
> +
> +		spin_unlock_irqrestore(&ve->base.active.lock, flags);
> +	}
> +	GEM_BUG_ON(!list_empty(virtual_queue(ve)));
> +
>   	for (n = 0; n < ve->num_siblings; n++) {
>   		struct intel_engine_cs *sibling = ve->siblings[n];
>   		struct rb_node *node = &ve->nodes[sibling->id].rb;
> @@ -5422,7 +5438,7 @@ static void virtual_context_destroy(struct kref *kref)
>   	intel_engine_free_request_pool(&ve->base);
>   
>   	kfree(ve->bonds);
> -	kfree(ve);
> +	kfree_rcu(ve, rcu);
>   }
>   
>   static void virtual_engine_initial_hint(struct virtual_engine *ve)
> 

If it would go without the previous patch I think it would simply mean a 
normal kfree here. In both cases it looks okay to me.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
