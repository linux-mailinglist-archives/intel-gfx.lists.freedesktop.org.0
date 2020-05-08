Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC761CB37E
	for <lists+intel-gfx@lfdr.de>; Fri,  8 May 2020 17:39:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B75CF6EB22;
	Fri,  8 May 2020 15:39:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 658336EB22
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 May 2020 15:39:25 +0000 (UTC)
IronPort-SDR: Z3x1EeMo6j8Ne9D3h3UW8i3eVnEXjkeabOA96BY9nrPG9AvwIFmJbqgV8k99/7flyuY+EgnDi9
 WECNvwQybDOQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2020 08:39:24 -0700
IronPort-SDR: U8hTgzZlxJVOAwbyXOeOfJtuAbp5SeXhInWFnHfiAsyWeCRhB11Ss+xjS+VWvJNfREWFRH1Zcj
 5HhSNsT3SCTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,368,1583222400"; d="scan'208";a="250493177"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga007.fm.intel.com with ESMTP; 08 May 2020 08:39:23 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id B0EF05C1DC1; Fri,  8 May 2020 18:37:15 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200508092933.738-3-chris@chris-wilson.co.uk>
References: <20200508092933.738-1-chris@chris-wilson.co.uk>
 <20200508092933.738-3-chris@chris-wilson.co.uk>
Date: Fri, 08 May 2020 18:37:15 +0300
Message-ID: <87a72ixwt0.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/i915: Prevent using semaphores to
 chain up to external fences
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

> The downside of using semaphores is that we lose metadata passing
> along the signaling chain. This is particularly nasty when we
> need to pass along a fatal error such as EFAULT or EDEADLK. For
> fatal errors we want to scrub the request before it is executed,
> which means that we cannot preload the request onto HW and have
> it wait upon a semaphore.

b is waiting on a, a fails and we want to release b with error?

>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/i915_request.c         | 26 +++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_scheduler_types.h |  1 +
>  2 files changed, 27 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 94189c7d43cd..f0f9393e2ade 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -1002,6 +1002,15 @@ emit_semaphore_wait(struct i915_request *to,
>  	if (!rcu_access_pointer(from->hwsp_cacheline))
>  		goto await_fence;
>  
> +	/*
> +	 * If this or its dependents are waiting on an external fence
> +	 * that may fail catastrophically, then we want to avoid using
> +	 * sempahores as they bypass the fence signaling metadata, and we

semaphore
-Mika

> +	 * lose the fence->error propagation.
> +	 */
> +	if (from->sched.flags & I915_SCHED_HAS_EXTERNAL_CHAIN)
> +		goto await_fence;
> +
>  	/* Just emit the first semaphore we see as request space is limited. */
>  	if (already_busywaiting(to) & mask)
>  		goto await_fence;
> @@ -1064,12 +1073,29 @@ i915_request_await_request(struct i915_request *to, struct i915_request *from)
>  			return ret;
>  	}
>  
> +	if (from->sched.flags & I915_SCHED_HAS_EXTERNAL_CHAIN)
> +		to->sched.flags |= I915_SCHED_HAS_EXTERNAL_CHAIN;
> +
>  	return 0;
>  }
>  
> +static void mark_external(struct i915_request *rq)
> +{
> +	/*
> +	 * The downside of using semaphores is that we lose metadata passing
> +	 * along the signaling chain. This is particularly nasty when we
> +	 * need to pass along a fatal error such as EFAULT or EDEADLK. For
> +	 * fatal errors we want to scrub the request before it is executed,
> +	 * which means that we cannot preload the request onto HW and have
> +	 * it wait upon a semaphore.
> +	 */
> +	rq->sched.flags |= I915_SCHED_HAS_EXTERNAL_CHAIN;
> +}
> +
>  static int
>  i915_request_await_external(struct i915_request *rq, struct dma_fence *fence)
>  {
> +	mark_external(rq);
>  	return i915_sw_fence_await_dma_fence(&rq->submit, fence,
>  					     fence->context ? I915_FENCE_TIMEOUT : 0,
>  					     I915_FENCE_GFP);
> diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
> index 7186875088a0..6ab2c5289bed 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler_types.h
> +++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
> @@ -66,6 +66,7 @@ struct i915_sched_node {
>  	struct i915_sched_attr attr;
>  	unsigned int flags;
>  #define I915_SCHED_HAS_SEMAPHORE_CHAIN	BIT(0)
> +#define I915_SCHED_HAS_EXTERNAL_CHAIN	BIT(1)
>  	intel_engine_mask_t semaphores;
>  };
>  
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
