Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A56615048C
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 11:50:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84ACF6E2DA;
	Mon,  3 Feb 2020 10:50:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB09D6E2DA
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 10:50:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 02:50:20 -0800
X-IronPort-AV: E=Sophos;i="5.70,397,1574150400"; d="scan'208";a="223899246"
Received: from aabader-mobl1.ccr.corp.intel.com (HELO [10.252.21.249])
 ([10.252.21.249])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 03 Feb 2020 02:50:19 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200203094152.4150550-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <e4f36606-dff0-f65b-c225-8522e192d54e@linux.intel.com>
Date: Mon, 3 Feb 2020 10:50:17 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200203094152.4150550-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: Hold reference to previous
 active fence as we queue
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
> Take a reference to the previous exclusive fence on the i915_active, as
> we wish to add an await to it in the caller (and so must prevent it from
> being freed until we have completed that task).
> 
> Fixes: e3793468b466 ("drm/i915: Use the async worker to avoid reclaim tainting the ggtt->mutex")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_active.c | 6 +++++-
>   drivers/gpu/drm/i915/i915_vma.c    | 4 +++-
>   2 files changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
> index da58e5d084f4..9ccb931a733e 100644
> --- a/drivers/gpu/drm/i915/i915_active.c
> +++ b/drivers/gpu/drm/i915/i915_active.c
> @@ -398,9 +398,13 @@ i915_active_set_exclusive(struct i915_active *ref, struct dma_fence *f)
>   	/* We expect the caller to manage the exclusive timeline ordering */
>   	GEM_BUG_ON(i915_active_is_idle(ref));
>   
> +	rcu_read_lock();
>   	prev = __i915_active_fence_set(&ref->excl, f);
> -	if (!prev)
> +	if (prev)
> +		prev = dma_fence_get_rcu(prev);
> +	else
>   		atomic_inc(&ref->count);
> +	rcu_read_unlock();
>   
>   	return prev;
>   }
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index e801e28de470..74dc3ba59ce5 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -422,10 +422,12 @@ int i915_vma_bind(struct i915_vma *vma,
>   		 * execution and not content or object's backing store lifetime.
>   		 */
>   		prev = i915_active_set_exclusive(&vma->active, &work->base.dma);
> -		if (prev)
> +		if (prev) {
>   			__i915_sw_fence_await_dma_fence(&work->base.chain,
>   							prev,
>   							&work->cb);
> +			dma_fence_put(prev);
> +		}
>   
>   		work->base.dma.error = 0; /* enable the queue_work() */
>   
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
