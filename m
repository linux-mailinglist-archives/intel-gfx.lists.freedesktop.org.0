Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C4D1C9874
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 19:56:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A405E6EA46;
	Thu,  7 May 2020 17:56:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2FBC6EA46
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 17:56:03 +0000 (UTC)
IronPort-SDR: LCkoJPEOa5vcA/9IOW2jZ1cf6F7hsSzIgx+E+4xMnl776uIMu+L2WV8VGAPePiF1KXMcT3+joQ
 9FQZM6ImqHsg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 10:56:03 -0700
IronPort-SDR: WRLldoRTR6mFY6c8EY6UWpdEpERfnKjj7IdLMnuPF4W5QtUwZTPAEM+uFAROCJqnTmvwLAn2Uh
 VHPCummNJlgQ==
X-IronPort-AV: E=Sophos;i="5.73,364,1583222400"; d="scan'208";a="435380850"
Received: from nstgemme-mobl1.ger.corp.intel.com (HELO [10.252.42.100])
 ([10.252.42.100])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 10:56:02 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200507152338.7452-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <a5fa8401-21a5-cf0e-8930-0678f161335c@linux.intel.com>
Date: Thu, 7 May 2020 18:56:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200507152338.7452-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Mark concurrent submissions
 with a weak-dependency
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
Cc: stable@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 07/05/2020 16:23, Chris Wilson wrote:
> We recorded the dependencies for WAIT_FOR_SUBMIT in order that we could
> correctly perform priority inheritance from the parallel branches to the
> common trunk. However, for the purpose of timeslicing and reset
> handling, the dependency is weak -- as we the pair of requests are
> allowed to run in parallel and not in strict succession. So for example
> we do need to suspend one if the other hangs.
> 
> The real significance though is that this allows us to rearrange
> groups of WAIT_FOR_SUBMIT linked requests along the single engine, and
> so can resolve user level inter-batch scheduling dependencies from user
> semaphores.
> 
> Fixes: c81471f5e95c ("drm/i915: Copy across scheduler behaviour flags across submit fences")
> Testcase: igt/gem_exec_fence/submit
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: <stable@vger.kernel.org> # v5.6+
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c         | 9 +++++++++
>   drivers/gpu/drm/i915/i915_request.c         | 8 ++++++--
>   drivers/gpu/drm/i915/i915_scheduler.c       | 6 +++---
>   drivers/gpu/drm/i915/i915_scheduler.h       | 3 ++-
>   drivers/gpu/drm/i915/i915_scheduler_types.h | 1 +
>   5 files changed, 21 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index bbdb0e2a4571..860ef97895c8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1880,6 +1880,9 @@ static void defer_request(struct i915_request *rq, struct list_head * const pl)
>   			struct i915_request *w =
>   				container_of(p->waiter, typeof(*w), sched);
>   
> +			if (p->flags & I915_DEPENDENCY_WEAK)
> +				continue;
> +
>   			/* Leave semaphores spinning on the other engines */
>   			if (w->engine != rq->engine)
>   				continue;
> @@ -2726,6 +2729,9 @@ static void __execlists_hold(struct i915_request *rq)
>   			struct i915_request *w =
>   				container_of(p->waiter, typeof(*w), sched);
>   
> +			if (p->flags & I915_DEPENDENCY_WEAK)
> +				continue;
> +
>   			/* Leave semaphores spinning on the other engines */
>   			if (w->engine != rq->engine)
>   				continue;
> @@ -2850,6 +2856,9 @@ static void __execlists_unhold(struct i915_request *rq)
>   			struct i915_request *w =
>   				container_of(p->waiter, typeof(*w), sched);
>   
> +			if (p->flags & I915_DEPENDENCY_WEAK)
> +				continue;
> +
>   			/* Propagate any change in error status */
>   			if (rq->fence.error)
>   				i915_request_set_error_once(w, rq->fence.error);
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 4d18f808fda2..3c38d61c90f8 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -1040,7 +1040,9 @@ i915_request_await_request(struct i915_request *to, struct i915_request *from)
>   	}
>   
>   	if (to->engine->schedule) {
> -		ret = i915_sched_node_add_dependency(&to->sched, &from->sched);
> +		ret = i915_sched_node_add_dependency(&to->sched,
> +						     &from->sched,
> +						     I915_DEPENDENCY_EXTERNAL);
>   		if (ret < 0)
>   			return ret;
>   	}
> @@ -1202,7 +1204,9 @@ __i915_request_await_execution(struct i915_request *to,
>   
>   	/* Couple the dependency tree for PI on this exposed to->fence */
>   	if (to->engine->schedule) {
> -		err = i915_sched_node_add_dependency(&to->sched, &from->sched);
> +		err = i915_sched_node_add_dependency(&to->sched,
> +						     &from->sched,
> +						     I915_DEPENDENCY_WEAK);
>   		if (err < 0)
>   			return err;
>   	}
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
> index 37cfcf5b321b..6e2d4190099f 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.c
> +++ b/drivers/gpu/drm/i915/i915_scheduler.c
> @@ -462,7 +462,8 @@ bool __i915_sched_node_add_dependency(struct i915_sched_node *node,
>   }
>   
>   int i915_sched_node_add_dependency(struct i915_sched_node *node,
> -				   struct i915_sched_node *signal)
> +				   struct i915_sched_node *signal,
> +				   unsigned long flags)
>   {
>   	struct i915_dependency *dep;
>   
> @@ -473,8 +474,7 @@ int i915_sched_node_add_dependency(struct i915_sched_node *node,
>   	local_bh_disable();
>   
>   	if (!__i915_sched_node_add_dependency(node, signal, dep,
> -					      I915_DEPENDENCY_EXTERNAL |
> -					      I915_DEPENDENCY_ALLOC))
> +					      flags | I915_DEPENDENCY_ALLOC))
>   		i915_dependency_free(dep);
>   
>   	local_bh_enable(); /* kick submission tasklet */
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
> index d1dc4efef77b..6f0bf00fc569 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.h
> +++ b/drivers/gpu/drm/i915/i915_scheduler.h
> @@ -34,7 +34,8 @@ bool __i915_sched_node_add_dependency(struct i915_sched_node *node,
>   				      unsigned long flags);
>   
>   int i915_sched_node_add_dependency(struct i915_sched_node *node,
> -				   struct i915_sched_node *signal);
> +				   struct i915_sched_node *signal,
> +				   unsigned long flags);
>   
>   void i915_sched_node_fini(struct i915_sched_node *node);
>   
> diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
> index d18e70550054..7186875088a0 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler_types.h
> +++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
> @@ -78,6 +78,7 @@ struct i915_dependency {
>   	unsigned long flags;
>   #define I915_DEPENDENCY_ALLOC		BIT(0)
>   #define I915_DEPENDENCY_EXTERNAL	BIT(1)
> +#define I915_DEPENDENCY_WEAK		BIT(2)
>   };
>   
>   #endif /* _I915_SCHEDULER_TYPES_H_ */
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
