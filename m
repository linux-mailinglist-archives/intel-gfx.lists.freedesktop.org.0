Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 074B7192AAA
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 15:01:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6349C899BC;
	Wed, 25 Mar 2020 14:01:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 137618999A
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 14:01:23 +0000 (UTC)
IronPort-SDR: w5WM7Df8hnLgn2fuSXuVDnXAt2uC+HmPn+5RhEMitaXVcUISzIEYMTRC6yqzNrG2CwHD/QVOTn
 kdpsFGgIgBnQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2020 07:01:22 -0700
IronPort-SDR: BVum0Z1P1fIpozJk6jenB3rL2qtre6wiZrO4v4o6wcC06EblefiQTCZd0tqO5rj1KRRbZR2CDp
 Ftct4M5gAHIA==
X-IronPort-AV: E=Sophos;i="5.72,304,1580803200"; d="scan'208";a="420321965"
Received: from popernik-mobl.ger.corp.intel.com (HELO [10.252.39.239])
 ([10.252.39.239])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2020 07:01:21 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200325130059.30600-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <929b07f2-935c-b14d-ce55-0ed9e7640fb3@linux.intel.com>
Date: Wed, 25 Mar 2020 14:01:19 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200325130059.30600-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Stage the transfer of the
 virtual breadcrumb
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


On 25/03/2020 13:00, Chris Wilson wrote:
> We move the virtual breadcrumb from one physical engine to the next, if
> the next virtual request is scheduled on a new physical engine. Since
> the virtual context can only be in one signal queue, we need it to track
> the current physical engine for the new breadcrumbs. However, to move
> the list we need both breadcrumb locks -- and since we cannot take both
> at the same time (unless we are careful and always ensure consistent
> ordering) stage the movement of the signaler via the current virtual
> request.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/1510
> Fixes: 6d06779e8672 ("drm/i915: Load balancing across a virtual engine")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 18 +++++++++++++-----
>   1 file changed, 13 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index f88d3b95c4e1..2b0923cb0483 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1663,7 +1663,7 @@ static bool virtual_matches(const struct virtual_engine *ve,
>   }
>   
>   static void virtual_xfer_breadcrumbs(struct virtual_engine *ve,
> -				     struct intel_engine_cs *engine)
> +				     struct i915_request *rq)
>   {
>   	struct intel_engine_cs *old = ve->siblings[0];
>   
> @@ -1671,9 +1671,17 @@ static void virtual_xfer_breadcrumbs(struct virtual_engine *ve,
>   
>   	spin_lock(&old->breadcrumbs.irq_lock);
>   	if (!list_empty(&ve->context.signal_link)) {
> -		list_move_tail(&ve->context.signal_link,
> -			       &engine->breadcrumbs.signalers);
> -		intel_engine_signal_breadcrumbs(engine);
> +		list_del_init(&ve->context.signal_link);
> +
> +		/*
> +		 * We cannot acquire the new engine->breadcrumbs.irq_lock
> +		 * (as we are holding a breadcrumbs.irq_lock already),
> +		 * so attach this request to the signaler on submission.
> +		 * The queued irq_work will occur when we finally drop
> +		 * the engine->active.lock after dequeue.
> +		 */
> +		set_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &rq->fence.flags);
> +		intel_engine_signal_breadcrumbs(rq->engine);
>   	}
>   	spin_unlock(&old->breadcrumbs.irq_lock);
>   }
> @@ -2045,7 +2053,7 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>   									engine);
>   
>   				if (!list_empty(&ve->context.signals))
> -					virtual_xfer_breadcrumbs(ve, engine);
> +					virtual_xfer_breadcrumbs(ve, rq);
>   
>   				/*
>   				 * Move the bound engine to the top of the list
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
