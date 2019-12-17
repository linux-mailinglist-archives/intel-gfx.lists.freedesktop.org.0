Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A6A123305
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 17:56:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72C6D6E1A2;
	Tue, 17 Dec 2019 16:56:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0C686E1A2
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 16:56:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 08:56:21 -0800
X-IronPort-AV: E=Sophos;i="5.69,326,1571727600"; d="scan'208";a="209764095"
Received: from dtriolet-mobl1.ger.corp.intel.com (HELO [10.251.84.191])
 ([10.251.84.191])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 17 Dec 2019 08:56:21 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191216175220.2788298-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <08466ed3-0542-b44f-996a-42990ce6ef72@linux.intel.com>
Date: Tue, 17 Dec 2019 16:56:19 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191216175220.2788298-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: Eliminate the trylock for
 reading a timeline's hwsp
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


On 16/12/2019 17:52, Chris Wilson wrote:
> As we stash a pointer to the HWSP cacheline on the request, when reading
> it we only need confirm that the cacheline is still valid by checking
> that the request and timeline are still intact.
> 
> v2: Protect hwsp_cachline with RCU
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_timeline.c | 59 +++++++++++-------------
>   drivers/gpu/drm/i915/i915_request.c      |  4 +-
>   drivers/gpu/drm/i915/i915_request.h      |  5 +-
>   3 files changed, 30 insertions(+), 38 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
> index d71aafb66d6e..6da3f4af9614 100644
> --- a/drivers/gpu/drm/i915/gt/intel_timeline.c
> +++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
> @@ -25,10 +25,14 @@ struct intel_timeline_hwsp {
>   
>   struct intel_timeline_cacheline {
>   	struct i915_active active;
> +
>   	struct intel_timeline_hwsp *hwsp;
>   	void *vaddr;
>   #define CACHELINE_BITS 6
>   #define CACHELINE_FREE CACHELINE_BITS
> +	u32 offset;
> +
> +	struct rcu_head rcu;
>   };
>   
>   static struct i915_vma *__hwsp_alloc(struct intel_gt *gt)
> @@ -133,7 +137,7 @@ static void __idle_cacheline_free(struct intel_timeline_cacheline *cl)
>   	__idle_hwsp_free(cl->hwsp, ptr_unmask_bits(cl->vaddr, CACHELINE_BITS));
>   
>   	i915_active_fini(&cl->active);
> -	kfree(cl);
> +	kfree_rcu(cl, rcu);
>   }
>   
>   __i915_active_call
> @@ -177,6 +181,8 @@ cacheline_alloc(struct intel_timeline_hwsp *hwsp, unsigned int cacheline)
>   	i915_vma_get(hwsp->vma);
>   	cl->hwsp = hwsp;
>   	cl->vaddr = page_pack_bits(vaddr, cacheline);
> +	cl->offset =
> +		i915_ggtt_offset(cl->hwsp->vma) + cacheline * CACHELINE_BYTES;
>   
>   	i915_active_init(&cl->active, __cacheline_active, __cacheline_retire);
>   
> @@ -514,46 +520,33 @@ int intel_timeline_read_hwsp(struct i915_request *from,
>   			     struct i915_request *to,
>   			     u32 *hwsp)
>   {
> -	struct intel_timeline *tl;
> +	struct intel_timeline_cacheline *cl;
>   	int err;
>   
> +	GEM_BUG_ON(!rcu_access_pointer(from->hwsp_cacheline));
> +
>   	rcu_read_lock();
> -	tl = rcu_dereference(from->timeline);
> -	if (i915_request_completed(from) || !kref_get_unless_zero(&tl->kref))
> -		tl = NULL;
> +	cl = rcu_dereference(from->hwsp_cacheline);
> +	if (unlikely(!i915_active_acquire_if_busy(&cl->active)))
> +		goto unlock; /* seqno wrapped and completed! */
> +	if (unlikely(i915_request_completed(from)))
> +		goto release;
>   	rcu_read_unlock();
> -	if (!tl) /* already completed */
> -		return 1;
> -
> -	GEM_BUG_ON(rcu_access_pointer(to->timeline) == tl);
> -
> -	err = -EAGAIN;
> -	if (mutex_trylock(&tl->mutex)) {
> -		struct intel_timeline_cacheline *cl = from->hwsp_cacheline;
> -
> -		if (i915_request_completed(from)) {
> -			err = 1;
> -			goto unlock;
> -		}
>   
> -		err = cacheline_ref(cl, to);
> -		if (err)
> -			goto unlock;
> +	err = cacheline_ref(cl, to);
> +	if (err)
> +		goto out;
>   
> -		if (likely(cl == tl->hwsp_cacheline)) {
> -			*hwsp = tl->hwsp_offset;
> -		} else { /* across a seqno wrap, recover the original offset */
> -			*hwsp = i915_ggtt_offset(cl->hwsp->vma) +
> -				ptr_unmask_bits(cl->vaddr, CACHELINE_BITS) *
> -				CACHELINE_BYTES;
> -		}
> +	*hwsp = cl->offset;
> +out:
> +	i915_active_release(&cl->active);
> +	return err;
>   
> +release:
> +	i915_active_release(&cl->active);
>   unlock:
> -		mutex_unlock(&tl->mutex);
> -	}
> -	intel_timeline_put(tl);
> -
> -	return err;
> +	rcu_read_unlock();
> +	return 1;
>   }
>   
>   void intel_timeline_unpin(struct intel_timeline *tl)
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index a59b803aef92..269470d3527a 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -655,9 +655,9 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
>   	rq->execution_mask = ce->engine->mask;
>   	rq->flags = 0;
>   
> -	rcu_assign_pointer(rq->timeline, tl);
> +	RCU_INIT_POINTER(rq->timeline, tl);
> +	RCU_INIT_POINTER(rq->hwsp_cacheline, tl->hwsp_cacheline);
>   	rq->hwsp_seqno = tl->hwsp_seqno;
> -	rq->hwsp_cacheline = tl->hwsp_cacheline;
>   
>   	rq->rcustate = get_state_synchronize_rcu(); /* acts as smp_mb() */
>   
> diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
> index a561b8efe869..aa38290eea3d 100644
> --- a/drivers/gpu/drm/i915/i915_request.h
> +++ b/drivers/gpu/drm/i915/i915_request.h
> @@ -30,6 +30,7 @@
>   
>   #include "gt/intel_context_types.h"
>   #include "gt/intel_engine_types.h"
> +#include "gt/intel_timeline_types.h"
>   
>   #include "i915_gem.h"
>   #include "i915_scheduler.h"
> @@ -41,8 +42,6 @@
>   struct drm_file;
>   struct drm_i915_gem_object;
>   struct i915_request;
> -struct intel_timeline;
> -struct intel_timeline_cacheline;
>   
>   struct i915_capture_list {
>   	struct i915_capture_list *next;
> @@ -183,7 +182,7 @@ struct i915_request {
>   	 * inside the timeline's HWSP vma, but it is only valid while this
>   	 * request has not completed and guarded by the timeline mutex.
>   	 */
> -	struct intel_timeline_cacheline *hwsp_cacheline;
> +	struct intel_timeline_cacheline __rcu *hwsp_cacheline;
>   
>   	/** Position in the ring of the start of the request */
>   	u32 head;
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
