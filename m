Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB0B42E79F2
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Dec 2020 15:24:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C574F89173;
	Wed, 30 Dec 2020 14:24:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1CE689173
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Dec 2020 14:24:39 +0000 (UTC)
IronPort-SDR: juOKtWxFMNy8Mip3jzCcWWLePgDixPSeHeeKd2Nm4UAVMvas7B4fDT/VSj1Se/h9HpUYBTGVXz
 /T+zFwJAOsyg==
X-IronPort-AV: E=McAfee;i="6000,8403,9849"; a="155807390"
X-IronPort-AV: E=Sophos;i="5.78,461,1599548400"; d="scan'208";a="155807390"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2020 06:24:39 -0800
IronPort-SDR: ohHSl2F3MisjwMCkkf8OhGZn0hw8bCOWVJZh5nblD8GWae/SzxHCpif5VWwDGAS2UHu+tjAVoI
 AgyZTYGbAyOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,461,1599548400"; d="scan'208";a="359237170"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga002.jf.intel.com with ESMTP; 30 Dec 2020 06:24:38 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 1C70F5C20E0; Wed, 30 Dec 2020 16:22:07 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201228155229.9516-6-chris@chris-wilson.co.uk>
References: <20201228155229.9516-1-chris@chris-wilson.co.uk>
 <20201228155229.9516-6-chris@chris-wilson.co.uk>
Date: Wed, 30 Dec 2020 16:22:07 +0200
Message-ID: <87v9cjl6gg.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 06/54] drm/i915: Drop i915_request.lock
 requirement for intel_rps_boost()
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Since we use a flag within i915_request.flags to indicate when we have
> boosted the request (so that we only apply the boost) once, this can be
> used as the serialisation with i915_request_retire() to avoid having to
> explicitly take the i915_request.lock which is more heavily contended.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/intel_rps.c | 15 ++++++---------
>  drivers/gpu/drm/i915/i915_request.c |  4 +---
>  2 files changed, 7 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index f74d5e09e176..e1397b8d3586 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -917,17 +917,15 @@ void intel_rps_park(struct intel_rps *rps)
>  
>  void intel_rps_boost(struct i915_request *rq)
>  {
> -	struct intel_rps *rps = &READ_ONCE(rq->engine)->gt->rps;
> -	unsigned long flags;
> -
> -	if (i915_request_signaled(rq) || !intel_rps_is_active(rps))
> +	if (i915_request_signaled(rq) || i915_request_has_waitboost(rq))
>  		return;
>  
>  	/* Serializes with i915_request_retire() */
> -	spin_lock_irqsave(&rq->lock, flags);
> -	if (!i915_request_has_waitboost(rq) &&
> -	    !dma_fence_is_signaled_locked(&rq->fence)) {
> -		set_bit(I915_FENCE_FLAG_BOOST, &rq->fence.flags);
> +	if (!test_and_set_bit(I915_FENCE_FLAG_BOOST, &rq->fence.flags)) {
> +		struct intel_rps *rps = &READ_ONCE(rq->engine)->gt->rps;
> +
> +		if (!intel_rps_is_active(rps))
> +			return;
>  
>  		GT_TRACE(rps_to_gt(rps), "boost fence:%llx:%llx\n",
>  			 rq->fence.context, rq->fence.seqno);
> @@ -938,7 +936,6 @@ void intel_rps_boost(struct i915_request *rq)
>  
>  		atomic_inc(&rps->boosts);

Looks of it, this does not need to be atomic. But topic for another
patch.

>  	}
> -	spin_unlock_irqrestore(&rq->lock, flags);
>  }
>  
>  int intel_rps_set(struct intel_rps *rps, u8 val)
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 2d2882344e40..2a7bad88038b 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -307,10 +307,8 @@ bool i915_request_retire(struct i915_request *rq)
>  		spin_unlock_irq(&rq->lock);
>  	}
>  
> -	if (i915_request_has_waitboost(rq)) {
> -		GEM_BUG_ON(!atomic_read(&rq->engine->gt->rps.num_waiters));
> +	if (test_and_set_bit(I915_FENCE_FLAG_BOOST, &rq->fence.flags))
>  		atomic_dec(&rq->engine->gt->rps.num_waiters);

This should keep the num_waiters in sync.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> -	}
>  
>  	/*
>  	 * We only loosely track inflight requests across preemption,
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
