Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0411DC999
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 11:13:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FBEE6E186;
	Thu, 21 May 2020 09:13:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F57E6E186
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 09:13:18 +0000 (UTC)
IronPort-SDR: hRbDQ0zRXwrqIsHMCn1897rDSh7MQEvI/qS1XJ/yxXwYOn/j6CL2yi/57w7BJ0KXPHkt47WLdU
 uHNINc8b125Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2020 02:13:17 -0700
IronPort-SDR: d65NLT7O95W0ryDYpmGnfe2XJNKEC8176fHd/bnfBBPST2iYbTyNDEh35Be8ul4OzqJqaGCy+G
 XC1yTzKvhElQ==
X-IronPort-AV: E=Sophos;i="5.73,417,1583222400"; d="scan'208";a="412331998"
Received: from cpinhasx-mobl.ger.corp.intel.com (HELO [10.254.152.79])
 ([10.254.152.79])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2020 02:13:16 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200521085320.906-1-chris@chris-wilson.co.uk>
 <20200521085320.906-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <55150b9c-37f4-7d80-3282-80d18d21d719@linux.intel.com>
Date: Thu, 21 May 2020 10:13:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200521085320.906-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Avoid using rq->engine after
 free during i915_fence_release
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


On 21/05/2020 09:53, Chris Wilson wrote:
> In order to be valid to dereference during the i915_fence_release, after
> retiring the fence and releasing its refererences, we assume that
> rq->engine can only be a real engine (that stay intact until the device
> is shutdown after all fences have been flushed). However, due to a quirk
> of preempt-to-busy, we may retire a request that still belongs to a
> virtual engine and so eventually free it with rq->engine being invalid.
> To avoid dereferencing that invalid engine, we look at the
> execution_mask which if it indicates it may be executed on more than one
> engine, we know it originated on a virtual engine and may still be on
> one.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1906
> Fixes: 43acd6516ca9 ("drm/i915: Keep a per-engine request pool")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_request.c | 25 +++++++++++++++++++++++--
>   1 file changed, 23 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 526c1e9acbd5..6e357183bece 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -121,8 +121,29 @@ static void i915_fence_release(struct dma_fence *fence)
>   	i915_sw_fence_fini(&rq->submit);
>   	i915_sw_fence_fini(&rq->semaphore);
>   
> -	/* Keep one request on each engine for reserved use under mempressure */
> -	if (!cmpxchg(&rq->engine->request_pool, NULL, rq))
> +	/*
> +	 * Keep one request on each engine for reserved use under mempressure
> +	 *
> +	 * We do not hold a reference to the engine here and so have to be
> +	 * very careful in what rq->engine we poke. The virtual engine is
> +	 * referenced via the rq->context and we released that ref during
> +	 * i915_request_retire(), ergo we must not dereference a virtual
> +	 * engine here. Not that we would want to, as the only consumer of
> +	 * the reserved engine->request_pool is the powermanagent parking,

power management

> +	 * which must-not-fail, and that is only run on the physical engines.
> +	 *
> +	 * Since the request must have been executed to be have completed,
> +	 * we know that it will have been processed by the HW and will
> +	 * not be unsubmitted again, so rq->engine and rq->execution_mask
> +	 * at this point is stable. rq->execution_mask will be a single
> +	 * bit if the last and only engine it could execution on was a
> +	 * physical engine, if it's multiple bits then it started on and
> +	 * could still be on a virtual engine. Thus if the mask is not a
> +	 * power-of-two we assume that rq->engine may still be a virtual
> +	 * engien and so a dangling invalid pointer that we cannot 

engine

But.. submit fence can mask out execution_mask bits and make it appear 
the request was on a physical engine. What then?

Regards,

Tvrtko

dereference
> +	 */
> +	if (is_power_of_2(rq->execution_mask) &&
> +	    !cmpxchg(&rq->engine->request_pool, NULL, rq))
>   		return;
>   
>   	kmem_cache_free(global.slab_requests, rq);
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
