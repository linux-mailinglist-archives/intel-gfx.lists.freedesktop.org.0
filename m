Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 911D11CEF47
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 10:41:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B4E36E879;
	Tue, 12 May 2020 08:41:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84DFE6E879
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2020 08:41:06 +0000 (UTC)
IronPort-SDR: jD9/N8/5/VT1rJDHyhDkzGIPrcf1j75U7DAQ6YJeIybsbR3OJPqfdOcQvJBjSGJcqGLorrqq0u
 nNGC4KARFGtg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 01:41:06 -0700
IronPort-SDR: q2i5Qg5WQ3kaEpvWFVF1wJFEhV61KKII4JXP0JFHiZBB6TM1lKv7LNVG50yea0gH4A2aehAPj6
 ldDJOm91MKcw==
X-IronPort-AV: E=Sophos;i="5.73,383,1583222400"; d="scan'208";a="437019939"
Received: from dhelmanx-mobl2.ger.corp.intel.com (HELO [10.214.209.74])
 ([10.214.209.74])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 01:41:04 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200511075722.13483-1-chris@chris-wilson.co.uk>
 <20200511075722.13483-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <0f0dbddc-3733-40d6-060c-36e2da9e42fb@linux.intel.com>
Date: Tue, 12 May 2020 09:41:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200511075722.13483-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 02/20] drm/i915/gt: Couple up old virtual
 breadcrumb on new sibling
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


On 11/05/2020 08:57, Chris Wilson wrote:
> The second try at staging the transfer of the breadcrumb. In part one,
> we realised we could not simply move to the second engine as we were
> only holding the breadcrumb lock on the first. So in commit 6c81e21a4742
> ("drm/i915/gt: Stage the transfer of the virtual breadcrumb"), we
> removed it from the first engine and marked up this request to reattach
> the signaling on the new engine. However, this failed to take into
> account that we only attach the breadcrumb if the new request is added
> at the start of the queue, which if we are transferring, it is because
> we know there to be a request to be signaled (and hence we would not be
> attached). In this second try, we remove from the first list under its
> lock, take ownership of the link, and then take the second lock to
> complete the transfer.

Overall just an optimisation not to call i915_request_enable_breadcrumb, 
I mean not add to the list indirectly?

Regards,

Tvrtko

> Fixes: 6c81e21a4742 ("drm/i915/gt: Stage the transfer of the virtual breadcrumb")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 16 ++++++++++++----
>   1 file changed, 12 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index ed45fc40f884..c5591248dafb 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1825,13 +1825,12 @@ static void virtual_xfer_breadcrumbs(struct virtual_engine *ve,
>   				     struct i915_request *rq)
>   {
>   	struct intel_engine_cs *old = ve->siblings[0];
> +	bool xfer = false;
>   
>   	/* All unattached (rq->engine == old) must already be completed */
>   
>   	spin_lock(&old->breadcrumbs.irq_lock);
>   	if (!list_empty(&ve->context.signal_link)) {
> -		list_del_init(&ve->context.signal_link);
> -
>   		/*
>   		 * We cannot acquire the new engine->breadcrumbs.irq_lock
>   		 * (as we are holding a breadcrumbs.irq_lock already),
> @@ -1839,12 +1838,21 @@ static void virtual_xfer_breadcrumbs(struct virtual_engine *ve,
>   		 * The queued irq_work will occur when we finally drop
>   		 * the engine->active.lock after dequeue.
>   		 */
> -		set_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &rq->fence.flags);
> +		__list_del_entry(&ve->context.signal_link);
> +		xfer = true;
> +	}
> +	spin_unlock(&old->breadcrumbs.irq_lock);
> +
> +	if (xfer) {
> +		struct intel_breadcrumbs *b = &rq->engine->breadcrumbs;
> +
> +		spin_lock(&b->irq_lock);
> +		list_add_tail(&ve->context.signal_link, &b->signalers);
> +		spin_unlock(&b->irq_lock);
>   
>   		/* Also transfer the pending irq_work for the old breadcrumb. */
>   		intel_engine_signal_breadcrumbs(rq->engine);
>   	}
> -	spin_unlock(&old->breadcrumbs.irq_lock);
>   }
>   
>   #define for_each_waiter(p__, rq__) \
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
