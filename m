Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8466217C058
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 15:36:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21DFD89A91;
	Fri,  6 Mar 2020 14:36:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92FDB89AEA
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 14:36:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Mar 2020 06:36:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,522,1574150400"; d="scan'208";a="264474044"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga004.fm.intel.com with ESMTP; 06 Mar 2020 06:36:21 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id E51BA5C1DD1; Fri,  6 Mar 2020 16:35:02 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200306133852.3420322-1-chris@chris-wilson.co.uk>
References: <20200306133852.3420322-1-chris@chris-wilson.co.uk>
Date: Fri, 06 Mar 2020 16:35:02 +0200
Message-ID: <874kv14kmh.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/17] drm/i915/selftests: Apply a heavy
 handed flush to i915_active
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Due to the ordering of cmpxchg()/dma_fence_signal() inside node_retire(),
> we must also use the xchg() as our primary memory barrier to flush the
> outstanding callbacks after expected completion of the i915_active.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/selftests/i915_active.c | 29 ++++++++++++++------
>  1 file changed, 21 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/selftests/i915_active.c b/drivers/gpu/drm/i915/selftests/i915_active.c
> index 3a37c67ab6c4..68bbb1580162 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_active.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_active.c
> @@ -311,20 +311,33 @@ static void spin_unlock_wait(spinlock_t *lock)
>  	spin_unlock_irq(lock);
>  }
>  
> +static void active_flush(struct i915_active *ref,
> +			 struct i915_active_fence *active)
> +{
> +	struct dma_fence *fence;
> +
> +	fence = xchg(__active_fence_slot(active), NULL);
> +	if (!fence)
> +		return;
> +
> +	spin_lock_irq(fence->lock);
> +	__list_del_entry(&active->cb.node);
> +	spin_unlock_irq(fence->lock); /* serialise with fence->cb_list */
> +	atomic_dec(&ref->count);
> +
> +	GEM_BUG_ON(!test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags));
> +}
> +
>  void i915_active_unlock_wait(struct i915_active *ref)
>  {
>  	if (i915_active_acquire_if_busy(ref)) {
>  		struct active_node *it, *n;
>  
> +		/* Wait for all active callbacks */
>  		rcu_read_lock();
> -		rbtree_postorder_for_each_entry_safe(it, n, &ref->tree, node) {
> -			struct dma_fence *f;
> -
> -			/* Wait for all active callbacks */
> -			f = rcu_dereference(it->base.fence);
> -			if (f)
> -				spin_unlock_wait(f->lock);
> -		}
> +		active_flush(ref, &ref->excl);
> +		rbtree_postorder_for_each_entry_safe(it, n, &ref->tree, node)
> +			active_flush(ref, &it->base);
>  		rcu_read_unlock();
>  
>  		i915_active_release(ref);
> -- 
> 2.25.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
