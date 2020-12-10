Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C722D647D
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 19:09:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D5966EA95;
	Thu, 10 Dec 2020 18:08:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A9166EA95
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 18:08:57 +0000 (UTC)
IronPort-SDR: M4n3oRf60xcwFbWgBbw2VPM4XmN6z+0AS5lF4gNNdywYyiEoQfsQquv/07SN8ODfFtps1f56bp
 hLTAKpvnsm1A==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="174416727"
X-IronPort-AV: E=Sophos;i="5.78,409,1599548400"; d="scan'208";a="174416727"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 10:08:55 -0800
IronPort-SDR: 2UndLYguGTcgKUb5GBAa6c23EhbybfMJ2cyFRRUDF2sB1IER0okHTS4y/5DYyrUBdMhDtJon4v
 r18m4tCpkHZw==
X-IronPort-AV: E=Sophos;i="5.78,409,1599548400"; d="scan'208";a="377846645"
Received: from unknown (HELO sdutt-i7) ([10.165.21.147])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 10:08:55 -0800
Date: Thu, 10 Dec 2020 10:03:06 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201210180306.GA28996@sdutt-i7>
References: <20201207193824.18114-1-chris@chris-wilson.co.uk>
 <20201207193824.18114-13-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201207193824.18114-13-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 13/20] drm/i915: Encode fence specific
 waitqueue behaviour into the wait.flags
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 07, 2020 at 07:38:17PM +0000, Chris Wilson wrote:
> Use the wait_queue_entry.flags to denote the special fence behaviour
> (flattening continuations along fence chains, and for propagating
> errors) rather than trying to detect ordinary waiters by their
> functions.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_sw_fence.c | 25 +++++++++++++++----------
>  1 file changed, 15 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_sw_fence.c b/drivers/gpu/drm/i915/i915_sw_fence.c
> index 038d4c6884c5..2744558f3050 100644
> --- a/drivers/gpu/drm/i915/i915_sw_fence.c
> +++ b/drivers/gpu/drm/i915/i915_sw_fence.c
> @@ -18,10 +18,15 @@
>  #define I915_SW_FENCE_BUG_ON(expr) BUILD_BUG_ON_INVALID(expr)
>  #endif
>  
> -#define I915_SW_FENCE_FLAG_ALLOC BIT(3) /* after WQ_FLAG_* for safety */
> -
>  static DEFINE_SPINLOCK(i915_sw_fence_lock);
>  
> +#define WQ_FLAG_BITS \
> +	BITS_PER_TYPE(typeof_member(struct wait_queue_entry, flags))
> +
> +/* after WQ_FLAG_* for safety */
> +#define I915_SW_FENCE_FLAG_FENCE BIT(WQ_FLAG_BITS - 1)
> +#define I915_SW_FENCE_FLAG_ALLOC BIT(WQ_FLAG_BITS - 2)
> +
>  enum {
>  	DEBUG_FENCE_IDLE = 0,
>  	DEBUG_FENCE_NOTIFY,
> @@ -154,10 +159,10 @@ static void __i915_sw_fence_wake_up_all(struct i915_sw_fence *fence,
>  	spin_lock_irqsave_nested(&x->lock, flags, 1 + !!continuation);
>  	if (continuation) {
>  		list_for_each_entry_safe(pos, next, &x->head, entry) {
> -			if (pos->func == autoremove_wake_function)
> -				pos->func(pos, TASK_NORMAL, 0, continuation);
> -			else
> +			if (pos->flags & I915_SW_FENCE_FLAG_FENCE)
>  				list_move_tail(&pos->entry, continuation);
> +			else
> +				pos->func(pos, TASK_NORMAL, 0, continuation);
>  		}
>  	} else {
>  		LIST_HEAD(extra);
> @@ -166,9 +171,9 @@ static void __i915_sw_fence_wake_up_all(struct i915_sw_fence *fence,
>  			list_for_each_entry_safe(pos, next, &x->head, entry) {
>  				int wake_flags;
>  
> -				wake_flags = fence->error;
> -				if (pos->func == autoremove_wake_function)
> -					wake_flags = 0;
> +				wake_flags = 0;
> +				if (pos->flags & I915_SW_FENCE_FLAG_FENCE)
> +					wake_flags = fence->error;
>  
>  				pos->func(pos, TASK_NORMAL, wake_flags, &extra);
>  			}
> @@ -332,8 +337,8 @@ static int __i915_sw_fence_await_sw_fence(struct i915_sw_fence *fence,
>  					  struct i915_sw_fence *signaler,
>  					  wait_queue_entry_t *wq, gfp_t gfp)
>  {
> +	unsigned int pending;
>  	unsigned long flags;
> -	int pending;
>  
>  	debug_fence_assert(fence);
>  	might_sleep_if(gfpflags_allow_blocking(gfp));
> @@ -349,7 +354,7 @@ static int __i915_sw_fence_await_sw_fence(struct i915_sw_fence *fence,
>  	if (unlikely(i915_sw_fence_check_if_after(fence, signaler)))
>  		return -EINVAL;
>  
> -	pending = 0;
> +	pending = I915_SW_FENCE_FLAG_FENCE;
>  	if (!wq) {
>  		wq = kmalloc(sizeof(*wq), gfp);
>  		if (!wq) {
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
