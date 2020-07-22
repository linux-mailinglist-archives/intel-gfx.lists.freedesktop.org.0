Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA012298BF
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jul 2020 14:55:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CD316E038;
	Wed, 22 Jul 2020 12:55:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F1DD6E038
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jul 2020 12:55:51 +0000 (UTC)
IronPort-SDR: oIPGgabrYbPyE7jQ3420lhOZufpt7oZgajVB0IxaqmKQw2fjW+HlcaDzAsaJ22j0IYdOLLiug9
 Gciu1ktChePQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9689"; a="138400246"
X-IronPort-AV: E=Sophos;i="5.75,381,1589266800"; d="scan'208";a="138400246"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2020 05:55:42 -0700
IronPort-SDR: YOsLyzA8OFioDzrduXMqWXw1Lg1eS14SUeOuPrVqXexLhWZU8Fw9pA5NiBJT/06IZjc04b9LYb
 QWJM533S9lDA==
X-IronPort-AV: E=Sophos;i="5.75,381,1589266800"; d="scan'208";a="462444774"
Received: from unknown (HELO [10.214.224.104]) ([10.214.224.104])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2020 05:55:41 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200720092312.16975-1-chris@chris-wilson.co.uk>
 <20200720092312.16975-6-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <670bb129-cfec-1697-3285-ef0132a56d47@linux.intel.com>
Date: Wed, 22 Jul 2020 13:55:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200720092312.16975-6-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 06/10] drm/i915/gt: Move
 intel_breadcrumbs_arm_irq earlier
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


On 20/07/2020 10:23, Chris Wilson wrote:
> Move the __intel_breadcrumbs_arm_irq earlier, next to the disarm_irq, so
> that we can make use of it in the following patch.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 88 ++++++++++-----------
>   1 file changed, 44 insertions(+), 44 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> index 621cf9d1d7ad..d6008034869f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> @@ -54,6 +54,37 @@ static void irq_disable(struct intel_engine_cs *engine)
>   	spin_unlock(&engine->gt->irq_lock);
>   }
>   
> +static void __intel_breadcrumbs_arm_irq(struct intel_breadcrumbs *b)
> +{
> +	lockdep_assert_held(&b->irq_lock);
> +
> +	if (b->irq_armed)
> +		return;
> +
> +	GEM_BUG_ON(!b->irq_engine);
> +	if (!intel_gt_pm_get_if_awake(b->irq_engine->gt))
> +		return;
> +
> +	/*
> +	 * The breadcrumb irq will be disarmed on the interrupt after the
> +	 * waiters are signaled. This gives us a single interrupt window in
> +	 * which we can add a new waiter and avoid the cost of re-enabling
> +	 * the irq.
> +	 */
> +	WRITE_ONCE(b->irq_armed, true);
> +
> +	/*
> +	 * Since we are waiting on a request, the GPU should be busy
> +	 * and should have its own rpm reference. This is tracked
> +	 * by i915->gt.awake, we can forgo holding our own wakref
> +	 * for the interrupt as before i915->gt.awake is released (when
> +	 * the driver is idle) we disarm the breadcrumbs.
> +	 */
> +
> +	if (!b->irq_enabled++)
> +		irq_enable(b->irq_engine);
> +}
> +
>   static void __intel_breadcrumbs_disarm_irq(struct intel_breadcrumbs *b)
>   {
>   	lockdep_assert_held(&b->irq_lock);
> @@ -69,19 +100,6 @@ static void __intel_breadcrumbs_disarm_irq(struct intel_breadcrumbs *b)
>   	intel_gt_pm_put_async(b->irq_engine->gt);
>   }
>   
> -void intel_breadcrumbs_park(struct intel_breadcrumbs *b)
> -{
> -	unsigned long flags;
> -
> -	if (!READ_ONCE(b->irq_armed))
> -		return;
> -
> -	spin_lock_irqsave(&b->irq_lock, flags);
> -	if (b->irq_armed)
> -		__intel_breadcrumbs_disarm_irq(b);
> -	spin_unlock_irqrestore(&b->irq_lock, flags);
> -}
> -
>   static inline bool __request_completed(const struct i915_request *rq)
>   {
>   	return i915_seqno_passed(__hwsp_seqno(rq), rq->fence.seqno);
> @@ -215,37 +233,6 @@ static void signal_irq_work(struct irq_work *work)
>   	}
>   }
>   
> -static void __intel_breadcrumbs_arm_irq(struct intel_breadcrumbs *b)
> -{
> -	lockdep_assert_held(&b->irq_lock);
> -
> -	if (b->irq_armed)
> -		return;
> -
> -	GEM_BUG_ON(!b->irq_engine);
> -	if (!intel_gt_pm_get_if_awake(b->irq_engine->gt))
> -		return;
> -
> -	/*
> -	 * The breadcrumb irq will be disarmed on the interrupt after the
> -	 * waiters are signaled. This gives us a single interrupt window in
> -	 * which we can add a new waiter and avoid the cost of re-enabling
> -	 * the irq.
> -	 */
> -	WRITE_ONCE(b->irq_armed, true);
> -
> -	/*
> -	 * Since we are waiting on a request, the GPU should be busy
> -	 * and should have its own rpm reference. This is tracked
> -	 * by i915->gt.awake, we can forgo holding our own wakref
> -	 * for the interrupt as before i915->gt.awake is released (when
> -	 * the driver is idle) we disarm the breadcrumbs.
> -	 */
> -
> -	if (!b->irq_enabled++)
> -		irq_enable(b->irq_engine);
> -}
> -
>   struct intel_breadcrumbs *
>   intel_breadcrumbs_create(struct intel_engine_cs *irq_engine)
>   {
> @@ -285,6 +272,19 @@ void intel_breadcrumbs_reset(struct intel_breadcrumbs *b)
>   	spin_unlock_irqrestore(&b->irq_lock, flags);
>   }
>   
> +void intel_breadcrumbs_park(struct intel_breadcrumbs *b)
> +{
> +	unsigned long flags;
> +
> +	if (!READ_ONCE(b->irq_armed))
> +		return;
> +
> +	spin_lock_irqsave(&b->irq_lock, flags);
> +	if (b->irq_armed)
> +		__intel_breadcrumbs_disarm_irq(b);
> +	spin_unlock_irqrestore(&b->irq_lock, flags);
> +}
> +
>   void intel_breadcrumbs_free(struct intel_breadcrumbs *b)
>   {
>   	kfree(b);
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
