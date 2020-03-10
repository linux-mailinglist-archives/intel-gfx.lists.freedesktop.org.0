Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2382180636
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 19:26:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 150306E899;
	Tue, 10 Mar 2020 18:26:44 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F16B66E899
 for <Intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 18:26:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20513385-1500050 for multiple; Tue, 10 Mar 2020 18:25:50 +0000
MIME-Version: 1.0
In-Reply-To: <20200309183129.2296-6-tvrtko.ursulin@linux.intel.com>
References: <20200309183129.2296-1-tvrtko.ursulin@linux.intel.com>
 <20200309183129.2296-6-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <158386474983.28297.14100791660131613004@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 10 Mar 2020 18:25:49 +0000
Subject: Re: [Intel-gfx] [RFC 05/12] drm/i915: Track runtime spent in
 unreachable intel_contexts
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

Quoting Tvrtko Ursulin (2020-03-09 18:31:22)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> As contexts are abandoned we want to remember how much GPU time they used
> (per class) so later we can used it for smarter purposes.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c       | 13 ++++++++++++-
>  drivers/gpu/drm/i915/gem/i915_gem_context_types.h |  5 +++++
>  2 files changed, 17 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index abc3a3e2fcf1..5f6861a36655 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -257,7 +257,19 @@ static void free_engines_rcu(struct rcu_head *rcu)
>  {
>         struct i915_gem_engines *engines =
>                 container_of(rcu, struct i915_gem_engines, rcu);
> +       struct i915_gem_context *ctx = engines->ctx;
> +       struct i915_gem_engines_iter it;
> +       struct intel_context *ce;
> +
> +       /* Transfer accumulated runtime to the parent GEM context. */
> +       for_each_gem_engine(ce, engines, it) {
> +               unsigned int class = ce->engine->uabi_class;
>  
> +               GEM_BUG_ON(class >= ARRAY_SIZE(ctx->past_runtime));
> +               atomic64_add(ce->runtime.total, &ctx->past_runtime[class]);
> +       }

-> give this its own routine.

> +
> +       i915_gem_context_put(ctx);
>         i915_sw_fence_fini(&engines->fence);
>         free_engines(engines);
>  }
> @@ -540,7 +552,6 @@ static int engines_notify(struct i915_sw_fence *fence,
>                         list_del(&engines->link);
>                         spin_unlock_irqrestore(&ctx->stale.lock, flags);
>                 }
> -               i915_gem_context_put(engines->ctx);

Or accumulate here? Here we know the engines are idle and released,
albeit there is the delay in accumulating after the swap. I'm not going
to worry about that, live replacement of engines I don't expect anyone
to notice the busy stats being off for a bit. Worst case is that they
see a sudden jump; but typical practice will be to setup engines up
before they being activity. We only have to worry about is if the
transient misleading stats can be exploited.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
