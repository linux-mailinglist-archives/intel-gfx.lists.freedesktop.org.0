Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C6CB189D6A
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 14:56:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9456288CE4;
	Wed, 18 Mar 2020 13:56:11 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36F046E895
 for <Intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 13:56:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20603492-1500050 for multiple; Wed, 18 Mar 2020 13:55:52 +0000
MIME-Version: 1.0
In-Reply-To: <20200318121138.909-6-tvrtko.ursulin@linux.intel.com>
References: <20200318121138.909-1-tvrtko.ursulin@linux.intel.com>
 <20200318121138.909-6-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <158453975088.6873.9360235878777457602@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 18 Mar 2020 13:55:50 +0000
Subject: Re: [Intel-gfx] [PATCH 05/10] drm/i915: Track runtime spent in
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

Quoting Tvrtko Ursulin (2020-03-18 12:11:34)
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
> index 7c119a3a2cbd..5edf79ed6247 100644
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

Hmm, there's an odd situation where the free_engines_rcu could fire
before we do the final schedule_out of the context.

GEM_BUG_ON(intel_context_inflight(ce)) to see if that's being too
paranoid.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
